Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/intersect_other?download=true
inline.NumInlined: 13173
inline.NumDeleted: 5390
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSC_:bb.a
  %.03345.prol = phi i64 [ %i.da, %scalar.ph84.prol ], [ %.03345.ph, %scalar.ph84.preheader ] ; 3 uses
  %prol.iter100 = phi i64 [ %prol.iter100.next, %scalar.ph84.prol ], [ 0, %scalar.ph84.preheader ]
  %i.cy = getelementptr [4 x i8], ptr %i.cg, i64 %.03345.prol
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %.03345.prol
  %i.cz = load i32, ptr %gep.prol, align 4, !tbaa !109
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !109
  %i.da = add nuw nsw i64 %.03345.prol, 1         ; 2 uses
  %prol.iter100.next = add i64 %prol.iter100, 1   ; 2 uses
  %prol.iter100.cmp.not = icmp eq i64 %prol.iter100.next, %xtraiter98
  br i1 %prol.iter100.cmp.not, label %scalar.ph84.prol.loopexit, label %scalar.ph84.prol, !llvm.loop !1554

scalar.ph84.prol.loopexit:                        ; preds = %scalar.ph84.prol, %scalar.ph84.preheader
  %.03345.unr = phi i64 [ %.03345.ph, %scalar.ph84.preheader ], [ %i.da, %scalar.ph84.prol ]
  %i.db = sub nsw i64 %.03345.ph, %.03552
  %i.dc = icmp ugt i64 %i.db, -4
  br i1 %i.dc, label %.preheader43, label %scalar.ph84

.preheader43:                                     ; preds = %scalar.ph84.prol.loopexit, %scalar.ph84, %middle.block93, %bb.c
  %i.dd = icmp sgt i64 %i.bx, 3
  br i1 %i.dd, label %.lr.ph47, label %.preheader

scalar.ph84:                                      ; preds = %scalar.ph84.prol.loopexit, %scalar.ph84
  %.03345 = phi i64 [ %i.dp, %scalar.ph84 ], [ %.03345.unr, %scalar.ph84.prol.loopexit ] ; 6 uses
  %i.de = getelementptr [4 x i8], ptr %i.cg, i64 %.03345
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.03345
  %i.df = load i32, ptr %gep, align 4, !tbaa !109
  store i32 %i.df, ptr %i.de, align 4, !tbaa !109
  %i.dg = add nuw nsw i64 %.03345, 1              ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr %i.cg, i64 %i.dg
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dg
  %i.di = load i32, ptr %gep.1, align 4, !tbaa !109
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !109
  %i.dj = add nuw nsw i64 %.03345, 2              ; 2 uses
  %i.dk = getelementptr [4 x i8], ptr %i.cg, i64 %i.dj
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dj
  %i.dl = load i32, ptr %gep.2, align 4, !tbaa !109
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !109
  %i.dm = add nuw nsw i64 %.03345, 3              ; 2 uses
  %i.dn = getelementptr [4 x i8], ptr %i.cg, i64 %i.dm
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dm
  %i.do = load i32, ptr %gep.3, align 4, !tbaa !109
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !109
  %i.dp = add nuw nsw i64 %.03345, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dp, %.03552
  br i1 %exitcond.not.3, label %.preheader43, label %scalar.ph84, !llvm.loop !1555

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.dq = icmp slt i64 %i.bz, %i.bg
  br i1 %i.dq, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.dr = load ptr, ptr %0, align 8, !tbaa !1564, !nonnull !78, !align !281 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !151 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !126 ; 2 uses
  %i.dv = mul nsw i64 %i.du, %.03453
  %i.dw = getelementptr [4 x i8], ptr %i.ds, i64 %i.dv ; 2 uses
  %i.dx = load ptr, ptr %i.bu, align 8, !tbaa !1565, !nonnull !78, !align !281 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !365 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !149 ; 2 uses
  %i.eb = mul nsw i64 %i.ea, %.03453
  %invariant.gep50 = getelementptr [4 x i8], ptr %i.dy, i64 %i.eb ; 2 uses
  %i.ec = add i64 %.03552, %i.by
  %i.ed = sub i64 %i.bg, %i.ec                    ; 3 uses
  %min.iters.check71 = icmp ult i64 %i.ed, 12
  br i1 %min.iters.check71, label %scalar.ph70.preheader, label %vector.memcheck69

vector.memcheck69:                                ; preds = %.lr.ph49
  %i.ee = ptrtoaddr ptr %i.dy to i64
  %i.ef = ptrtoaddr ptr %i.ds to i64
  %i.eg = mul i64 %i.du, %i.bw
  %i.eh = add i64 %i.eg, %i.ef
  %i.ei = mul i64 %i.ea, %i.bw
  %i.ej = add i64 %i.ei, %i.ee
  %i.ek = sub i64 %i.ej, %i.eh
  %diff.check = icmp ugt i64 %i.ek, -32
  br i1 %diff.check, label %scalar.ph70.preheader, label %vector.ph72

