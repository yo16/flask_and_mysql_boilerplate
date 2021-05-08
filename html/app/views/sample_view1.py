from flask import Blueprint, render_template, request

sample_view1 = Blueprint("greeting", __name__, template_folder="templates")

@sample_view1.route("/", methods=("GET", "POST"))
@sample_view1.route("/<string:greeting>", methods=("GET", "POST"))
def greeting_user(greeting="Hello"):
    if request.method == "POST":
        user_name = request.form["user_name"]
    else:
        user_name = request.args.get("user_name", "")

    return render_template(
        "sample_view1/greeting_user.html", greeting=greeting, user_name=user_name
    )
