function syncMenu()
    cell(class="col-auto align-center", [
        col(class="row items-center justify-evenly", [
            row([
                btn(class="col q-my-md", color=:SYN, disabled=:sync_disabled, "SYNC TO", @click("sync=0; SYN='blue-grey-7'; sync_loading=true"))
            ]),
            row(class="q-gutter-lg", [
                btn(class="col q-my-md", color=:CAL, "CAL", @click("sync=1; sync_disabled=false; SYN='grey-7'; CAL='blue-grey-7'; SHE='grey-7'; LUM='grey-7'")),
                btn(class="col q-my-md", color=:SHE, "SHEET", @click("sync=2; sync_disabled=false; SYN='grey-7'; CAL='grey-7'; SHE='blue-grey-7'; LUM='grey-7'")),
                btn(class="col q-my-md", color=:LUM, "LUMA", @click("sync=3; sync_disabled=false; SYN='grey-7'; CAL='grey-7'; SHE='grey-7'; LUM='blue-grey-7'"))
            ])
        ])
    ])
end