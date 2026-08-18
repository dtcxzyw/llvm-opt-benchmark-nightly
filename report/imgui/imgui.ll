inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui8NewFrameEv:bb.a
  %i.chd = getelementptr inbounds nuw i8, ptr %i.aln, i64 5428
  %i.che = load i32, ptr %i.chd, align 4, !tbaa !819 ; 2 uses
  %i.chf = icmp eq i32 %i.che, 0
  br i1 %i.chf, label %bb.pm, label %bb.pl

.thread360.i:                                     ; preds = %bb.pd, %.thread361.i, %.thread352.i
  %i.chg = phi i1 [ %i.cgy, %.thread352.i ], [ %i.cgz, %.thread361.i ], [ %i.cgz, %bb.pd ] ; 3 uses
  %i.chh = phi i1 [ true, %.thread352.i ], [ %i.cha, %.thread361.i ], [ %i.cha, %bb.pd ] ; 4 uses
  %i.chi = phi i1 [ false, %.thread352.i ], [ true, %.thread361.i ], [ %i.chc, %bb.pd ] ; 3 uses
  %or.cond3.i = and i1 %i.ant, %i.chh
  br i1 %or.cond3.i, label %bb.pe, label %bb.pj

bb.pe:                                            ; preds = %.thread360.i
  %i.chj = getelementptr inbounds nuw i8, ptr %i.aln, i64 113
  %i.chk = load i8, ptr %i.chj, align 1, !tbaa !1059, !range !64, !noundef !204
  %i.chl = trunc nuw i8 %i.chk to i1
  %i.chm = select i1 %i.chl, i32 635, i32 637     ; 2 uses
  %i.chn = call noundef zeroext i1 @_ZN5ImGui9IsKeyDownE8ImGuiKeyj(i32 noundef %i.chm, i32 noundef -1)
  br i1 %i.chn, label %bb.pf, label %bb.pj

bb.pf:                                            ; preds = %bb.pe
  %i.cho = getelementptr inbounds nuw i8, ptr %i.aln, i64 8240
  %i.chp = load i32, ptr %i.cho, align 8, !tbaa !1065
  %i.chq = and i32 %i.chp, 1048576
  %.not234.i = icmp eq i32 %i.chq, 0
  br i1 %.not234.i, label %bb.pj, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.chr = zext nneg i32 %i.chm to i64
  %i.chs = getelementptr [16 x i8], ptr %i.cfm, i64 %i.chr ; 2 uses
  %i.cht = getelementptr i8, ptr %i.chs, i64 -7876
  %i.chu = load float, ptr %i.cht, align 4, !tbaa !1009
  %i.chv = fcmp olt float %i.chu, 6.000000e-01
  br i1 %i.chv, label %bb.ph, label %bb.pj

bb.ph:                                            ; preds = %bb.pg
  %i.chw = getelementptr i8, ptr %i.chs, i64 -7880
  %i.chx = load float, ptr %i.chw, align 4, !tbaa !1008
  %i.chy = fcmp ult float %i.chx, 6.000000e-01
  br i1 %i.chy, label %bb.pj, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  br label %bb.pj

bb.pj:                                            ; preds = %bb.pi, %bb.ph, %bb.pg, %bb.pf, %bb.pe, %.thread360.i
  %.0205.i = phi i1 [ true, %bb.pi ], [ false, %bb.ph ], [ false, %bb.pg ], [ false, %bb.pf ], [ false, %bb.pe ], [ false, %.thread360.i ] ; 3 uses
  %i.chz = getelementptr inbounds nuw i8, ptr %i.aln, i64 5428
  %i.cia = load i32, ptr %i.chz, align 4, !tbaa !819 ; 2 uses
  %i.cib = icmp eq i32 %i.cia, 0                  ; 2 uses
  %or.cond5.i = and i1 %i.chg, %i.cib
  br i1 %or.cond5.i, label %.thread362.i, label %bb.pk

.thread362.i:                                     ; preds = %bb.pj
  store i32 %i.cfs, ptr %i.cfp, align 4, !tbaa !837
  store i32 2, ptr %i.cfq, align 8, !tbaa !1066
  br label %bb.pm

bb.pk:                                            ; preds = %bb.pj
  br i1 %i.cib, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %.thread380.i
  %i.cic = phi i1 [ false, %.thread380.i ], [ %i.chi, %bb.pk ] ; 3 uses
  %i.cid = phi i1 [ false, %.thread380.i ], [ %i.chh, %bb.pk ]
  %i.cie = phi i1 [ false, %.thread380.i ], [ %i.chg, %bb.pk ]
  %.0205384390.i = phi i1 [ false, %.thread380.i ], [ %.0205.i, %bb.pk ] ; 3 uses
  %i.cif = phi i32 [ %i.che, %.thread380.i ], [ %i.cia, %bb.pk ]
  %i.cig = icmp eq i32 %i.cif, %i.cfs             ; 3 uses
  %or.cond7.i341 = or i1 %i.cic, %.0205384390.i
  %or.cond246.i = and i1 %or.cond7.i341, %i.cig
  br i1 %or.cond246.i, label %bb.pn, label %.thread364.i

bb.pm:                                            ; preds = %bb.pk, %.thread362.i, %.thread380.i
  %.0205383.i = phi i1 [ %.0205.i, %.thread362.i ], [ %.0205.i, %bb.pk ], [ false, %.thread380.i ] ; 3 uses
  %i.cih = phi i1 [ true, %.thread362.i ], [ %i.chg, %bb.pk ], [ false, %.thread380.i ]
  %i.cii = phi i1 [ %i.chh, %.thread362.i ], [ %i.chh, %bb.pk ], [ false, %.thread380.i ]
  %i.cij = phi i1 [ %i.chi, %.thread362.i ], [ %i.chi, %bb.pk ], [ false, %.thread380.i ] ; 3 uses
  %or.cond7.old.i = or i1 %.0205383.i, %i.cij
  br i1 %or.cond7.old.i, label %.thread365.i, label %.thread363.i

.thread365.i:                                     ; preds = %bb.pm
  store i32 %i.cfs, ptr %i.cfp, align 4, !tbaa !837
  store i32 1, ptr %i.cfq, align 8, !tbaa !1066
  br label %.thread363.i

bb.pn:                                            ; preds = %bb.pl
  store i32 %i.cfs, ptr %i.cfp, align 4, !tbaa !837
  store i32 1, ptr %i.cfq, align 8, !tbaa !1066
  br label %.thread364.i

.thread364.i:                                     ; preds = %bb.pn, %bb.pl
  %or.cond9.i = or i1 %i.cic, %i.cid
  %or.cond11.i = or i1 %or.cond9.i, %.0205384390.i
  %or.cond247.i = and i1 %or.cond11.i, %i.cig
  br i1 %or.cond247.i, label %bb.po, label %.thread367.i

.thread363.i:                                     ; preds = %.thread365.i, %bb.pm
  %or.cond9.old.i = or i1 %i.cii, %i.cij
  %or.cond11.old.i = or i1 %.0205383.i, %or.cond9.old.i
  br i1 %or.cond11.old.i, label %.thread368.i, label %.thread366.i

.thread368.i:                                     ; preds = %.thread363.i
  store i32 %i.cfs, ptr %i.cfo, align 8, !tbaa !1067
  br label %.thread366.i

bb.po:                                            ; preds = %.thread364.i
  store i32 %i.cfs, ptr %i.cfo, align 8, !tbaa !1067
  br label %.thread367.i

.thread367.i:                                     ; preds = %bb.po, %.thread364.i
  %or.cond13.i = or i1 %i.cic, %i.cie
  %or.cond15.i = or i1 %or.cond13.i, %.0205384390.i
  %or.cond248.i = and i1 %or.cond15.i, %i.cig
  br i1 %or.cond248.i, label %bb.pp, label %bb.pq

.thread366.i:                                     ; preds = %.thread368.i, %.thread363.i
  %or.cond13.old.i = or i1 %i.cih, %i.cij
  %or.cond15.old.i = or i1 %.0205383.i, %or.cond13.old.i
  br i1 %or.cond15.old.i, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %.thread366.i, %.thread367.i
  store i32 %i.cfs, ptr %i.cfn, align 4, !tbaa !1068
  %i.cik = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8280
  store i32 %i.cfs, ptr %i.cik, align 8, !tbaa !1069
  %i.cil = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8284
  store float 1.000000e-01, ptr %i.cil, align 4, !tbaa !1070
  br label %bb.pq

bb.pq:                                            ; preds = %bb.pp, %.thread366.i, %.thread367.i, %bb.ov, %bb.ot, %bb.os, %_ZN5ImGuiL27NavUpdateContextMenuRequestEv.exit.i
  %.pr.i = load ptr, ptr %i.aqt, align 8, !tbaa !389 ; 2 uses
  %.not235.i = icmp eq ptr %.pr.i, null
  br i1 %.not235.i, label %.thread370.i, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.cim = getelementptr inbounds nuw i8, ptr %.pr.i, i64 20
  %i.cin = load i32, ptr %i.cim, align 4, !tbaa !722
  %i.cio = and i32 %i.cin, 65536
  %.not236.i = icmp eq i32 %i.cio, 0
  br i1 %.not236.i, label %.thread370.i, label %.sink.split.i

.thread370.i:                                     ; preds = %bb.pr, %bb.pq, %bb.ou
  %i.cip = getelementptr inbounds nuw i8, ptr %i.aln, i64 119
  %i.ciq = load i8, ptr %i.cip, align 1, !tbaa !1071, !range !64, !noundef !204
  %i.cir = trunc nuw i8 %i.ciq to i1
  br i1 %i.cir, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %.thread370.i
  %i.cis = load i8, ptr %i.apz, align 8, !tbaa !1042
  %i.cit = icmp eq i8 %i.cis, 0
  br i1 %i.cit, label %.sink.split.i, label %bb.pt

.sink.split.i:                                    ; preds = %bb.ps, %bb.pr
  %.sink.i = phi i8 [ 0, %bb.pr ], [ 1, %bb.ps ]
  %i.ciu = getelementptr inbounds nuw i8, ptr %i.aln, i64 8216
  store i8 %.sink.i, ptr %i.ciu, align 8, !tbaa !474
  br label %bb.pt

bb.pt:                                            ; preds = %.sink.split.i, %bb.ps, %.thread370.i
  %i.civ = getelementptr inbounds nuw i8, ptr %i.aln, i64 8284 ; 2 uses
  %i.ciw = load float, ptr %i.civ, align 4, !tbaa !1070 ; 3 uses
  %i.cix = fcmp ogt float %i.ciw, 0.000000e+00
  br i1 %i.cix, label %bb.pu, label %bb.pv

bb.pu:                                            ; preds = %bb.pt
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.aln, i64 64
  %i.ciz = load float, ptr %i.ciy, align 8, !tbaa !1010
  %i.cja = fsub float %i.ciw, %i.ciz              ; 2 uses
  %i.cjb = fcmp ole float %i.cja, 0.000000e+00
  %i.cjc = select i1 %i.cjb, float 0.000000e+00, float %i.cja ; 2 uses
  store float %i.cjc, ptr %i.civ, align 4, !tbaa !1070
  br label %bb.pv

bb.pv:                                            ; preds = %bb.pu, %bb.pt
  %i.cjd = phi float [ %i.cjc, %bb.pu ], [ %i.ciw, %bb.pt ]
  %i.cje = fcmp oeq float %i.cjd, 0.000000e+00
  br i1 %i.cje, label %bb.pw, label %bb.px

bb.pw:                                            ; preds = %bb.pv
  %i.cjf = getelementptr inbounds nuw i8, ptr %i.aln, i64 8280
  store i32 0, ptr %i.cjf, align 8, !tbaa !1069
  br label %bb.px

bb.px:                                            ; preds = %bb.pw, %bb.pv
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.aln, i64 8296 ; 2 uses
  %i.cjh = load i32, ptr %i.cjg, align 8, !tbaa !1072 ; 4 uses
  %.not237.i = icmp eq i32 %i.cjh, 0
  br i1 %.not237.i, label %bb.pz, label %bb.py

bb.py:                                            ; preds = %bb.px
  store i32 %i.cjh, ptr %i.cfn, align 4, !tbaa !1068
  store i32 %i.cjh, ptr %i.cfo, align 8, !tbaa !1067
  store i32 %i.cjh, ptr %i.cfp, align 4, !tbaa !837
  %i.cji = getelementptr inbounds nuw i8, ptr %i.aln, i64 8300
  %i.cjj = load i32, ptr %i.cji, align 4, !tbaa !1073
  store i32 %i.cjj, ptr %i.cfq, align 8, !tbaa !1066
  br label %bb.pz

