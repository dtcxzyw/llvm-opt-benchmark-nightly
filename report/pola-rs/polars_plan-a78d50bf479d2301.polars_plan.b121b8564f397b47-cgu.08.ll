Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.08?download=true
inline.NumInlined: 7193
inline.NumDeleted: 1889
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNvXs5_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6CanvasINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_8TreeViewE4from:bb.a
  %i.rg = icmp ult i64 %i.qs, %i.rf, !dbg !165624
  br i1 %i.rg, label %bb.bw, label %.invoke, !dbg !165624

bb.bw:                                            ; preds = %bb.bv
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rd, i64 8, !dbg !165625
  %i.ri = load ptr, ptr %i.rh, align 8, !dbg !165625, !noalias !165169, !nonnull !2277, !noundef !2277
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.qs, !dbg !165626
  store i32 %i.qv, ptr %i.rj, align 4, !dbg !165627, !noalias !165169
  br label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i.i164, !dbg !165628

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i.i164: ; preds = %bb.bw, %bb.bt
  %i.rk = add i64 %i.qk, 1, !dbg !165629
  %i.rl = add i64 %i.rk, %i.qr, !dbg !165629      ; 10 uses
  %i.rm = load i32, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !165630, !range !3491, !alias.scope !165167, !noalias !165164, !noundef !2277
  call void @llvm.experimental.noalias.scope.decl(metadata !165170), !dbg !165631
  %i.rn = icmp ult i64 %i.rl, %i.qw, !dbg !165632 ; 3 uses
  %or.cond.i1.i.i = and i1 %i.rn, %i.qz, !dbg !165632
  br i1 %or.cond.i1.i.i, label %bb.bx, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit2.i.i, !dbg !165632

bb.bx:                                            ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i.i164
  %i.ro = load i64, ptr %i.gf, align 8, !dbg !165633, !alias.scope !165171, !noalias !165164, !noundef !2277 ; 2 uses
  %i.rp = icmp ult i64 %i.qu, %i.ro, !dbg !165634
  br i1 %i.rp, label %bb.by, label %.invoke, !dbg !165634

bb.by:                                            ; preds = %bb.bx
  %i.rq = load ptr, ptr %i.gg, align 8, !dbg !165635, !alias.scope !165171, !noalias !165164, !nonnull !2277, !noundef !2277
  %i.rr = getelementptr inbounds nuw [24 x i8], ptr %i.rq, i64 %i.qu, !dbg !165636 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 16, !dbg !165637
  %i.rt = load i64, ptr %i.rs, align 8, !dbg !165637, !noalias !165171, !noundef !2277 ; 2 uses
  %i.ru = icmp ult i64 %i.rl, %i.rt, !dbg !165638
  br i1 %i.ru, label %bb.bz, label %.invoke, !dbg !165638

bb.bz:                                            ; preds = %bb.by
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rr, i64 8, !dbg !165639
  %i.rw = load ptr, ptr %i.rv, align 8, !dbg !165639, !noalias !165171, !nonnull !2277, !noundef !2277
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.rl, !dbg !165640
  store i32 %i.rm, ptr %i.rx, align 4, !dbg !165641, !noalias !165171
  br label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit2.i.i, !dbg !165642

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit2.i.i: ; preds = %bb.bz, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i.i164
  %i.ry = add i64 %i.qt, %i.pi, !dbg !165643      ; 10 uses
  %i.rz = load i32, ptr %.sroa.9.0..sroa_idx, align 4, !dbg !165644, !range !3491, !alias.scope !165167, !noalias !165164, !noundef !2277
  call void @llvm.experimental.noalias.scope.decl(metadata !165172), !dbg !165645
  %i.sa = icmp ult i64 %i.ry, %.fr26.i.i.i        ; 3 uses
  %or.cond.i3.i.i = and i1 %i.qx, %i.sa, !dbg !165646
  br i1 %or.cond.i3.i.i, label %bb.ca, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit4.i.i, !dbg !165646

