Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scaf?download=true
inline.NumInlined: 7499
inline.NumDeleted: 3448
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 125
begin_hunk_0_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSB_:bb.a
  %.03345.prol = phi i64 [ %i.di, %scalar.ph82.prol ], [ %.03345.ph, %scalar.ph82.preheader ] ; 3 uses
  %prol.iter98 = phi i64 [ %prol.iter98.next, %scalar.ph82.prol ], [ 0, %scalar.ph82.preheader ]
  %i.df = getelementptr [4 x i8], ptr %i.cm, i64 %.03345.prol
  %i.dg = getelementptr [4 x i8], ptr %i.cs, i64 %.03345.prol
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !78
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !78
  %i.di = add nuw nsw i64 %.03345.prol, 1         ; 2 uses
  %prol.iter98.next = add i64 %prol.iter98, 1     ; 2 uses
  %prol.iter98.cmp.not = icmp eq i64 %prol.iter98.next, %xtraiter96
  br i1 %prol.iter98.cmp.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol, !llvm.loop !919

scalar.ph82.prol.loopexit:                        ; preds = %scalar.ph82.prol, %scalar.ph82.preheader
  %.03345.unr = phi i64 [ %.03345.ph, %scalar.ph82.preheader ], [ %i.di, %scalar.ph82.prol ]
  %i.dj = sub nsw i64 %.03345.ph, %.03550
  %i.dk = icmp ugt i64 %i.dj, -4
  br i1 %i.dk, label %.preheader43, label %scalar.ph82

.preheader43:                                     ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82, %middle.block91, %bb.c
  %i.dl = icmp sgt i64 %i.cd, 3
  br i1 %i.dl, label %.lr.ph47, label %.preheader

scalar.ph82:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82
  %.03345 = phi i64 [ %i.eb, %scalar.ph82 ], [ %.03345.unr, %scalar.ph82.prol.loopexit ] ; 6 uses
  %i.dm = getelementptr [4 x i8], ptr %i.cm, i64 %.03345
  %i.dn = getelementptr [4 x i8], ptr %i.cs, i64 %.03345
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !78
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !78
  %i.dp = add nuw nsw i64 %.03345, 1              ; 2 uses
  %i.dq = getelementptr [4 x i8], ptr %i.cm, i64 %i.dp
  %i.dr = getelementptr [4 x i8], ptr %i.cs, i64 %i.dp
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !78
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !78
  %i.dt = add nuw nsw i64 %.03345, 2              ; 2 uses
  %i.du = getelementptr [4 x i8], ptr %i.cm, i64 %i.dt
  %i.dv = getelementptr [4 x i8], ptr %i.cs, i64 %i.dt
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !78
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !78
  %i.dx = add nuw nsw i64 %.03345, 3              ; 2 uses
  %i.dy = getelementptr [4 x i8], ptr %i.cm, i64 %i.dx
  %i.dz = getelementptr [4 x i8], ptr %i.cs, i64 %i.dx
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !78
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !78
  %i.eb = add nuw nsw i64 %.03345, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eb, %.03550
  br i1 %exitcond.not.3, label %.preheader43, label %scalar.ph82, !llvm.loop !920

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.ec = icmp slt i64 %i.cf, %i.bm
  br i1 %i.ec, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.ed = load ptr, ptr %0, align 8, !tbaa !929, !nonnull !91, !align !116 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !152 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !84 ; 2 uses
  %i.eh = mul nsw i64 %i.eg, %.03451
  %i.ei = getelementptr [4 x i8], ptr %i.ee, i64 %i.eh ; 2 uses
  %i.ej = load ptr, ptr %i.ca, align 8, !tbaa !930, !nonnull !91, !align !116 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !152 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !84 ; 2 uses
  %i.en = mul nsw i64 %i.em, %.03451
  %i.eo = getelementptr [4 x i8], ptr %i.ek, i64 %i.en ; 2 uses
  %i.ep = add i64 %.03550, %i.ce
  %i.eq = sub i64 %i.bm, %i.ep                    ; 3 uses
  %min.iters.check69 = icmp ult i64 %i.eq, 12
  br i1 %min.iters.check69, label %scalar.ph68.preheader, label %vector.memcheck67