bb.pz:                                            ; preds = %bb.py, %bb.px
  store i32 0, ptr %i.cjg, align 8, !tbaa !1072
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.cfm, i64 40
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8224
  %i.cjm = load ptr, ptr %i.cjl, align 8, !tbaa !389 ; 21 uses
  %i.cjn = load i32, ptr %i.cjk, align 8, !tbaa !920 ; 2 uses
  %i.cjo = and i32 %i.cjn, 2
  %.not.i303.i = icmp eq i32 %i.cjo, 0
  br i1 %.not.i303.i, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cfm, i64 44
  %i.cjq = load i32, ptr %i.cjp, align 4, !tbaa !1007
  %i.cjr = trunc i32 %i.cjq to i1
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.pz
  %i.cjs = phi i1 [ false, %bb.pz ], [ %i.cjr, %bb.qa ] ; 4 uses
  %i.cjt = trunc i32 %i.cjn to i1                 ; 5 uses
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8386 ; 2 uses
  %i.cjv = load i8, ptr %i.cju, align 2, !tbaa !656, !range !64, !noundef !204
  %i.cjw = trunc nuw i8 %i.cjv to i1
  %i.cjx = icmp ne ptr %i.cjm, null               ; 5 uses
  %or.cond.i304.i = select i1 %i.cjw, i1 %i.cjx, i1 false
  br i1 %or.cond.i304.i, label %bb.qc, label %bb.qe

bb.qc:                                            ; preds = %bb.qb
  %i.cjy = getelementptr inbounds nuw i8, ptr %i.cfm, i64 10404
  %i.cjz = load i32, ptr %i.cjy, align 4, !tbaa !221
  %i.cka = and i32 %i.cjz, 16
  %.not107.i.i = icmp eq i32 %i.cka, 0
  br i1 %.not107.i.i, label %.thread.i313.i, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.ckb = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8400
  %i.ckc = load i32, ptr %i.ckb, align 8, !tbaa !1074
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.760, i32 noundef %i.ckc)
  br label %.thread.i313.i

bb.qe:                                            ; preds = %bb.qb
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8400 ; 5 uses
  store i32 -1, ptr %i.ckd, align 8, !tbaa !1074
  %i.cke = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8388
  store i32 0, ptr %i.cke, align 4, !tbaa !396
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8392
  store i32 0, ptr %i.ckf, align 8, !tbaa !1075
  br i1 %i.cjx, label %bb.qf, label %bb.rf

bb.qf:                                            ; preds = %bb.qe
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8712
  %i.ckh = load ptr, ptr %i.ckg, align 8, !tbaa !1045
  %.not105.i.i = icmp eq ptr %i.ckh, null
  br i1 %.not105.i.i, label %bb.qg, label %.thread234.i.i

bb.qg:                                            ; preds = %bb.qf
  %i.cki = getelementptr inbounds nuw i8, ptr %i.cjm, i64 20
  %i.ckj = load i32, ptr %i.cki, align 4, !tbaa !722
  %i.ckk = and i32 %i.ckj, 65536
  %.not106.i.i = icmp eq i32 %i.ckk, 0
  br i1 %.not106.i.i, label %bb.qh, label %.thread234.i.i

bb.qh:                                            ; preds = %bb.qg
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.cfm, i64 7768
  %i.ckm = load i32, ptr %i.ckl, align 8, !tbaa !649 ; 4 uses
  %i.ckn = and i32 %i.ckm, 1
  %.not240.i321.i = icmp eq i32 %i.ckn, 0
  br i1 %.not240.i321.i, label %bb.qi, label %bb.qn

bb.qi:                                            ; preds = %bb.qh
  br i1 %i.cjs, label %bb.qj, label %bb.qk

bb.qj:                                            ; preds = %bb.qi
  %i.cko = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 638, i32 noundef 5, i32 noundef -1)
  br i1 %i.cko, label %bb.qm, label %bb.qk

bb.qk:                                            ; preds = %bb.qj, %bb.qi
  br i1 %i.cjt, label %bb.ql, label %bb.qn

bb.ql:                                            ; preds = %bb.qk
  %i.ckp = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 513, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckp, label %bb.qm, label %bb.qn

bb.qm:                                            ; preds = %bb.ql, %bb.qj
  store i32 0, ptr %i.ckd, align 8, !tbaa !1074
  br label %bb.qn

bb.qn:                                            ; preds = %bb.qm, %bb.ql, %bb.qk, %bb.qh
  %i.ckq = phi i32 [ 0, %bb.qm ], [ -1, %bb.ql ], [ -1, %bb.qk ], [ -1, %bb.qh ] ; 3 uses
  %i.ckr = and i32 %i.ckm, 2
  %.not241.i322.i = icmp eq i32 %i.ckr, 0
  br i1 %.not241.i322.i, label %bb.qo, label %bb.qt

bb.qo:                                            ; preds = %bb.qn
  br i1 %i.cjs, label %bb.qp, label %bb.qq

bb.qp:                                            ; preds = %bb.qo
  %i.cks = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 639, i32 noundef 5, i32 noundef -1)
  br i1 %i.cks, label %bb.qs, label %bb.qq

bb.qq:                                            ; preds = %bb.qp, %bb.qo
  br i1 %i.cjt, label %bb.qr, label %bb.qt

bb.qr:                                            ; preds = %bb.qq
  %i.ckt = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 514, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckt, label %bb.qs, label %bb.qt

bb.qs:                                            ; preds = %bb.qr, %bb.qp
  store i32 1, ptr %i.ckd, align 8, !tbaa !1074
  br label %bb.qt

bb.qt:                                            ; preds = %bb.qs, %bb.qr, %bb.qq, %bb.qn
  %i.cku = phi i32 [ 1, %bb.qs ], [ %i.ckq, %bb.qr ], [ %i.ckq, %bb.qq ], [ %i.ckq, %bb.qn ] ; 3 uses
  %i.ckv = and i32 %i.ckm, 4
  %.not242.i323.i = icmp eq i32 %i.ckv, 0
  br i1 %.not242.i323.i, label %bb.qu, label %bb.qz

bb.qu:                                            ; preds = %bb.qt
  br i1 %i.cjs, label %bb.qv, label %bb.qw

bb.qv:                                            ; preds = %bb.qu
  %i.ckw = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 640, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckw, label %bb.qy, label %bb.qw

bb.qw:                                            ; preds = %bb.qv, %bb.qu
  br i1 %i.cjt, label %bb.qx, label %bb.qz

bb.qx:                                            ; preds = %bb.qw
  %i.ckx = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 515, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckx, label %bb.qy, label %bb.qz

bb.qy:                                            ; preds = %bb.qx, %bb.qv
  store i32 2, ptr %i.ckd, align 8, !tbaa !1074
  br label %bb.qz

bb.qz:                                            ; preds = %bb.qy, %bb.qx, %bb.qw, %bb.qt
  %i.cky = phi i32 [ 2, %bb.qy ], [ %i.cku, %bb.qx ], [ %i.cku, %bb.qw ], [ %i.cku, %bb.qt ] ; 3 uses
  %i.ckz = and i32 %i.ckm, 8
  %.not243.i.i = icmp eq i32 %i.ckz, 0
  br i1 %.not243.i.i, label %bb.ra, label %.thread234.i.i

bb.ra:                                            ; preds = %bb.qz
  br i1 %i.cjs, label %bb.rb, label %bb.rc

bb.rb:                                            ; preds = %bb.ra
  %i.cla = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 641, i32 noundef 5, i32 noundef -1)
  br i1 %i.cla, label %bb.re, label %bb.rc

bb.rc:                                            ; preds = %bb.rb, %bb.ra
  br i1 %i.cjt, label %bb.rd, label %.thread234.i.i

bb.rd:                                            ; preds = %bb.rc
  %i.clb = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 516, i32 noundef 5, i32 noundef -1)
  br i1 %i.clb, label %bb.re, label %.thread234.i.i

bb.re:                                            ; preds = %bb.rd, %bb.rb
  store i32 3, ptr %i.ckd, align 8, !tbaa !1074
  br label %.thread234.i.i

.thread234.i.i:                                   ; preds = %bb.re, %bb.rd, %bb.rc, %bb.qz, %bb.qg, %bb.qf
  %i.clc = phi i32 [ -1, %bb.qf ], [ -1, %bb.qg ], [ 3, %bb.re ], [ %i.cky, %bb.rd ], [ %i.cky, %bb.rc ], [ %i.cky, %bb.qz ]
  %i.cld = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8408
  store i32 %i.clc, ptr %i.cld, align 8, !tbaa !391
  %i.cle = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8428
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, ptr %i.cle, align 4, !tbaa !8
  br label %.thread.i313.i

bb.rf:                                            ; preds = %bb.qe
  %i.clf = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8408
  store i32 -1, ptr %i.clf, align 8, !tbaa !391
  %i.clg = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8428
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, ptr %i.clg, align 4, !tbaa !8
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

.thread.i313.i:                                   ; preds = %.thread234.i.i, %bb.qd, %bb.qc
  %i.clh = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8400
  %i.cli = load i32, ptr %i.clh, align 8, !tbaa !1074
  %i.clj = icmp eq i32 %i.cli, -1
  %or.cond3.i314.i = and i1 %i.clj, %i.cjt
  br i1 %or.cond3.i314.i, label %bb.rg, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.rg:                                            ; preds = %.thread.i313.i
  %i.clk = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 37 uses
  %i.cll = getelementptr inbounds nuw i8, ptr %i.clk, i64 8224
  %i.clm = load ptr, ptr %i.cll, align 8, !tbaa !389 ; 27 uses
  %i.cln = getelementptr inbounds nuw i8, ptr %i.clm, i64 20
  %i.clo = load i32, ptr %i.cln, align 4, !tbaa !722
  %i.clp = and i32 %i.clo, 65536
  %.not.i.i315.i = icmp eq i32 %i.clp, 0
  br i1 %.not.i.i315.i, label %bb.rh, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.rh:                                            ; preds = %bb.rg
  %i.clq = getelementptr inbounds nuw i8, ptr %i.clk, i64 8712
  %i.clr = load ptr, ptr %i.clq, align 8, !tbaa !1045
  %.not53.i.i.i = icmp eq ptr %i.clr, null
  br i1 %.not53.i.i.i, label %bb.ri, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.ri:                                            ; preds = %bb.rh
  %i.cls = getelementptr i8, ptr %i.clk, i64 388
  %i.clt = load i8, ptr %i.cls, align 4, !tbaa !208, !range !64, !noundef !204
  %i.clu = trunc nuw i8 %i.clt to i1
  br i1 %i.clu, label %bb.rj, label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i

bb.rj:                                            ; preds = %bb.ri
  %i.clv = getelementptr inbounds nuw i8, ptr %i.clk, i64 7772
  %i.clw = load i8, ptr %i.clv, align 4, !tbaa !650, !range !64, !noundef !204
end_hunk_0
begin_hunk_1_@_ZN5ImGui8NewFrameEv:bb.a
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit81.thread.i.i.i: ; preds = %.thread94.i.i.i, %bb.tl, %.split96.i.i.i, %bb.tj, %bb.ti, %bb.tg, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit76.thread.i.i.i
  br i1 %.2.i.i.i.i, label %bb.tn, label %bb.tq

bb.tn:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit81.thread.i.i.i
  store float 0.000000e+00, ptr %i.ctl, align 4, !tbaa !399
  store float 0.000000e+00, ptr %i.ctn, align 4, !tbaa !398
  %i.cwy = load float, ptr %i.ctc, align 4, !tbaa !394
  %i.cwz = getelementptr inbounds nuw i8, ptr %i.ctc, i64 8 ; 2 uses
  %i.cxa = load float, ptr %i.cwz, align 4, !tbaa !395
  %i.cxb = fcmp ogt float %i.cwy, %i.cxa
  br i1 %i.cxb, label %bb.to, label %bb.tp

bb.to:                                            ; preds = %bb.tn
  store float 0.000000e+00, ptr %i.cwz, align 4, !tbaa !395
  store float 0.000000e+00, ptr %i.ctc, align 4, !tbaa !394
  br label %bb.tp

bb.tp:                                            ; preds = %bb.to, %bb.tn
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.clk, i64 8400
  store i32 3, ptr %i.cxc, align 8, !tbaa !1074
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.clk, i64 8388
  store i32 80, ptr %i.cxd, align 4, !tbaa !396
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.tq:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit81.thread.i.i.i
  br i1 %.2.i60.i.i.i, label %bb.tr, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.tr:                                            ; preds = %bb.tq
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.clm, i64 68
  %i.cxf = load float, ptr %i.cxe, align 4, !tbaa !1082 ; 2 uses
  store float %i.cxf, ptr %i.ctl, align 4, !tbaa !399
  store float %i.cxf, ptr %i.ctn, align 4, !tbaa !398
  %i.cxg = load float, ptr %i.ctc, align 4, !tbaa !394
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.ctc, i64 8 ; 2 uses
  %i.cxi = load float, ptr %i.cxh, align 4, !tbaa !395
  %i.cxj = fcmp ogt float %i.cxg, %i.cxi
  br i1 %i.cxj, label %bb.ts, label %bb.tt