bb.ca:                                            ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit2.i.i
  %i.sb = load i64, ptr %i.gf, align 8, !dbg !165647, !alias.scope !165173, !noalias !165164, !noundef !2277 ; 2 uses
  %i.sc = icmp ult i64 %i.ry, %i.sb, !dbg !165648
  br i1 %i.sc, label %bb.cb, label %.invoke, !dbg !165648

bb.cb:                                            ; preds = %bb.ca
  %i.sd = load ptr, ptr %i.gg, align 8, !dbg !165649, !alias.scope !165173, !noalias !165164, !nonnull !2277, !noundef !2277
  %i.se = getelementptr inbounds nuw [24 x i8], ptr %i.sd, i64 %i.ry, !dbg !165650 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16, !dbg !165651
  %i.sg = load i64, ptr %i.sf, align 8, !dbg !165651, !noalias !165173, !noundef !2277 ; 2 uses
  %i.sh = icmp ult i64 %i.qs, %i.sg, !dbg !165652
  br i1 %i.sh, label %bb.cc, label %.invoke, !dbg !165652

bb.cc:                                            ; preds = %bb.cb
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 8, !dbg !165653
  %i.sj = load ptr, ptr %i.si, align 8, !dbg !165653, !noalias !165173, !nonnull !2277, !noundef !2277
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.qs, !dbg !165654
  store i32 %i.rz, ptr %i.sk, align 4, !dbg !165655, !noalias !165173
  br label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit4.i.i, !dbg !165656

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit4.i.i: ; preds = %bb.cc, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit2.i.i
  %i.sl = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !165657, !range !3491, !alias.scope !165167, !noalias !165164, !noundef !2277
  call void @llvm.experimental.noalias.scope.decl(metadata !165174), !dbg !165658
  %or.cond.i5.i.i = and i1 %i.rn, %i.sa, !dbg !165659
  br i1 %or.cond.i5.i.i, label %bb.cd, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit6.i.i, !dbg !165659

bb.cd:                                            ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit4.i.i
  %i.sm = load i64, ptr %i.gf, align 8, !dbg !165660, !alias.scope !165175, !noalias !165164, !noundef !2277 ; 2 uses
  %i.sn = icmp ult i64 %i.ry, %i.sm, !dbg !165661
  br i1 %i.sn, label %bb.ce, label %.invoke, !dbg !165661

bb.ce:                                            ; preds = %bb.cd
  %i.so = load ptr, ptr %i.gg, align 8, !dbg !165662, !alias.scope !165175, !noalias !165164, !nonnull !2277, !noundef !2277
  %i.sp = getelementptr inbounds nuw [24 x i8], ptr %i.so, i64 %i.ry, !dbg !165663 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16, !dbg !165664
  %i.sr = load i64, ptr %i.sq, align 8, !dbg !165664, !noalias !165175, !noundef !2277 ; 2 uses
  %i.ss = icmp ult i64 %i.rl, %i.sr, !dbg !165665
  br i1 %i.ss, label %bb.cf, label %.invoke, !dbg !165665

bb.cf:                                            ; preds = %bb.ce
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 8, !dbg !165666
  %i.su = load ptr, ptr %i.st, align 8, !dbg !165666, !noalias !165175, !nonnull !2277, !noundef !2277
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %i.rl, !dbg !165667
  store i32 %i.sl, ptr %i.sv, align 4, !dbg !165668, !noalias !165175
  br label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit6.i.i, !dbg !165669

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit6.i.i: ; preds = %bb.cf, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit4.i.i
  %i.sw = add i64 %i.qr, -1, !dbg !165670         ; 4 uses
  %i.sx = add i64 %i.qk, 2, !dbg !165671          ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !165176), !dbg !165672
  %.not25.i.i.i = icmp eq i64 %i.sx, 0, !dbg !165673
  br i1 %.not25.i.i.i, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit21.thread.i.i, label %.lr.ph20.i.i.i, !dbg !165674