vector.ph72:                                      ; preds = %vector.memcheck69
  %n.vec73 = and i64 %i.ed, -8                    ; 3 uses
  %i.el = add i64 %i.bz, %n.vec73
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph72
  %index75 = phi i64 [ 0, %vector.ph72 ], [ %index.next78, %vector.body74 ] ; 2 uses
  %i.em = add i64 %i.bz, %index75                 ; 2 uses
  %i.en = getelementptr [4 x i8], ptr %i.dw, i64 %i.em ; 2 uses
  %i.eo = getelementptr [4 x i8], ptr %invariant.gep50, i64 %i.em ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  %wide.load76 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !109
  %wide.load77 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !109
  %i.eq = getelementptr i8, ptr %i.en, i64 16
  store <4 x i32> %wide.load76, ptr %i.en, align 4, !tbaa !109
  store <4 x i32> %wide.load77, ptr %i.eq, align 4, !tbaa !109
  %index.next78 = add nuw i64 %index75, 8         ; 2 uses
  %i.er = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.er, label %middle.block79, label %vector.body74, !llvm.loop !1556

middle.block79:                                   ; preds = %vector.body74
  %cmp.n80 = icmp eq i64 %i.ed, %n.vec73
  br i1 %cmp.n80, label %._crit_edge, label %scalar.ph70.preheader

scalar.ph70.preheader:                            ; preds = %vector.memcheck69, %.lr.ph49, %middle.block79
  %.048.ph = phi i64 [ %i.bz, %vector.memcheck69 ], [ %i.bz, %.lr.ph49 ], [ %i.el, %middle.block79 ]
  br label %scalar.ph70

.lr.ph47:                                         ; preds = %.preheader43, %.lr.ph47
  %.03246 = phi i64 [ %i.fh, %.lr.ph47 ], [ %.03552, %.preheader43 ] ; 3 uses
  %i.es = load ptr, ptr %0, align 8, !tbaa !1564, !nonnull !78, !align !281 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !151
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !126
  %i.ew = mul nsw i64 %i.ev, %.03453
  %i.ex = getelementptr [4 x i8], ptr %i.et, i64 %i.ew
  %i.ey = getelementptr [4 x i8], ptr %i.ex, i64 %.03246
  %i.ez = load ptr, ptr %i.bu, align 8, !tbaa !1565, !nonnull !78, !align !281 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !365
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %.03246
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !149
  %i.fe = mul nsw i64 %i.fd, %.03453
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fe
  %i.fg = load <2 x i64>, ptr %i.ff, align 1, !tbaa !86
  store <2 x i64> %i.fg, ptr %i.ey, align 16, !tbaa !86
  %i.fh = add nsw i64 %.03246, 4                  ; 2 uses
  %i.fi = icmp slt i64 %i.fh, %i.bz
  br i1 %i.fi, label %.lr.ph47, label %.preheader, !llvm.loop !1557

._crit_edge:                                      ; preds = %scalar.ph70, %middle.block79, %.preheader
  %i.fj = add nsw i64 %.03552, %i.bo
  %i.fk = srem i64 %i.fj, 4
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bg, i64 %i.fk)
  %i.fl = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond57.not = icmp eq i64 %i.fl, %i.bi
  br i1 %exitcond57.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSC_.exit, label %bb.c, !llvm.loop !1558