bb.ts:                                            ; preds = %bb.tr
  store float 0.000000e+00, ptr %i.cxh, align 4, !tbaa !395
  store float 0.000000e+00, ptr %i.ctc, align 4, !tbaa !394
  br label %bb.tt

bb.tt:                                            ; preds = %bb.ts, %bb.tr
  %i.cxk = getelementptr inbounds nuw i8, ptr %i.clk, i64 8400
  store i32 2, ptr %i.cxk, align 8, !tbaa !1074
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.clk, i64 8388
  store i32 80, ptr %i.cxl, align 4, !tbaa !396
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i:   ; preds = %bb.tt, %bb.tq, %bb.tp, %bb.tm, %bb.tf, %bb.sx, %bb.sw, %bb.sv, %bb.st, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit71.i.i.i, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i, %bb.rh, %bb.rg, %.thread.i313.i, %bb.rf
  %.0.i305.i = phi float [ 0.000000e+00, %bb.rf ], [ 0.000000e+00, %.thread.i313.i ], [ 0.000000e+00, %bb.rg ], [ 0.000000e+00, %bb.rh ], [ 0.000000e+00, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i ], [ 0.000000e+00, %bb.tq ], [ %i.cvf, %bb.tf ], [ %i.cts, %bb.tm ], [ 0.000000e+00, %bb.tp ], [ 0.000000e+00, %bb.tt ], [ 0.000000e+00, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit71.i.i.i ], [ 0.000000e+00, %bb.sv ], [ 0.000000e+00, %bb.sx ], [ 0.000000e+00, %bb.sw ], [ 0.000000e+00, %bb.st ] ; 2 uses
  store i8 0, ptr %i.cju, align 2, !tbaa !656
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8400 ; 2 uses
  %i.cxn = load i32, ptr %i.cxm, align 8, !tbaa !1074 ; 3 uses
  %.not108.i.i = icmp eq i32 %i.cxn, -1
  br i1 %.not108.i.i, label %bb.tw, label %bb.tu

bb.tu:                                            ; preds = %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8408
  %i.cxp = load i32, ptr %i.cxo, align 8, !tbaa !391
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8388
  %i.cxr = load i32, ptr %i.cxq, align 4, !tbaa !396 ; 3 uses
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8392
  %i.cxt = load i32, ptr %i.cxs, align 8, !tbaa !1075
  %i.cxu = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 32 uses
  %i.cxv = lshr i32 %i.cxr, 6
  %i.cxw = and i32 %i.cxv, 16
  %spec.select.i.i.i = or i32 %i.cxw, %i.cxr
  %i.cxx = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8385
  store i8 1, ptr %i.cxx, align 1, !tbaa !388
  %i.cxy = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8384
  store i8 1, ptr %i.cxy, align 8, !tbaa !655
  %i.cxz = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8400
  store i32 %i.cxn, ptr %i.cxz, align 8, !tbaa !1074
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8404
  store i32 %i.cxn, ptr %i.cya, align 4, !tbaa !657
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8408
  store i32 %i.cxp, ptr %i.cyb, align 8, !tbaa !391
  %i.cyc = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8388
  store i32 %spec.select.i.i.i, ptr %i.cyc, align 4, !tbaa !396
  %i.cyd = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8392
  store i32 %i.cxt, ptr %i.cyd, align 8, !tbaa !1075
  %i.cye = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8386
  store i8 0, ptr %i.cye, align 2, !tbaa !656
  %i.cyf = and i32 %i.cxr, 512
  %.not22.i.i.i = icmp eq i32 %i.cyf, 0
  br i1 %.not22.i.i.i, label %bb.tv, label %_ZN5ImGui20NavMoveRequestSubmitE8ImGuiDirS0_ii.exit.i.i

bb.tv:                                            ; preds = %bb.tu
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.cxu, i64 304
  %i.cyh = load i32, ptr %i.cyg, align 8, !tbaa !1023
  br label %_ZN5ImGui20NavMoveRequestSubmitE8ImGuiDirS0_ii.exit.i.i

_ZN5ImGui20NavMoveRequestSubmitE8ImGuiDirS0_ii.exit.i.i: ; preds = %bb.tv, %bb.tu
  %i.cyi = phi i32 [ %i.cyh, %bb.tv ], [ 0, %bb.tu ]
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8396
  store i32 %i.cyi, ptr %i.cyj, align 4, !tbaa !1083
  %i.cyk = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8456
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8488
  store i32 0, ptr %i.cyl, align 8, !tbaa !1084
  %i.cym = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cyk, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.cym, align 8, !tbaa !626
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8500
  store float f0x7F7FFFFF, ptr %i.cyn, align 4, !tbaa !627
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8492
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.cyo, align 4, !tbaa !8
  %i.cyp = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8512
  %i.cyq = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8544
  store i32 0, ptr %i.cyq, align 8, !tbaa !1084
  %i.cyr = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cyp, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.cyr, align 8, !tbaa !626
  %i.cys = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8556
  store float f0x7F7FFFFF, ptr %i.cys, align 4, !tbaa !627
  %i.cyt = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8548
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.cyt, align 4, !tbaa !8
  %i.cyu = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8568
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8600
  store i32 0, ptr %i.cyv, align 8, !tbaa !1084
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8616
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cyu, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.cyw, align 8, !tbaa !626
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8612
  store float f0x7F7FFFFF, ptr %i.cyx, align 4, !tbaa !627
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8604
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.cyy, align 4, !tbaa !8
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8452
  store i32 0, ptr %i.cyz, align 4, !tbaa !659
  %i.cza = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8624
  %i.czb = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8656
  store i32 0, ptr %i.czb, align 8, !tbaa !1084
  %i.czc = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8672
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cza, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.czc, align 8, !tbaa !626
  %i.czd = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8668
  store float f0x7F7FFFFF, ptr %i.czd, align 4, !tbaa !627
  %i.cze = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8660
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.cze, align 4, !tbaa !8
  %i.czf = getelementptr inbounds nuw i8, ptr %i.cxu, i64 8321
  store i8 1, ptr %i.czf, align 1, !tbaa !882
  br label %bb.tw

bb.tw:                                            ; preds = %_ZN5ImGui20NavMoveRequestSubmitE8ImGuiDirS0_ii.exit.i.i, %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i
  %i.czg = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8384 ; 3 uses
  %i.czh = load i8, ptr %i.czg, align 8, !tbaa !655, !range !64, !noundef !204
  %i.czi = trunc nuw i8 %i.czh to i1
  br i1 %i.czi, label %bb.tx, label %bb.ue

bb.tx:                                            ; preds = %bb.tw
  %i.czj = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8220
  %i.czk = load i32, ptr %i.czj, align 4, !tbaa !400
  %i.czl = icmp eq i32 %i.czk, 0
  br i1 %i.czl, label %bb.ty, label %bb.ue

bb.ty:                                            ; preds = %bb.tx
  %i.czm = getelementptr inbounds nuw i8, ptr %i.cfm, i64 10404
  %i.czn = load i32, ptr %i.czm, align 4, !tbaa !221
  %i.czo = and i32 %i.czn, 16
  %.not109.i.i = icmp eq i32 %i.czo, 0
  br i1 %.not109.i.i, label %bb.uc, label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  br i1 %i.cjx, label %bb.ua, label %bb.ub

bb.ua:                                            ; preds = %bb.tz
  %i.czp = getelementptr inbounds nuw i8, ptr %i.cjm, i64 8
  %i.czq = load ptr, ptr %i.czp, align 8, !tbaa !299
  br label %bb.ub

bb.ub:                                            ; preds = %bb.ua, %bb.tz
  %i.czr = phi ptr [ %i.czq, %bb.ua ], [ @.str.165, %bb.tz ]
  %i.czs = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8236
  %i.czt = load i32, ptr %i.czs, align 4, !tbaa !895
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.761, ptr noundef %i.czr, i32 noundef %i.czt)
  br label %bb.uc

bb.uc:                                            ; preds = %bb.ub, %bb.ty
  %i.czu = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8323
  store i8 1, ptr %i.czu, align 1, !tbaa !1041
  %i.czv = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8322
  store i8 1, ptr %i.czv, align 2, !tbaa !881
  %i.czw = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8336
  store i32 0, ptr %i.czw, align 8, !tbaa !1040
  %i.czx = getelementptr inbounds nuw i8, ptr %i.cfm, i64 118
  %i.czy = load i8, ptr %i.czx, align 2, !tbaa !880, !range !64, !noundef !204
  %i.czz = trunc nuw i8 %i.czy to i1
  br i1 %i.czz, label %bb.ud, label %bb.ue

bb.ud:                                            ; preds = %bb.uc
  %i.daa = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8216
  store i8 1, ptr %i.daa, align 8, !tbaa !474
  br label %bb.ue

bb.ue:                                            ; preds = %bb.ud, %bb.uc, %bb.tx, %bb.tw
  %i.dab = load i8, ptr %i.czg, align 8, !tbaa !655, !range !64, !noundef !204
  %i.dac = trunc nuw i8 %i.dab to i1
  br i1 %i.dac, label %bb.uf, label %2

bb.uf:                                            ; preds = %bb.ue
  %i.dad = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8304
  %i.dae = load i32, ptr %i.dad, align 8, !tbaa !653
  %i.daf = icmp eq i32 %i.dae, 3
  br i1 %i.daf, label %bb.ug, label %2

bb.ug:                                            ; preds = %bb.uf
  %i.dag = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8236 ; 2 uses
  %i.dah = load i32, ptr %i.dag, align 4, !tbaa !895
  %i.dai = icmp eq i32 %i.dah, 0
  %or.cond5.i306.i = select i1 %i.dai, i1 %i.cjx, i1 false
  br i1 %or.cond5.i306.i, label %bb.uh, label %2

bb.uh:                                            ; preds = %bb.ug
  %i.daj = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8388
  %i.dak = load i32, ptr %i.daj, align 4, !tbaa !396
  %i.dal = getelementptr inbounds nuw i8, ptr %i.cjm, i64 552
  %i.dam = getelementptr inbounds nuw i8, ptr %i.cjm, i64 560
  %i.dan = getelementptr inbounds nuw i8, ptr %i.cjm, i64 296
  %i.dao = call fastcc <2 x float> @_ZL38CalcNextScrollFromScrollTargetAndClampP11ImGuiWindow(ptr noundef nonnull %i.cjm)
  %i.dap = getelementptr inbounds nuw i8, ptr %i.cjm, i64 152
  %i.daq = insertelement <2 x i32> poison, i32 %i.dak, i64 0
  %i.dar = shufflevector <2 x i32> %i.daq, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.das = and <2 x i32> %i.dar, <i32 5, i32 10>
  %i.dat = icmp eq <2 x i32> %i.das, zeroinitializer ; 3 uses
  %i.dau = load <2 x float>, ptr %i.dal, align 4, !tbaa !8
  %i.dav = fadd <2 x float> %i.dau, splat (float -1.000000e+00)
  %i.daw = load <2 x float>, ptr %i.dam, align 4, !tbaa !8
  %i.dax = fadd <2 x float> %i.daw, splat (float 1.000000e+00)
  %i.day = load <2 x float>, ptr %i.dan, align 8, !tbaa !8 ; 2 uses
  %i.daz = fsub <2 x float> %i.dav, %i.day
  %i.dba = fsub <2 x float> %i.dax, %i.day
  %i.dbb = load <2 x float>, ptr %i.dap, align 8, !tbaa !8
  %i.dbc = fsub <2 x float> %i.dao, %i.dbb        ; 2 uses
  %i.dbd = fadd <2 x float> %i.daz, %i.dbc        ; 4 uses
  %i.dbe = fadd <2 x float> %i.dba, %i.dbc        ; 4 uses
  %i.dbf = bitcast <2 x i1> %i.dat to i2
  %or.cond7.i.i.not = icmp eq i2 %i.dbf, 0
  br i1 %or.cond7.i.i.not, label %.thread239.i.i.a, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  %i.dbg = getelementptr inbounds nuw i8, ptr %i.cjm, i64 1016 ; 3 uses
  %i.dbh = load float, ptr %i.dbg, align 8, !tbaa !394 ; 2 uses
  %i.dbi = extractelement <2 x float> %i.dbd, i64 0
  %i.dbj = fcmp ult float %i.dbh, %i.dbi
  br i1 %i.dbj, label %_ZNK6ImRect8ContainsERKS_.exit.thread.i.i, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  %i.dbk = getelementptr inbounds nuw i8, ptr %i.cjm, i64 1020
  %i.dbl = load float, ptr %i.dbk, align 4, !tbaa !398
  %i.dbm = extractelement <2 x float> %i.dbd, i64 1
  %i.dbn = fcmp ult float %i.dbl, %i.dbm
  br i1 %i.dbn, label %_ZNK6ImRect8ContainsERKS_.exit.thread.i.i, label %bb.uk