.lr.ph20.i.i.i:                                   ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit6.i.i
  %i.sy = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !range !3491, !alias.scope !165177, !noalias !165164, !noundef !2277 ; 2 uses
  %i.sz = load i64, ptr %i.gf, align 8, !alias.scope !165177, !noalias !165164
  %.fr.i.i.i = freeze i64 %i.sz                   ; 5 uses
  %i.ta = load ptr, ptr %i.gg, align 8, !alias.scope !165177, !noalias !165164, !nonnull !2277 ; 3 uses
  %i.tb = getelementptr inbounds nuw [24 x i8], ptr %i.ta, i64 %i.qu ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  br i1 %i.qz, label %.lr.ph20.split.i.i.i, label %.lr.ph20.i8.i.i

.lr.ph20.split.i.i.i:                             ; preds = %.lr.ph20.i.i.i
  %i.te = icmp ult i64 %i.qu, %.fr.i.i.i
  br i1 %i.te, label %.lr.ph20.split.split.us.i.i.i, label %.lr.ph20.split.split.i.i.i

.lr.ph20.split.split.us.i.i.i:                    ; preds = %.lr.ph20.split.i.i.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i.i.i
  %.sroa.03.019.us21.i.i.i = phi i64 [ %i.tl, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i.i.i ], [ 0, %.lr.ph20.split.i.i.i ] ; 2 uses
  %i.tf = add i64 %.sroa.03.019.us21.i.i.i, %i.sw, !dbg !165675 ; 4 uses
  %i.tg = icmp ult i64 %i.tf, %i.qw, !dbg !165676
  br i1 %i.tg, label %bb.cg, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i.i.i, !dbg !165676

bb.cg:                                            ; preds = %.lr.ph20.split.split.us.i.i.i
  %i.th = load i64, ptr %i.tc, align 8, !dbg !165677, !noalias !165178, !noundef !2277 ; 2 uses
  %i.ti = icmp ult i64 %i.tf, %i.th, !dbg !165678
  br i1 %i.ti, label %bb.ch, label %.invoke, !dbg !165678

bb.ch:                                            ; preds = %bb.cg
  %i.tj = load ptr, ptr %i.td, align 8, !dbg !165679, !noalias !165178, !nonnull !2277, !noundef !2277
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %i.tf, !dbg !165680
  store i32 %i.sy, ptr %i.tk, align 4, !dbg !165681, !noalias !165178
  br label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i.i.i, !dbg !165682

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i.i.i: ; preds = %bb.ch, %.lr.ph20.split.split.us.i.i.i
  %i.tl = add nuw i64 %.sroa.03.019.us21.i.i.i, 1, !dbg !165683 ; 2 uses
  %exitcond39.not.i.i.i = icmp eq i64 %i.tl, %i.sx, !dbg !165674
  br i1 %exitcond39.not.i.i.i, label %.lr.ph20.i8.i.i, label %.lr.ph20.split.split.us.i.i.i, !dbg !165674

.lr.ph20.split.split.i.i.i:                       ; preds = %.lr.ph20.split.i.i.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.i.i.i
  %.sroa.03.019.i.i.i = phi i64 [ %i.to, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.i.i.i ], [ 0, %.lr.ph20.split.i.i.i ] ; 2 uses
  %i.tm = add i64 %.sroa.03.019.i.i.i, %i.sw, !dbg !165675
  %i.tn = icmp ult i64 %i.tm, %i.qw, !dbg !165676
  br i1 %i.tn, label %.invoke, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.i.i.i, !dbg !165676

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.i.i.i: ; preds = %.lr.ph20.split.split.i.i.i
  %i.to = add nuw i64 %.sroa.03.019.i.i.i, 1, !dbg !165683 ; 2 uses
  %exitcond38.not.i.i.i = icmp eq i64 %i.to, %i.sx, !dbg !165674
  br i1 %exitcond38.not.i.i.i, label %.lr.ph20.i8.i.i, label %.lr.ph20.split.split.i.i.i, !dbg !165674

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit21.thread.i.i: ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit6.i.i
  %.pre.i.i = load i64, ptr %i.gf, align 8, !alias.scope !165179, !noalias !165164
  %.pre66.i.i = load ptr, ptr %i.gg, align 8, !alias.scope !165179, !noalias !165164
  br label %.lr.ph.i.i.i, !dbg !165684

