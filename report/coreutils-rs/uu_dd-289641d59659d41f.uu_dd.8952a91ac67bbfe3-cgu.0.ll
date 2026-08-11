inline.NumInlined: 1600
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvCsbMXVmEvvZJf_5uu_dd7dd_copy:bb.a
  %.not6.i.i.i.i.i = icmp samesign ult i64 %i.lq, %..i.i.i106
  br i1 %.not6.i.i.i.i.i, label %iter.check, label %.loopexit.i.i.i.i

iter.check:                                       ; preds = %bb.cc
  %min.iters.check1069 = icmp ult i64 %i.ll, 8
  br i1 %min.iters.check1069, label %.lr.ph.i.i.preheader, label %vector.memcheck1065

vector.memcheck1065:                              ; preds = %iter.check
  %i.mv = add i64 %.sroa.04.0104.i.i, %i.lf
  %i.mw = add i64 %i.mv, %i.kw
  %i.mx = sub i64 %.sroa.5.0.i.i1066, %i.mw
  %diff.check1067 = icmp ugt i64 %i.mx, -32
  br i1 %diff.check1067, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1065
  %min.iters.check1070 = icmp ult i64 %i.ll, 32
  br i1 %min.iters.check1070, label %vec.epilog.ph, label %vector.ph1071

vector.ph1071:                                    ; preds = %vector.main.loop.iter.check
  %i.my = and i64 %i.ll, 24
  %n.vec1072 = and i64 %i.ll, -32                 ; 5 uses
  %i.mz = add i64 %i.lq, %n.vec1072
  %i.na = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %n.vec1072 ; 2 uses
  %i.nb = getelementptr i8, ptr %i.ku, i64 %i.lq
  br label %vector.body1073

vector.body1073:                                  ; preds = %vector.body1073, %vector.ph1071
  %index1074 = phi i64 [ 0, %vector.ph1071 ], [ %index.next1078, %vector.body1073 ] ; 3 uses
  %next.gep1075 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %index1074 ; 2 uses
  %i.nc = getelementptr i8, ptr %next.gep1075, i64 16
  %wide.load1076 = load <16 x i8>, ptr %next.gep1075, align 1, !noalias !2039
  %wide.load1077 = load <16 x i8>, ptr %i.nc, align 1, !noalias !2039
  %i.nd = getelementptr i8, ptr %i.nb, i64 %index1074 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store <16 x i8> %wide.load1076, ptr %i.nd, align 1, !noalias !2044
  store <16 x i8> %wide.load1077, ptr %i.ne, align 1, !noalias !2044
  %index.next1078 = add nuw i64 %index1074, 32    ; 2 uses
  %i.nf = icmp eq i64 %index.next1078, %n.vec1072
  br i1 %i.nf, label %middle.block1079, label %vector.body1073, !llvm.loop !2045