vector.memcheck67:                                ; preds = %.lr.ph49
  %i.er = ptrtoaddr ptr %i.ek to i64
  %i.es = ptrtoaddr ptr %i.ee to i64
  %i.et = mul i64 %i.eg, %i.cc
  %i.eu = add i64 %i.et, %i.es
  %i.ev = mul i64 %i.em, %i.cc
  %i.ew = add i64 %i.ev, %i.er
  %i.ex = sub i64 %i.ew, %i.eu
  %diff.check = icmp ugt i64 %i.ex, -32
  br i1 %diff.check, label %scalar.ph68.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck67
  %n.vec71 = and i64 %i.eq, -8                    ; 3 uses
  %i.ey = add i64 %i.cf, %n.vec71
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next76, %vector.body72 ] ; 2 uses
  %i.ez = add i64 %i.cf, %index73                 ; 2 uses
  %i.fa = getelementptr [4 x i8], ptr %i.ei, i64 %i.ez ; 2 uses
  %i.fb = getelementptr [4 x i8], ptr %i.eo, i64 %i.ez ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 16
  %wide.load74 = load <4 x i32>, ptr %i.fb, align 4, !tbaa !78
  %wide.load75 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !78
  %i.fd = getelementptr i8, ptr %i.fa, i64 16
  store <4 x i32> %wide.load74, ptr %i.fa, align 4, !tbaa !78
  store <4 x i32> %wide.load75, ptr %i.fd, align 4, !tbaa !78
  %index.next76 = add nuw i64 %index73, 8         ; 2 uses
  %i.fe = icmp eq i64 %index.next76, %n.vec71
  br i1 %i.fe, label %middle.block77, label %vector.body72, !llvm.loop !921

middle.block77:                                   ; preds = %vector.body72
  %cmp.n78 = icmp eq i64 %i.eq, %n.vec71
  br i1 %cmp.n78, label %._crit_edge, label %scalar.ph68.preheader

scalar.ph68.preheader:                            ; preds = %vector.memcheck67, %.lr.ph49, %middle.block77
  %.048.ph = phi i64 [ %i.cf, %vector.memcheck67 ], [ %i.cf, %.lr.ph49 ], [ %i.ey, %middle.block77 ]
  br label %scalar.ph68

.lr.ph47:                                         ; preds = %.preheader43, %.lr.ph47
  %.03246 = phi i64 [ %i.fu, %.lr.ph47 ], [ %.03550, %.preheader43 ] ; 3 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !929, !nonnull !91, !align !116 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !152
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !84
  %i.fj = mul nsw i64 %i.fi, %.03451
  %i.fk = getelementptr [4 x i8], ptr %i.fg, i64 %i.fj
  %i.fl = getelementptr [4 x i8], ptr %i.fk, i64 %.03246
  %i.fm = load ptr, ptr %i.ca, align 8, !tbaa !930, !nonnull !91, !align !116 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !152
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %.03246
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !84
  %i.fr = mul nsw i64 %i.fq, %.03451
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.fr
  %i.ft = load <2 x i64>, ptr %i.fs, align 1, !tbaa !97
  store <2 x i64> %i.ft, ptr %i.fl, align 16, !tbaa !97
  %i.fu = add nsw i64 %.03246, 4                  ; 2 uses
  %i.fv = icmp slt i64 %i.fu, %i.cf
  br i1 %i.fv, label %.lr.ph47, label %.preheader, !llvm.loop !922

