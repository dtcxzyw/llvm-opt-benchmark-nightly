Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/distribute?download=true
inline.NumInlined: 931
inline.NumDeleted: 491
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm:bb.a
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.bc
  br i1 %.not.i4, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_M_default_appendEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !392
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_M_default_appendEm.exit

_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_M_default_appendEm.exit: ; preds = %bb.i, %bb.h, %_ZNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE13_M_deallocateEPim.exit42.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_Z11dd_scattervIiEvPK12gmx_domdec_tN3gmx8ArrayRefIKiEES6_PKT_iPS7_(ptr noundef, ptr, ptr, ptr, ptr, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @_Z21make_tric_corr_matrixiPA3_KfPA3_f(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare { ptr, ptr } @_Z21set_dd_cell_sizes_slbP12gmx_domdec_tPK11gmx_ddbox_ti(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZL27computeAtomGroupDomainIndexRK12gmx_domdec_tRK11gmx_ddbox_tRA3_A3_KfN3gmx8ArrayRefIKSt6vectorIfSaIfEEEEiiPS6_PA3_fSI_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1097) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(200) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %2, ptr nofree readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8) unnamed_addr #6 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 13 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157  ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 558
  %i.f = load i8, ptr %i.e, align 2, !tbaa !440, !range !142, !noundef !143
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.h = sub nsw i32 %5, %4                       ; 2 uses
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = sext i32 %4 to i64                       ; 2 uses
  %i.k = getelementptr inbounds [12 x i8], ptr %7, i64 %i.j ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !250 ; 2 uses
  store float %i.l, ptr %i.a, align 4, !tbaa !250
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = load <2 x float>, ptr %i.m, align 4, !tbaa !250 ; 2 uses
  store <2 x float> %i.o, ptr %i.n, align 4, !tbaa !250
  br label %.loopexit131

bb.c:                                             ; preds = %bb.a
  %i.p = sitofp i32 %i.h to float
  %i.q = fdiv nnan float 1.000000e+00, %i.p       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = icmp slt i32 %4, %5
  %i.t = sext i32 %4 to i64                       ; 5 uses
  br i1 %i.s, label %.lr.ph.preheader, label %.preheader130

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = sext i32 %5 to i64           ; 3 uses
  %i.u = sub nsw i64 %wide.trip.count, %i.t
  %xtraiter = and i64 %i.u, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.t, %.lr.ph.preheader ] ; 2 uses
  %i.v = phi float [ %i.ac, %.lr.ph.prol ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.w = phi <2 x float> [ %i.z, %.lr.ph.prol ], [ zeroinitializer, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.x = getelementptr inbounds [12 x i8], ptr %7, i64 %indvars.iv.prol ; 2 uses
  %i.y = load <2 x float>, ptr %i.x, align 4, !tbaa !250
  %i.z = fadd <2 x float> %i.w, %i.y              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !250
  %i.ac = fadd float %i.v, %i.ab                  ; 3 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !394

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa346.unr = phi <2 x float> [ poison, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %.lcssa345.unr = phi float [ poison, %.lr.ph.preheader ], [ %i.ac, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %i.t, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.unr = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ac, %.lr.ph.prol ]
  %.unr347 = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ad = sub nsw i64 %i.t, %wide.trip.count
  %i.ae = icmp ugt i64 %i.ad, -8
  br i1 %i.ae, label %.preheader130, label %.lr.ph

.preheader130:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.c
  %.lcssa137 = phi float [ 0.000000e+00, %bb.c ], [ %.lcssa345.unr, %.lr.ph.prol.loopexit ], [ %i.cr, %.lr.ph ]
  %i.af = phi <2 x float> [ zeroinitializer, %bb.c ], [ %.lcssa346.unr, %.lr.ph.prol.loopexit ], [ %i.co, %.lr.ph ] ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0
  %i.ah = fmul float %i.q, %i.ag                  ; 2 uses
  store float %i.ah, ptr %i.a, align 4, !tbaa !250
  %i.ai = insertelement <2 x float> poison, float %i.q, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.al = insertelement <2 x float> %i.ak, float %.lcssa137, i64 1
  %i.am = fmul <2 x float> %i.aj, %i.al           ; 2 uses
  store <2 x float> %i.am, ptr %i.r, align 4, !tbaa !250
  br label %.loopexit131

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.an = phi float [ %i.cr, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.ao = phi <2 x float> [ %i.co, %.lr.ph ], [ %.unr347, %.lr.ph.prol.loopexit ]
  %i.ap = getelementptr inbounds [12 x i8], ptr %7, i64 %indvars.iv ; 2 uses
  %i.aq = load <2 x float>, ptr %i.ap, align 4, !tbaa !250
  %i.ar = fadd <2 x float> %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !250
  %i.au = fadd float %i.an, %i.at
  %i.av = getelementptr [12 x i8], ptr %7, i64 %indvars.iv ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 12
  %i.ax = load <2 x float>, ptr %i.aw, align 4, !tbaa !250
  %i.ay = fadd <2 x float> %i.ar, %i.ax
  %i.az = getelementptr i8, ptr %i.av, i64 20
  %i.ba = load float, ptr %i.az, align 4, !tbaa !250
  %i.bb = fadd float %i.au, %i.ba
  %i.bc = getelementptr [12 x i8], ptr %7, i64 %indvars.iv ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 24
  %i.be = load <2 x float>, ptr %i.bd, align 4, !tbaa !250
  %i.bf = fadd <2 x float> %i.ay, %i.be
  %i.bg = getelementptr i8, ptr %i.bc, i64 32
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !250
  %i.bi = fadd float %i.bb, %i.bh
  %i.bj = getelementptr [12 x i8], ptr %7, i64 %indvars.iv ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 36
  %i.bl = load <2 x float>, ptr %i.bk, align 4, !tbaa !250
  %i.bm = fadd <2 x float> %i.bf, %i.bl
  %i.bn = getelementptr i8, ptr %i.bj, i64 44
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !250
  %i.bp = fadd float %i.bi, %i.bo
  %i.bq = getelementptr [12 x i8], ptr %7, i64 %indvars.iv ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 48
  %i.bs = load <2 x float>, ptr %i.br, align 4, !tbaa !250
  %i.bt = fadd <2 x float> %i.bm, %i.bs
  %i.bu = getelementptr i8, ptr %i.bq, i64 56
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !250
  %i.bw = fadd float %i.bp, %i.bv
  %i.bx = getelementptr [12 x i8], ptr %7, i64 %indvars.iv ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 60
  %i.bz = load <2 x float>, ptr %i.by, align 4, !tbaa !250
  %i.ca = fadd <2 x float> %i.bt, %i.bz
  %i.cb = getelementptr i8, ptr %i.bx, i64 68
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !250
  %i.cd = fadd float %i.bw, %i.cc
  %i.ce = getelementptr [12 x i8], ptr %7, i64 %indvars.iv ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 72
  %i.cg = load <2 x float>, ptr %i.cf, align 4, !tbaa !250
  %i.ch = fadd <2 x float> %i.ca, %i.cg
  %i.ci = getelementptr i8, ptr %i.ce, i64 80
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !250
  %i.ck = fadd float %i.cd, %i.cj
  %i.cl = getelementptr [12 x i8], ptr %7, i64 %indvars.iv ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 84
  %i.cn = load <2 x float>, ptr %i.cm, align 4, !tbaa !250
  %i.co = fadd <2 x float> %i.ch, %i.cn           ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cl, i64 92
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !250
  %i.cr = fadd float %i.ck, %i.cq                 ; 2 uses
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.preheader130, label %.lr.ph, !llvm.loop !395

.loopexit131:                                     ; preds = %.preheader130, %bb.b
  %.pre-phi = phi i64 [ %i.t, %.preheader130 ], [ %i.j, %bb.b ] ; 23 uses
  %i.cs = phi float [ %i.ah, %.preheader130 ], [ %i.l, %bb.b ]
  %i.ct = phi <2 x float> [ %i.am, %.preheader130 ], [ %i.o, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !156
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.db = getelementptr i8, ptr %6, i64 16        ; 18 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 14 uses
  %i.dd = icmp slt i32 %4, %5                     ; 2 uses
  %i.de = insertelement <2 x ptr> poison, ptr %6, i64 0
  %i.df = insertelement <2 x ptr> %i.de, ptr %i.d, i64 1 ; 4 uses
  %i.dg = getelementptr i8, <2 x ptr> %i.df, <2 x i64> <i64 16, i64 560>
  %i.dh = getelementptr i8, <2 x ptr> %i.df, <2 x i64> <i64 16, i64 560>
  %i.di = getelementptr i8, ptr %i.d, i64 560     ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 572 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 576 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 584 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 588 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 592 ; 4 uses
  %i.do = sext i32 %i.cv to i64
  %wide.trip.count218 = sext i32 %5 to i64        ; 14 uses
  %wide.trip.count223 = sext i32 %5 to i64
  %wide.trip.count228 = sext i32 %5 to i64
  %wide.trip.count233 = sext i32 %5 to i64
  %wide.trip.count238 = sext i32 %5 to i64
  %wide.trip.count243 = sext i32 %5 to i64
  %9 = mul nsw i64 %.pre-phi, 12                  ; 2 uses
  %scevgep.a = getelementptr i8, ptr %7, i64 %9
  %i.dp = mul nsw i64 %wide.trip.count218, 12     ; 2 uses
  %scevgep19 = getelementptr i8, ptr %7, i64 %i.dp
  %scevgep20 = getelementptr i8, ptr %8, i64 %9   ; 4 uses
  %scevgep21 = getelementptr i8, ptr %8, i64 %i.dp ; 4 uses
  %scevgep22 = getelementptr i8, ptr %6, i64 36   ; 4 uses
  %10 = getelementptr i8, <2 x ptr> %i.df, <2 x i64> <i64 36, i64 596>
  %scevgep24 = getelementptr i8, ptr %i.d, i64 596 ; 2 uses
  %i.dq = mul nsw i64 %.pre-phi, 12               ; 2 uses
  %scevgep87 = getelementptr i8, ptr %7, i64 %i.dq ; 5 uses
  %i.dr = mul nsw i64 %wide.trip.count218, 12     ; 2 uses
  %scevgep88 = getelementptr i8, ptr %7, i64 %i.dr ; 5 uses
  %scevgep157 = getelementptr i8, ptr %8, i64 %i.dq ; 4 uses
  %scevgep158 = getelementptr i8, ptr %8, i64 %i.dr ; 4 uses
  %11 = getelementptr i8, <2 x ptr> %i.df, <2 x i64> <i64 36, i64 596>
  %i.ds = mul nsw i64 %.pre-phi, 12
  %scevgep248 = getelementptr i8, ptr %7, i64 %i.ds ; 3 uses
  %i.dt = mul nsw i64 %wide.trip.count218, 12
  %scevgep249 = getelementptr i8, ptr %7, i64 %i.dt ; 3 uses
  %i.du = insertelement <2 x ptr> poison, ptr %scevgep19, i64 0
  %i.dv = insertelement <2 x ptr> poison, ptr %scevgep88, i64 0
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dx = insertelement <4 x ptr> poison, ptr %scevgep157, i64 0
  %i.dy = insertelement <4 x ptr> %i.dx, ptr %scevgep87, i64 1
  %i.dz = insertelement <4 x ptr> poison, ptr %scevgep88, i64 0
  %i.ea = insertelement <4 x ptr> poison, ptr %scevgep87, i64 0
  %i.eb = insertelement <4 x ptr> poison, ptr %scevgep158, i64 0
  %i.ec = shufflevector <2 x ptr> %11, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ed = shufflevector <2 x ptr> %i.dh, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ee = sub nsw i64 %wide.trip.count218, %.pre-phi ; 7 uses
  %min.iters.check190 = icmp ult i64 %i.ee, 8     ; 3 uses
  %n.vec299 = and i64 %i.ee, -8                   ; 3 uses
  %i.ef = add nsw i64 %.pre-phi, %n.vec299
  %i.eg = getelementptr [12 x i8], ptr %7, i64 %.pre-phi
  %cmp.n315 = icmp eq i64 %i.ee, %n.vec299
  %bound0251 = icmp ult ptr %scevgep248, %scevgep22
  %bound1252 = icmp ult ptr %i.db, %scevgep249
  %found.conflict253 = and i1 %bound0251, %bound1252
  %n.vec261 = and i64 %i.ee, -8                   ; 3 uses
  %i.eh = add nsw i64 %.pre-phi, %n.vec261
  %broadcast.splatinsert262 = insertelement <8 x i64> poison, i64 %.pre-phi, i64 0
  %broadcast.splat263 = shufflevector <8 x i64> %broadcast.splatinsert262, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction264 = add nsw <8 x i64> %broadcast.splat263, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n289 = icmp eq i64 %i.ee, %n.vec261
  %i.ei = add nsw i64 %wide.trip.count218, -1
  %i.ej = shufflevector <4 x ptr> %i.ea, <4 x ptr> %i.ed, <4 x i32> <i32 0, i32 4, i32 0, i32 6>
  %i.ek = shufflevector <4 x ptr> %i.dz, <4 x ptr> %i.ec, <4 x i32> <i32 0, i32 4, i32 0, i32 6>
  %bound0177 = icmp ult ptr %scevgep157, %scevgep22
  %bound1178 = icmp ult ptr %i.db, %scevgep158
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0185 = icmp ult ptr %scevgep157, %scevgep24
  %bound1186 = icmp ult ptr %i.di, %scevgep158
  %found.conflict187 = and i1 %bound0185, %bound1186
  %n.vec192 = and i64 %i.ee, -8                   ; 3 uses
  %i.el = add nsw i64 %.pre-phi, %n.vec192
  %broadcast.splatinsert207 = insertelement <8 x ptr> poison, ptr %i.db, i64 0
  %broadcast.splat208 = shufflevector <8 x ptr> %broadcast.splatinsert207, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert209 = insertelement <8 x ptr> poison, ptr %i.dc, i64 0
  %broadcast.splat210 = shufflevector <8 x ptr> %broadcast.splatinsert209, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert211 = insertelement <8 x i64> poison, i64 %.pre-phi, i64 0
  %broadcast.splat212 = shufflevector <8 x i64> %broadcast.splatinsert211, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction213 = add nsw <8 x i64> %broadcast.splat212, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n245 = icmp eq i64 %i.ee, %n.vec192
  %i.em = insertelement <4 x ptr> poison, ptr %scevgep.a, i64 0 ; 2 uses
  %i.en = insertelement <4 x ptr> poison, ptr %scevgep21, i64 0
  %i.eo = shufflevector <2 x ptr> %i.dg, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ep = sub nsw i64 %wide.trip.count218, %.pre-phi ; 7 uses
  %min.iters.check = icmp ult i64 %i.ep, 8        ; 3 uses
  %n.vec138 = and i64 %i.ep, -8                   ; 3 uses
  %i.eq = add nsw i64 %.pre-phi, %n.vec138
  %i.er = getelementptr [12 x i8], ptr %7, i64 %.pre-phi
  %cmp.n154 = icmp eq i64 %i.ep, %n.vec138
  %bound090 = icmp ult ptr %scevgep87, %scevgep22
  %bound191 = icmp ult ptr %i.db, %scevgep88
  %found.conflict92 = and i1 %bound090, %bound191
  %n.vec100 = and i64 %i.ep, -8                   ; 3 uses
  %i.es = add nsw i64 %.pre-phi, %n.vec100
  %broadcast.splatinsert101 = insertelement <8 x i64> poison, i64 %.pre-phi, i64 0
  %broadcast.splat102 = shufflevector <8 x i64> %broadcast.splatinsert101, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction103 = add nsw <8 x i64> %broadcast.splat102, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n128 = icmp eq i64 %i.ep, %n.vec100
  %i.et = add nsw i64 %wide.trip.count218, -1
  %i.eu = shufflevector <4 x ptr> %i.em, <4 x ptr> %i.eo, <4 x i32> <i32 0, i32 4, i32 0, i32 6>
  %i.ev = shufflevector <4 x ptr> %i.em, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %i.ew = insertelement <4 x ptr> %i.ev, ptr %scevgep20, i64 0
  %bound036 = icmp ult ptr %scevgep20, %scevgep22
  %bound137 = icmp ult ptr %i.db, %scevgep21
  %found.conflict38 = and i1 %bound036, %bound137
  %bound044 = icmp ult ptr %scevgep20, %scevgep24
  %bound145 = icmp ult ptr %i.di, %scevgep21
  %found.conflict46 = and i1 %bound044, %bound145
  %n.vec = and i64 %i.ep, -8                      ; 3 uses
  %i.ex = add nsw i64 %.pre-phi, %n.vec
  %broadcast.splatinsert48 = insertelement <8 x ptr> poison, ptr %i.db, i64 0
  %broadcast.splat49 = shufflevector <8 x ptr> %broadcast.splatinsert48, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <8 x ptr> poison, ptr %i.dc, i64 0
  %broadcast.splat51 = shufflevector <8 x ptr> %broadcast.splatinsert50, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <8 x i64> poison, i64 %.pre-phi, i64 0
  %broadcast.splat53 = shufflevector <8 x i64> %broadcast.splatinsert52, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat53, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n = icmp eq i64 %i.ep, %n.vec
  br label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val = load i32, ptr %i.ey, align 8, !tbaa !240
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 172
  %.val125 = load i32, ptr %i.ez, align 4, !tbaa !240
  %i.fa = load i32, ptr %i.b, align 4, !tbaa !240
  %i.fb = mul nsw i32 %i.fa, %.val
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !240
  %i.fe = add nsw i32 %i.fb, %i.fd
  %i.ff = mul nsw i32 %i.fe, %.val125
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !240
  %i.fi = add nsw i32 %i.ff, %i.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %i.fi

bb.e:                                             ; preds = %.loopexit131, %.critedge
  %indvar = phi i64 [ 0, %.loopexit131 ], [ %indvar.next, %.critedge ] ; 7 uses
  %indvars.iv210 = phi i64 [ 2, %.loopexit131 ], [ %indvars.iv.next211, %.critedge ] ; 16 uses
  %.lcssa169173 = phi float [ %i.cs, %.loopexit131 ], [ %.lcssa168, %.critedge ] ; 3 uses
  %i.fj = phi <2 x float> [ %i.ct, %.loopexit131 ], [ %i.xv, %.critedge ] ; 3 uses
  %i.fk = mul nsw i64 %indvar, -12
  %i.fl = getelementptr i8, ptr %6, i64 %i.fk
  %scevgep292 = getelementptr i8, ptr %i.fl, i64 36
  %i.fm = mul nsw i64 %indvar, -12
  %i.fn = getelementptr i8, ptr %6, i64 %i.fm
  %scevgep250 = getelementptr i8, ptr %i.fn, i64 36
  %i.fo = mul nsw i64 %indvar, -12
  %i.fp = getelementptr i8, ptr %6, i64 %i.fo     ; 2 uses
  %i.fq = insertelement <2 x ptr> %i.dv, ptr %i.fp, i64 1
  %i.fr = getelementptr i8, <2 x ptr> %i.fq, <2 x i64> <i64 0, i64 36>
  %scevgep160 = getelementptr i8, ptr %i.fp, i64 36
  %i.fs = mul nsw i64 %indvar, -12
  %i.ft = getelementptr i8, ptr %6, i64 %i.fs
  %scevgep131 = getelementptr i8, ptr %i.ft, i64 36
  %i.fu = mul nsw i64 %indvar, -12
  %i.fv = getelementptr i8, ptr %6, i64 %i.fu
  %scevgep89 = getelementptr i8, ptr %i.fv, i64 36
  %i.fw = mul nsw i64 %indvar, -12
  %i.fx = getelementptr i8, ptr %6, i64 %i.fw     ; 2 uses
  %i.fy = insertelement <2 x ptr> %i.du, ptr %i.fx, i64 1
  %i.fz = getelementptr i8, <2 x ptr> %i.fy, <2 x i64> <i64 0, i64 36> ; 2 uses
  %scevgep23 = getelementptr i8, ptr %i.fx, i64 36
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv210
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !250 ; 5 uses
  %i.gc = icmp slt i64 %indvars.iv210, %i.do
  br i1 %i.gc, label %bb.f, label %.loopexit127

bb.f:                                             ; preds = %bb.e
  %i.gd = load i8, ptr %i.cx, align 1, !tbaa !141, !range !142, !noundef !143
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = icmp eq i64 %indvars.iv210, 0
  %i.gg = and i1 %i.gf, %i.ge                     ; 8 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv210
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !240
  %.not = icmp eq i32 %i.gi, 0
  br i1 %.not, label %.loopexit129, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv210
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !240
  %i.gl = icmp sgt i32 %i.gk, 1
  br i1 %i.gl, label %.preheader128, label %.loopexit129

.preheader128:                                    ; preds = %bb.g
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv210 ; 2 uses
  %i.gm = icmp samesign ult i64 %indvars.iv210, 2
  br i1 %i.gm, label %.lr.ph144.peel, label %.loopexit129

.lr.ph144.peel:                                   ; preds = %.preheader128
  %indvars.iv.next213.peel = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next213.peel
  %i.go = load float, ptr %i.gn, align 4, !tbaa !250
  %gep.peel = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next213.peel
  %i.gp = load float, ptr %gep.peel, align 4, !tbaa !250
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.go, float %i.gp, float %i.gb) ; 2 uses
  %i.gr = icmp eq i64 %indvars.iv210, 0
  br i1 %i.gr, label %.loopexit129.loopexit.loopexit, label %.loopexit129

.loopexit129.loopexit.loopexit:                   ; preds = %.lr.ph144.peel
  %i.gs = load float, ptr %i.dw, align 4, !tbaa !250
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 24
  %i.gt = load float, ptr %gep, align 4, !tbaa !250
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.gt, float %i.gq)
  br label %.loopexit129

.loopexit129:                                     ; preds = %.lr.ph144.peel, %.loopexit129.loopexit.loopexit, %.preheader128, %bb.g, %bb.f
  %.1 = phi float [ %i.gb, %bb.f ], [ %i.gb, %bb.g ], [ %i.gb, %.preheader128 ], [ %i.gq, %.lr.ph144.peel ], [ %i.gu, %.loopexit129.loopexit.loopexit ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [12 x i8], ptr %6, i64 %indvars.iv210 ; 41 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv210 ; 3 uses
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !250 ; 2 uses
  %i.gy = fcmp ult float %.1, %i.gx
  br i1 %i.gy, label %.preheader, label %.lr.ph152

.lr.ph152:                                        ; preds = %.loopexit129
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 4 ; 6 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 15 uses
  %i.hb = insertelement <4 x ptr> %i.dy, ptr %i.gv, i64 2
  %i.hc = shufflevector <4 x ptr> %i.hb, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.hd = shufflevector <2 x ptr> %i.fr, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %bound0293 = icmp ult ptr %scevgep248, %scevgep292
  %bound1294 = icmp ult ptr %i.gv, %scevgep249
  %found.conflict295 = and i1 %bound0293, %bound1294
  %bound0254 = icmp ult ptr %scevgep248, %scevgep250
  %bound1255 = icmp ult ptr %i.gv, %scevgep249
  %found.conflict256 = and i1 %bound0254, %bound1255
  %conflict.rdx257 = or i1 %found.conflict253, %found.conflict256
  %i.he = shufflevector <4 x ptr> %i.eb, <4 x ptr> %i.hd, <4 x i32> <i32 0, i32 4, i32 5, i32 4>
  %i.hf = icmp ult <4 x ptr> %i.ej, %i.he
  %i.hg = icmp ult <4 x ptr> %i.hc, %i.ek
  %i.hh = and <4 x i1> %i.hg, %i.hf
  %bound0181 = icmp ult ptr %scevgep157, %scevgep160
  %bound1182 = icmp ult ptr %i.gv, %scevgep158
  %found.conflict183 = and i1 %bound0181, %bound1182
  %i.hi = bitcast <4 x i1> %i.hh to i4
  %i.hj = icmp ne i4 %i.hi, 0
  %op.rdx319 = or i1 %i.hj, %found.conflict179
  %op.rdx320 = or i1 %found.conflict183, %found.conflict187
  %op.rdx321 = or i1 %op.rdx319, %op.rdx320
  %broadcast.splatinsert205 = insertelement <8 x i1> poison, i1 %i.gg, i64 0
  %broadcast.splat206 = shufflevector <8 x i1> %broadcast.splatinsert205, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %bb.h

.loopexit126:                                     ; preds = %.lr.ph147.split.split.prol.loopexit, %.lr.ph147.split.split, %.lr.ph147.split.split.us.prol.loopexit, %.lr.ph147.split.split.us, %bb.l, %middle.block314, %middle.block288, %middle.block244, %bb.j
  %i.hk = load float, ptr %i.gw, align 4, !tbaa !250 ; 2 uses
  %i.hl = fcmp ult float %i.ic, %i.hk
  br i1 %i.hl, label %..preheader_crit_edge, label %bb.h, !llvm.loop !396

..preheader_crit_edge:                            ; preds = %.loopexit126
  store <2 x float> %i.im, ptr %i.cz, align 4, !tbaa !250
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.loopexit129
  %.lcssa = phi float [ %i.ie, %..preheader_crit_edge ], [ %.lcssa169173, %.loopexit129 ] ; 3 uses
  %.2.lcssa = phi float [ %i.ic, %..preheader_crit_edge ], [ %.1, %.loopexit129 ] ; 3 uses
  %i.hm = phi <2 x float> [ %i.im, %..preheader_crit_edge ], [ %i.fj, %.loopexit129 ] ; 2 uses
  store float %.lcssa, ptr %i.a, align 4
  %i.hn = fcmp olt float %.2.lcssa, 0.000000e+00
  br i1 %i.hn, label %.lr.ph165, label %.loopexit127

.lr.ph165:                                        ; preds = %.preheader
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gv, i64 4 ; 6 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 15 uses
  %i.hq = shufflevector <2 x ptr> %i.fz, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %bound0132 = icmp ult ptr %scevgep87, %scevgep131
  %bound1133 = icmp ult ptr %i.gv, %scevgep88
  %found.conflict134 = and i1 %bound0132, %bound1133
  %bound093 = icmp ult ptr %scevgep87, %scevgep89
  %bound194 = icmp ult ptr %i.gv, %scevgep88
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %found.conflict92, %found.conflict95
  %i.hr = shufflevector <4 x ptr> %i.en, <4 x ptr> %i.hq, <4 x i32> <i32 0, i32 4, i32 5, i32 4>
  %i.hs = icmp ult <4 x ptr> %i.eu, %i.hr
  %i.ht = insertelement <4 x ptr> %i.ew, ptr %i.gv, i64 2
  %i.hu = shufflevector <2 x ptr> %i.fz, <2 x ptr> %10, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  %i.hv = icmp ult <4 x ptr> %i.ht, %i.hu
  %i.hw = and <4 x i1> %i.hv, %i.hs
  %bound040 = icmp ult ptr %scevgep20, %scevgep23
  %bound141 = icmp ult ptr %i.gv, %scevgep21
  %found.conflict42 = and i1 %bound040, %bound141
  %i.hx = bitcast <4 x i1> %i.hw to i4
  %i.hy = icmp ne i4 %i.hx, 0
  %op.rdx = or i1 %i.hy, %found.conflict38
  %op.rdx317 = or i1 %found.conflict42, %found.conflict46
  %op.rdx318 = or i1 %op.rdx, %op.rdx317
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %i.gg, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph152, %.loopexit126
  %i.hz = phi float [ %i.gx, %.lr.ph152 ], [ %i.hk, %.loopexit126 ]
  %.2151 = phi float [ %.1, %.lr.ph152 ], [ %i.ic, %.loopexit126 ]
  %i.ia = phi float [ %.lcssa169173, %.lr.ph152 ], [ %i.ie, %.loopexit126 ]
  %i.ib = phi <2 x float> [ %i.fj, %.lr.ph152 ], [ %i.im, %.loopexit126 ]
  %i.ic = fsub float %.2151, %i.hz                ; 3 uses
  %i.id = load float, ptr %i.gv, align 4, !tbaa !250
  %i.ie = fsub float %i.ia, %i.id                 ; 2 uses
  %i.if = load <2 x float>, ptr %i.gz, align 4, !tbaa !250
  %i.ig = fsub <2 x float> %i.ib, %i.if           ; 2 uses
  br i1 %i.gg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ih = load float, ptr %i.db, align 4, !tbaa !250
  %i.ii = load float, ptr %i.dc, align 4, !tbaa !250
  %i.ij = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.ik = insertelement <2 x float> %i.ij, float %i.ii, i64 1
  %i.il = fsub <2 x float> %i.ik, %i.ig
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.im = phi <2 x float> [ %i.il, %bb.i ], [ %i.ig, %bb.h ] ; 3 uses
  br i1 %i.dd, label %.lr.ph147, label %.loopexit126

.lr.ph147:                                        ; preds = %bb.j
  br i1 %i.g, label %.lr.ph147.split.us.preheader, label %.lr.ph147.split

.lr.ph147.split.us.preheader:                     ; preds = %.lr.ph147
  %brmerge = select i1 %min.iters.check190, i1 true, i1 %op.rdx321
  br i1 %brmerge, label %.lr.ph147.split.us.preheader332, label %vector.ph191

vector.ph191:                                     ; preds = %.lr.ph147.split.us.preheader
  %i.in = load float, ptr %i.gv, align 4, !tbaa !250, !alias.scope !441
  %broadcast.splatinsert222 = insertelement <8 x float> poison, float %i.in, i64 0
  %broadcast.splat223 = shufflevector <8 x float> %broadcast.splatinsert222, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.io = load float, ptr %i.gz, align 4, !tbaa !250, !alias.scope !441
  %broadcast.splatinsert225 = insertelement <8 x float> poison, float %i.io, i64 0
  %broadcast.splat226 = shufflevector <8 x float> %broadcast.splatinsert225, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ip = load float, ptr %i.ha, align 4, !tbaa !250, !alias.scope !441
  %broadcast.splatinsert228 = insertelement <8 x float> poison, float %i.ip, i64 0
  %broadcast.splat229 = shufflevector <8 x float> %broadcast.splatinsert228, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.iq = load float, ptr %i.di, align 4, !tbaa !250, !alias.scope !442
  %.scalar = fneg float %i.iq
  %i.ir = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.is = shufflevector <8 x float> %i.ir, <8 x float> poison, <8 x i32> zeroinitializer
  %i.it = load float, ptr %i.dj, align 4, !tbaa !250, !alias.scope !442
  %.scalar322 = fneg float %i.it
  %i.iu = insertelement <8 x float> poison, float %.scalar322, i64 0
  %i.iv = shufflevector <8 x float> %i.iu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iw = load float, ptr %i.dk, align 4, !tbaa !250, !alias.scope !442
  %.scalar323 = fneg float %i.iw
  %i.ix = insertelement <8 x float> poison, float %.scalar323, i64 0
  %i.iy = shufflevector <8 x float> %i.ix, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iz = load float, ptr %i.dl, align 4, !tbaa !250, !alias.scope !442
  %.scalar324 = fneg float %i.iz
  %i.ja = insertelement <8 x float> poison, float %.scalar324, i64 0
  %i.jb = shufflevector <8 x float> %i.ja, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jc = load float, ptr %i.dm, align 4, !tbaa !250, !alias.scope !442
  %.scalar325 = fneg float %i.jc
  %i.jd = insertelement <8 x float> poison, float %.scalar325, i64 0
  %i.je = shufflevector <8 x float> %i.jd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jf = load float, ptr %i.dn, align 4, !tbaa !250, !alias.scope !442
  %.scalar326 = fneg float %i.jf
  %i.jg = insertelement <8 x float> poison, float %.scalar326, i64 0
  %i.jh = shufflevector <8 x float> %i.jg, <8 x float> poison, <8 x i32> zeroinitializer
  %wide.masked.gather238 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat208, <8 x i1> %broadcast.splat206, <8 x float> poison), !tbaa !250, !alias.scope !443
  %wide.masked.gather240 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat210, <8 x i1> %broadcast.splat206, <8 x float> poison), !tbaa !250, !alias.scope !443
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph191
  %index215 = phi i64 [ 0, %vector.ph191 ], [ %index.next242, %vector.body214 ]
  %vec.ind216 = phi <8 x i64> [ %induction213, %vector.ph191 ], [ %vec.ind.next243, %vector.body214 ] ; 3 uses
  %wide.gep217 = getelementptr inbounds [12 x i8], ptr %7, <8 x i64> %vec.ind216 ; 3 uses
  %i.ji = extractelement <8 x ptr> %wide.gep217, i64 0 ; 2 uses
  %wide.vec218 = load <24 x float>, ptr %i.ji, align 4, !tbaa !250, !alias.scope !444, !noalias !445 ; 3 uses
  %strided.vec219 = shufflevector <24 x float> %wide.vec218, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec220 = shufflevector <24 x float> %wide.vec218, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec221 = shufflevector <24 x float> %wide.vec218, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.jj = fsub <8 x float> %strided.vec219, %broadcast.splat223
  %wide.gep224 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep217, i64 4 ; 2 uses
  %i.jk = fsub <8 x float> %strided.vec220, %broadcast.splat226
  %wide.gep227 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep217, i64 8 ; 2 uses
  %i.jl = fsub <8 x float> %strided.vec221, %broadcast.splat229
  %i.jm = shufflevector <8 x float> %i.jj, <8 x float> %i.jk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jn = shufflevector <8 x float> %i.jl, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec230 = shufflevector <16 x float> %i.jm, <16 x float> %i.jn, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec230, ptr %i.ji, align 4, !tbaa !250, !alias.scope !444, !noalias !445
  %wide.gep231 = getelementptr inbounds [12 x i8], ptr %8, <8 x i64> %vec.ind216 ; 4 uses
  %i.jo = extractelement <8 x ptr> %wide.gep231, i64 0 ; 2 uses
  %wide.vec232 = load <24 x float>, ptr %i.jo, align 4, !tbaa !250, !alias.scope !446, !noalias !447 ; 3 uses
  %strided.vec233 = shufflevector <24 x float> %wide.vec232, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec234 = shufflevector <24 x float> %wide.vec232, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec235 = shufflevector <24 x float> %wide.vec232, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.jp = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.is, <8 x float> %broadcast.splat223, <8 x float> %strided.vec233) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jp, <8 x ptr> align 4 %wide.gep231, <8 x i1> splat (i1 true)), !tbaa !250, !alias.scope !446, !noalias !447
  %i.jq = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.iv, <8 x float> %broadcast.splat226, <8 x float> %i.jp) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jq, <8 x ptr> align 4 %wide.gep231, <8 x i1> splat (i1 true)), !tbaa !250, !alias.scope !446, !noalias !447
  %wide.gep236 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep231, i64 4
  %i.jr = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.iy, <8 x float> %broadcast.splat226, <8 x float> %strided.vec234) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jr, <8 x ptr> align 4 %wide.gep236, <8 x i1> splat (i1 true)), !tbaa !250, !alias.scope !446, !noalias !447
  %i.js = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jb, <8 x float> %broadcast.splat229, <8 x float> %i.jq)
  %i.jt = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.je, <8 x float> %broadcast.splat229, <8 x float> %i.jr)
  %i.ju = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jh, <8 x float> %broadcast.splat229, <8 x float> %strided.vec235)
  %i.jv = shufflevector <8 x float> %i.js, <8 x float> %i.jt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jw = shufflevector <8 x float> %i.ju, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec237 = shufflevector <16 x float> %i.jv, <16 x float> %i.jw, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec237, ptr %i.jo, align 4, !tbaa !250, !alias.scope !446, !noalias !447
  %wide.masked.gather239 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep224, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !250, !alias.scope !444, !noalias !445
  %i.jx = fsub <8 x float> %wide.masked.gather238, %wide.masked.gather239
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jx, <8 x ptr> align 4 %wide.gep224, <8 x i1> %broadcast.splat206), !tbaa !250, !alias.scope !444, !noalias !445
  %wide.masked.gather241 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep227, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !250, !alias.scope !444, !noalias !445
  %i.jy = fsub <8 x float> %wide.masked.gather240, %wide.masked.gather241
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jy, <8 x ptr> align 4 %wide.gep227, <8 x i1> %broadcast.splat206), !tbaa !250, !alias.scope !444, !noalias !445
  %index.next242 = add nuw i64 %index215, 8       ; 2 uses
  %vec.ind.next243 = add nsw <8 x i64> %vec.ind216, splat (i64 8)
  %i.jz = icmp eq i64 %index.next242, %n.vec192
  br i1 %i.jz, label %middle.block244, label %vector.body214, !llvm.loop !403