middle.block1079:                                 ; preds = %vector.body1073
  %cmp.n = icmp eq i64 %i.ll, %n.vec1072
  br i1 %cmp.n, label %.loopexit.i.i.i.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1079
  %min.epilog.iters.check = icmp eq i64 %i.my, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !2036

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1072, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1082 = and i64 %i.ll, -8                  ; 4 uses
  %i.ng = add i64 %i.lq, %n.vec1082
  %i.nh = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %n.vec1082 ; 2 uses
  %i.ni = getelementptr i8, ptr %i.ku, i64 %i.lq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1083 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1086, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1084 = getelementptr i8, ptr %.sroa.5.0.i.i, i64 %index1083
  %wide.load1085 = load <8 x i8>, ptr %next.gep1084, align 1, !noalias !2039
  %i.nj = getelementptr i8, ptr %i.ni, i64 %index1083
  store <8 x i8> %wide.load1085, ptr %i.nj, align 1, !noalias !2044
  %index.next1086 = add nuw i64 %index1083, 8     ; 2 uses
  %i.nk = icmp eq i64 %index.next1086, %n.vec1082
  br i1 %i.nk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2046

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1087 = icmp eq i64 %i.ll, %n.vec1082
  br i1 %cmp.n1087, label %.loopexit.i.i.i.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck1065, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.03.i.i.i96.i.i.ph = phi i64 [ %i.lq, %iter.check ], [ %i.lq, %vector.memcheck1065 ], [ %i.mz, %vec.epilog.iter.check ], [ %i.ng, %vec.epilog.middle.block ] ; 4 uses
  %.ph1126 = phi ptr [ %.sroa.5.0.i.i, %iter.check ], [ %.sroa.5.0.i.i, %vector.memcheck1065 ], [ %i.na, %vec.epilog.iter.check ], [ %i.nh, %vec.epilog.middle.block ] ; 2 uses
  %i.nl = sub i64 %..i.i.i106, %.sroa.01.03.i.i.i96.i.i.ph
  %xtraiter = and i64 %i.nl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.01.03.i.i.i96.i.i.prol = phi i64 [ %i.np, %.lr.ph.i.i.prol ], [ %.sroa.01.03.i.i.i96.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.nm = phi ptr [ %i.nn, %.lr.ph.i.i.prol ], [ %.ph1126, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 1 ; 3 uses
  %i.no = load i8, ptr %i.nm, align 1, !noalias !2039, !noundef !8
  %i.np = add i64 %.sroa.01.03.i.i.i96.i.i.prol, 1 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.01.03.i.i.i96.i.i.prol
  store i8 %i.no, ptr %i.nq, align 1, !noalias !2044
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2047

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa1143.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.nn, %.lr.ph.i.i.prol ]
  %.sroa.01.03.i.i.i96.i.i.unr = phi i64 [ %.sroa.01.03.i.i.i96.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.np, %.lr.ph.i.i.prol ]
  %.unr = phi ptr [ %.ph1126, %.lr.ph.i.i.preheader ], [ %i.nn, %.lr.ph.i.i.prol ]
  %i.nr = sub i64 %.sroa.01.03.i.i.i96.i.i.ph, %..i.i.i106
  %i.ns = icmp ugt i64 %i.nr, -4
  br i1 %i.ns, label %.loopexit.i.i.i.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.01.03.i.i.i96.i.i = phi i64 [ %i.oh, %.lr.ph.i.i ], [ %.sroa.01.03.i.i.i96.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.nt = phi ptr [ %i.of, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 1
  %i.nv = load i8, ptr %i.nt, align 1, !noalias !2039, !noundef !8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.01.03.i.i.i96.i.i
  store i8 %i.nv, ptr %i.nw, align 1, !noalias !2044
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 2
  %i.ny = load i8, ptr %i.nu, align 1, !noalias !2039, !noundef !8
  %i.nz = getelementptr i8, ptr %i.ku, i64 %.sroa.01.03.i.i.i96.i.i
  %i.oa = getelementptr i8, ptr %i.nz, i64 1
  store i8 %i.ny, ptr %i.oa, align 1, !noalias !2044
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 3
  %i.oc = load i8, ptr %i.nx, align 1, !noalias !2039, !noundef !8
  %i.od = getelementptr i8, ptr %i.ku, i64 %.sroa.01.03.i.i.i96.i.i
  %i.oe = getelementptr i8, ptr %i.od, i64 2
  store i8 %i.oc, ptr %i.oe, align 1, !noalias !2044
  %i.of = getelementptr inbounds nuw i8, ptr %i.nt, i64 4 ; 2 uses
  %i.og = load i8, ptr %i.ob, align 1, !noalias !2039, !noundef !8
  %i.oh = add i64 %.sroa.01.03.i.i.i96.i.i, 4     ; 2 uses
  %i.oi = getelementptr i8, ptr %i.ku, i64 %.sroa.01.03.i.i.i96.i.i
  %i.oj = getelementptr i8, ptr %i.oi, i64 3
  store i8 %i.og, ptr %i.oj, align 1, !noalias !2044
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.oh, %..i.i.i106
  br i1 %exitcond.not.i.i.i.i.i.3, label %.loopexit.i.i.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !2048

.loopexit.i.i.i.loopexit.i:                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block1079
  %.lcssa898 = phi ptr [ %i.nh, %vec.epilog.middle.block ], [ %i.na, %middle.block1079 ], [ %.lcssa1143.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.of, %.lr.ph.i.i ]
  store i64 %..i.i.i106, ptr %i.hm, align 8, !alias.scope !1969, !noalias !2049
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.i.i.i.loopexit.i, %bb.cc
  %i.ok = phi i64 [ %i.lq, %bb.cc ], [ %..i.i.i106, %.loopexit.i.i.i.loopexit.i ] ; 2 uses
  %.val18.i.i.i.i = phi ptr [ %.sroa.5.0.i.i, %bb.cc ], [ %.lcssa898, %.loopexit.i.i.i.loopexit.i ] ; 8 uses
  %i.ol = ptrtoint ptr %i.lt to i64               ; 3 uses
  %i.om = ptrtoint ptr %.val18.i.i.i.i to i64     ; 6 uses
  %i.on = sub nuw i64 %i.ol, %i.om                ; 4 uses
  %.not.i.i23.i.i = icmp eq ptr %i.lt, %.val18.i.i.i.i
  br i1 %.not.i.i23.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i, label %bb.cf

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i: ; preds = %.lr.ph100.i.i
  store i64 %i.oy, ptr %i.hm, align 8, !alias.scope !1969, !noalias !2050
  %.pre.i.i.i.i = ptrtoint ptr %i.pz to i64       ; 2 uses
  %.pre10.i.i.i = sub nuw i64 %i.ol, %.pre.i.i.i.i
  br label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i: ; preds = %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %i.on, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %.pre10.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i ] ; 3 uses
  %i.oo = phi i64 [ %.promoted97.i.i, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %i.oy, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i ]
  %.pre-phi.i.i.i.i = phi i64 [ %i.om, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %.pre.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i ]
  %.val.i.i.i29.i.i.i.i = phi ptr [ %.val18.i.i.i.i, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i ], [ %i.pz, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i ]
  %.not.i.i.i.i.i.i.i.i = icmp slt i64 %.pre-phi.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ce, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i, !prof !2053

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i: ; preds = %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i, %.loopexit.i.i.i.i
  %i.op = phi ptr [ %i.oz, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %i.ku, %.loopexit.i.i.i.i ] ; 2 uses
  %.val.i.i.i29.i39.i.i.i = phi ptr [ %.val.i.i.i29.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %.val18.i.i.i.i, %.loopexit.i.i.i.i ] ; 2 uses
  %i.oq = phi i64 [ %i.oy, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %..i.i.i106, %.loopexit.i.i.i.i ] ; 6 uses
  %.pre-phi.i38.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %i.om, %.loopexit.i.i.i.i ]
  %i.or = phi i64 [ %i.oo, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ %i.ok, %.loopexit.i.i.i.i ] ; 3 uses
  %.pre-phi36.i.i.i = phi i64 [ %.pre-phi.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ], [ 0, %.loopexit.i.i.i.i ] ; 10 uses
  %i.os = icmp eq ptr %i.lt, %.val.i.i.i29.i39.i.i.i
  br i1 %i.os, label %.loopexit.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !2054
  %i.ot = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.pre-phi36.i.i.i, i64 noundef range(i64 1, 9) 1) #27, !noalias !2054 ; 6 uses
  %i.ou = icmp eq ptr %i.ot, null
  br i1 %i.ou, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i
  %.pre-phi37.i.i.i = phi i64 [ %.pre-phi36.i.i.i, %bb.cd ], [ %.pre-phi.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ]
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %bb.cd ], [ 0, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %.pre-phi37.i.i.i) #32, !noalias !2063
  unreachable