bb.uk:                                            ; preds = %bb.uj
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.cjm, i64 1024
  %i.dbp = load float, ptr %i.dbo, align 8, !tbaa !395
  %i.dbq = extractelement <2 x float> %i.dbe, i64 0
  %i.dbr = fcmp ugt float %i.dbp, %i.dbq
  br i1 %i.dbr, label %_ZNK6ImRect8ContainsERKS_.exit.thread.i.i, label %_ZNK6ImRect8ContainsERKS_.exit.i.i

_ZNK6ImRect8ContainsERKS_.exit.i.i:               ; preds = %bb.uk
  %i.dbs = getelementptr inbounds nuw i8, ptr %i.cjm, i64 1028
  %i.dbt = load float, ptr %i.dbs, align 4, !tbaa !399
  %i.dbu = extractelement <2 x float> %i.dbe, i64 1
  %i.dbv = fcmp ugt float %i.dbt, %i.dbu
  br i1 %i.dbv, label %_ZNK6ImRect8ContainsERKS_.exit.thread.i.i, label %.thread239.i.i.a

_ZNK6ImRect8ContainsERKS_.exit.thread.i.i:        ; preds = %_ZNK6ImRect8ContainsERKS_.exit.i.i, %bb.uk, %bb.uj, %bb.ui
  %i.dbw = getelementptr inbounds nuw i8, ptr %i.cfm, i64 10404
  %i.dbx = load i32, ptr %i.dbw, align 4, !tbaa !221
  %i.dby = and i32 %i.dbx, 16
  %.not110.i.i = icmp eq i32 %i.dby, 0
  br i1 %.not110.i.i, label %_Z7ImClampRK6ImVec2S1_S1_.exit.i.i.i, label %bb.ul

bb.ul:                                            ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread.i.i
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.762)
  %.pre.i310.i = load i32, ptr %i.dag, align 4, !tbaa !895
  %.phi.trans.insert.i.i = zext i32 %.pre.i310.i to i64 ; 2 uses
  %.phi.trans.insert246.i.i = getelementptr inbounds nuw [16 x i8], ptr %i.dbg, i64 %.phi.trans.insert.i.i
  %.pre247.i.i = load float, ptr %.phi.trans.insert246.i.i, align 4, !tbaa !227
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit.i.i.i

_Z7ImClampRK6ImVec2S1_S1_.exit.i.i.i:             ; preds = %bb.ul, %_ZNK6ImRect8ContainsERKS_.exit.thread.i.i
  %i.dbz = phi float [ %.pre247.i.i, %bb.ul ], [ %i.dbh, %_ZNK6ImRect8ContainsERKS_.exit.thread.i.i ]
  %i.dca = phi i64 [ %.phi.trans.insert.i.i, %bb.ul ], [ 0, %_ZNK6ImRect8ContainsERKS_.exit.thread.i.i ]
  %i.dcb = fsub <2 x float> %i.dbe, %i.dbd        ; 2 uses
  %i.dcc = getelementptr inbounds nuw i8, ptr %i.cjm, i64 704
  %i.dcd = load float, ptr %i.dcc, align 8, !tbaa !794
  %i.dce = fmul float %i.dcd, 5.000000e-01
  %i.dcf = getelementptr inbounds nuw [16 x i8], ptr %i.dbg, i64 %i.dca ; 3 uses
  %i.dcg = getelementptr inbounds nuw i8, ptr %i.dcf, i64 4
  %i.dch = load float, ptr %i.dcg, align 4, !tbaa !228
  %i.dci = insertelement <2 x float> poison, float %i.dce, i64 0
  %i.dcj = shufflevector <2 x float> %i.dci, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dck = fcmp olt <2 x float> %i.dcb, %i.dcj
  %i.dcl = select <2 x i1> %i.dck, <2 x float> %i.dcb, <2 x float> %i.dcj ; 2 uses
  %i.dcm = fadd <2 x float> %i.dbd, %i.dcl
  %i.dcn = select <2 x i1> %i.dat, <2 x float> %i.dcm, <2 x float> splat (float f0xFF7FFFFF) ; 4 uses
  %i.dco = fsub <2 x float> %i.dbe, %i.dcl
  %i.dcp = select <2 x i1> %i.dat, <2 x float> %i.dco, <2 x float> splat (float f0x7F7FFFFF) ; 4 uses
  %i.dcq = insertelement <2 x float> poison, float %i.dbz, i64 0
  %i.dcr = insertelement <2 x float> %i.dcq, float %i.dch, i64 1 ; 3 uses
  %i.dcs = fcmp olt <2 x float> %i.dcr, %i.dcn
  %i.dct = fcmp ogt <2 x float> %i.dcr, %i.dcp
  %i.dcu = select <2 x i1> %i.dct, <2 x float> %i.dcp, <2 x float> %i.dcr
  %i.dcv = select <2 x i1> %i.dcs, <2 x float> %i.dcn, <2 x float> %i.dcu
  store <2 x float> %i.dcv, ptr %i.dcf, align 4
  %i.dcw = getelementptr inbounds nuw i8, ptr %i.dcf, i64 8 ; 2 uses
  %i.dcx = load <2 x float>, ptr %i.dcw, align 4, !tbaa !8 ; 3 uses
  %i.dcy = fcmp olt <2 x float> %i.dcx, %i.dcn
  %i.dcz = fcmp ogt <2 x float> %i.dcx, %i.dcp
  %i.dda = select <2 x i1> %i.dcz, <2 x float> %i.dcp, <2 x float> %i.dcx
  %i.ddb = select <2 x i1> %i.dcy, <2 x float> %i.dcn, <2 x float> %i.dda
  store <2 x float> %i.ddb, ptr %i.dcw, align 4
  %i.ddc = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8220
  store i32 0, ptr %i.ddc, align 4, !tbaa !400
  br label %.thread239.i.i.a

2:                                                ; preds = %bb.ug, %bb.uf, %bb.ue
  br i1 %i.cjx, label %.thread239.i.i.a, label %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i

.thread239.i.i.a:                                 ; preds = %2, %_Z7ImClampRK6ImVec2S1_S1_.exit.i.i.i, %_ZNK6ImRect8ContainsERKS_.exit.i.i, %bb.uh
  %3 = getelementptr inbounds nuw i8, ptr %i.cjm, i64 1016
  %4 = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8236
  %5 = load i32, ptr %4, align 4, !tbaa !895
  %6 = zext i32 %5 to i64                         ; 2 uses
  %7 = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %6 ; 4 uses
  %8 = load float, ptr %7, align 4, !tbaa !394    ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %10 = load float, ptr %9, align 4, !tbaa !395   ; 2 uses
  %11 = fcmp ogt float %8, %10
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %13 = load float, ptr %12, align 4              ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %15 = load float, ptr %14, align 4              ; 2 uses
  %16 = fcmp ogt float %13, %15
  %17 = select i1 %11, i1 true, i1 %16
  br i1 %17, label %18, label %bb.um

18:                                               ; preds = %.thread239.i.i.a
  br label %bb.um

bb.um:                                            ; preds = %18, %.thread239.i.i.a
  %.sroa.9.0.i.i = phi float [ 0.000000e+00, %18 ], [ %15, %.thread239.i.i.a ]
  %.sroa.7.0.i.i = phi float [ 0.000000e+00, %18 ], [ %10, %.thread239.i.i.a ]
  %.sroa.5.0.i.i = phi float [ 0.000000e+00, %18 ], [ %13, %.thread239.i.i.a ]
  %.sroa.0.0.i.i = phi float [ 0.000000e+00, %18 ], [ %8, %.thread239.i.i.a ]
  %i.ddd = getelementptr inbounds nuw i8, ptr %i.cjm, i64 296
  %.sroa.0.0.copyload.i118.i.i = load float, ptr %i.ddd, align 8, !tbaa !8 ; 2 uses
  %.sroa.5.0..sroa_idx.i119.i.i = getelementptr inbounds nuw i8, ptr %i.cjm, i64 300
  %.sroa.5.0.copyload.i120.i.i = load float, ptr %.sroa.5.0..sroa_idx.i119.i.i, align 4, !tbaa !8 ; 2 uses
  %19 = fadd float %.sroa.0.0.i.i, %.sroa.0.0.copyload.i118.i.i ; 2 uses
  %20 = fadd float %.sroa.5.0.i.i, %.sroa.5.0.copyload.i120.i.i ; 4 uses
  %21 = fadd float %.sroa.7.0.i.i, %.sroa.0.0.copyload.i118.i.i ; 2 uses
  %22 = fadd float %.sroa.9.0.i.i, %.sroa.5.0.copyload.i120.i.i ; 4 uses
  %.sroa.0.0.vec.insert.i121.i.i = insertelement <2 x float> poison, float %19, i64 0
  %.sroa.0.4.vec.insert.i122.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i121.i.i, float %20, i64 1 ; 3 uses
  %.sroa.3.8.vec.insert.i123.i.i = insertelement <2 x float> poison, float %21, i64 0
  %.sroa.3.12.vec.insert.i124.i.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i123.i.i, float %22, i64 1 ; 3 uses
  %i.dde = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8388 ; 2 uses
  %i.ddf = load i32, ptr %i.dde, align 4, !tbaa !396 ; 7 uses
  %i.ddg = and i32 %i.ddf, 2048
  %.not111.i.i = icmp eq i32 %i.ddg, 0
  br i1 %.not111.i.i, label %_ZN6ImRect3AddERKS_.exit.i.i, label %bb.un

bb.un:                                            ; preds = %bb.um
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.cjm, i64 552
  %i.ddi = load float, ptr %i.ddh, align 8, !tbaa !394
  %i.ddj = fcmp ult float %19, %i.ddi
  br i1 %i.ddj, label %bb.ur, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.cjm, i64 556
  %i.ddl = load float, ptr %i.ddk, align 4, !tbaa !398
  %i.ddm = fcmp ult float %20, %i.ddl
  br i1 %i.ddm, label %bb.ur, label %bb.up

bb.up:                                            ; preds = %bb.uo
  %i.ddn = getelementptr inbounds nuw i8, ptr %i.cjm, i64 560
  %i.ddo = load float, ptr %i.ddn, align 8, !tbaa !395
  %i.ddp = fcmp ugt float %21, %i.ddo
  br i1 %i.ddp, label %bb.ur, label %_ZNK6ImRect8ContainsERKS_.exit127.i.i

_ZNK6ImRect8ContainsERKS_.exit127.i.i:            ; preds = %bb.up
  %i.ddq = getelementptr inbounds nuw i8, ptr %i.cjm, i64 564
  %i.ddr = load float, ptr %i.ddq, align 4, !tbaa !399
  %i.dds = fcmp ugt float %22, %i.ddr
  br i1 %i.dds, label %bb.ur, label %bb.uq

bb.uq:                                            ; preds = %_ZNK6ImRect8ContainsERKS_.exit127.i.i
  %i.ddt = or i32 %i.ddf, 32                      ; 2 uses
  store i32 %i.ddt, ptr %i.dde, align 4, !tbaa !396
  br label %bb.ur

bb.ur:                                            ; preds = %bb.uq, %_ZNK6ImRect8ContainsERKS_.exit127.i.i, %bb.up, %bb.uo, %bb.un
  %i.ddu = phi i32 [ %i.ddf, %bb.un ], [ %i.ddf, %bb.uo ], [ %i.ddf, %bb.up ], [ %i.ddt, %bb.uq ], [ %i.ddf, %_ZNK6ImRect8ContainsERKS_.exit127.i.i ] ; 2 uses
  %i.ddv = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8428
  store <2 x float> %.sroa.0.4.vec.insert.i122.i.i, ptr %i.ddv, align 4
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8436
  store <2 x float> %.sroa.3.12.vec.insert.i124.i.i, ptr %.sroa.16.0..sroa_idx.i.i, align 4
  %i.ddw = fadd float %.0.i305.i, %20             ; 3 uses
  %.sroa.0132.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.4.vec.insert.i122.i.i, float %i.ddw, i64 1 ; 2 uses
  %i.ddx = fadd float %.0.i305.i, %22             ; 3 uses
  %.sroa.16.12.vec.insert.i.i = insertelement <2 x float> %.sroa.3.12.vec.insert.i124.i.i, float %i.ddx, i64 1 ; 2 uses
  %i.ddy = fcmp ogt float %20, %i.ddw
  br i1 %i.ddy, label %bb.us, label %bb.ut

bb.us:                                            ; preds = %bb.ur
  %i.ddz = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8432
  store float %i.ddw, ptr %i.ddz, align 8, !tbaa !398
  br label %bb.ut

bb.ut:                                            ; preds = %bb.us, %bb.ur
  %i.dea = fcmp olt float %22, %i.ddx
  br i1 %i.dea, label %bb.uu, label %_ZN6ImRect3AddERKS_.exit.i.i