._crit_edge:                                      ; preds = %scalar.ph68, %middle.block77, %.preheader
  %i.fw = add nsw i64 %.03550, %i.bu
  %i.fx = srem i64 %i.fw, 4
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bm, i64 %i.fx)
  %i.fy = add nuw nsw i64 %.03451, 1              ; 2 uses
  %exitcond55.not = icmp eq i64 %i.fy, %i.bo
  br i1 %exitcond55.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSB_.exit, label %bb.c, !llvm.loop !923

scalar.ph68:                                      ; preds = %scalar.ph68.preheader, %scalar.ph68
  %.048 = phi i64 [ %i.gc, %scalar.ph68 ], [ %.048.ph, %scalar.ph68.preheader ] ; 3 uses
  %i.fz = getelementptr [4 x i8], ptr %i.ei, i64 %.048
  %i.ga = getelementptr [4 x i8], ptr %i.eo, i64 %.048
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !78
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !78
  %i.gc = add nsw i64 %.048, 1                    ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %i.bm
  br i1 %i.gd, label %scalar.ph68, label %._crit_edge, !llvm.loop !924

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSB_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSS_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !955, !nonnull !91, !align !116 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 3
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !84   ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSS_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !84   ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !91, !align !116 ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 24       ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSS_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %0, align 8, !nonnull !91, !align !116 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !152  ; 4 uses
  %i.t = load i64, ptr %i.r, align 8, !tbaa !84   ; 3 uses
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !957  ; 3 uses
  %i.v = load i64, ptr %i.o, align 8, !tbaa !148  ; 3 uses
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
  %i.aj = load i32, ptr %i.n, align 8, !tbaa !150, !alias.scope !958
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.al = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %wide.load = load <4 x i32>, ptr %i.al, align 4, !tbaa !78, !alias.scope !959
  %wide.load72 = load <4 x i32>, ptr %i.am, align 4, !tbaa !78, !alias.scope !959
  %i.an = add nsw <4 x i32> %wide.load, %broadcast.splat
  %i.ao = add nsw <4 x i32> %wide.load72, %broadcast.splat
  %i.ap = getelementptr i8, ptr %i.ak, i64 16
  store <4 x i32> %i.an, ptr %i.ak, align 4, !tbaa !78, !alias.scope !960, !noalias !961
  store <4 x i32> %i.ao, ptr %i.ap, align 4, !tbaa !78, !alias.scope !960, !noalias !961
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !935

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
  %i.as = load i32, ptr %i.n, align 8, !tbaa !150
  %i.at = load i32, ptr %gep.i.prol, align 4, !tbaa !78
  %i.au = add nsw i32 %i.at, %i.as
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !78
  %i.av = add nuw nsw i64 %.09.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !936

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %i.aw = sub nsw i64 %.09.i.ph, %i.j
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ay = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ay, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSS_.exit, label %.preheader.i, !llvm.loop !937

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bs, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.az = getelementptr [4 x i8], ptr %i.ah, i64 %.09.i
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.09.i
  %i.ba = load i32, ptr %i.n, align 8, !tbaa !150
  %i.bb = load i32, ptr %gep.i, align 4, !tbaa !78
  %i.bc = add nsw i32 %i.bb, %i.ba
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !78
  %i.bd = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %i.ah, i64 %i.bd
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bd
  %i.bf = load i32, ptr %i.n, align 8, !tbaa !150
  %i.bg = load i32, ptr %gep.i.1, align 4, !tbaa !78
  %i.bh = add nsw i32 %i.bg, %i.bf
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !78
  %i.bi = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %i.bj = getelementptr [4 x i8], ptr %i.ah, i64 %i.bi
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bi
  %i.bk = load i32, ptr %i.n, align 8, !tbaa !150
  %i.bl = load i32, ptr %gep.i.2, align 4, !tbaa !78
  %i.bm = add nsw i32 %i.bl, %i.bk
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !78
  %i.bn = add nuw nsw i64 %.09.i, 3               ; 2 uses
  %i.bo = getelementptr [4 x i8], ptr %i.ah, i64 %i.bn
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bn
  %i.bp = load i32, ptr %i.n, align 8, !tbaa !150
  %i.bq = load i32, ptr %gep.i.3, align 4, !tbaa !78
  %i.br = add nsw i32 %i.bq, %i.bp
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !78
  %i.bs = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bs, %i.j
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !938

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !84 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !84 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !247, !nonnull !91, !align !116
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !62
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
  %i.cq = load ptr, ptr %0, align 8, !tbaa !962, !nonnull !91, !align !116 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !152 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !84 ; 2 uses
  %i.cu = mul nsw i64 %i.ct, %.03453
  %i.cv = getelementptr [4 x i8], ptr %i.cr, i64 %i.cu ; 8 uses
  %i.cw = load ptr, ptr %i.ci, align 8, !tbaa !963, !nonnull !91, !align !116 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !957 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !148 ; 2 uses
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
  %i.di = load i32, ptr %i.dc, align 8, !tbaa !150, !alias.scope !964
  %broadcast.splatinsert121 = insertelement <4 x i32> poison, i32 %i.di, i64 0
  %broadcast.splat122 = shufflevector <4 x i32> %broadcast.splatinsert121, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next123, %vector.body117 ] ; 3 uses
  %i.dj = getelementptr [4 x i8], ptr %i.cv, i64 %index118 ; 2 uses
  %i.dk = getelementptr [4 x i8], ptr %invariant.gep, i64 %index118 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  %wide.load119.a = load <4 x i32>, ptr %i.dk, align 4, !tbaa !78, !alias.scope !965
  %wide.load120 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !78, !alias.scope !965
  %i.dm = add nsw <4 x i32> %wide.load119.a, %broadcast.splat122
  %i.dn = add nsw <4 x i32> %wide.load120, %broadcast.splat122
  %i.do = getelementptr i8, ptr %i.dj, i64 16
  store <4 x i32> %i.dm, ptr %i.dj, align 4, !tbaa !78, !alias.scope !966, !noalias !967
  store <4 x i32> %i.dn, ptr %i.do, align 4, !tbaa !78, !alias.scope !966, !noalias !967
  %index.next123 = add nuw i64 %index118, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.dp, label %middle.block124, label %vector.body117, !llvm.loop !943