bb.cf:                                            ; preds = %.loopexit.i.i.i.i
  %i.ov = load i64, ptr %i.ai, align 8, !range !184, !alias.scope !1969, !noalias !2064, !noundef !8
  %i.ow = sub nsw i64 %i.ov, %.pre168.i.i
  %i.ox = icmp ugt i64 %i.on, %i.ow
  br i1 %i.ox, label %bb.cg, label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, !prof !33

bb.cg:                                            ; preds = %bb.cf
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %.pre168.i.i, i64 noundef %i.on, i64 noundef 1, i64 noundef 1) #27, !noalias !2067
  %.pre164.i.i = load i64, ptr %i.hm, align 8, !alias.scope !1969, !noalias !2050
  br label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i

_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i: ; preds = %bb.cg, %bb.cf
  %.promoted97.i.i = phi i64 [ %.pre164.i.i, %bb.cg ], [ %i.ok, %bb.cf ] ; 8 uses
  %i.oy = add i64 %i.on, %..i.i.i106              ; 7 uses
  %i.oz = load ptr, ptr %i.hl, align 8, !alias.scope !1969, !noalias !2064, !nonnull !8, !noundef !8 ; 7 uses
  %i.pa = ptrtoaddr ptr %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 %..i.i.i106
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.oy
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.pc, ptr nonnull align 1 %i.pb, i64 %i.ls, i1 false), !noalias !2068
  %.not6.i31.i.i.i.i = icmp ult i64 %.promoted97.i.i, %i.oy
  br i1 %.not6.i31.i.i.i.i, label %.lr.ph100.i.i.preheader, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.i.i.i