bb.uu:                                            ; preds = %bb.ut
  %i.deb = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8440
  store float %i.ddx, ptr %i.deb, align 8, !tbaa !399
  br label %_ZN6ImRect3AddERKS_.exit.i.i

_ZN6ImRect3AddERKS_.exit.i.i:                     ; preds = %bb.uu, %bb.ut, %bb.um
  %i.dec = phi i32 [ %i.ddf, %bb.um ], [ %i.ddu, %bb.ut ], [ %i.ddu, %bb.uu ]
  %.sroa.16.0.i.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i124.i.i, %bb.um ], [ %.sroa.16.12.vec.insert.i.i, %bb.ut ], [ %.sroa.16.12.vec.insert.i.i, %bb.uu ] ; 8 uses
  %.sroa.0132.0.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i122.i.i, %bb.um ], [ %.sroa.0132.4.vec.insert.i.i, %bb.ut ], [ %.sroa.0132.4.vec.insert.i.i, %bb.uu ] ; 8 uses
  %i.ded = load i8, ptr %i.czg, align 8, !tbaa !655, !range !64, !noundef !204
  %i.dee = trunc nuw i8 %i.ded to i1
  br i1 %i.dee, label %bb.uv, label %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i

bb.uv:                                            ; preds = %_ZN6ImRect3AddERKS_.exit.i.i
  %i.def = getelementptr inbounds nuw i8, ptr %i.cjm, i64 984
  %i.deg = load ptr, ptr %i.def, align 8, !tbaa !390
  %i.deh = getelementptr inbounds nuw i8, ptr %i.deg, i64 1048
  %i.dei = getelementptr inbounds nuw [8 x i8], ptr %i.deh, i64 %6 ; 5 uses
  %i.dej = load i32, ptr %i.cxm, align 8, !tbaa !1074 ; 2 uses
  %i.dek = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.del = getelementptr inbounds nuw i8, ptr %i.dek, i64 8224
  %i.dem = load ptr, ptr %i.del, align 8, !tbaa !389 ; 2 uses
  %i.den = getelementptr inbounds nuw i8, ptr %i.dem, i64 296
  %.sroa.04.0.copyload.i.i.i = load float, ptr %i.den, align 8, !tbaa !8 ; 2 uses
  %.sroa.5.0..sroa_idx.i128.i.i = getelementptr inbounds nuw i8, ptr %i.dem, i64 300
  %.sroa.5.0.copyload.i129.i.i = load float, ptr %.sroa.5.0..sroa_idx.i128.i.i, align 4, !tbaa !8 ; 2 uses
  %i.deo = and i32 %i.dec, 128
  %i.dep = icmp eq i32 %i.deo, 0
  br i1 %i.dep, label %bb.uw, label %bb.va

bb.uw:                                            ; preds = %bb.uv
  %i.deq = load float, ptr %i.dei, align 4, !tbaa !227
  %i.der = fcmp oeq float %i.deq, f0x7F7FFFFF
  br i1 %i.der, label %bb.ux, label %bb.uy

bb.ux:                                            ; preds = %bb.uw
  %.sroa.0132.0.vec.extract137.i.i = extractelement <2 x float> %.sroa.0132.0.i.i, i64 0
  %i.des = fadd float %.sroa.0132.0.vec.extract137.i.i, 1.000000e+00 ; 2 uses
  %.sroa.16.8.vec.extract154.i.i = extractelement <2 x float> %.sroa.16.0.i.i, i64 0 ; 2 uses
  %i.det = fcmp olt float %i.des, %.sroa.16.8.vec.extract154.i.i
  %i.deu = select i1 %i.det, float %i.des, float %.sroa.16.8.vec.extract154.i.i
  %i.dev = fsub float %i.deu, %.sroa.04.0.copyload.i.i.i
  store float %i.dev, ptr %i.dei, align 4, !tbaa !227
  br label %bb.uy

bb.uy:                                            ; preds = %bb.ux, %bb.uw
  %i.dew = getelementptr inbounds nuw i8, ptr %i.dei, i64 4 ; 2 uses
  %i.dex = load float, ptr %i.dew, align 4, !tbaa !228
  %i.dey = fcmp oeq float %i.dex, f0x7F7FFFFF
  br i1 %i.dey, label %bb.uz, label %bb.va

bb.uz:                                            ; preds = %bb.uy
  %foldExtExtBinop786 = fadd <2 x float> %.sroa.16.0.i.i, %.sroa.0132.0.i.i
  %i.dez = extractelement <2 x float> %foldExtExtBinop786, i64 1
  %i.dfa = fmul float %i.dez, 5.000000e-01
  %i.dfb = fsub float %i.dfa, %.sroa.5.0.copyload.i129.i.i
  store float %i.dfb, ptr %i.dew, align 4, !tbaa !228
  br label %bb.va

bb.va:                                            ; preds = %bb.uz, %bb.uy, %bb.uv
  %i.dfc = and i32 %i.dej, -2
  %or.cond.i130.i.i = icmp eq i32 %i.dfc, 2
  br i1 %or.cond.i130.i.i, label %bb.vb, label %bb.vd

bb.vb:                                            ; preds = %bb.va
  %i.dfd = load float, ptr %i.dei, align 4, !tbaa !227 ; 2 uses
  %i.dfe = fcmp une float %i.dfd, f0x7F7FFFFF
  br i1 %i.dfe, label %bb.vc, label %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i

bb.vc:                                            ; preds = %bb.vb
  %i.dff = fadd float %.sroa.04.0.copyload.i.i.i, %i.dfd ; 2 uses
  %.sroa.16.8.vec.insert.i.i = insertelement <2 x float> %.sroa.16.0.i.i, float %i.dff, i64 0
  %.sroa.0132.0.vec.insert.i.i = insertelement <2 x float> %.sroa.0132.0.i.i, float %i.dff, i64 0
  br label %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i

bb.vd:                                            ; preds = %bb.va
  %or.cond3.i.i.i = icmp ult i32 %i.dej, 2
  br i1 %or.cond3.i.i.i, label %bb.ve, label %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i

bb.ve:                                            ; preds = %bb.vd
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.dei, i64 4
  %i.dfh = load float, ptr %i.dfg, align 4, !tbaa !228 ; 2 uses
  %i.dfi = fcmp une float %i.dfh, f0x7F7FFFFF
  br i1 %i.dfi, label %bb.vf, label %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i

bb.vf:                                            ; preds = %bb.ve
  %i.dfj = fadd float %.sroa.5.0.copyload.i129.i.i, %i.dfh ; 2 uses
  %.sroa.16.12.vec.insert161.i.i = insertelement <2 x float> %.sroa.16.0.i.i, float %i.dfj, i64 1
  %.sroa.0132.4.vec.insert145.i.i = insertelement <2 x float> %.sroa.0132.0.i.i, float %i.dfj, i64 1
  br label %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i

_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i:  ; preds = %bb.vf, %bb.ve, %bb.vd, %bb.vc, %bb.vb, %_ZN6ImRect3AddERKS_.exit.i.i, %2
  %.sroa.16.2.i.i = phi <2 x float> [ zeroinitializer, %2 ], [ %.sroa.16.0.i.i, %_ZN6ImRect3AddERKS_.exit.i.i ], [ %.sroa.16.8.vec.insert.i.i, %bb.vc ], [ %.sroa.16.0.i.i, %bb.vb ], [ %.sroa.16.12.vec.insert161.i.i, %bb.vf ], [ %.sroa.16.0.i.i, %bb.ve ], [ %.sroa.16.0.i.i, %bb.vd ]
  %.sroa.0132.2.i.i = phi <2 x float> [ zeroinitializer, %2 ], [ %.sroa.0132.0.i.i, %_ZN6ImRect3AddERKS_.exit.i.i ], [ %.sroa.0132.0.vec.insert.i.i, %bb.vc ], [ %.sroa.0132.0.i.i, %bb.vb ], [ %.sroa.0132.4.vec.insert145.i.i, %bb.vf ], [ %.sroa.0132.0.i.i, %bb.ve ], [ %.sroa.0132.0.i.i, %bb.vd ]
  %i.dfk = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8412
  store <2 x float> %.sroa.0132.2.i.i, ptr %i.dfk, align 4
  %.sroa.16.0..sroa_idx148.i.i = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8420
  store <2 x float> %.sroa.16.2.i.i, ptr %.sroa.16.0..sroa_idx148.i.i, align 4
  %i.dfl = getelementptr inbounds nuw i8, ptr %i.aln, i64 8400 ; 2 uses
  %i.dfm = load i32, ptr %i.dfl, align 8, !tbaa !1074
  %i.dfn = icmp eq i32 %i.dfm, -1
  br i1 %i.dfn, label %bb.vg, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vg:                                            ; preds = %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i
  %i.dfo = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 19 uses
  %i.dfp = getelementptr inbounds nuw i8, ptr %i.dfo, i64 8224
  %i.dfq = load ptr, ptr %i.dfp, align 8, !tbaa !389 ; 3 uses
  %i.dfr = icmp eq ptr %i.dfq, null
  br i1 %i.dfr, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.dfo, i64 8712
  %i.dft = load ptr, ptr %i.dfs, align 8, !tbaa !1045
  %.not.i324.i = icmp eq ptr %i.dft, null
  br i1 %.not.i324.i, label %bb.vi, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vi:                                            ; preds = %bb.vh
  %i.dfu = getelementptr inbounds nuw i8, ptr %i.dfq, i64 20
  %i.dfv = load i32, ptr %i.dfu, align 4, !tbaa !722
  %i.dfw = and i32 %i.dfv, 65536
  %.not22.i.i = icmp eq i32 %i.dfw, 0
  br i1 %.not22.i.i, label %bb.vj, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vj:                                            ; preds = %bb.vi
  %i.dfx = getelementptr inbounds nuw i8, ptr %i.dfo, i64 8698
  %i.dfy = load i8, ptr %i.dfx, align 2, !tbaa !660, !range !64, !noundef !204
  %i.dfz = trunc nuw i8 %i.dfy to i1
  br i1 %i.dfz, label %bb.vk, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vk:                                            ; preds = %bb.vj
  %i.dga = getelementptr i8, ptr %i.dfo, i64 308
  %i.dgb = load i8, ptr %i.dga, align 4, !tbaa !208, !range !64, !noundef !204
  %i.dgc = trunc nuw i8 %i.dgb to i1
  br i1 %i.dgc, label %bb.vl, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vl:                                            ; preds = %bb.vk
  %i.dgd = getelementptr i8, ptr %i.dfo, i64 312
  %i.dge = load float, ptr %i.dgd, align 8, !tbaa !1008 ; 8 uses
  %i.dgf = fcmp olt float %i.dge, 0.000000e+00
  br i1 %i.dgf, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.dgg = fcmp oeq float %i.dge, 0.000000e+00
  br i1 %i.dgg, label %.thread.i326.i, label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  %i.dgh = getelementptr inbounds nuw i8, ptr %i.dfo, i64 164
  %i.dgi = load float, ptr %i.dgh, align 4, !tbaa !911 ; 5 uses
  %i.dgj = getelementptr inbounds nuw i8, ptr %i.dfo, i64 168
  %i.dgk = load float, ptr %i.dgj, align 8, !tbaa !913 ; 2 uses
  %i.dgl = fcmp ogt float %i.dge, %i.dgi
  br i1 %i.dgl, label %bb.vo, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vo:                                            ; preds = %bb.vn
  %i.dgm = getelementptr inbounds nuw i8, ptr %i.dfo, i64 64
  %i.dgn = load float, ptr %i.dgm, align 8, !tbaa !912
  %i.dgo = fsub float %i.dge, %i.dgn              ; 3 uses
  %i.dgp = fcmp ult float %i.dgo, %i.dge
  br i1 %i.dgp, label %bb.vp, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vp:                                            ; preds = %bb.vo
  %i.dgq = fcmp ugt float %i.dgk, 0.000000e+00
  %i.dgr = fcmp olt float %i.dgo, %i.dgi          ; 2 uses
  br i1 %i.dgq, label %.split.i329.i, label %bb.vq

.split.i329.i:                                    ; preds = %bb.vp
  %i.dgs = insertelement <2 x float> poison, float %i.dge, i64 0
  %i.dgt = insertelement <2 x float> %i.dgs, float %i.dgo, i64 1
  %i.dgu = insertelement <2 x float> poison, float %i.dgi, i64 0
  %i.dgv = shufflevector <2 x float> %i.dgu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dgw = fsub <2 x float> %i.dgt, %i.dgv
  %i.dgx = fcmp olt float %i.dge, %i.dgi
  %i.dgy = insertelement <2 x float> poison, float %i.dgk, i64 0
  %i.dgz = shufflevector <2 x float> %i.dgy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dha = fdiv <2 x float> %i.dgw, %i.dgz
  %i.dhb = fptosi <2 x float> %i.dha to <2 x i32>
  %i.dhc = insertelement <2 x i1> poison, i1 %i.dgx, i64 0
  %i.dhd = insertelement <2 x i1> %i.dhc, i1 %i.dgr, i64 1
  %i.dhe = select <2 x i1> %i.dhd, <2 x i32> splat (i32 -1), <2 x i32> %i.dhb ; 2 uses
  %shift788 = shufflevector <2 x i32> %i.dhe, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.dhf = icmp sgt <2 x i32> %i.dhe, %shift788
  %i.dhg = extractelement <2 x i1> %i.dhf, i64 0
  br i1 %i.dhg, label %.thread.i326.i, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vq:                                            ; preds = %bb.vp
  %i.dhh = fcmp oge float %i.dge, %i.dgi
  %i.dhi = and i1 %i.dhh, %i.dgr
  br i1 %i.dhi, label %.thread.i326.i, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

