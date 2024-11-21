Stipple.Layout.add_script("https://cdn.tailwindcss.com")
function nav()
    cell(class="fixed-center", [
        col(class="row items-center justify-evenly", [
            # View index key:
            # 
            # view=0 -> FULL DASH
            # view=1 -> GOOGLE CALENDAR
            # view=2 -> GOOGLE SHEET
            # view=3 -> LUMA
            btn(:view),
            btn("AAAAAAAAAAAAAAAA"),
            row([
                btn(class="col q-my-md", color=:fc, "FULL DASHBOARD", @click("view=0; fc='blue-grey-7'"))
            ]),
            row(class="q-gutter-lg",[
                btn(class="col q-my-md", color=:cc, "CAL", @click("view=1; cc='blue-grey-7'")),
                btn(class="col q-my-md", color=:sc, "SHEET", @click("view=2; sc='blue-grey-7'")),
                btn(class="col q-my-md", color=:lc, "LUMA", @click("view=3; lc='blue-grey-7'"))
            ])
        ])
    ])
end