middle.block124:                                  ; preds = %vector.body117
  %cmp.n125 = icmp eq i64 %.03552, %n.vec116
  br i1 %cmp.n125, label %.preheader43, label %scalar.ph113.preheader

scalar.ph113.preheader:                           ; preds = %vector.memcheck102, %.lr.ph, %middle.block124
end_hunk_0
begin_hunk_1_@_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEERKNS_9DenseBaseIT_EE:bb.a
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !1070, !nonnull !91, !align !116 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  %i.n = load i64, ptr %i.a, align 8, !tbaa !123  ; 6 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !84   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27
  %.not.i.i.i.i.i = icmp eq i64 %i.q, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %.not8.i.i.i.i.i = icmp eq i64 %i.s, %i.o
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not8.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.t = icmp eq i64 %i.n, 0
  %i.u = icmp eq i64 %i.o, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.t, %i.u
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = sdiv i64 9223372036854775807, %i.o
  %i.w = icmp sgt i64 %i.n, %i.v
  br i1 %i.w, label %.noexc.i.i.i.i.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i

.noexc.i.i.i.i.invoke:                            ; preds = %bb.d, %bb.b
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !77
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc.i.i.i.i.cont unwind label %bb.g

.noexc.i.i.i.i.cont:                              ; preds = %.noexc.i.i.i.i.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.y = mul nsw i64 %i.o, %i.n
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.y, i64 noundef %i.n, i64 noundef %i.o)
          to label %.noexc6 unwind label %bb.g