.thread.i326.i:                                   ; preds = %bb.vq, %.split.i329.i, %bb.vm
  %i.dhj = getelementptr inbounds nuw i8, ptr %i.dfo, i64 7772
  %i.dhk = load i8, ptr %i.dhj, align 4, !tbaa !650, !range !64, !noundef !204
  %i.dhl = trunc nuw i8 %i.dhk to i1
  br i1 %i.dhl, label %bb.vr, label %bb.vs

bb.vr:                                            ; preds = %.thread.i326.i
  %i.dhm = getelementptr inbounds nuw i8, ptr %i.dfo, i64 5428
  %i.dhn = load i32, ptr %i.dhm, align 4, !tbaa !819
  %.not26.i.i = icmp eq i32 %i.dhn, -1
  br i1 %.not26.i.i, label %bb.vs, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

bb.vs:                                            ; preds = %bb.vr, %.thread.i326.i
  %i.dho = getelementptr i8, ptr %i.dfo, i64 5564
  %i.dhp = load i32, ptr %i.dho, align 4, !tbaa !622
  %.not.i.i.i327.i = icmp eq i32 %i.dhp, -1
  br i1 %.not.i.i.i327.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i328.i, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i328.i:  ; preds = %bb.vs
  %i.dhq = getelementptr inbounds nuw i8, ptr %i.dfo, i64 300
  %i.dhr = load i8, ptr %i.dhq, align 4, !tbaa !981, !range !64, !noundef !204
  %i.dhs = trunc nuw i8 %i.dhr to i1
  br i1 %i.dhs, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i, label %bb.vt

bb.vt:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i328.i
  %i.dht = getelementptr inbounds nuw i8, ptr %i.dfo, i64 302
  %i.dhu = load i8, ptr %i.dht, align 2, !tbaa !1085, !range !64, !noundef !204
  %i.dhv = trunc nuw i8 %i.dhu to i1
  br i1 %i.dhv, label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i, label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  %i.dhw = getelementptr inbounds nuw i8, ptr %i.dfo, i64 40
  %i.dhx = load i32, ptr %i.dhw, align 8, !tbaa !934
  %i.dhy = and i32 %i.dhx, 1
  %.not23.i.i = icmp eq i32 %i.dhy, 0
  %i.dhz = getelementptr inbounds nuw i8, ptr %i.dfo, i64 301
  %i.dia = load i8, ptr %i.dhz, align 1, !tbaa !1086, !range !64, !noundef !204
  %i.dib = trunc nuw i8 %i.dia to i1              ; 2 uses
  br i1 %.not23.i.i, label %bb.vx, label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  br i1 %i.dib, label %bb.vy, label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  %i.dic = getelementptr inbounds nuw i8, ptr %i.dfo, i64 8216
  %i.did = load i8, ptr %i.dic, align 8, !tbaa !474, !range !64, !noundef !204
  %i.die = icmp eq i8 %i.did, 0
  br i1 %i.die, label %.sink.split.i.i, label %bb.vy

bb.vx:                                            ; preds = %bb.vu
  br i1 %i.dib, label %bb.vy, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.vx, %bb.vw
  %i.dif = getelementptr inbounds nuw i8, ptr %i.dfo, i64 5428
  %i.dig = load i32, ptr %i.dif, align 4, !tbaa !819
  %i.dih = icmp ne i32 %i.dig, 0
  %i.dii = zext i1 %i.dih to i32
  br label %bb.vy

bb.vy:                                            ; preds = %.sink.split.i.i, %bb.vx, %bb.vw, %bb.vv
  %.sink.i.sink.i = phi i32 [ %i.dii, %.sink.split.i.i ], [ 1, %bb.vw ], [ -1, %bb.vx ], [ -1, %bb.vv ]
  %i.dij = phi i32 [ 3, %.sink.split.i.i ], [ 3, %bb.vw ], [ 2, %bb.vx ], [ 2, %bb.vv ]
  %i.dik = getelementptr inbounds nuw i8, ptr %i.dfo, i64 8448
  store i32 %.sink.i.sink.i, ptr %i.dik, align 8, !tbaa !397
  %i.dil = getelementptr inbounds nuw i8, ptr %i.dfq, i64 211
  %i.dim = load i8, ptr %i.dil, align 1, !tbaa !905, !range !64, !noundef !204
  %i.din = trunc nuw i8 %i.dim to i1
  %i.dio = select i1 %i.din, i32 33, i32 3
  call void @_ZN5ImGui20NavMoveRequestSubmitE8ImGuiDirS0_ii(i32 noundef -1, i32 noundef %i.dij, i32 noundef 5120, i32 noundef %i.dio)
  %i.dip = getelementptr inbounds nuw i8, ptr %i.dfo, i64 8452
  store i32 -1, ptr %i.dip, align 4, !tbaa !659
  br label %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i

_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i: ; preds = %bb.vy, %bb.vt, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i328.i, %bb.vs, %bb.vr, %bb.vq, %.split.i329.i, %bb.vo, %bb.vn, %bb.vl, %bb.vk, %bb.vj, %bb.vi, %bb.vh, %bb.vg, %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i
  %i.diq = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 45 uses
  %i.dir = getelementptr inbounds nuw i8, ptr %i.diq, i64 8385
  %i.dis = load i8, ptr %i.dir, align 1, !tbaa !388, !range !64, !noundef !204
  %i.dit = trunc nuw i8 %i.dis to i1
  br i1 %i.dit, label %_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit.i, label %bb.vz

bb.vz:                                            ; preds = %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i
  %i.diu = getelementptr inbounds nuw i8, ptr %i.diq, i64 8322
  %i.div = load i8, ptr %i.diu, align 2, !tbaa !881, !range !64, !noundef !204
  br label %_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit.i

_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit.i:     ; preds = %bb.vz, %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i
  %i.diw = phi i8 [ %i.div, %bb.vz ], [ 1, %_ZN5ImGuiL29NavUpdateCreateTabbingRequestEv.exit.i ]
  %i.dix = getelementptr inbounds nuw i8, ptr %i.diq, i64 8321
  store i8 %i.diw, ptr %i.dix, align 1, !tbaa !882
  %i.diy = getelementptr inbounds nuw i8, ptr %i.aln, i64 8219
  store i8 0, ptr %i.diy, align 1, !tbaa !897
  %i.diz = load ptr, ptr %i.aqt, align 8, !tbaa !389 ; 22 uses
  %.not238.i = icmp eq ptr %i.diz, null
  br i1 %.not238.i, label %bb.wp, label %bb.wa

bb.wa:                                            ; preds = %_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit.i
  %i.dja = getelementptr inbounds nuw i8, ptr %i.diz, i64 20
  %i.djb = load i32, ptr %i.dja, align 4, !tbaa !722
  %i.djc = and i32 %i.djb, 65536
  %.not239.i = icmp eq i32 %i.djc, 0
  br i1 %.not239.i, label %bb.wb, label %bb.wp

bb.wb:                                            ; preds = %bb.wa
  %i.djd = getelementptr inbounds nuw i8, ptr %i.aln, i64 8712
  %i.dje = load ptr, ptr %i.djd, align 8, !tbaa !1045
end_hunk_1
begin_hunk_2_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %.not.i162.i = icmp eq i32 %i.ccf, 0
  br i1 %.not.i162.i, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.ccg = load float, ptr %i.bqo, align 8, !tbaa !1248 ; 6 uses
  %i.cch = getelementptr inbounds nuw i8, ptr %i.bqh, i64 40
  %i.cci = load float, ptr %i.cch, align 8, !tbaa !870
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.bqh, i64 44
  %i.cck = load float, ptr %i.ccj, align 4, !tbaa !929 ; 2 uses
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.bqh, i64 48
  %i.ccm = load float, ptr %i.ccl, align 8, !tbaa !723
  %i.ccn = fadd float %i.cci, %i.ccm
  %i.cco = getelementptr inbounds nuw i8, ptr %i.bqh, i64 52
  %i.ccp = load float, ptr %i.cco, align 4, !tbaa !724
  %i.ccq = fadd float %i.cck, %i.ccp
  %i.ccr = fadd float %i.ccn, -1.000000e+00       ; 3 uses
  %i.ccs = fadd float %i.ccq, -1.000000e+00
  %i.cct = fadd float %i.ccg, %i.cck              ; 3 uses
  %i.ccu = fsub float %i.ccs, %i.ccg
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.bqh, i64 712 ; 3 uses
  %i.ccw = load ptr, ptr %i.ccv, align 8, !tbaa !452
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.ccx = fsub float %i.ccr, %i.ccr
  %i.ccy = fadd float %i.ccr, %i.ccx
  %i.ccz = fsub float %i.ccu, %i.cct              ; 2 uses
  %i.cda = call float @llvm.fmuladd.f32(float %i.ccz, float 0.000000e+00, float %i.cct)
  %i.cdb = fadd float %i.ccy, 5.000000e-01
  %i.cdc = fadd float %i.cda, 5.000000e-01
  %i.cdd = fmul float %i.ccg, 0.000000e+00        ; 2 uses
  %i.cde = fsub float %i.cdb, %i.ccg
  %i.cdf = fadd float %i.cdd, %i.cdc
  %.sroa.0.0.vec.insert.i25.i.i.i = insertelement <2 x float> poison, float %i.cde, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i26.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i25.i.i.i, float %i.cdf, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i26.i.i.i, ptr %12, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.ccw, ptr noundef nonnull align 4 dereferenceable(8) %12, float noundef %i.ccg, float noundef f0xBF490FDB, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  %i.cdg = load ptr, ptr %i.ccv, align 8, !tbaa !452
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  %i.cdh = fadd float %i.cct, %i.ccz
  %i.cdi = fadd float %i.cdh, 5.000000e-01
  %i.cdj = fadd float %i.cdd, %i.cdi
  %.sroa.0.4.vec.insert.i34.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i25.i.i.i, float %i.cdj, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i34.i.i.i, ptr %13, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.cdg, ptr noundef nonnull align 4 dereferenceable(8) %13, float noundef %i.ccg, float noundef 0.000000e+00, float noundef f0x3F490FDB, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  %i.cdk = load ptr, ptr %i.ccv, align 8, !tbaa !452 ; 3 uses
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.cdk, i64 80 ; 2 uses
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cdk, i64 88
  %i.cdn = load ptr, ptr %i.cdm, align 8, !tbaa !488
  %i.cdo = load i32, ptr %i.cdl, align 8, !tbaa !489
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.cdk, ptr noundef %i.cdn, i32 noundef %i.cdo, i32 noundef %i.cbq, float noundef %i.cap, i32 noundef 0)
  store i32 0, ptr %i.cdl, align 8, !tbaa !489
  %.pre.i.i = load i32, ptr %i.ccd, align 8, !tbaa !1188
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf
  %i.cdp = phi i32 [ %.pre.i.i, %bb.mg ], [ %i.cce, %bb.mf ]
  %i.cdq = and i32 %i.cdp, 8
  %.not42.i.i = icmp eq i32 %i.cdq, 0
  br i1 %.not42.i.i, label %.critedge.i.i, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.cdr = load float, ptr %i.bqo, align 8, !tbaa !1248 ; 6 uses
  %i.cds = getelementptr inbounds nuw i8, ptr %i.bqh, i64 40
  %i.cdt = load float, ptr %i.cds, align 8, !tbaa !870 ; 2 uses
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.bqh, i64 44
  %i.cdv = load float, ptr %i.cdu, align 4, !tbaa !929
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.bqh, i64 48
  %i.cdx = load float, ptr %i.cdw, align 8, !tbaa !723
  %i.cdy = fadd float %i.cdt, %i.cdx
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.bqh, i64 52
  %i.cea = load float, ptr %i.cdz, align 4, !tbaa !724
  %i.ceb = fadd float %i.cdv, %i.cea
  %i.cec = fadd float %i.cdy, -1.000000e+00
  %i.ced = fadd float %i.ceb, -1.000000e+00       ; 3 uses
  %i.cee = fadd float %i.cdr, %i.cdt              ; 3 uses
  %i.cef = fsub float %i.cec, %i.cdr
  %i.ceg = getelementptr inbounds nuw i8, ptr %i.bqh, i64 712 ; 3 uses
  %i.ceh = load ptr, ptr %i.ceg, align 8, !tbaa !452
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.cei = fsub float %i.cef, %i.cee              ; 2 uses
  %i.cej = fadd float %i.cee, %i.cei
  %i.cek = fsub float %i.ced, %i.ced
  %i.cel = fadd float %i.ced, %i.cek
  %i.cem = fadd float %i.cej, 5.000000e-01
  %i.cen = fadd float %i.cel, 5.000000e-01
  %i.ceo = fmul float %i.cdr, 0.000000e+00        ; 2 uses
  %i.cep = fadd float %i.ceo, %i.cem
  %i.ceq = fsub float %i.cen, %i.cdr              ; 2 uses
  %.sroa.0.0.vec.insert.i25.i48.i.i = insertelement <2 x float> poison, float %i.cep, i64 0
  %.sroa.0.4.vec.insert.i26.i49.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i25.i48.i.i, float %i.ceq, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i26.i49.i.i, ptr %10, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.ceh, ptr noundef nonnull align 4 dereferenceable(8) %10, float noundef %i.cdr, float noundef f0x3F490FDB, float noundef f0x3FC90FDB, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.cer = load ptr, ptr %i.ceg, align 8, !tbaa !452
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.ces = call float @llvm.fmuladd.f32(float %i.cei, float 0.000000e+00, float %i.cee)
  %i.cet = fadd float %i.ces, 5.000000e-01
  %i.ceu = fadd float %i.ceo, %i.cet
  %.sroa.0.0.vec.insert.i33.i50.i.i = insertelement <2 x float> poison, float %i.ceu, i64 0
  %.sroa.0.4.vec.insert.i34.i51.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i33.i50.i.i, float %i.ceq, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i34.i51.i.i, ptr %11, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.cer, ptr noundef nonnull align 4 dereferenceable(8) %11, float noundef %i.cdr, float noundef f0x3FC90FDB, float noundef f0x4016CBE4, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  %i.cev = load ptr, ptr %i.ceg, align 8, !tbaa !452 ; 3 uses
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cev, i64 80 ; 2 uses
  %i.cex = getelementptr inbounds nuw i8, ptr %i.cev, i64 88
  %i.cey = load ptr, ptr %i.cex, align 8, !tbaa !488
  %i.cez = load i32, ptr %i.cew, align 8, !tbaa !489
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.cev, ptr noundef %i.cey, i32 noundef %i.cez, i32 noundef %i.cbq, float noundef %i.cap, i32 noundef 0)
  store i32 0, ptr %i.cew, align 8, !tbaa !489
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.mi, %bb.mh, %bb.me, %bb.mc
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.bqh, i64 216
  %i.cfb = load i8, ptr %i.cfa, align 8, !tbaa !1256 ; 2 uses
  %.not43.i.i = icmp eq i8 %i.cfb, -1
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.bqh, i64 217
  %i.cfd = load i8, ptr %i.cfc, align 1, !tbaa !1257 ; 2 uses
  %.not44.i.i = icmp eq i8 %i.cfd, -1             ; 3 uses
  %or.cond.i.i = select i1 %.not43.i.i, i1 %.not44.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.mn, label %.critedge._crit_edge.i.i