.lr.ph100.i.i.preheader:                          ; preds = %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i
  %i.pd = ptrtoaddr ptr %.sroa.5.0.i.i to i64     ; 2 uses
  %i.pe = shl i64 %..i.i.i106, 1
  %i.pf = add i64 %.promoted97.i.i, %.sroa.04.0104.i.i
  %2 = add i64 %i.pf, %i.lf
  %i.pg = add i64 %2, %i.om
  %3 = sub i64 %i.pd, %i.pg
  %i.ph = add i64 %3, %i.pe
  %4 = add i64 %i.ph, -1
  %i.pi = add i64 %..i.i.i106, %i.pd
  %5 = add i64 %.sroa.04.0104.i.i, %i.lf
  %i.pj = add i64 %5, %i.om
  %6 = xor i64 %i.pj, -1
  %7 = add i64 %i.pi, %6
  %i.pk = call i64 @llvm.umin.i64(i64 %4, i64 %7)
  %i.pl = add i64 %i.pk, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.pl, 33
  br i1 %min.iters.check, label %.lr.ph100.i.i.preheader1124, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph100.i.i.preheader
  %i.pm = add i64 %.promoted97.i.i, %i.pa
  %i.pn = sub i64 %i.om, %i.pm
  %diff.check = icmp ugt i64 %i.pn, -32
  br i1 %diff.check, label %.lr.ph100.i.i.preheader1124, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.po = and i64 %i.pl, 31                       ; 2 uses
  %i.pp = icmp eq i64 %i.po, 0
  %i.pq = select i1 %i.pp, i64 32, i64 %i.po
  %n.vec = sub i64 %i.pl, %i.pq                   ; 3 uses
  %i.pr = add i64 %.promoted97.i.i, %n.vec
  %i.ps = getelementptr i8, ptr %.val18.i.i.i.i, i64 %n.vec
  %i.pt = getelementptr i8, ptr %i.oz, i64 %.promoted97.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.val18.i.i.i.i, i64 %index ; 2 uses
  %i.pu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !2069
  %wide.load1063 = load <16 x i8>, ptr %i.pu, align 1, !noalias !2069
  %i.pv = getelementptr i8, ptr %i.pt, i64 %index ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  store <16 x i8> %wide.load, ptr %i.pv, align 1, !noalias !2072
  store <16 x i8> %wide.load1063, ptr %i.pw, align 1, !noalias !2072
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.px = icmp eq i64 %index.next, %n.vec
  br i1 %i.px, label %.lr.ph100.i.i.preheader1124, label %vector.body, !llvm.loop !2073

.lr.ph100.i.i.preheader1124:                      ; preds = %vector.body, %vector.memcheck, %.lr.ph100.i.i.preheader
  %.sroa.01.03.i35.i.i99.i.i.ph = phi i64 [ %.promoted97.i.i, %vector.memcheck ], [ %.promoted97.i.i, %.lr.ph100.i.i.preheader ], [ %i.pr, %vector.body ]
  %.ph1125 = phi ptr [ %.val18.i.i.i.i, %vector.memcheck ], [ %.val18.i.i.i.i, %.lr.ph100.i.i.preheader ], [ %i.ps, %vector.body ]
  br label %.lr.ph100.i.i

