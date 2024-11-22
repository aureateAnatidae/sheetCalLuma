Stipple.Layout.add_script("https://cdn.tailwindcss.com")
function nav()
    cell(class="align-center", [
        col(class="row items-center justify-evenly", [
            # View index key:
            # 
            # view=0 -> FULL DASH
            # view=1 -> GOOGLE CALENDAR
            # view=2 -> GOOGLE SHEET
            # view=3 -> LUMA
            row([
                btn(class="col q-my-md", color=:fc, "FULL DASHBOARD", @click("view=0; fc='blue-grey-7'; cc='grey-7'; sc='grey-7'; lc='grey-7'"))
            ]),
            row(class="q-gutter-lg",[
                btn(class="col q-my-md", color=:cc, "CAL", @click("view=1;  fc='grey-7'; cc='blue-grey-7'; sc='grey-7'; lc='grey-7'")),
                btn(class="col q-my-md", color=:sc, "SHEET", @click("view=2;  fc='grey-7'; cc='grey-7'; sc='blue-grey-7'; lc='grey-7'")),
                btn(class="col q-my-md", color=:lc, "LUMA", @click("view=3;  fc='grey-7'; cc='grey-7'; sc='grey-7'; lc='blue-grey-7'"))
            ])
        ])
    ])
end