middle.block244:                                  ; preds = %vector.body214
  br i1 %cmp.n245, label %.loopexit126, label %.lr.ph147.split.us.preheader332

.lr.ph147.split.us.preheader332:                  ; preds = %.lr.ph147.split.us.preheader, %middle.block244
  %indvars.iv225.ph = phi i64 [ %i.el, %middle.block244 ], [ %.pre-phi, %.lr.ph147.split.us.preheader ]
  br label %.lr.ph147.split.us

.lr.ph147.split.us:                               ; preds = %.lr.ph147.split.us.preheader332, %bb.l
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %bb.l ], [ %indvars.iv225.ph, %.lr.ph147.split.us.preheader332 ] ; 3 uses
  %i.ka = getelementptr inbounds [12 x i8], ptr %7, i64 %indvars.iv225 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 4 uses
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !250
  %i.kd = load float, ptr %i.ha, align 4, !tbaa !250
  %i.ke = fsub float %i.kc, %i.kd
  %i.kf = load <2 x float>, ptr %i.ka, align 4, !tbaa !250
  %i.kg = load <2 x float>, ptr %i.gv, align 4, !tbaa !250
  %i.kh = fsub <2 x float> %i.kf, %i.kg
  store <2 x float> %i.kh, ptr %i.ka, align 4, !tbaa !250
  store float %i.ke, ptr %i.kb, align 4, !tbaa !250
  %i.ki = getelementptr inbounds [12 x i8], ptr %8, i64 %indvars.iv225 ; 6 uses
  %i.kj = load float, ptr %i.di, align 4, !tbaa !250
  %i.kk = load float, ptr %i.gv, align 4, !tbaa !250
  %i.kl = load float, ptr %i.ki, align 4, !tbaa !250
  %i.km = fneg float %i.kj
  %i.kn = tail call float @llvm.fmuladd.f32(float %i.km, float %i.kk, float %i.kl) ; 2 uses
  store float %i.kn, ptr %i.ki, align 4, !tbaa !250
  %i.ko = load float, ptr %i.dj, align 4, !tbaa !250
  %i.kp = load float, ptr %i.gz, align 4, !tbaa !250
  %i.kq = fneg float %i.ko
  %i.kr = tail call float @llvm.fmuladd.f32(float %i.kq, float %i.kp, float %i.kn) ; 2 uses
  store float %i.kr, ptr %i.ki, align 4, !tbaa !250
  %i.ks = load float, ptr %i.dk, align 4, !tbaa !250
  %i.kt = load float, ptr %i.gz, align 4, !tbaa !250
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ki, i64 4 ; 3 uses
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !250
  %i.kw = fneg float %i.ks
  %i.kx = tail call float @llvm.fmuladd.f32(float %i.kw, float %i.kt, float %i.kv) ; 2 uses
  store float %i.kx, ptr %i.ku, align 4, !tbaa !250
  %i.ky = load float, ptr %i.dl, align 4, !tbaa !250
  %i.kz = load float, ptr %i.ha, align 4, !tbaa !250
  %i.la = fneg float %i.ky
  %i.lb = tail call float @llvm.fmuladd.f32(float %i.la, float %i.kz, float %i.kr)
  store float %i.lb, ptr %i.ki, align 4, !tbaa !250
  %i.lc = load float, ptr %i.dm, align 4, !tbaa !250
  %i.ld = load float, ptr %i.ha, align 4, !tbaa !250
  %i.le = fneg float %i.lc
  %i.lf = tail call float @llvm.fmuladd.f32(float %i.le, float %i.ld, float %i.kx)
  store float %i.lf, ptr %i.ku, align 4, !tbaa !250
  %i.lg = load float, ptr %i.dn, align 4, !tbaa !250
  %i.lh = load float, ptr %i.ha, align 4, !tbaa !250
  %i.li = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !250
  %i.lk = fneg float %i.lg
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.lk, float %i.lh, float %i.lj)
  store float %i.ll, ptr %i.li, align 4, !tbaa !250
  br i1 %i.gg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph147.split.us
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ka, i64 4 ; 2 uses
  %i.ln = load float, ptr %i.db, align 4, !tbaa !250
  %i.lo = load float, ptr %i.lm, align 4, !tbaa !250
  %i.lp = fsub float %i.ln, %i.lo
  store float %i.lp, ptr %i.lm, align 4, !tbaa !250
  %i.lq = load float, ptr %i.dc, align 4, !tbaa !250
  %i.lr = load float, ptr %i.kb, align 4, !tbaa !250
  %i.ls = fsub float %i.lq, %i.lr
  store float %i.ls, ptr %i.kb, align 4, !tbaa !250
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph147.split.us
  %indvars.iv.next226 = add nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count228
end_hunk_0