.lr.ph20.i8.i.i:                                  ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.i.i.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i.i.i, %.lr.ph20.i.i.i
  %i.tp = getelementptr inbounds nuw [24 x i8], ptr %i.ta, i64 %i.ry ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  br i1 %i.sa, label %.lr.ph20.split.i11.i.i, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit21.i.i

.lr.ph20.split.i11.i.i:                           ; preds = %.lr.ph20.i8.i.i
  %i.ts = icmp ult i64 %i.ry, %.fr.i.i.i
  br i1 %i.ts, label %.lr.ph20.split.split.us.i16.i.i, label %.lr.ph20.split.split.i12.i.i

.lr.ph20.split.split.us.i16.i.i:                  ; preds = %.lr.ph20.split.i11.i.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i18.i.i
  %.sroa.03.019.us21.i17.i.i = phi i64 [ %i.tz, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i18.i.i ], [ 0, %.lr.ph20.split.i11.i.i ] ; 2 uses
  %i.tt = add i64 %.sroa.03.019.us21.i17.i.i, %i.sw, !dbg !165685 ; 4 uses
  %i.tu = icmp ult i64 %i.tt, %i.qw, !dbg !165686
  br i1 %i.tu, label %bb.ci, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i18.i.i, !dbg !165686

bb.ci:                                            ; preds = %.lr.ph20.split.split.us.i16.i.i
  %i.tv = load i64, ptr %i.tq, align 8, !dbg !165687, !noalias !165180, !noundef !2277 ; 2 uses
  %i.tw = icmp ult i64 %i.tt, %i.tv, !dbg !165688
  br i1 %i.tw, label %bb.cj, label %.invoke, !dbg !165688

bb.cj:                                            ; preds = %bb.ci
  %i.tx = load ptr, ptr %i.tr, align 8, !dbg !165689, !noalias !165180, !nonnull !2277, !noundef !2277
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.tt, !dbg !165690
  store i32 %i.sy, ptr %i.ty, align 4, !dbg !165691, !noalias !165180
  br label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i18.i.i, !dbg !165692

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i18.i.i: ; preds = %bb.cj, %.lr.ph20.split.split.us.i16.i.i
  %i.tz = add nuw i64 %.sroa.03.019.us21.i17.i.i, 1, !dbg !165693 ; 2 uses
  %exitcond39.not.i19.i.i = icmp eq i64 %i.tz, %i.sx, !dbg !165694
  br i1 %exitcond39.not.i19.i.i, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit21.i.i, label %.lr.ph20.split.split.us.i16.i.i, !dbg !165694

.lr.ph20.split.split.i12.i.i:                     ; preds = %.lr.ph20.split.i11.i.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.i14.i.i
  %.sroa.03.019.i13.i.i = phi i64 [ %i.uc, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.i14.i.i ], [ 0, %.lr.ph20.split.i11.i.i ] ; 2 uses
  %i.ua = add i64 %.sroa.03.019.i13.i.i, %i.sw, !dbg !165685
  %i.ub = icmp ult i64 %i.ua, %i.qw, !dbg !165686
  br i1 %i.ub, label %.invoke, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.i14.i.i, !dbg !165686

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.i14.i.i: ; preds = %.lr.ph20.split.split.i12.i.i
  %i.uc = add nuw i64 %.sroa.03.019.i13.i.i, 1, !dbg !165693 ; 2 uses
  %exitcond38.not.i15.i.i = icmp eq i64 %i.uc, %i.sx, !dbg !165694
  br i1 %exitcond38.not.i15.i.i, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit21.i.i, label %.lr.ph20.split.split.i12.i.i, !dbg !165694

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit21.i.i: ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.i14.i.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i18.i.i, %.lr.ph20.i8.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !165181), !dbg !165695
  br label %.lr.ph.i.i.i, !dbg !165684

