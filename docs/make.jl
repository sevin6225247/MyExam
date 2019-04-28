using Documenter
using MyExam

makedocs(
    sitename = "MyExam",
    format = :html,
    modules = [MyExam]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
#=deploydocs(
    repo = "<repository url>"
)=#
