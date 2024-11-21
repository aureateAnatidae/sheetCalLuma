Stipple.Layout.add_script("https://cdn.tailwindcss.com")
function nav(view)
    cell(class="fixed-center", [
        col(class="row items-center justify-evenly", [
            # View index key:
            # 
            # view=0 -> FULL DASH
            # view=1 -> GOOGLE CALENDAR
            # view=2 -> GOOGLE SHEET
            # view=3 -> LUMA
            row([
                btn(class="col bg-grey-8 q-my-md", "FULL DASHBOARD", @click("view='ALL'"))
            ]),
            row(class="q-gutter-lg",[
                btn(class="col bg-grey-8 q-my-md", "CAL", @click("view='CAL'")),
                btn(class="col bg-grey-8 q-my-md", "SHEET", @click("view='SHEET'")),
                btn(class="col bg-grey-8 q-my-md", "LUMA", @click("view='LUMA'"))
            ])
        ])
    ])
end