.lr.ph.i33.i.i.i.i:                               ; preds = %.lr.ph100.i.i
  %.not.not.i36.i.i.i.i = icmp eq ptr %i.pz, %i.lt
  br i1 %.not.not.i36.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph100.i.i, !llvm.loop !2074

.lr.ph100.i.i:                                    ; preds = %.lr.ph100.i.i.preheader1124, %.lr.ph.i33.i.i.i.i
  %.sroa.01.03.i35.i.i99.i.i = phi i64 [ %i.qb, %.lr.ph.i33.i.i.i.i ], [ %.sroa.01.03.i35.i.i99.i.i.ph, %.lr.ph100.i.i.preheader1124 ] ; 2 uses
  %i.py = phi ptr [ %i.pz, %.lr.ph.i33.i.i.i.i ], [ %.ph1125, %.lr.ph100.i.i.preheader1124 ] ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 1 ; 4 uses
  %i.qa = load i8, ptr %i.py, align 1, !noalias !2069, !noundef !8
  %i.qb = add i64 %.sroa.01.03.i35.i.i99.i.i, 1   ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.oz, i64 %.sroa.01.03.i35.i.i99.i.i
  store i8 %i.qa, ptr %i.qc, align 1, !noalias !2072
  %exitcond.not.i37.i.i.i.i = icmp eq i64 %i.qb, %i.oy
  br i1 %exitcond.not.i37.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.loopexit.i.i.i.i, label %.lr.ph.i33.i.i.i.i

bb.ch:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ot, ptr nonnull align 1 %.val.i.i.i29.i39.i.i.i, i64 %.pre-phi36.i.i.i, i1 false), !noalias !2075
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ot, i64 %.pre-phi36.i.i.i
  %.not14.i.i.i.i = icmp eq i64 %.pre-phi.i38.i.i.i, %i.ol
  br i1 %.not14.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i, label %bb.ci

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit: ; preds = %.lr.ph, %.lr.ph.i42.i.i.i.i, %.lr.ph.i42.i.i.i.i.preheader
  %.pre.i.i21.i.ph = phi i64 [ %.promoted, %.lr.ph.i42.i.i.i.i.preheader ], [ %i.qk, %.lr.ph ], [ %i.qv, %.lr.ph.i42.i.i.i.i ] ; 2 uses
  store i64 %.pre.i.i21.i.ph, ptr %i.hm, align 8
  br label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i

_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i: ; preds = %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i, %bb.ch
  %.pre.i.i21.i = phi i64 [ %i.or, %bb.ch ], [ %.promoted, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i ], [ %.pre.i.i21.i.ph, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit ]
  %i.qe = phi ptr [ %i.op, %bb.ch ], [ %i.ql, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i ], [ %i.ql, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit ]
  %i.qf = phi i64 [ %i.oq, %bb.ch ], [ %i.qk, %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i ], [ %i.qk, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ot, i64 noundef %.pre-phi36.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !2094
  br label %.loopexit.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.qg = add i64 %i.oq, %i.ls                    ; 2 uses
  %i.qh = load i64, ptr %i.ai, align 8, !range !184, !alias.scope !1969, !noalias !2097, !noundef !8
  %i.qi = sub i64 %i.qh, %i.qg
  %i.qj = icmp ugt i64 %.pre-phi36.i.i.i, %i.qi
  br i1 %i.qj, label %bb.cj, label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i, !prof !33

bb.cj:                                            ; preds = %bb.ci
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.qg, i64 noundef %.pre-phi36.i.i.i, i64 noundef 1, i64 noundef 1) #27, !noalias !2100
  %.pre165.i.i = load i64, ptr %i.hm, align 8, !alias.scope !1969, !noalias !2101
  br label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i