.noexc6:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i
  %.pr.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !101
  %.pre.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %.noexc6, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.z = phi i64 [ %.pre.i.i.i.i, %.noexc6 ], [ %i.n, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 5 uses
  %i.aa = phi i64 [ %.pr.i.i.i.i, %.noexc6 ], [ %i.o, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !94
  %i.ac = icmp sgt i64 %i.aa, 0
  %i.ad = icmp sgt i64 %i.z, 0
  %or.cond.i.i.i.i = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond.i.i.i.i, label %.preheader.lr.ph.split.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit

.preheader.lr.ph.split.i.i.i.i.i:                 ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100 ; 5 uses
  %xtraiter = and i64 %i.z, 3                     ; 3 uses
  %i.ag = icmp ult i64 %i.z, 4
  %unroll_iter = and i64 %i.z, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %._crit_edge.i.i.i.i.i, %.preheader.lr.ph.split.i.i.i.i.i
  %.0812.i.i.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.i.i.i.i.i ], [ %i.ao, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ah = mul nuw nsw i64 %.0812.i.i.i.i.i, %i.z
  %invariant.gep.i.i.i.i.i = getelementptr [8 x i8], ptr %i.ab, i64 %i.ah ; 5 uses
  %i.ai = mul nsw i64 %.0812.i.i.i.i.i, %i.m
  %invariant.gep10.i.i.i.i.i = getelementptr [8 x i8], ptr %i.k, i64 %i.ai ; 5 uses
  br i1 %i.ag, label %.epil.preheader, label %.preheader.i.i.i.i.i.new

._crit_edge.i.i.i.i.i.unr-lcssa:                  ; preds = %.preheader.i.i.i.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i
  %.09.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.bi, %._crit_edge.i.i.i.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.09.i.i.i.i.i.epil = phi i64 [ %.09.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.an, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %gep.i.i.i.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.09.i.i.i.i.i.epil
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.09.i.i.i.i.i.epil
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !78
  %i.al = sext i32 %i.ak to i64
  %gep11.i.i.i.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %i.al
  %i.am = load double, ptr %gep11.i.i.i.i.i.epil, align 8, !tbaa !68
  store double %i.am, ptr %gep.i.i.i.i.i.epil, align 8, !tbaa !68
  %i.an = add nuw nsw i64 %.09.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i.i, label %bb.f, !llvm.loop !1066

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f, %._crit_edge.i.i.i.i.i.unr-lcssa
  %i.ao = add nuw nsw i64 %.0812.i.i.i.i.i, 1     ; 2 uses
  %exitcond14.not.i.i.i.i.i = icmp eq i64 %i.ao, %i.aa
  br i1 %exitcond14.not.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i, !llvm.loop !1067

.preheader.i.i.i.i.i.new:                         ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i.new
  %.09.i.i.i.i.i = phi i64 [ %i.bi, %.preheader.i.i.i.i.i.new ], [ 0, %.preheader.i.i.i.i.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.i.i.i.i.i.new ], [ 0, %.preheader.i.i.i.i.i ]
  %gep.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.09.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.09.i.i.i.i.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !78
  %i.ar = sext i32 %i.aq to i64
  %gep11.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %i.ar
  %i.as = load double, ptr %gep11.i.i.i.i.i, align 8, !tbaa !68
  store double %i.as, ptr %gep.i.i.i.i.i, align 8, !tbaa !68
  %i.at = or disjoint i64 %.09.i.i.i.i.i, 1       ; 2 uses
  %gep.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.at
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !78
  %i.aw = sext i32 %i.av to i64
  %gep11.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %i.aw
  %i.ax = load double, ptr %gep11.i.i.i.i.i.1, align 8, !tbaa !68
  store double %i.ax, ptr %gep.i.i.i.i.i.1, align 8, !tbaa !68
  %i.ay = or disjoint i64 %.09.i.i.i.i.i, 2       ; 2 uses
  %gep.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.ay
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !78
  %i.bb = sext i32 %i.ba to i64
  %gep11.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %i.bb
  %i.bc = load double, ptr %gep11.i.i.i.i.i.2, align 8, !tbaa !68
  store double %i.bc, ptr %gep.i.i.i.i.i.2, align 8, !tbaa !68
  %i.bd = or disjoint i64 %.09.i.i.i.i.i, 3       ; 2 uses
  %gep.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.bd
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !78
  %i.bg = sext i32 %i.bf to i64
  %gep11.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %i.bg
  %i.bh = load double, ptr %gep11.i.i.i.i.i.3, align 8, !tbaa !68
  store double %i.bh, ptr %gep.i.i.i.i.i.3, align 8, !tbaa !68
  %i.bi = add nuw nsw i64 %.09.i.i.i.i.i, 4       ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.new, !llvm.loop !1068

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.e
  ret void

bb.g:                                             ; preds = %.noexc.i.i.i.i.invoke, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %0, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.bk) #32
  resume { ptr, i32 } %i.bj
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS4_IS6_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKS6_EEEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSO_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1095, !nonnull !91, !align !116 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !188
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 3
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !84   ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS4_IS6_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKS6_EEEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSO_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !84   ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !91, !align !116 ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 32       ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS4_IS6_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKS6_EEEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSO_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %0, align 8, !nonnull !91, !align !116 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !197  ; 4 uses
  %i.t = load i64, ptr %i.r, align 8, !tbaa !84   ; 3 uses
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !195  ; 3 uses
  %i.v = load i64, ptr %i.o, align 8, !tbaa !84   ; 3 uses
  %i.w = add nsw i64 %i.g, -1                     ; 2 uses
  %i.x = mul i64 %i.t, %i.w
  %i.y = add i64 %i.x, %i.j
  %i.z = shl i64 %i.y, 2
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.z ; 2 uses
  %scevgep63 = getelementptr i8, ptr %i.m, i64 36
  %i.aa = mul i64 %i.v, %i.w
  %i.ab = add i64 %i.aa, %i.j
  %i.ac = shl i64 %i.ab, 2
  %scevgep64 = getelementptr i8, ptr %i.u, i64 %i.ac
  %min.iters.check = icmp ult i64 %i.j, 12
  %bound0 = icmp ult ptr %i.s, %scevgep63
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.t, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  %1 = or i1 %found.conflict, %stride.check
  %bound166.a = icmp ult ptr %i.s, %scevgep64
  %bound166 = icmp ult ptr %i.u, %scevgep
  %found.conflict67 = and i1 %bound166.a, %bound166
  %i.ad = and i64 %i.v, 2305843009213693952
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = or i1 %found.conflict67, %i.ae
  %conflict.rdx = or i1 %1, %i.af
  %n.vec = and i64 %i.j, 9223372036854775800      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ba, %._crit_edge.i ] ; 3 uses
  %i.ag = mul nsw i64 %.0810.i, %i.t
  %i.ah = getelementptr [4 x i8], ptr %i.s, i64 %i.ag ; 6 uses
  %i.ai = mul nsw i64 %.0810.i, %i.v
  %i.aj = getelementptr [4 x i8], ptr %i.u, i64 %i.ai ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.ak = load i32, ptr %i.n, align 8, !tbaa !150, !alias.scope !1096
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %wide.load = load <4 x i32>, ptr %i.am, align 4, !tbaa !78, !alias.scope !1097
  %wide.load70 = load <4 x i32>, ptr %i.an, align 4, !tbaa !78, !alias.scope !1097
  %i.ao = add nsw <4 x i32> %wide.load, %broadcast.splat
  %i.ap = add nsw <4 x i32> %wide.load70, %broadcast.splat
  %i.aq = getelementptr i8, ptr %i.al, i64 16
  store <4 x i32> %i.ao, ptr %i.al, align 4, !tbaa !78, !alias.scope !1098, !noalias !1099
  store <4 x i32> %i.ap, ptr %i.aq, align 4, !tbaa !78, !alias.scope !1098, !noalias !1099
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1075

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.prol = phi i64 [ %i.ax, %scalar.ph.prol ], [ %.09.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.as = getelementptr [4 x i8], ptr %i.ah, i64 %.09.i.prol
  %i.at = getelementptr [4 x i8], ptr %i.aj, i64 %.09.i.prol
  %i.au = load i32, ptr %i.n, align 8, !tbaa !150
  %i.av = load i32, ptr %i.at, align 4, !tbaa !78
  %i.aw = add nsw i32 %i.av, %i.au
  store i32 %i.aw, ptr %i.as, align 4, !tbaa !78
  %i.ax = add nuw nsw i64 %.09.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1076

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ax, %scalar.ph.prol ]
  %i.ay = sub nsw i64 %.09.i.ph, %i.j
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ba = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ba, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS4_IS6_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKS6_EEEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSO_.exit, label %.preheader.i, !llvm.loop !1077

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.by, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bb = getelementptr [4 x i8], ptr %i.ah, i64 %.09.i
  %i.bc = getelementptr [4 x i8], ptr %i.aj, i64 %.09.i
  %i.bd = load i32, ptr %i.n, align 8, !tbaa !150
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !78
  %i.bf = add nsw i32 %i.be, %i.bd
  store i32 %i.bf, ptr %i.bb, align 4, !tbaa !78
  %i.bg = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.ah, i64 %i.bg
  %i.bi = getelementptr [4 x i8], ptr %i.aj, i64 %i.bg
  %i.bj = load i32, ptr %i.n, align 8, !tbaa !150
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !78
  %i.bl = add nsw i32 %i.bk, %i.bj
  store i32 %i.bl, ptr %i.bh, align 4, !tbaa !78
  %i.bm = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %i.bn = getelementptr [4 x i8], ptr %i.ah, i64 %i.bm
  %i.bo = getelementptr [4 x i8], ptr %i.aj, i64 %i.bm
  %i.bp = load i32, ptr %i.n, align 8, !tbaa !150
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !78
  %i.br = add nsw i32 %i.bq, %i.bp
  store i32 %i.br, ptr %i.bn, align 4, !tbaa !78
  %i.bs = add nuw nsw i64 %.09.i, 3               ; 2 uses
  %i.bt = getelementptr [4 x i8], ptr %i.ah, i64 %i.bs
  %i.bu = getelementptr [4 x i8], ptr %i.aj, i64 %i.bs
  %i.bv = load i32, ptr %i.n, align 8, !tbaa !150
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !78
  %i.bx = add nsw i32 %i.bw, %i.bv
  store i32 %i.bx, ptr %i.bt, align 4, !tbaa !78
  %i.by = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.by, %i.j
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1078

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !84 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !84 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1100, !nonnull !91, !align !116
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !123
  %i.ch = sub i64 0, %i.cg
  %i.ci = and i64 %i.ch, 3
  %i.cj = icmp sgt i64 %i.cc, 0
  br i1 %i.cj, label %.lr.ph52, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS4_IS6_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKS6_EEEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSO_.exit

.lr.ph52:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit
  %i.ck = lshr exact i64 %i.d, 2
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = and i64 %i.cl, 3
  %i.cn = tail call i64 @llvm.smin.i64(i64 %i.cm, i64 %i.ca)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cp = shl i64 %i.ca, 2                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %._crit_edge
  %.03451 = phi i64 [ 0, %.lr.ph52 ], [ %i.hn, %._crit_edge ] ; 9 uses
  %.03550 = phi i64 [ %i.cn, %.lr.ph52 ], [ %.sroa.speculated, %._crit_edge ] ; 14 uses
  %i.cq = shl i64 %.03451, 2                      ; 2 uses
  %i.cr = shl i64 %.03451, 2                      ; 2 uses
  %i.cs = sub i64 %i.ca, %.03550                  ; 3 uses
  %i.ct = and i64 %i.cs, -4                       ; 2 uses
  %i.cu = add nsw i64 %i.ct, %.03550              ; 6 uses
  %i.cv = icmp sgt i64 %.03550, 0
  br i1 %i.cv, label %.lr.ph, label %.preheader43

.lr.ph:                                           ; preds = %bb.c
  %i.cw = load ptr, ptr %0, align 8, !tbaa !1101, !nonnull !91, !align !116 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !197 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !84 ; 2 uses
  %i.da = mul nsw i64 %i.cz, %.03451
  %i.db = getelementptr [4 x i8], ptr %i.cx, i64 %i.da ; 8 uses
  %i.dc = load ptr, ptr %i.co, align 8, !tbaa !1102, !nonnull !91, !align !116 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !195 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !84 ; 2 uses
  %i.dh = mul nsw i64 %i.dg, %.03451
  %i.di = getelementptr [4 x i8], ptr %i.de, i64 %i.dh ; 7 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 32 ; 7 uses
  %min.iters.check112 = icmp ult i64 %.03550, 12
  br i1 %min.iters.check112, label %scalar.ph111.preheader, label %vector.memcheck100

vector.memcheck100:                               ; preds = %.lr.ph
  %i.dk = mul i64 %i.cz, %i.cq
  %i.dl = shl i64 %.03550, 2                      ; 2 uses
  %i.dm = getelementptr i8, ptr %i.cx, i64 %i.dk
  %scevgep101.a = getelementptr i8, ptr %i.dm, i64 %i.dl ; 2 uses
  %scevgep102.a = getelementptr i8, ptr %i.dc, i64 36
  %i.dn = mul i64 %i.dg, %i.cq
  %i.do = getelementptr i8, ptr %i.de, i64 %i.dn
  %scevgep103 = getelementptr i8, ptr %i.do, i64 %i.dl
  %bound0104 = icmp ult ptr %i.db, %scevgep102.a
  %bound1105 = icmp ult ptr %i.dj, %scevgep101.a
  %found.conflict106 = and i1 %bound0104, %bound1105
  %bound0107 = icmp ult ptr %i.db, %scevgep103
  %bound1108 = icmp ult ptr %i.di, %scevgep101.a
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %found.conflict106, %found.conflict109
  br i1 %conflict.rdx110, label %scalar.ph111.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck100
  %n.vec114 = and i64 %.03550, 9223372036854775800 ; 3 uses
  %i.dp = load i32, ptr %i.dj, align 8, !tbaa !150, !alias.scope !1103
  %broadcast.splatinsert119 = insertelement <4 x i32> poison, i32 %i.dp, i64 0
  %broadcast.splat120 = shufflevector <4 x i32> %broadcast.splatinsert119, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body115 ] ; 3 uses
  %i.dq = getelementptr [4 x i8], ptr %i.db, i64 %index116 ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %i.di, i64 %index116 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  %wide.load117.a = load <4 x i32>, ptr %i.dr, align 4, !tbaa !78, !alias.scope !1104
  %wide.load118 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !78, !alias.scope !1104
  %i.dt = add nsw <4 x i32> %wide.load117.a, %broadcast.splat120
  %i.du = add nsw <4 x i32> %wide.load118, %broadcast.splat120
  %i.dv = getelementptr i8, ptr %i.dq, i64 16
  store <4 x i32> %i.dt, ptr %i.dq, align 4, !tbaa !78, !alias.scope !1105, !noalias !1106
  store <4 x i32> %i.du, ptr %i.dv, align 4, !tbaa !78, !alias.scope !1105, !noalias !1106
  %index.next121 = add nuw i64 %index116, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.dw, label %middle.block122, label %vector.body115, !llvm.loop !1083

middle.block122:                                  ; preds = %vector.body115
  %cmp.n123 = icmp eq i64 %.03550, %n.vec114
  br i1 %cmp.n123, label %.preheader43, label %scalar.ph111.preheader

scalar.ph111.preheader:                           ; preds = %vector.memcheck100, %.lr.ph, %middle.block122
end_hunk_1
