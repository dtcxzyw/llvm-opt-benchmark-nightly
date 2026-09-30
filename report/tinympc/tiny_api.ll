Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4374
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll:bb.a

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa128.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.co, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %i.cp = icmp eq i64 %3, %.neg
  br i1 %i.cp, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.dr, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.dq, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !42
  %i.cs = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.cr, ptr %i.cs, align 8, !tbaa !42
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !42
  %i.cv = getelementptr i8, ptr %i.cs, i64 8
  store double %i.cu, ptr %i.cv, align 8, !tbaa !42
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !42
  %i.cy = getelementptr i8, ptr %i.cs, i64 16
  store double %i.cx, ptr %i.cy, align 8, !tbaa !42
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us
  %i.da = load double, ptr %i.cz, align 8, !tbaa !42
  %i.db = getelementptr i8, ptr %i.cs, i64 24
  store double %i.da, ptr %i.db, align 8, !tbaa !42
  %i.dc = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !42
  %i.df = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 32
  store double %i.de, ptr %i.dg, align 8, !tbaa !42
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.dc
  %i.di = load double, ptr %i.dh, align 8, !tbaa !42
  %i.dj = getelementptr i8, ptr %i.df, i64 40
  store double %i.di, ptr %i.dj, align 8, !tbaa !42
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dc
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !42
  %i.dm = getelementptr i8, ptr %i.df, i64 48
  store double %i.dl, ptr %i.dm, align 8, !tbaa !42
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dc
  %i.do = load double, ptr %i.dn, align 8, !tbaa !42
  %i.dp = getelementptr i8, ptr %i.df, i64 56
  store double %i.do, ptr %i.dp, align 8, !tbaa !42
  %i.dq = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.dr = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dr, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !798

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.br, %middle.block ], [ %.lcssa128.unr, %scalar.ph.prol.loopexit ], [ %i.dq, %scalar.ph ] ; 2 uses
  %i.ds = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.c
  br i1 %i.dt, label %.lr.ph.us, label %.preheader, !llvm.loop !799

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.du = icmp slt i64 %i.c, %4
  br i1 %i.du, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.dv = load ptr, ptr %2, align 8, !tbaa !185   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !186 ; 3 uses
  %i.dy = icmp sgt i64 %3, 0
  br i1 %i.dy, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.dz = ptrtoaddr ptr %i.dv to i64
  %i.ea = mul i64 %i.dx, %i.b
  %i.eb = shl i64 %i.ea, 5
  %i.ec = add i64 %i.eb, %i.dz
  %i.ed = sub i64 %i.a, %i.ec
  %i.ee = mul i64 %i.dx, -8
  %min.iters.check115 = icmp ult i64 %3, 4
  %n.vec117 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n124 = icmp eq i64 %3, %n.vec117
  %xtraiter129 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br label %.lr.ph