.lr.ph.i.i.i:                                     ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit21.i.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit21.thread.i.i
  %i.ud = phi ptr [ %i.ta, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit21.i.i ], [ %.pre66.i.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit21.thread.i.i ] ; 3 uses
  %i.ue = phi i64 [ %.fr.i.i.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit21.i.i ], [ %.pre.i.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit21.thread.i.i ] ; 6 uses
  %i.uf = load i32, ptr %.sroa.5.0..sroa_idx232, align 4, !range !3491, !alias.scope !165179, !noalias !165164, !noundef !2277 ; 2 uses
  br i1 %i.qx, label %.lr.ph.split.i.i.i, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit23.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i.i.i
  %.sroa.0.018.i.i.i = phi i64 [ %i.uq, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.ug = add i64 %.sroa.0.018.i.i.i, %i.qt, !dbg !165696 ; 4 uses
  %i.uh = icmp ult i64 %i.ug, %.fr26.i.i.i
  br i1 %i.uh, label %bb.ck, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i.i.i, !dbg !165697

bb.ck:                                            ; preds = %.lr.ph.split.i.i.i
  %i.ui = icmp ult i64 %i.ug, %i.ue, !dbg !165698
  br i1 %i.ui, label %bb.cl, label %.invoke, !dbg !165698

bb.cl:                                            ; preds = %bb.ck
  %i.uj = getelementptr inbounds nuw [24 x i8], ptr %i.ud, i64 %i.ug, !dbg !165699 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16, !dbg !165700
  %i.ul = load i64, ptr %i.uk, align 8, !dbg !165700, !noalias !165182, !noundef !2277 ; 2 uses
  %i.um = icmp ult i64 %i.qs, %i.ul, !dbg !165701
  br i1 %i.um, label %bb.cm, label %.invoke, !dbg !165701

bb.cm:                                            ; preds = %bb.cl
  %i.un = getelementptr inbounds nuw i8, ptr %i.uj, i64 8, !dbg !165702
  %i.uo = load ptr, ptr %i.un, align 8, !dbg !165702, !noalias !165182, !nonnull !2277, !noundef !2277
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %i.qs, !dbg !165703
  store i32 %i.uf, ptr %i.up, align 4, !dbg !165704, !noalias !165182
  br label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i.i.i, !dbg !165705

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i.i.i: ; preds = %bb.cm, %.lr.ph.split.i.i.i
  %i.uq = add nuw nsw i64 %.sroa.0.018.i.i.i, 1, !dbg !165706 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.uq, %i.pi, !dbg !165684
  br i1 %exitcond.not.i.i.i, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit23.i.i, label %.lr.ph.split.i.i.i, !dbg !165684

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit23.i.i: ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i.i.i, %.lr.ph.i.i.i
  br i1 %i.rn, label %.lr.ph.split.i26.i.i, label %.lr.ph68.i.preheader

.lr.ph.split.i26.i.i:                             ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit23.i.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i28.i.i
  %.sroa.0.018.i27.i.i = phi i64 [ %i.vb, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i28.i.i ], [ 0, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit23.i.i ] ; 2 uses
  %i.ur = add i64 %.sroa.0.018.i27.i.i, %i.qt, !dbg !165707 ; 4 uses
  %i.us = icmp ult i64 %i.ur, %.fr26.i.i.i
  br i1 %i.us, label %bb.cn, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i28.i.i, !dbg !165708

bb.cn:                                            ; preds = %.lr.ph.split.i26.i.i
  %i.ut = icmp ult i64 %i.ur, %i.ue, !dbg !165709
  br i1 %i.ut, label %bb.co, label %.invoke, !dbg !165709

bb.co:                                            ; preds = %bb.cn
  %i.uu = getelementptr inbounds nuw [24 x i8], ptr %i.ud, i64 %i.ur, !dbg !165710 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 16, !dbg !165711
  %i.uw = load i64, ptr %i.uv, align 8, !dbg !165711, !noalias !165183, !noundef !2277 ; 2 uses
  %i.ux = icmp ult i64 %i.rl, %i.uw, !dbg !165712
  br i1 %i.ux, label %bb.cp, label %.invoke, !dbg !165712

bb.cp:                                            ; preds = %bb.co
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uu, i64 8, !dbg !165713
  %i.uz = load ptr, ptr %i.uy, align 8, !dbg !165713, !noalias !165183, !nonnull !2277, !noundef !2277
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %i.rl, !dbg !165714
  store i32 %i.uf, ptr %i.va, align 4, !dbg !165715, !noalias !165183
  br label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i28.i.i, !dbg !165716

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i28.i.i: ; preds = %bb.cp, %.lr.ph.split.i26.i.i
  %i.vb = add nuw nsw i64 %.sroa.0.018.i27.i.i, 1, !dbg !165717 ; 2 uses
  %exitcond.not.i29.i.i = icmp eq i64 %i.vb, %i.pi, !dbg !165718
  br i1 %exitcond.not.i29.i.i, label %.lr.ph68.i.preheader, label %.lr.ph.split.i26.i.i, !dbg !165718

.lr.ph68.i.preheader:                             ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i28.i.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit23.i.i
  br label %.lr.ph68.i, !dbg !165719

.lr.ph68.i:                                       ; preds = %.lr.ph68.i.preheader, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread.i
  %.sroa.0.067.i = phi ptr [ %i.vc, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread.i ], [ %i.qg, %.lr.ph68.i.preheader ] ; 3 uses
  %.sroa.7.066.i = phi i64 [ %i.vd, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread.i ], [ 0, %.lr.ph68.i.preheader ] ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.0.067.i, i64 16, !dbg !165720 ; 2 uses
  %i.vd = add nuw nsw i64 %.sroa.7.066.i, 1, !dbg !165721
  %i.ve = load ptr, ptr %.sroa.0.067.i, align 8, !dbg !165722, !alias.scope !165164, !noalias !165163, !nonnull !2277, !noundef !2277 ; 3 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.0.067.i, i64 8, !dbg !165722
  %i.vg = load i64, ptr %i.vf, align 8, !dbg !165722, !alias.scope !165164, !noalias !165163, !noundef !2277 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 %i.vg, !dbg !165723 ; 8 uses
  %.not.i.i63.i = icmp samesign eq i64 %i.vg, 0, !dbg !165724
  br i1 %.not.i.i63.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread.i, label %.lr.ph.i165, !dbg !165719

.lr.ph.i165:                                      ; preds = %.lr.ph68.i
  %i.vi = add i64 %.sroa.7.066.i, %i.qt
  %.fr69.i = freeze i64 %i.vi                     ; 4 uses
  %i.vj = icmp ult i64 %.fr69.i, %.fr26.i.i.i
  %i.vk = icmp ult i64 %.fr69.i, %i.ue
  %i.vl = getelementptr inbounds nuw [24 x i8], ptr %i.ud, i64 %.fr69.i ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  br i1 %i.vj, label %.lr.ph.split.i166, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i165, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread35.us.i
  %.sroa.020.065.us.i = phi ptr [ %.sroa.020.139.us.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread35.us.i ], [ %i.ve, %.lr.ph.i165 ] ; 5 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.sroa.020.065.us.i, i64 1, !dbg !165725 ; 3 uses
  %i.vp = load i8, ptr %.sroa.020.065.us.i, align 1, !dbg !165726, !noalias !165186, !noundef !2277 ; 4 uses
  %i.vq = icmp sgt i8 %i.vp, -1, !dbg !165727
  br i1 %i.vq, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread35.us.i, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.us.i, !dbg !165727

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.us.i: ; preds = %.lr.ph.split.us.i
  %i.vr = zext i8 %i.vp to i32, !dbg !165728
  %i.vs = icmp ne ptr %i.vo, %i.vh, !dbg !165729
  call void @llvm.assume(i1 %i.vs), !dbg !165730
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.020.065.us.i, i64 2, !dbg !165731 ; 3 uses
  %i.vu = icmp samesign ugt i8 %i.vp, -33, !dbg !165732
  br i1 %i.vu, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.us.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread35.us.i, !dbg !165732

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.us.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.us.i
  %i.vv = icmp ne ptr %i.vt, %i.vh, !dbg !165733
  call void @llvm.assume(i1 %i.vv), !dbg !165734
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.020.065.us.i, i64 3, !dbg !165735 ; 3 uses
  %i.vx = icmp samesign ugt i8 %i.vp, -17, !dbg !165736
  br i1 %i.vx, label %_RNvXNtNtCscgRAwXFJnXP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.us.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread35.us.i, !dbg !165736

_RNvXNtNtCscgRAwXFJnXP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.us.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.us.i
  %i.vy = load i8, ptr %i.vt, align 1, !dbg !165737, !noalias !165186, !noundef !2277
  %i.vz = and i8 %i.vy, 63, !dbg !165738
  %i.wa = zext nneg i8 %i.vz to i32, !dbg !165738
  %i.wb = load i8, ptr %i.vo, align 1, !dbg !165739, !noalias !165186, !noundef !2277
  %i.wc = and i8 %i.wb, 63, !dbg !165740
  %i.wd = zext nneg i8 %i.wc to i32, !dbg !165740
  %i.we = icmp ne ptr %i.vw, %i.vh, !dbg !165741
  call void @llvm.assume(i1 %i.we), !dbg !165742
  %i.wf = load i8, ptr %i.vw, align 1, !dbg !165743, !noalias !165186, !noundef !2277
  %i.wg = shl nuw nsw i32 %i.vr, 18, !dbg !165744
  %i.wh = and i32 %i.wg, 1835008, !dbg !165744
  %i.wi = shl nuw nsw i32 %i.wd, 12, !dbg !165745
  %i.wj = shl nuw nsw i32 %i.wa, 6, !dbg !165745
  %i.wk = or disjoint i32 %i.wi, %i.wj, !dbg !165745
  %i.wl = and i8 %i.wf, 63, !dbg !165746
  %i.wm = zext nneg i8 %i.wl to i32, !dbg !165746
  %i.wn = or disjoint i32 %i.wk, %i.wm, !dbg !165745
  %i.wo = or disjoint i32 %i.wn, %i.wh, !dbg !165747
  %.not.i.us.i = icmp eq i32 %i.wo, 1114112, !dbg !165748
  br i1 %.not.i.us.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.us.i, !dbg !165749

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.us.i: ; preds = %_RNvXNtNtCscgRAwXFJnXP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.us.i
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.020.065.us.i, i64 4, !dbg !165750
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread35.us.i, !dbg !165751

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread35.us.i: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.us.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.us.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.us.i, %.lr.ph.split.us.i
  %.sroa.020.139.us.i = phi ptr [ %i.wp, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.us.i ], [ %i.vt, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.us.i ], [ %i.vw, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.us.i ], [ %i.vo, %.lr.ph.split.us.i ] ; 2 uses
  %.not.i.i.us.i = icmp eq ptr %.sroa.020.139.us.i, %i.vh, !dbg !165724
  br i1 %.not.i.i.us.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread.i, label %.lr.ph.split.us.i, !dbg !165719

.lr.ph.split.i166:                                ; preds = %.lr.ph.i165, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i167
  %.sroa.020.065.i = phi ptr [ %.sroa.020.139.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i167 ], [ %i.ve, %.lr.ph.i165 ] ; 5 uses
  %.sroa.10.064.i = phi i64 [ %i.xy, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i167 ], [ 0, %.lr.ph.i165 ] ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.sroa.020.065.i, i64 1, !dbg !165725 ; 3 uses
  %i.wr = load i8, ptr %.sroa.020.065.i, align 1, !dbg !165726, !noalias !165186, !noundef !2277 ; 5 uses
  %i.ws = icmp sgt i8 %i.wr, -1, !dbg !165727
  br i1 %i.ws, label %bb.cq, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.i, !dbg !165727

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.i: ; preds = %.lr.ph.split.i166
  %i.wt = and i8 %i.wr, 31, !dbg !165728
  %i.wu = zext nneg i8 %i.wt to i32, !dbg !165728 ; 3 uses
  %i.wv = icmp ne ptr %i.wq, %i.vh, !dbg !165729
  call void @llvm.assume(i1 %i.wv), !dbg !165730
  %i.ww = getelementptr inbounds nuw i8, ptr %.sroa.020.065.i, i64 2, !dbg !165731 ; 3 uses
  %i.wx = load i8, ptr %i.wq, align 1, !dbg !165739, !noalias !165186, !noundef !2277
  %i.wy = shl nuw nsw i32 %i.wu, 6, !dbg !165752
  %i.wz = and i8 %i.wx, 63, !dbg !165740
  %i.xa = zext nneg i8 %i.wz to i32, !dbg !165740 ; 2 uses
  %i.xb = or disjoint i32 %i.wy, %i.xa, !dbg !165752
  %i.xc = icmp samesign ugt i8 %i.wr, -33, !dbg !165732
  br i1 %i.xc, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread35.i, !dbg !165732

bb.cq:                                            ; preds = %.lr.ph.split.i166
  %i.xd = zext nneg i8 %i.wr to i32, !dbg !165753
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread35.i, !dbg !165754

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.i
  %i.xe = icmp ne ptr %i.ww, %i.vh, !dbg !165733
  call void @llvm.assume(i1 %i.xe), !dbg !165734
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.020.065.i, i64 3, !dbg !165735 ; 3 uses
  %i.xg = load i8, ptr %i.ww, align 1, !dbg !165737, !noalias !165186, !noundef !2277
  %i.xh = shl nuw nsw i32 %i.xa, 6, !dbg !165755
  %i.xi = and i8 %i.xg, 63, !dbg !165738
  %i.xj = zext nneg i8 %i.xi to i32, !dbg !165738
  %i.xk = or disjoint i32 %i.xh, %i.xj, !dbg !165755 ; 2 uses
  %i.xl = shl nuw nsw i32 %i.wu, 12, !dbg !165756
  %i.xm = or disjoint i32 %i.xk, %i.xl, !dbg !165757
  %i.xn = icmp samesign ugt i8 %i.wr, -17, !dbg !165736
  br i1 %i.xn, label %_RNvXNtNtCscgRAwXFJnXP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread35.i, !dbg !165736

_RNvXNtNtCscgRAwXFJnXP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.i
  %i.xo = icmp ne ptr %i.xf, %i.vh, !dbg !165741
  call void @llvm.assume(i1 %i.xo), !dbg !165742
  %i.xp = load i8, ptr %i.xf, align 1, !dbg !165743, !noalias !165186, !noundef !2277
  %i.xq = shl nuw nsw i32 %i.wu, 18, !dbg !165744
  %i.xr = and i32 %i.xq, 1835008, !dbg !165744
  %i.xs = shl nuw nsw i32 %i.xk, 6, !dbg !165745
  %i.xt = and i8 %i.xp, 63, !dbg !165746
  %i.xu = zext nneg i8 %i.xt to i32, !dbg !165746
  %i.xv = or disjoint i32 %i.xs, %i.xu, !dbg !165745
  %i.xw = or disjoint i32 %i.xv, %i.xr, !dbg !165747 ; 2 uses
  %.not.i.i = icmp eq i32 %i.xw, 1114112, !dbg !165748
  br i1 %.not.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !165749

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RNvXNtNtCscgRAwXFJnXP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i
  %i.xx = getelementptr inbounds nuw i8, ptr %.sroa.020.065.i, i64 4, !dbg !165750
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.thread35.i, !dbg !165751

end_hunk_0