.critedge._crit_edge.i.i:                         ; preds = %.critedge.i.i
  %spec.select.i.i = select i1 %.not44.i.i, i8 %i.cfb, i8 %i.cfd ; 2 uses
  %i.cfe = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.cff = getelementptr inbounds nuw i8, ptr %i.cfe, i64 3532
  %i.cfg = select i1 %.not44.i.i, i64 29, i64 30
  %i.cfh = getelementptr inbounds nuw [16 x i8], ptr %i.cff, i64 %i.cfg ; 2 uses
  %.sroa.4.0..sroa_idx.i53.i.i = getelementptr inbounds nuw i8, ptr %i.cfh, i64 4
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cfe, i64 3220
  %i.cfj = load float, ptr %i.cfi, align 4, !tbaa !416
  %i.cfk = load <4 x float>, ptr %i.cfh, align 4, !tbaa !8 ; 2 uses
  %.sroa.4.0.copyload.i54.i.i = load float, ptr %.sroa.4.0..sroa_idx.i53.i.i, align 4, !tbaa !8
  %i.cfl = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.cfj, i64 3
  %i.cfm = fmul <4 x float> %i.cfk, %i.cfl        ; 3 uses
  %i.cfn = fcmp ogt <4 x float> %i.cfm, splat (float 1.000000e+00)
  %i.cfo = select <4 x i1> %i.cfn, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cfm
  %i.cfp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cfo, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.cfq = shufflevector <4 x float> %i.cfk, <4 x float> %i.cfm, <4 x i32> <i32 0, i32 poison, i32 2, i32 7>
  %i.cfr = insertelement <4 x float> %i.cfq, float %.sroa.4.0.copyload.i54.i.i, i64 1
  %i.cfs = fcmp olt <4 x float> %i.cfr, zeroinitializer
  %i.cft = select <4 x i1> %i.cfs, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cfp ; 4 uses
  %i.cfu = extractelement <4 x float> %i.cft, i64 0
  %i.cfv = fptosi float %i.cfu to i32
  %i.cfw = extractelement <4 x float> %i.cft, i64 1
  %i.cfx = fptosi float %i.cfw to i32
  %i.cfy = shl i32 %i.cfx, 8
  %i.cfz = or i32 %i.cfy, %i.cfv
  %i.cga = extractelement <4 x float> %i.cft, i64 2
  %i.cgb = fptosi float %i.cga to i32
  %i.cgc = shl i32 %i.cgb, 16
  %i.cgd = or i32 %i.cfz, %i.cgc
  %i.cge = extractelement <4 x float> %i.cft, i64 3
  %i.cgf = fptosi float %i.cge to i32
  %i.cgg = shl i32 %i.cgf, 24
  %i.cgh = or i32 %i.cgd, %i.cgg
  %i.cgi = load float, ptr %i.bqq, align 4, !tbaa !1233 ; 2 uses
  %i.cgj = fcmp ole float %i.cgi, 2.000000e+00
  %i.cgk = select i1 %i.cgj, float 2.000000e+00, float %i.cgi
  %i.cgl = load float, ptr %i.bqo, align 8, !tbaa !1248 ; 11 uses
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.bqh, i64 40
  %i.cgn = load float, ptr %i.cgm, align 8, !tbaa !870 ; 5 uses
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.bqh, i64 44
  %i.cgp = load float, ptr %i.cgo, align 4, !tbaa !929 ; 5 uses
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.bqh, i64 48
  %i.cgr = load float, ptr %i.cgq, align 8, !tbaa !723
  %i.cgs = fadd float %i.cgn, %i.cgr
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.bqh, i64 52
  %i.cgu = load float, ptr %i.cgt, align 4, !tbaa !724
  %i.cgv = fadd float %i.cgp, %i.cgu
  %i.cgw = fadd float %i.cgs, -1.000000e+00       ; 3 uses
  %i.cgx = fadd float %i.cgv, -1.000000e+00       ; 4 uses
  switch i8 %spec.select.i.i, label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i [
    i8 0, label %bb.mj
    i8 1, label %bb.mk
    i8 2, label %bb.ml
    i8 3, label %bb.mm
  ]

bb.mj:                                            ; preds = %.critedge._crit_edge.i.i
  %i.cgy = fadd float %i.cgl, %i.cgp
  %i.cgz = fadd float %i.cgn, 0.000000e+00
  %i.cha = fsub float %i.cgx, %i.cgl
  %.sroa.044.0.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.cgn, i64 0
  %.sroa.044.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.044.0.vec.insert.i.i.i.i, float %i.cgy, i64 1
  %.sroa.10.8.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.cgz, i64 0
  %.sroa.10.12.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.10.8.vec.insert.i.i.i.i, float %i.cha, i64 1
  br label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i

bb.mk:                                            ; preds = %.critedge._crit_edge.i.i
  %.sroa.9.8.vec.insert.i.i67.i.i = insertelement <2 x float> poison, float %i.cgw, i64 0 ; 2 uses
  %i.chb = fadd float %i.cgl, %i.cgp
  %i.chc = fsub float %i.cgx, %i.cgl
  %.sroa.044.4.vec.insert53.i.i68.i.i = insertelement <2 x float> %.sroa.9.8.vec.insert.i.i67.i.i, float %i.chb, i64 1
  %.sroa.10.12.vec.insert66.i.i69.i.i = insertelement <2 x float> %.sroa.9.8.vec.insert.i.i67.i.i, float %i.chc, i64 1
  br label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i

bb.ml:                                            ; preds = %.critedge._crit_edge.i.i
  %i.chd = fadd float %i.cgl, %i.cgn
  %31 = fsub float %i.cgw, %i.cgl
  %32 = fadd float %i.cgp, 0.000000e+00
  %.sroa.044.0.vec.insert49.i.i.i.i.a = insertelement <2 x float> poison, float %i.chd, i64 0
  %.sroa.044.4.vec.insert55.i.i.i.i = insertelement <2 x float> %.sroa.044.0.vec.insert49.i.i.i.i.a, float %i.cgp, i64 1
  %.sroa.10.8.vec.insert62.i.i.i.i = insertelement <2 x float> poison, float %31, i64 0
  %.sroa.10.12.vec.insert68.i.i.i.i = insertelement <2 x float> %.sroa.10.8.vec.insert62.i.i.i.i, float %32, i64 1
  br label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i

bb.mm:                                            ; preds = %.critedge._crit_edge.i.i
  %i.che = fadd float %i.cgl, %i.cgn
  %i.chf = fsub float %i.cgw, %i.cgl
  %.sroa.044.0.vec.insert51.i.i59.i.i = insertelement <2 x float> poison, float %i.che, i64 0
  %.sroa.044.4.vec.insert57.i.i60.i.i = insertelement <2 x float> %.sroa.044.0.vec.insert51.i.i59.i.i, float %i.cgx, i64 1
  %.sroa.10.8.vec.insert64.i.i61.i.i = insertelement <2 x float> poison, float %i.chf, i64 0
  %.sroa.10.12.vec.insert70.i.i62.i.i = insertelement <2 x float> %.sroa.10.8.vec.insert64.i.i61.i.i, float %i.cgx, i64 1
  br label %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i

_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i: ; preds = %bb.mm, %bb.ml, %bb.mk, %bb.mj, %.critedge._crit_edge.i.i
  %.sroa.044.0.i.i.i.i = phi <2 x float> [ %.sroa.044.4.vec.insert57.i.i60.i.i, %bb.mm ], [ %.sroa.044.4.vec.insert.i.i.i.i, %bb.mj ], [ %.sroa.044.4.vec.insert53.i.i68.i.i, %bb.mk ], [ %.sroa.044.4.vec.insert55.i.i.i.i, %bb.ml ], [ zeroinitializer, %.critedge._crit_edge.i.i ] ; 3 uses
  %.sroa.10.0.i.i.i.i = phi <2 x float> [ %.sroa.10.12.vec.insert70.i.i62.i.i, %bb.mm ], [ %.sroa.10.12.vec.insert.i.i.i.i, %bb.mj ], [ %.sroa.10.12.vec.insert66.i.i69.i.i, %bb.mk ], [ %.sroa.10.12.vec.insert68.i.i.i.i, %bb.ml ], [ zeroinitializer, %.critedge._crit_edge.i.i ]
  %i.chg = sext i8 %spec.select.i.i to i64
  %i.chh = getelementptr inbounds [28 x i8], ptr @_ZL17resize_border_def, i64 %i.chg ; 4 uses
  %i.chi = getelementptr inbounds nuw i8, ptr %i.bqh, i64 712 ; 3 uses
  %i.chj = load ptr, ptr %i.chi, align 8, !tbaa !452
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.chk = getelementptr inbounds nuw i8, ptr %i.chh, i64 8
  %i.chl = fsub <2 x float> %.sroa.10.0.i.i.i.i, %.sroa.044.0.i.i.i.i ; 2 uses
  %i.chm = load <2 x float>, ptr %i.chk, align 4, !tbaa !8
  %i.chn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.chl, <2 x float> %i.chm, <2 x float> %.sroa.044.0.i.i.i.i)
  %i.cho = fadd <2 x float> %i.chn, splat (float 5.000000e-01)
  %i.chp = load <2 x float>, ptr %i.chh, align 4, !tbaa !8
  %i.chq = insertelement <2 x float> poison, float %i.cgl, i64 0
  %i.chr = shufflevector <2 x float> %i.chq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.chs = fmul <2 x float> %i.chr, %i.chp        ; 2 uses
  %i.cht = fadd <2 x float> %i.cho, %i.chs
  store <2 x float> %i.cht, ptr %8, align 8
  %i.chu = getelementptr inbounds nuw i8, ptr %i.chh, i64 24
  %i.chv = load float, ptr %i.chu, align 4, !tbaa !1273 ; 4 uses
  %i.chw = fadd float %i.chv, f0xBF490FDB
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.chj, ptr noundef nonnull align 4 dereferenceable(8) %8, float noundef %i.cgl, float noundef %i.chw, float noundef %i.chv, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  %i.chx = load ptr, ptr %i.chi, align 8, !tbaa !452
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.chy = getelementptr inbounds nuw i8, ptr %i.chh, i64 16
  %i.chz = load <2 x float>, ptr %i.chy, align 4, !tbaa !8
  %i.cia = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.chl, <2 x float> %i.chz, <2 x float> %.sroa.044.0.i.i.i.i)
  %i.cib = fadd <2 x float> %i.cia, splat (float 5.000000e-01)
  %i.cic = fadd <2 x float> %i.chs, %i.cib
  store <2 x float> %i.cic, ptr %9, align 8
  %i.cid = fadd float %i.chv, f0x3F490FDB
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.chx, ptr noundef nonnull align 4 dereferenceable(8) %9, float noundef %i.cgl, float noundef %i.chv, float noundef %i.cid, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.cie = load ptr, ptr %i.chi, align 8, !tbaa !452 ; 3 uses
  %i.cif = getelementptr inbounds nuw i8, ptr %i.cie, i64 80 ; 2 uses
  %i.cig = getelementptr inbounds nuw i8, ptr %i.cie, i64 88
  %i.cih = load ptr, ptr %i.cig, align 8, !tbaa !488
  %i.cii = load i32, ptr %i.cif, align 8, !tbaa !489
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.cie, ptr noundef %i.cih, i32 noundef %i.cii, i32 noundef %i.cgh, float noundef %i.cgk, i32 noundef 0)
  store i32 0, ptr %i.cif, align 8, !tbaa !489
  br label %bb.mn