._crit_edge69.split:                              ; preds = %._crit_edge, %.lr.ph68, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.04267 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.fa, %._crit_edge ] ; 2 uses
  %.266 = phi i64 [ %.045.lcssa, %.lr.ph.preheader ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.ef = mul nsw i64 %i.dx, %.04267
  %i.eg = getelementptr [8 x i8], ptr %i.dv, i64 %i.ef ; 6 uses
  br i1 %min.iters.check115, label %scalar.ph114.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph
  %i.eh = mul i64 %i.ee, %indvar
  %i.ei = add i64 %i.ed, %i.eh
  %i.ej = shl i64 %.266, 3
  %i.ek = add i64 %i.ei, %i.ej
  %i.el = add i64 %i.ek, -1
  %diff.check = icmp ult i64 %i.el, 31
  br i1 %diff.check, label %scalar.ph114.preheader, label %vector.ph116

vector.ph116:                                     ; preds = %vector.memcheck113
  %i.em = add i64 %.266, %n.vec117                ; 2 uses
  %i.en = getelementptr [8 x i8], ptr %1, i64 %.266
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next122, %vector.body118 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %index119 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load120 = load <2 x double>, ptr %i.eo, align 8, !tbaa !42
  %wide.load121 = load <2 x double>, ptr %i.ep, align 8, !tbaa !42
  %i.eq = getelementptr [8 x i8], ptr %i.en, i64 %index119 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <2 x double> %wide.load120, ptr %i.eq, align 8, !tbaa !42
  store <2 x double> %wide.load121, ptr %i.er, align 8, !tbaa !42
  %index.next122 = add nuw i64 %index119, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next122, %n.vec117
  br i1 %i.es, label %middle.block123, label %vector.body118, !llvm.loop !800

middle.block123:                                  ; preds = %vector.body118
  br i1 %cmp.n124, label %._crit_edge, label %scalar.ph114.preheader

scalar.ph114.preheader:                           ; preds = %vector.memcheck113, %.lr.ph, %middle.block123
  %.065.ph = phi i64 [ 0, %vector.memcheck113 ], [ 0, %.lr.ph ], [ %n.vec117, %middle.block123 ] ; 3 uses
  %.364.ph = phi i64 [ %.266, %vector.memcheck113 ], [ %.266, %.lr.ph ], [ %i.em, %middle.block123 ] ; 2 uses
  br i1 %lcmp.mod130.not, label %scalar.ph114.prol.loopexit, label %scalar.ph114.prol

scalar.ph114.prol:                                ; preds = %scalar.ph114.preheader, %scalar.ph114.prol
  %.065.prol = phi i64 [ %i.ex, %scalar.ph114.prol ], [ %.065.ph, %scalar.ph114.preheader ] ; 2 uses
  %.364.prol = phi i64 [ %i.ew, %scalar.ph114.prol ], [ %.364.ph, %scalar.ph114.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph114.prol ], [ 0, %scalar.ph114.preheader ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065.prol
  %i.eu = load double, ptr %i.et, align 8, !tbaa !42
  %i.ev = getelementptr inbounds [8 x i8], ptr %1, i64 %.364.prol
  store double %i.eu, ptr %i.ev, align 8, !tbaa !42
  %i.ew = add nsw i64 %.364.prol, 1               ; 3 uses
  %i.ex = add nuw nsw i64 %.065.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter129
  br i1 %prol.iter.cmp.not, label %scalar.ph114.prol.loopexit, label %scalar.ph114.prol, !llvm.loop !801

scalar.ph114.prol.loopexit:                       ; preds = %scalar.ph114.prol, %scalar.ph114.preheader
  %.lcssa127.unr = phi i64 [ poison, %scalar.ph114.preheader ], [ %i.ew, %scalar.ph114.prol ]
  %.065.unr = phi i64 [ %.065.ph, %scalar.ph114.preheader ], [ %i.ex, %scalar.ph114.prol ]
  %.364.unr = phi i64 [ %.364.ph, %scalar.ph114.preheader ], [ %i.ew, %scalar.ph114.prol ]
  %i.ey = sub nsw i64 %.065.ph, %3
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %._crit_edge, label %scalar.ph114

._crit_edge:                                      ; preds = %scalar.ph114.prol.loopexit, %scalar.ph114, %middle.block123
  %.lcssa = phi i64 [ %i.em, %middle.block123 ], [ %.lcssa127.unr, %scalar.ph114.prol.loopexit ], [ %i.ft, %scalar.ph114 ]
  %i.fa = add nsw i64 %.04267, 1                  ; 2 uses
  %exitcond73.not = icmp eq i64 %i.fa, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond73.not, label %._crit_edge69.split, label %.lr.ph, !llvm.loop !802

scalar.ph114:                                     ; preds = %scalar.ph114.prol.loopexit, %scalar.ph114
  %.065 = phi i64 [ %i.fu, %scalar.ph114 ], [ %.065.unr, %scalar.ph114.prol.loopexit ] ; 5 uses
  %.364 = phi i64 [ %i.ft, %scalar.ph114 ], [ %.364.unr, %scalar.ph114.prol.loopexit ] ; 5 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !42
  %i.fd = getelementptr inbounds [8 x i8], ptr %1, i64 %.364
  store double %i.fc, ptr %i.fd, align 8, !tbaa !42
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !42
  %i.fh = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  store double %i.fg, ptr %i.fi, align 8, !tbaa !42
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !42
  %i.fm = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fn = getelementptr i8, ptr %i.fm, i64 16
  store double %i.fl, ptr %i.fn, align 8, !tbaa !42
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !42
  %i.fr = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fs = getelementptr i8, ptr %i.fr, i64 24
  store double %i.fq, ptr %i.fs, align 8, !tbaa !42
  %i.ft = add nsw i64 %.364, 4                    ; 2 uses
  %i.fu = add nuw nsw i64 %.065, 4                ; 2 uses
  %exitcond72.not.3 = icmp eq i64 %i.fu, %3
  br i1 %exitcond72.not.3, label %._crit_edge, label %scalar.ph114, !llvm.loop !803
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, double noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %12 = alloca %"struct.Eigen::internal::lhs_process_one_packet", align 1 ; 3 uses
  %i.a = icmp eq i64 %8, -1
  %spec.select = select i1 %i.a, i64 %5, i64 %8   ; 11 uses
  %i.b = icmp eq i64 %9, -1
  %.0251 = select i1 %i.b, i64 %5, i64 %9         ; 6 uses
  %i.c = sdiv i64 %6, 4
  %i.d = shl nsw i64 %i.c, 2                      ; 14 uses
  %i.e = sdiv i64 %4, 4
  %i.f = shl nsw i64 %i.e, 2                      ; 6 uses
  %i.g = sub nsw i64 %4, %i.f
  %i.h = sdiv i64 %i.g, 2
  %i.i = shl nsw i64 %i.h, 1
  %i.j = add nsw i64 %i.i, %i.f                   ; 3 uses
  %i.k = sub nsw i64 %4, %i.j
  %i.l = sdiv i64 %i.k, 2
  %i.m = shl nsw i64 %i.l, 1
  %i.n = add nsw i64 %i.m, %i.j                   ; 2 uses
  %i.o = sub nsw i64 %4, %i.n
  %i.p = sdiv i64 %i.o, 2
  %i.q = shl nsw i64 %i.p, 1
  %i.r = add nsw i64 %i.q, %i.n                   ; 7 uses
  %i.s = and i64 %5, -8                           ; 7 uses
  %i.t = shl i64 %5, 5                            ; 2 uses
  %i.u = sub i64 32640, %i.t
  %i.v = udiv i64 %i.u, %i.t
  %.sroa.speculated651 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = shl nuw nsw i64 %.sroa.speculated651, 2
  %i.x = icmp sgt i64 %4, 3
  br i1 %i.x, label %.lr.ph810, label %._crit_edge811

.lr.ph810:                                        ; preds = %bb.a
  %i.y = icmp sgt i64 %6, 3
  %.idx261 = shl i64 %10, 5
  %invariant.gep = getelementptr i8, ptr %2, i64 %.idx261 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.idx262 = shl i64 %11, 5
  %invariant.gep753 = getelementptr i8, ptr %3, i64 %.idx262
  %i.aa = icmp sgt i64 %5, 7                      ; 2 uses
  %.not = icmp eq i64 %i.s, %5                    ; 3 uses
  %i.ab = insertelement <2 x double> poison, double %7, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer ; 13 uses
  %13 = icmp slt i64 %i.d, %6
  %invariant.gep775 = getelementptr [8 x i8], ptr %3, i64 %11 ; 2 uses
  %i.ad = fmul <2 x double> %i.ac, zeroinitializer ; 2 uses
  br label %bb.b

.loopexit708:                                     ; preds = %._crit_edge779.split.split.us.us.us, %._crit_edge779.split.split.us803, %._crit_edge779.split.us.us.us, %.preheader707
  %i.ae = icmp slt i64 %i.cp, %i.f
  br i1 %i.ae, label %bb.b, label %._crit_edge811, !llvm.loop !810

._crit_edge811:                                   ; preds = %.loopexit708, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @_ZN5Eigen8internal22lhs_process_one_packetILi4ELl2ELl1EdddDv2_dS2_S2_S2_NS0_11gebp_traitsIddLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIdlLi0ELi1EEENS0_16blas_data_mapperIdlLi0ELi0ELi1EEEEclERKS8_PKdSD_dllllllilllll(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, double noundef %7, i64 noundef %i.f, i64 noundef %i.j, i64 noundef %spec.select, i64 noundef %.0251, i64 noundef %10, i64 noundef %11, i32 noundef 4, i64 noundef %i.s, i64 noundef 8, i64 noundef %6, i64 noundef %5, i64 noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.af = icmp slt i64 %i.r, %4
  br i1 %i.af, label %.preheader702, label %.loopexit

.preheader702:                                    ; preds = %._crit_edge811
  %i.ag = icmp sgt i64 %6, 3
  br i1 %i.ag, label %.preheader701.lr.ph.split, label %.preheader700

.preheader701.lr.ph.split:                        ; preds = %.preheader702
  %invariant.gep825 = getelementptr [8 x i8], ptr %2, i64 %10 ; 2 uses
  %.idx = shl i64 %11, 5
  %invariant.gep831 = getelementptr i8, ptr %3, i64 %.idx
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = icmp sgt i64 %5, 0
  %i.aj = load ptr, ptr %1, align 8, !tbaa !195   ; 2 uses
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !196 ; 8 uses
  br i1 %i.ai, label %.preheader701.us.preheader, label %.preheader701

.preheader701.us.preheader:                       ; preds = %.preheader701.lr.ph.split
  %xtraiter = and i64 %5, 1
  %i.al = icmp eq i64 %5, 1
  %unroll_iter = and i64 %5, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1025 = trunc i64 %5 to i1
  br label %.preheader701.us

.preheader701.us:                                 ; preds = %.preheader701.us.preheader, %._crit_edge829.split.us.us
  %.0233830.us = phi i64 [ %i.cn, %._crit_edge829.split.us.us ], [ 0, %.preheader701.us.preheader ] ; 6 uses
  %i.am = mul nsw i64 %.0233830.us, %.0251
  %gep832.us = getelementptr [8 x i8], ptr %invariant.gep831, i64 %i.am ; 2 uses
  %i.an = mul nsw i64 %i.ak, %.0233830.us
  %i.ao = or disjoint i64 %.0233830.us, 1
  %i.ap = mul nsw i64 %i.ak, %i.ao
  %i.aq = or disjoint i64 %.0233830.us, 2
  %i.ar = mul nsw i64 %i.ak, %i.aq
  %i.as = or disjoint i64 %.0233830.us, 3
  %i.at = mul nsw i64 %i.ak, %i.as
  br label %.lr.ph819.us.us

.lr.ph819.us.us:                                  ; preds = %._crit_edge820.us.us, %.preheader701.us
  %.0232827.us.us = phi i64 [ %i.r, %.preheader701.us ], [ %i.cm, %._crit_edge820.us.us ] ; 3 uses
  %i.au = mul nsw i64 %.0232827.us.us, %spec.select
  %gep826.us.us = getelementptr [8 x i8], ptr %invariant.gep825, i64 %i.au ; 4 uses
  call void @llvm.prefetch.p0(ptr %gep826.us.us, i32 0, i32 3, i32 1)
  br i1 %i.al, label %.epil.preheader, label %.lr.ph819.us.us.new

.lr.ph819.us.us.new:                              ; preds = %.lr.ph819.us.us, %.lr.ph819.us.us.new
  %.0230817.us.us = phi i64 [ %i.bn, %.lr.ph819.us.us.new ], [ 0, %.lr.ph819.us.us ] ; 3 uses
  %.0231816.us.us = phi ptr [ %i.bm, %.lr.ph819.us.us.new ], [ %gep832.us, %.lr.ph819.us.us ] ; 3 uses
  %i.av = phi <4 x double> [ %i.bl, %.lr.ph819.us.us.new ], [ zeroinitializer, %.lr.ph819.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph819.us.us.new ], [ 0, %.lr.ph819.us.us ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %gep826.us.us, i64 %.0230817.us.us
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !42
  %i.ay = load <4 x double>, ptr %.0231816.us.us, align 8, !tbaa !42
  %i.az = insertelement <4 x double> poison, double %i.ax, i64 0
  %i.ba = shufflevector <4 x double> %i.az, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bb = fmul <4 x double> %i.ba, %i.ay
  %i.bc = fadd <4 x double> %i.av, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.0231816.us.us, i64 32
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %gep826.us.us, i64 %.0230817.us.us
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !42
  %i.bh = load <4 x double>, ptr %i.bd, align 8, !tbaa !42
  %i.bi = insertelement <4 x double> poison, double %i.bg, i64 0
  %i.bj = shufflevector <4 x double> %i.bi, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bk = fmul <4 x double> %i.bj, %i.bh
  %i.bl = fadd <4 x double> %i.bc, %i.bk          ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0231816.us.us, i64 64 ; 2 uses
  %i.bn = add nuw nsw i64 %.0230817.us.us, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge820.us.us.unr-lcssa, label %.lr.ph819.us.us.new, !llvm.loop !811

._crit_edge820.us.us.unr-lcssa:                   ; preds = %.lr.ph819.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge820.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge820.us.us.unr-lcssa, %.lr.ph819.us.us
  %.0230817.us.us.epil.init = phi i64 [ 0, %.lr.ph819.us.us ], [ %i.bn, %._crit_edge820.us.us.unr-lcssa ]
  %.0231816.us.us.epil.init = phi ptr [ %gep832.us, %.lr.ph819.us.us ], [ %i.bm, %._crit_edge820.us.us.unr-lcssa ]
  %.epil.init = phi <4 x double> [ zeroinitializer, %.lr.ph819.us.us ], [ %i.bl, %._crit_edge820.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1025)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %gep826.us.us, i64 %.0230817.us.us.epil.init
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !42
  %i.bq = load <4 x double>, ptr %.0231816.us.us.epil.init, align 8, !tbaa !42
  %i.br = insertelement <4 x double> poison, double %i.bp, i64 0
  %i.bs = shufflevector <4 x double> %i.br, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bt = fmul <4 x double> %i.bs, %i.bq
  %i.bu = fadd <4 x double> %.epil.init, %i.bt
  br label %._crit_edge820.us.us

._crit_edge820.us.us:                             ; preds = %._crit_edge820.us.us.unr-lcssa, %.epil.preheader
  %.lcssa994 = phi <4 x double> [ %i.bl, %._crit_edge820.us.us.unr-lcssa ], [ %i.bu, %.epil.preheader ] ; 4 uses
  %i.bv = getelementptr [8 x i8], ptr %i.aj, i64 %.0232827.us.us ; 4 uses
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %i.an ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !42
  %i.by = extractelement <4 x double> %.lcssa994, i64 0
  %i.bz = call double @llvm.fmuladd.f64(double %7, double %i.by, double %i.bx)
  store double %i.bz, ptr %i.bw, align 8, !tbaa !42
  %i.ca = getelementptr [8 x i8], ptr %i.bv, i64 %i.ap ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !42
  %i.cc = extractelement <4 x double> %.lcssa994, i64 1
  %i.cd = call double @llvm.fmuladd.f64(double %7, double %i.cc, double %i.cb)
  store double %i.cd, ptr %i.ca, align 8, !tbaa !42
  %i.ce = getelementptr [8 x i8], ptr %i.bv, i64 %i.ar ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !42
  %i.cg = extractelement <4 x double> %.lcssa994, i64 2
  %i.ch = call double @llvm.fmuladd.f64(double %7, double %i.cg, double %i.cf)
  store double %i.ch, ptr %i.ce, align 8, !tbaa !42
  %i.ci = getelementptr [8 x i8], ptr %i.bv, i64 %i.at ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !42
  %i.ck = extractelement <4 x double> %.lcssa994, i64 3
  %i.cl = call double @llvm.fmuladd.f64(double %7, double %i.ck, double %i.cj)
  store double %i.cl, ptr %i.ci, align 8, !tbaa !42
  %i.cm = add nsw i64 %.0232827.us.us, 1          ; 2 uses
  %exitcond893.not = icmp eq i64 %i.cm, %4
  br i1 %exitcond893.not, label %._crit_edge829.split.us.us, label %.lr.ph819.us.us, !llvm.loop !812

._crit_edge829.split.us.us:                       ; preds = %._crit_edge820.us.us
  %i.cn = add nuw nsw i64 %.0233830.us, 4         ; 2 uses
  %i.co = icmp slt i64 %i.cn, %i.d
  br i1 %i.co, label %.preheader701.us, label %.preheader700, !llvm.loop !813

bb.b:                                             ; preds = %.lr.ph810, %.loopexit708
  %.0249808 = phi i64 [ 0, %.lr.ph810 ], [ %i.cp, %.loopexit708 ] ; 6 uses
  %i.cp = add nuw nsw i64 %.0249808, %i.w         ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.cp) ; 4 uses
  %i.cq = icmp sgt i64 %i.f, %.0249808            ; 2 uses
  %or.cond = select i1 %i.y, i1 %i.cq, i1 false
  br i1 %or.cond, label %.preheader706, label %.preheader707

.preheader707:                                    ; preds = %._crit_edge751, %bb.b
  %brmerge.not = select i1 %13, i1 %i.cq, i1 false
  br i1 %brmerge.not, label %.preheader705.lr.ph.split.us, label %.loopexit708

.preheader705.lr.ph.split.us:                     ; preds = %.preheader707
  br i1 %i.aa, label %.preheader705.us.us, label %.preheader705.lr.ph.split.us.split

.preheader705.us.us:                              ; preds = %.preheader705.lr.ph.split.us, %._crit_edge779.split.us.us.us
  %.0240796.us.us = phi i64 [ %i.hq, %._crit_edge779.split.us.us.us ], [ %i.d, %.preheader705.lr.ph.split.us ] ; 3 uses
  %i.cr = mul nsw i64 %.0240796.us.us, %.0251
  %gep776.us.us = getelementptr [8 x i8], ptr %invariant.gep775, i64 %i.cr
  br label %.lr.ph761.us.us.us

.lr.ph761.us.us.us:                               ; preds = %._crit_edge772.us.us.us, %.preheader705.us.us
  %.0239777.us.us.us = phi i64 [ %.0249808, %.preheader705.us.us ], [ %i.ho, %._crit_edge772.us.us.us ] ; 3 uses
  %i.cs = mul nsw i64 %.0239777.us.us.us, %spec.select
  %gep781.us.us.us = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %gep781.us.us.us, i32 0, i32 3, i32 1)
  %i.ct = load ptr, ptr %1, align 8, !tbaa !195
  %i.cu = load i64, ptr %i.z, align 8, !tbaa !196
  %i.cv = mul nsw i64 %i.cu, %.0240796.us.us
  %i.cw = getelementptr [8 x i8], ptr %i.ct, i64 %.0239777.us.us.us
  %i.cx = getelementptr [8 x i8], ptr %i.cw, i64 %i.cv ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cy, i32 0, i32 3, i32 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph761.us.us.us
  %.0235759.us.us.us = phi i64 [ 0, %.lr.ph761.us.us.us ], [ %i.gr, %bb.c ]
  %.0236758.us.us.us = phi ptr [ %gep776.us.us, %.lr.ph761.us.us.us ], [ %i.gp, %bb.c ] ; 9 uses
  %.0237757.us.us.us = phi ptr [ %gep781.us.us.us, %.lr.ph761.us.us.us ], [ %i.gq, %bb.c ] ; 17 uses
  %.0696756.us.us.us = phi <2 x double> [ zeroinitializer, %.lr.ph761.us.us.us ], [ %i.go, %bb.c ]
  %.0698755.us.us.us = phi <2 x double> [ zeroinitializer, %.lr.ph761.us.us.us ], [ %i.gm, %bb.c ]
  tail call void asm sideeffect "#begin gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !826
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !827
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !828
  %i.cz = load <2 x double>, ptr %.0237757.us.us.us, align 16, !tbaa !24
  %i.da = getelementptr inbounds nuw i8, ptr %.0237757.us.us.us, i64 16
  %i.db = load <2 x double>, ptr %i.da, align 16, !tbaa !24
  %i.dc = load double, ptr %.0236758.us.us.us, align 8, !tbaa !42
  %i.dd = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.df = fmul <2 x double> %i.cz, %i.de
  %i.dg = fadd <2 x double> %.0698755.us.us.us, %i.df
  %i.dh = fmul <2 x double> %i.db, %i.de
  %i.di = fadd <2 x double> %.0696756.us.us.us, %i.dh
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !829
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !830
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !831
  %i.dj = getelementptr inbounds nuw i8, ptr %.0237757.us.us.us, i64 32
  %i.dk = load <2 x double>, ptr %i.dj, align 16, !tbaa !24
  %i.dl = getelementptr inbounds nuw i8, ptr %.0237757.us.us.us, i64 48
  %i.dm = load <2 x double>, ptr %i.dl, align 16, !tbaa !24
  %i.dn = getelementptr inbounds nuw i8, ptr %.0236758.us.us.us, i64 8
  %i.do = load double, ptr %i.dn, align 8, !tbaa !42
  %i.dp = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dr = fmul <2 x double> %i.dk, %i.dq
  %i.ds = fadd <2 x double> %i.dg, %i.dr
  %i.dt = fmul <2 x double> %i.dm, %i.dq
  %i.du = fadd <2 x double> %i.di, %i.dt
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !832
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !833
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !834
  %i.dv = getelementptr inbounds nuw i8, ptr %.0237757.us.us.us, i64 64
  %i.dw = load <2 x double>, ptr %i.dv, align 16, !tbaa !24
  %i.dx = getelementptr inbounds nuw i8, ptr %.0237757.us.us.us, i64 80
  %i.dy = load <2 x double>, ptr %i.dx, align 16, !tbaa !24
  %i.dz = getelementptr inbounds nuw i8, ptr %.0236758.us.us.us, i64 16
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !42
  %i.eb = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ed = fmul <2 x double> %i.dw, %i.ec
  %i.ee = fadd <2 x double> %i.ds, %i.ed
  %i.ef = fmul <2 x double> %i.dy, %i.ec
  %i.eg = fadd <2 x double> %i.du, %i.ef
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !835
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !836
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !837
  %i.eh = getelementptr inbounds nuw i8, ptr %.0237757.us.us.us, i64 96
  %i.ei = load <2 x double>, ptr %i.eh, align 16, !tbaa !24
  %i.ej = getelementptr inbounds nuw i8, ptr %.0237757.us.us.us, i64 112
  %i.ek = load <2 x double>, ptr %i.ej, align 16, !tbaa !24
  %i.el = getelementptr inbounds nuw i8, ptr %.0236758.us.us.us, i64 24
  %i.em = load double, ptr %i.el, align 8, !tbaa !42
  %i.en = insertelement <2 x double> poison, double %i.em, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ep = fmul <2 x double> %i.ei, %i.eo
  %i.eq = fadd <2 x double> %i.ee, %i.ep
  %i.er = fmul <2 x double> %i.ek, %i.eo
  %i.es = fadd <2 x double> %i.eg, %i.er
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !838
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !839
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !840
  %i.et = getelementptr inbounds nuw i8, ptr %.0237757.us.us.us, i64 128
  %i.eu = load <2 x double>, ptr %i.et, align 16, !tbaa !24
  %i.ev = getelementptr inbounds nuw i8, ptr %.0237757.us.us.us, i64 144
  %i.ew = load <2 x double>, ptr %i.ev, align 16, !tbaa !24
  %i.ex = getelementptr inbounds nuw i8, ptr %.0236758.us.us.us, i64 32
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !42
  %i.ez = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fb = fmul <2 x double> %i.eu, %i.fa
  %i.fc = fadd <2 x double> %i.eq, %i.fb
  %i.fd = fmul <2 x double> %i.ew, %i.fa
  %i.fe = fadd <2 x double> %i.es, %i.fd
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !841
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !842
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !843
  %i.ff = getelementptr inbounds nuw i8, ptr %.0237757.us.us.us, i64 160
  %i.fg = load <2 x double>, ptr %i.ff, align 16, !tbaa !24
  %i.fh = getelementptr inbounds nuw i8, ptr %.0237757.us.us.us, i64 176
  %i.fi = load <2 x double>, ptr %i.fh, align 16, !tbaa !24
  %i.fj = getelementptr inbounds nuw i8, ptr %.0236758.us.us.us, i64 40
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !42
  %i.fl = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fn = fmul <2 x double> %i.fg, %i.fm
  %i.fo = fadd <2 x double> %i.fc, %i.fn
  %i.fp = fmul <2 x double> %i.fi, %i.fm
  %i.fq = fadd <2 x double> %i.fe, %i.fp
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !844
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !845
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !846
  %i.fr = getelementptr inbounds nuw i8, ptr %.0237757.us.us.us, i64 192
  %i.fs = load <2 x double>, ptr %i.fr, align 16, !tbaa !24
  %i.ft = getelementptr inbounds nuw i8, ptr %.0237757.us.us.us, i64 208
  %i.fu = load <2 x double>, ptr %i.ft, align 16, !tbaa !24
  %i.fv = getelementptr inbounds nuw i8, ptr %.0236758.us.us.us, i64 48
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !42
  %i.fx = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fz = fmul <2 x double> %i.fs, %i.fy
  %i.ga = fadd <2 x double> %i.fo, %i.fz
  %i.gb = fmul <2 x double> %i.fu, %i.fy
  %i.gc = fadd <2 x double> %i.fq, %i.gb
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !847
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !848
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !849
  %i.gd = getelementptr inbounds nuw i8, ptr %.0237757.us.us.us, i64 224
  %i.ge = load <2 x double>, ptr %i.gd, align 16, !tbaa !24
  %i.gf = getelementptr inbounds nuw i8, ptr %.0237757.us.us.us, i64 240
  %i.gg = load <2 x double>, ptr %i.gf, align 16, !tbaa !24
  %i.gh = getelementptr inbounds nuw i8, ptr %.0236758.us.us.us, i64 56
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !42
  %i.gj = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gl = fmul <2 x double> %i.ge, %i.gk
  %i.gm = fadd <2 x double> %i.ga, %i.gl          ; 3 uses
  %i.gn = fmul <2 x double> %i.gg, %i.gk
  %i.go = fadd <2 x double> %i.gc, %i.gn          ; 3 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !850
  %i.gp = getelementptr inbounds nuw i8, ptr %.0236758.us.us.us, i64 64 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0237757.us.us.us, i64 256 ; 2 uses
  tail call void asm sideeffect "#end gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !851
  %i.gr = add nuw nsw i64 %.0235759.us.us.us, 8   ; 2 uses
  %i.gs = icmp slt i64 %i.gr, %i.s
  br i1 %i.gs, label %bb.c, label %..preheader703_crit_edge.us.us.us, !llvm.loop !814

..preheader703_crit_edge.us.us.us:                ; preds = %bb.c
  br i1 %.not, label %._crit_edge772.us.us.us, label %.lr.ph771.us.us.us

.lr.ph771.us.us.us:                               ; preds = %..preheader703_crit_edge.us.us.us, %.lr.ph771.us.us.us
  %.0234770.us.us.us = phi i64 [ %i.hf, %.lr.ph771.us.us.us ], [ %i.s, %..preheader703_crit_edge.us.us.us ]
  %.1769.us.us.us = phi ptr [ %i.hd, %.lr.ph771.us.us.us ], [ %i.gp, %..preheader703_crit_edge.us.us.us ] ; 2 uses
  %.1238768.us.us.us = phi ptr [ %i.he, %.lr.ph771.us.us.us ], [ %i.gq, %..preheader703_crit_edge.us.us.us ] ; 3 uses
  %.1697767.us.us.us = phi <2 x double> [ %i.hc, %.lr.ph771.us.us.us ], [ %i.go, %..preheader703_crit_edge.us.us.us ]
  %.1699766.us.us.us = phi <2 x double> [ %i.ha, %.lr.ph771.us.us.us ], [ %i.gm, %..preheader703_crit_edge.us.us.us ]
  tail call void asm sideeffect "#begin step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !852
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !853
  %i.gt = load <2 x double>, ptr %.1238768.us.us.us, align 16, !tbaa !24
  %i.gu = getelementptr inbounds nuw i8, ptr %.1238768.us.us.us, i64 16
  %i.gv = load <2 x double>, ptr %i.gu, align 16, !tbaa !24
  %i.gw = load double, ptr %.1769.us.us.us, align 8, !tbaa !42
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gz = fmul <2 x double> %i.gt, %i.gy
  %i.ha = fadd <2 x double> %.1699766.us.us.us, %i.gz ; 2 uses
  %i.hb = fmul <2 x double> %i.gv, %i.gy
  %i.hc = fadd <2 x double> %.1697767.us.us.us, %i.hb ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 2pX1", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !854
  %i.hd = getelementptr inbounds nuw i8, ptr %.1769.us.us.us, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %.1238768.us.us.us, i64 32
  %i.hf = add nuw nsw i64 %.0234770.us.us.us, 1   ; 2 uses
  %i.hg = icmp slt i64 %i.hf, %5
  br i1 %i.hg, label %.lr.ph771.us.us.us, label %._crit_edge772.us.us.us, !llvm.loop !815

._crit_edge772.us.us.us:                          ; preds = %.lr.ph771.us.us.us, %..preheader703_crit_edge.us.us.us
  %.1699.lcssa.us.us.us = phi <2 x double> [ %i.gm, %..preheader703_crit_edge.us.us.us ], [ %i.ha, %.lr.ph771.us.us.us ]
  %.1697.lcssa.us.us.us = phi <2 x double> [ %i.go, %..preheader703_crit_edge.us.us.us ], [ %i.hc, %.lr.ph771.us.us.us ]
  %i.hh = load <2 x double>, ptr %i.cx, align 1, !tbaa !24
  %i.hi = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.hj = load <2 x double>, ptr %i.hi, align 1, !tbaa !24
  %i.hk = fmul <2 x double> %i.ac, %.1699.lcssa.us.us.us
  %i.hl = fadd <2 x double> %i.hk, %i.hh
  %i.hm = fmul <2 x double> %i.ac, %.1697.lcssa.us.us.us
  %i.hn = fadd <2 x double> %i.hm, %i.hj
  store <2 x double> %i.hl, ptr %i.cx, align 1, !tbaa !24
  store <2 x double> %i.hn, ptr %i.hi, align 1, !tbaa !24
  %i.ho = add nuw nsw i64 %.0239777.us.us.us, 4   ; 2 uses
  %i.hp = icmp slt i64 %i.ho, %.sroa.speculated
  br i1 %i.hp, label %.lr.ph761.us.us.us, label %._crit_edge779.split.us.us.us, !llvm.loop !816

end_hunk_0