_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i: ; preds = %bb.cj, %bb.ci
  %.promoted = phi i64 [ %.pre165.i.i, %bb.cj ], [ %i.or, %bb.ci ] ; 6 uses
  %i.qk = add i64 %.pre-phi36.i.i.i, %i.oq        ; 6 uses
  %i.ql = load ptr, ptr %i.hl, align 8, !alias.scope !1969, !noalias !2097, !nonnull !8, !noundef !8 ; 5 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.oq
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qk
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.qn, ptr nonnull align 1 %i.qm, i64 %i.ls, i1 false), !noalias !2104
  %.not6.i40.i.i.i.i = icmp ult i64 %.promoted, %i.qk
  br i1 %.not6.i40.i.i.i.i, label %.lr.ph.i42.i.i.i.i.preheader, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i

.lr.ph.i42.i.i.i.i.preheader:                     ; preds = %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i
  %.not.not.i45.i.i.i.i426 = icmp samesign eq i64 %.pre-phi36.i.i.i, 0
  br i1 %.not.not.i45.i.i.i.i426, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i42.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ql, i64 %.promoted
  %i.qo = add nsw i64 %.pre-phi36.i.i.i, -1       ; 2 uses
  %i.qp = add i64 %i.qo, %i.oq
  %i.qq = sub i64 %i.qp, %.promoted
  %umin = call i64 @llvm.umin.i64(i64 %i.qq, i64 %i.qo)
  %i.qr = add nuw nsw i64 %umin, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, ptr noundef nonnull align 1 dereferenceable(1) %i.ot, i64 %i.qr, i1 false), !noalias !2105
  br label %.lr.ph

.lr.ph.i42.i.i.i.i:                               ; preds = %.lr.ph
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qt, i64 1 ; 2 uses
  %.not.not.i45.i.i.i.i = icmp eq ptr %i.qs, %i.qd
  br i1 %.not.not.i45.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i42.i.i.i.i
  %i.qt = phi ptr [ %i.qs, %.lr.ph.i42.i.i.i.i ], [ %i.ot, %.lr.ph.preheader ]
  %i.qu = phi i64 [ %i.qv, %.lr.ph.i42.i.i.i.i ], [ %.promoted, %.lr.ph.preheader ]
  %i.qv = add i64 %i.qu, 1                        ; 3 uses
  %exitcond.not.i46.i.i.i.i = icmp eq i64 %i.qv, %i.qk
  br i1 %exitcond.not.i46.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, label %.lr.ph.i42.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i33.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i
  %i.qw = phi ptr [ %i.qe, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i ], [ %i.op, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i ], [ %i.oz, %.lr.ph.i33.i.i.i.i ]
  %i.qx = phi i64 [ %i.qf, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i ], [ %i.oq, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i ], [ %i.oy, %.lr.ph.i33.i.i.i.i ] ; 2 uses
  %i.qy = phi i64 [ %.pre.i.i21.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i ], [ %i.or, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i ], [ %i.qb, %.lr.ph.i33.i.i.i.i ] ; 4 uses
  %i.qz = icmp sgt i64 %i.qy, -1
  call void @llvm.assume(i1 %i.qz)
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.qx, %i.qy
  br i1 %.not3.i.i.i.i.i.i.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cl, %.loopexit.i.i.i
  %i.ra = phi ptr [ %i.rc, %bb.cl ], [ %i.qw, %.loopexit.i.i.i ]
  %i.rb = add i64 %i.qy, %i.ls
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i