scalar.ph70:                                      ; preds = %scalar.ph70.preheader, %scalar.ph70
  %.048 = phi i64 [ %i.fo, %scalar.ph70 ], [ %.048.ph, %scalar.ph70.preheader ] ; 3 uses
  %i.fm = getelementptr [4 x i8], ptr %i.dw, i64 %.048
  %gep51 = getelementptr [4 x i8], ptr %invariant.gep50, i64 %.048
  %i.fn = load i32, ptr %gep51, align 4, !tbaa !109
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !109
  %i.fo = add nsw i64 %.048, 1                    ; 2 uses
  %i.fp = icmp slt i64 %i.fo, %i.bg
  br i1 %i.fp, label %scalar.ph70, label %._crit_edge, !llvm.loop !1559

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSC_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSS_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #36 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1590, !nonnull !78, !align !281 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 3
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !126  ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSS_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !126  ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !78, !align !281 ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 24       ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSS_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %0, align 8, !nonnull !78, !align !281 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !151  ; 4 uses
  %i.t = load i64, ptr %i.r, align 8, !tbaa !126  ; 3 uses
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !365  ; 3 uses
  %i.v = load i64, ptr %i.o, align 8, !tbaa !149  ; 3 uses
  %i.w = add nsw i64 %i.g, -1                     ; 2 uses
  %i.x = mul i64 %i.t, %i.w
  %i.y = add i64 %i.x, %i.j
  %i.z = shl i64 %i.y, 2
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.z ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.m, i64 28
  %i.aa = mul i64 %i.v, %i.w
  %i.ab = add i64 %i.aa, %i.j
  %i.ac = shl i64 %i.ab, 2
  %scevgep66 = getelementptr i8, ptr %i.u, i64 %i.ac
  %min.iters.check = icmp ult i64 %i.j, 12
  %bound0 = icmp ult ptr %i.s, %scevgep65
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.t, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  %1 = or i1 %found.conflict, %stride.check
  %bound168.a = icmp ult ptr %i.s, %scevgep66
  %bound168 = icmp ult ptr %i.u, %scevgep
  %found.conflict69 = and i1 %bound168.a, %bound168
  %i.ad = and i64 %i.v, 2305843009213693952
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = or i1 %found.conflict69, %i.ae
  %conflict.rdx = or i1 %1, %i.af
  %n.vec = and i64 %i.j, 9223372036854775800      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ay, %._crit_edge.i ] ; 3 uses
  %i.ag = mul nsw i64 %.0810.i, %i.t
  %i.ah = getelementptr [4 x i8], ptr %i.s, i64 %i.ag ; 6 uses
  %i.ai = mul nsw i64 %.0810.i, %i.v
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.u, i64 %i.ai ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.aj = load i32, ptr %i.n, align 8, !tbaa !161, !alias.scope !1591
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.al = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %wide.load = load <4 x i32>, ptr %i.al, align 4, !tbaa !109, !alias.scope !1592
  %wide.load72 = load <4 x i32>, ptr %i.am, align 4, !tbaa !109, !alias.scope !1592
  %i.an = add nsw <4 x i32> %wide.load, %broadcast.splat
  %i.ao = add nsw <4 x i32> %wide.load72, %broadcast.splat
  %i.ap = getelementptr i8, ptr %i.ak, i64 16
  store <4 x i32> %i.an, ptr %i.ak, align 4, !tbaa !109, !alias.scope !1593, !noalias !1594
  store <4 x i32> %i.ao, ptr %i.ap, align 4, !tbaa !109, !alias.scope !1593, !noalias !1594
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1570

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.prol = phi i64 [ %i.av, %scalar.ph.prol ], [ %.09.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ar = getelementptr [4 x i8], ptr %i.ah, i64 %.09.i.prol
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.09.i.prol
  %i.as = load i32, ptr %i.n, align 8, !tbaa !161
  %i.at = load i32, ptr %gep.i.prol, align 4, !tbaa !109
  %i.au = add nsw i32 %i.at, %i.as
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !109
  %i.av = add nuw nsw i64 %.09.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1571

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %i.aw = sub nsw i64 %.09.i.ph, %i.j
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ay = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ay, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSS_.exit, label %.preheader.i, !llvm.loop !1572

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bs, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.az = getelementptr [4 x i8], ptr %i.ah, i64 %.09.i
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.09.i
  %i.ba = load i32, ptr %i.n, align 8, !tbaa !161
  %i.bb = load i32, ptr %gep.i, align 4, !tbaa !109
  %i.bc = add nsw i32 %i.bb, %i.ba
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !109
  %i.bd = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bd
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bd
  %i.bf = load i32, ptr %i.n, align 8, !tbaa !161
  %i.bg = load i32, ptr %gep.i.1, align 4, !tbaa !109
  %i.bh = add nsw i32 %i.bg, %i.bf
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !109
  %i.bi = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %i.bj = getelementptr [4 x i8], ptr %i.ah, i64 %i.bi
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bi
  %i.bk = load i32, ptr %i.n, align 8, !tbaa !161
  %i.bl = load i32, ptr %gep.i.2, align 4, !tbaa !109
  %i.bm = add nsw i32 %i.bl, %i.bk
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !109
  %i.bn = add nuw nsw i64 %.09.i, 3               ; 2 uses
  %i.bo = getelementptr [4 x i8], ptr %i.ah, i64 %i.bn
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bn
  %i.bp = load i32, ptr %i.n, align 8, !tbaa !161
  %i.bq = load i32, ptr %gep.i.3, align 4, !tbaa !109
  %i.br = add nsw i32 %i.bq, %i.bp
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !109
  %i.bs = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bs, %i.j
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1573

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !126 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !126 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !366, !nonnull !78, !align !281
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !118
  %i.cb = sub i64 0, %i.ca
  %i.cc = and i64 %i.cb, 3
  %i.cd = icmp sgt i64 %i.bw, 0
  br i1 %i.cd, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSS_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit
  %i.ce = lshr exact i64 %i.d, 2
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = and i64 %i.cf, 3
  %i.ch = tail call i64 @llvm.smin.i64(i64 %i.cg, i64 %i.bu)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cj = shl i64 %i.bu, 2                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.ha, %._crit_edge ] ; 9 uses
  %.03552 = phi i64 [ %i.ch, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 14 uses
  %i.ck = shl i64 %.03453, 2                      ; 2 uses
  %i.cl = shl i64 %.03453, 2                      ; 2 uses
  %i.cm = sub i64 %i.bu, %.03552                  ; 3 uses
  %i.cn = and i64 %i.cm, -4                       ; 2 uses
  %i.co = add nsw i64 %i.cn, %.03552              ; 6 uses
  %i.cp = icmp sgt i64 %.03552, 0
  br i1 %i.cp, label %.lr.ph, label %.preheader43

.lr.ph:                                           ; preds = %bb.c
  %i.cq = load ptr, ptr %0, align 8, !tbaa !1595, !nonnull !78, !align !281 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !151 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !126 ; 2 uses
  %i.cu = mul nsw i64 %i.ct, %.03453
  %i.cv = getelementptr [4 x i8], ptr %i.cr, i64 %i.cu ; 8 uses
  %i.cw = load ptr, ptr %i.ci, align 8, !tbaa !1596, !nonnull !78, !align !281 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !365 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !149 ; 2 uses
  %i.db = mul nsw i64 %i.da, %.03453
  %invariant.gep = getelementptr [4 x i8], ptr %i.cy, i64 %i.db ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 7 uses
  %min.iters.check114 = icmp ult i64 %.03552, 12
  br i1 %min.iters.check114, label %scalar.ph113.preheader, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph
  %i.dd = mul i64 %i.ct, %i.ck
  %i.de = shl i64 %.03552, 2                      ; 2 uses
  %i.df = getelementptr i8, ptr %i.cr, i64 %i.dd
  %scevgep103.a = getelementptr i8, ptr %i.df, i64 %i.de ; 2 uses
  %scevgep104.a = getelementptr i8, ptr %i.cw, i64 28
  %i.dg = mul i64 %i.da, %i.ck
  %i.dh = getelementptr i8, ptr %i.cy, i64 %i.dg
  %scevgep105 = getelementptr i8, ptr %i.dh, i64 %i.de
  %bound0106 = icmp ult ptr %i.cv, %scevgep104.a
  %bound1107 = icmp ult ptr %i.dc, %scevgep103.a
  %found.conflict108 = and i1 %bound0106, %bound1107
  %bound0109 = icmp ult ptr %i.cv, %scevgep105
  %bound1110 = icmp ult ptr %invariant.gep, %scevgep103.a
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %found.conflict108, %found.conflict111
  br i1 %conflict.rdx112, label %scalar.ph113.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck102
  %n.vec116 = and i64 %.03552, 9223372036854775800 ; 3 uses
  %i.di = load i32, ptr %i.dc, align 8, !tbaa !161, !alias.scope !1597
  %broadcast.splatinsert121 = insertelement <4 x i32> poison, i32 %i.di, i64 0
  %broadcast.splat122 = shufflevector <4 x i32> %broadcast.splatinsert121, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next123, %vector.body117 ] ; 3 uses
  %i.dj = getelementptr [4 x i8], ptr %i.cv, i64 %index118 ; 2 uses
  %i.dk = getelementptr [4 x i8], ptr %invariant.gep, i64 %index118 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  %wide.load119.a = load <4 x i32>, ptr %i.dk, align 4, !tbaa !109, !alias.scope !1598
  %wide.load120 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !109, !alias.scope !1598
  %i.dm = add nsw <4 x i32> %wide.load119.a, %broadcast.splat122
  %i.dn = add nsw <4 x i32> %wide.load120, %broadcast.splat122
  %i.do = getelementptr i8, ptr %i.dj, i64 16
  store <4 x i32> %i.dm, ptr %i.dj, align 4, !tbaa !109, !alias.scope !1599, !noalias !1600
  store <4 x i32> %i.dn, ptr %i.do, align 4, !tbaa !109, !alias.scope !1599, !noalias !1600
  %index.next123 = add nuw i64 %index118, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.dp, label %middle.block124, label %vector.body117, !llvm.loop !1578

middle.block124:                                  ; preds = %vector.body117
  %cmp.n125 = icmp eq i64 %.03552, %n.vec116
  br i1 %cmp.n125, label %.preheader43, label %scalar.ph113.preheader

scalar.ph113.preheader:                           ; preds = %vector.memcheck102, %.lr.ph, %middle.block124
end_hunk_0