bb.mn:                                            ; preds = %_ZL29RenderWindowOuterSingleBorderP11ImGuiWindowijf.exit.i.i, %.critedge.i.i
  %i.cij = getelementptr inbounds nuw i8, ptr %i.cao, i64 3296
  %i.cik = load float, ptr %i.cij, align 8, !tbaa !472 ; 2 uses
  %i.cil = fcmp ogt float %i.cik, 0.000000e+00
  br i1 %i.cil, label %bb.mo, label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.mo:                                            ; preds = %bb.mn
  %i.cim = load i32, ptr %i.bqk, align 4, !tbaa !722
  %i.cin = and i32 %i.cim, 1
  %.not47.i.i = icmp eq i32 %i.cin, 0
  br i1 %.not47.i.i, label %bb.mp, label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.mp:                                            ; preds = %bb.mo
  %i.cio = getelementptr inbounds nuw i8, ptr %i.bqh, i64 40
  %i.cip = getelementptr inbounds nuw i8, ptr %i.bqh, i64 44
  %i.ciq = load float, ptr %i.cip, align 4, !tbaa !929
  %i.cir = getelementptr inbounds nuw i8, ptr %i.bqh, i64 104
  %i.cis = load float, ptr %i.cir, align 8, !tbaa !909
  %i.cit = fadd float %i.ciq, %i.cis
  %i.ciu = fadd float %i.cit, -1.000000e+00
  %i.civ = getelementptr inbounds nuw i8, ptr %i.bqh, i64 712
  %i.ciw = load ptr, ptr %i.civ, align 8, !tbaa !452
  %i.cix = load float, ptr %i.cio, align 8, !tbaa !870 ; 2 uses
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.bqh, i64 48
  %i.ciz = load float, ptr %i.ciy, align 8, !tbaa !723
  %i.cja = fadd float %i.cix, %i.ciz
  %i.cjb = fneg float %i.cap
  %i.cjc = insertelement <2 x float> poison, float %i.cap, i64 0
  %i.cjd = insertelement <2 x float> %i.cjc, float %i.cjb, i64 1
  %i.cje = insertelement <2 x float> poison, float %i.cix, i64 0
  %i.cjf = insertelement <2 x float> %i.cje, float %i.cja, i64 1
  %i.cjg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cjd, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cjf) ; 2 uses
  %i.cjh = extractelement <2 x float> %i.cjg, i64 0
  %i.cji = extractelement <2 x float> %i.cjg, i64 1
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.ciw, float noundef %i.cjh, float noundef %i.cji, float noundef %i.ciu, i32 noundef %i.cbq, float noundef %i.cik)
  br label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit: ; preds = %bb.li, %.loopexit.i, %bb.mn, %bb.mo, %bb.mp
  store i32 0, ptr %i.bqn, align 8, !tbaa !1205
  %.pre1048 = load ptr, ptr %i.g, align 8, !tbaa !705 ; 57 uses
  br i1 %.1420986, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit
  %i.cjj = getelementptr inbounds nuw i8, ptr %.pre1048, i64 720
  %i.cjk = getelementptr inbounds nuw i8, ptr %.pre1048, i64 712
  store ptr %i.cjj, ptr %i.cjk, align 8, !tbaa !452
  br label %bb.mr

bb.mr:                                            ; preds = %bb.mq, %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit
  %i.cjl = and i32 %.1, 8
  %.not498 = icmp eq i32 %i.cjl, 0
  %i.cjm = getelementptr inbounds nuw i8, ptr %.pre1048, i64 80
  %i.cjn = load float, ptr %i.cjm, align 8, !tbaa !1242 ; 3 uses
  %i.cjo = fcmp une float %i.cjn, 0.000000e+00    ; 2 uses
  br i1 %i.cjo, label %bb.mv, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.cjp = and i32 %.1, 2056
  %i.cjq = icmp eq i32 %i.cjp, 2048
  br i1 %i.cjq, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %bb.ms
  %i.cjr = getelementptr inbounds nuw i8, ptr %.pre1048, i64 64
  %i.cjs = load float, ptr %i.cjr, align 8, !tbaa !1275
  br label %bb.mu

bb.mu:                                            ; preds = %bb.ms, %bb.mt
  %i.cjt = phi float [ %i.cjs, %bb.mt ], [ 0.000000e+00, %bb.ms ] ; 2 uses
  %i.cju = getelementptr inbounds nuw i8, ptr %.pre1048, i64 48
  %i.cjv = load float, ptr %i.cju, align 8, !tbaa !723
  %i.cjw = getelementptr inbounds nuw i8, ptr %.pre1048, i64 88
  %i.cjx = load float, ptr %i.cjw, align 8, !tbaa !1276
  %i.cjy = fneg float %i.cjx
  %i.cjz = call float @llvm.fmuladd.f32(float %i.cjy, float 2.000000e+00, float %i.cjv)
  %i.cka = getelementptr inbounds nuw i8, ptr %.pre1048, i64 112
  %i.ckb = load float, ptr %i.cka, align 8, !tbaa !1244
  %i.ckc = getelementptr inbounds nuw i8, ptr %.pre1048, i64 120
  %i.ckd = load float, ptr %i.ckc, align 8, !tbaa !1264
  %i.cke = fadd float %i.ckb, %i.ckd
  %i.ckf = fsub float %i.cjz, %i.cke              ; 2 uses
  %i.ckg = fcmp oge float %i.cjt, %i.ckf
  %i.ckh = select i1 %i.ckg, float %i.cjt, float %i.ckf
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mr, %bb.mu
  %i.cki = phi float [ %i.ckh, %bb.mu ], [ %i.cjn, %bb.mr ]
  %i.ckj = getelementptr inbounds nuw i8, ptr %.pre1048, i64 84
  %i.ckk = load float, ptr %i.ckj, align 4, !tbaa !1243 ; 3 uses
  %i.ckl = fcmp une float %i.ckk, 0.000000e+00    ; 2 uses
  br i1 %i.ckl, label %._crit_edge1049, label %bb.mw

._crit_edge1049:                                  ; preds = %bb.mv
  %.phi.trans.insert1050 = getelementptr inbounds nuw i8, ptr %.pre1048, i64 92
  %.pre1051 = load float, ptr %.phi.trans.insert1050, align 4, !tbaa !1277
  %.phi.trans.insert1052 = getelementptr inbounds nuw i8, ptr %.pre1048, i64 116
  %.pre1053 = load float, ptr %.phi.trans.insert1052, align 4, !tbaa !1245
  br label %bb.mz

bb.mw:                                            ; preds = %bb.mv
  br i1 %.not498, label %bb.mx, label %bb.my

bb.mx:                                            ; preds = %bb.mw
  %i.ckm = getelementptr inbounds nuw i8, ptr %.pre1048, i64 68
  %i.ckn = load float, ptr %i.ckm, align 4, !tbaa !1082
  br label %bb.my

bb.my:                                            ; preds = %bb.mw, %bb.mx
  %i.cko = phi float [ %i.ckn, %bb.mx ], [ 0.000000e+00, %bb.mw ] ; 2 uses
  %i.ckp = getelementptr inbounds nuw i8, ptr %.pre1048, i64 52
  %i.ckq = load float, ptr %i.ckp, align 4, !tbaa !724
  %i.ckr = getelementptr inbounds nuw i8, ptr %.pre1048, i64 92
  %i.cks = load float, ptr %i.ckr, align 4, !tbaa !1277 ; 2 uses
  %i.ckt = fneg float %i.cks
  %i.cku = call float @llvm.fmuladd.f32(float %i.ckt, float 2.000000e+00, float %i.ckq)
  %i.ckv = getelementptr inbounds nuw i8, ptr %.pre1048, i64 116
  %i.ckw = load float, ptr %i.ckv, align 4, !tbaa !1245 ; 2 uses
  %i.ckx = getelementptr inbounds nuw i8, ptr %.pre1048, i64 124
  %i.cky = load float, ptr %i.ckx, align 4, !tbaa !1258
  %i.ckz = fadd float %i.ckw, %i.cky
  %i.cla = fsub float %i.cku, %i.ckz              ; 2 uses
  %i.clb = fcmp oge float %i.cko, %i.cla
  %i.clc = select i1 %i.clb, float %i.cko, float %i.cla
  br label %bb.mz

bb.mz:                                            ; preds = %._crit_edge1049, %bb.my
  %i.cld = phi float [ %i.ckw, %bb.my ], [ %.pre1053, %._crit_edge1049 ] ; 3 uses
  %i.cle = phi float [ %i.cks, %bb.my ], [ %.pre1051, %._crit_edge1049 ] ; 5 uses
  %i.clf = phi float [ %i.clc, %bb.my ], [ %i.ckk, %._crit_edge1049 ]
  %i.clg = getelementptr inbounds nuw i8, ptr %.pre1048, i64 552
  %i.clh = load float, ptr %i.clg, align 8, !tbaa !1278
  %i.cli = getelementptr inbounds nuw i8, ptr %.pre1048, i64 152
  %i.clj = getelementptr inbounds nuw i8, ptr %.pre1048, i64 88
  %i.clk = load float, ptr %i.clj, align 8, !tbaa !1276 ; 6 uses
  %i.cll = getelementptr inbounds nuw i8, ptr %.pre1048, i64 100
  %i.clm = load float, ptr %i.cll, align 4, !tbaa !1233 ; 4 uses
  %i.cln = fcmp oge float %i.clk, %i.clm
  %i.clo = select i1 %i.cln, float %i.clk, float %i.clm
  %i.clp = getelementptr inbounds nuw i8, ptr %.pre1048, i64 584 ; 2 uses
  %i.clq = getelementptr inbounds nuw i8, ptr %.pre1048, i64 556
  %i.clr = load float, ptr %i.clq, align 4, !tbaa !1279
  %i.cls = getelementptr inbounds nuw i8, ptr %.pre1048, i64 156
  %i.clt = load float, ptr %i.cls, align 4, !tbaa !1077 ; 3 uses
  %i.clu = load float, ptr %i.cli, align 8, !tbaa !871 ; 4 uses
  %i.clv = fsub float %i.clh, %i.clu
  %i.clw = fadd float %i.clv, %i.clo
  %i.clx = fptosi float %i.clw to i32
  %i.cly = sitofp i32 %i.clx to float             ; 2 uses
  store float %i.cly, ptr %i.clp, align 8, !tbaa !1280
  %i.clz = fsub float %i.clr, %i.clt
  %i.cma = fcmp oge float %i.cle, %i.clm
  %i.cmb = select i1 %i.cma, float %i.cle, float %i.clm
  %i.cmc = fadd float %i.cmb, %i.clz
  %i.cmd = fptosi float %i.cmc to i32
  %i.cme = sitofp i32 %i.cmd to float             ; 2 uses
  %i.cmf = getelementptr inbounds nuw i8, ptr %.pre1048, i64 588
  store float %i.cme, ptr %i.cmf, align 4, !tbaa !1281
  %i.cmg = fadd float %i.cki, %i.cly
  %i.cmh = getelementptr inbounds nuw i8, ptr %.pre1048, i64 592
  store float %i.cmg, ptr %i.cmh, align 8, !tbaa !869
end_hunk_2