bb.cl:                                            ; preds = %.loopexit.i.i.i
  %i.rc = load ptr, ptr %i.hl, align 8, !alias.scope !1969, !noalias !2106, !nonnull !8, !noundef !8 ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.qx
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.qy
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.re, ptr nonnull align 1 %i.rd, i64 %i.ls, i1 false), !noalias !2111
  br label %bb.ck

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block1104, %vec.epilog.middle.block1120, %bb.ck
  %i.rf = phi ptr [ %i.ra, %bb.ck ], [ %i.ly, %middle.block1104 ], [ %i.ly, %vec.epilog.middle.block1120 ], [ %i.ly, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %storemerge31.i.i = phi i64 [ %i.rb, %bb.ck ], [ %i.md, %middle.block1104 ], [ %i.mk, %vec.epilog.middle.block1120 ], [ %i.mu, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %storemerge31.i.i, ptr %i.hm, align 8, !alias.scope !1969, !noalias !2112
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !2113
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i, %bb.br
  %.pre168.i221.i = phi i64 [ %.pre168.i.i, %bb.br ], [ %storemerge31.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ] ; 4 uses
  %i.rg = phi ptr [ %i.ku, %bb.br ], [ %i.rf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ]
  %.sroa.02.1.i.i = phi i64 [ %.sroa.02.0105.i.i, %bb.br ], [ %i.lk, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %i.lj, %bb.br ], [ %.sroa.0.0106.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ] ; 2 uses
  %.sroa.011.1.i.i = add i64 %.sroa.011.0103.i.i, %i.lf ; 2 uses
  %i.rh = load ptr, ptr %i.az, align 8, !alias.scope !2116, !noalias !1967, !nonnull !8, !align !59, !noundef !8
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 112
  %i.rj = load i64, ptr %i.ri, align 8, !noalias !1967, !noundef !8 ; 2 uses
  %i.rk = add i64 %i.rj, %.sroa.04.0104.i.i       ; 3 uses
  %i.rl = icmp sgt i64 %.pre168.i221.i, -1
  call void @llvm.assume(i1 %i.rl)
  %i.rm = icmp ult i64 %i.rk, %.pre168.i221.i
  br i1 %i.rm, label %bb.bm, label %._crit_edge.i.i

bb.cm:                                            ; preds = %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsbMXVmEvvZJf_5uu_dd.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  %i.rn = getelementptr inbounds nuw i8, ptr %i.km, i64 112
  %i.ro = load i64, ptr %i.rn, align 8, !noalias !2120, !noundef !8 ; 2 uses
  %i.rp = icmp eq i64 %i.ro, 0
  br i1 %i.rp, label %bb.cn, label %bb.co, !prof !33

bb.cn:                                            ; preds = %bb.cm
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #30, !noalias !2120
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.rq = icmp eq i64 %storemerge.i.i, 0
  br i1 %i.rq, label %.sink.split.i, label %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i

_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %bb.co, %bb.cr
  %.sroa.0.041.i.i = phi i64 [ %i.sf, %bb.cr ], [ 0, %bb.co ] ; 2 uses
  %.sroa.04.040.i.i = phi i64 [ %i.se, %bb.cr ], [ 0, %bb.co ] ; 2 uses
  %.sroa.0.02439.i.i = phi ptr [ %i.rr, %bb.cr ], [ %i.kl, %bb.co ] ; 2 uses
  %.sroa.6.038.i.i = phi i64 [ %i.rs, %bb.cr ], [ %storemerge.i.i, %bb.co ] ; 2 uses
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ro, i64 %.sroa.6.038.i.i) ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.0.02439.i.i, i64 %..i.i.i.i
  %i.rs = sub nuw i64 %.sroa.6.038.i.i, %..i.i.i.i ; 2 uses
  %i.rt = call { i64, ptr } @_RNvXs4_CsbMXVmEvvZJf_5uu_ddNtB5_5InputNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull %.sroa.0.02439.i.i, i64 noundef %..i.i.i.i) #27, !noalias !2123 ; 2 uses
  %i.ru = extractvalue { i64, ptr } %i.rt, 0
  %i.rv = extractvalue { i64, ptr } %i.rt, 1      ; 3 uses
  %i.rw = ptrtoint ptr %i.rv to i64               ; 3 uses
  %i.rx = trunc nuw i64 %i.ru to i1
  br i1 %i.rx, label %.loopexit, label %bb.cp

_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i: ; preds = %bb.cr, %bb.cq
  %.sroa.0.032.i.i = phi i64 [ %.sroa.0.041.i.i, %bb.cq ], [ %i.sf, %bb.cr ] ; 2 uses
  %.sroa.04.1.i.i = phi i64 [ %i.sd, %bb.cq ], [ %i.se, %bb.cr ] ; 4 uses
  %.sroa.02.0.i.i = phi i64 [ %spec.select21.i.i, %bb.cq ], [ 0, %bb.cr ] ; 2 uses
  %i.ry = icmp ugt i64 %.sroa.04.1.i.i, %storemerge.i.i
  br i1 %i.ry, label %bb.cs, label %.sink.split.i
end_hunk_0
