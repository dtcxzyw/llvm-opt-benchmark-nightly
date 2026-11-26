Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/distribute?download=true
inline.NumInlined: 931
inline.NumDeleted: 491
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm:bb.a
bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !393
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ay) #19
  br label %_ZNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE13_M_deallocateEPim.exit42.i

_ZNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE13_M_deallocateEPim.exit42.i: ; preds = %bb.f, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !249
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.i
  store ptr %i.az, ptr %i.a, align 8, !tbaa !392
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ba, ptr %i.j, align 8, !tbaa !393
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.bb = icmp ult i64 %1, %i.g
  br i1 %i.bb, label %bb.h, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
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
  %.lcssa440.unr = phi <2 x float> [ poison, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %.lcssa439.unr = phi float [ poison, %.lr.ph.preheader ], [ %i.ac, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %i.t, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.unr = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ac, %.lr.ph.prol ]
  %.unr441 = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.ad = sub nsw i64 %i.t, %wide.trip.count
  %i.ae = icmp ugt i64 %i.ad, -8
  br i1 %i.ae, label %.preheader130, label %.lr.ph

.preheader130:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.c
  %.lcssa137 = phi float [ 0.000000e+00, %bb.c ], [ %.lcssa439.unr, %.lr.ph.prol.loopexit ], [ %i.cr, %.lr.ph ]
  %i.af = phi <2 x float> [ zeroinitializer, %bb.c ], [ %.lcssa440.unr, %.lr.ph.prol.loopexit ], [ %i.co, %.lr.ph ] ; 2 uses
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
  %i.ao = phi <2 x float> [ %i.co, %.lr.ph ], [ %.unr441, %.lr.ph.prol.loopexit ]
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
  %i.db = getelementptr i8, ptr %6, i64 16        ; 20 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 14 uses
  %i.dd = icmp slt i32 %4, %5                     ; 2 uses
  %i.de = getelementptr i8, ptr %i.d, i64 560     ; 8 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 572 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 576 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 584 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 588 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 592 ; 4 uses
  %i.dk = sext i32 %i.cv to i64
  %wide.trip.count218 = sext i32 %5 to i64        ; 14 uses
  %wide.trip.count223 = sext i32 %5 to i64
  %wide.trip.count228 = sext i32 %5 to i64
  %wide.trip.count233 = sext i32 %5 to i64
  %wide.trip.count238 = sext i32 %5 to i64
  %wide.trip.count243 = sext i32 %5 to i64
  %scevgep = getelementptr i8, ptr %i.d, i64 596  ; 2 uses
  %scevgep49.a = getelementptr i8, ptr %6, i64 36 ; 2 uses
  %i.dl = mul nsw i64 %wide.trip.count218, 12     ; 2 uses
  %scevgep50 = getelementptr i8, ptr %8, i64 %i.dl ; 4 uses
  %i.dm = mul nsw i64 %.pre-phi, 12               ; 2 uses
  %scevgep51 = getelementptr i8, ptr %8, i64 %i.dm ; 4 uses
  %scevgep51.a = getelementptr i8, ptr %7, i64 %i.dl
  %scevgep52 = getelementptr i8, ptr %7, i64 %i.dm
  %scevgep53 = getelementptr i8, ptr %6, i64 36   ; 3 uses
  %i.dn = mul nsw i64 %wide.trip.count218, 12     ; 2 uses
  %scevgep127 = getelementptr i8, ptr %7, i64 %i.dn ; 5 uses
  %i.do = mul nsw i64 %.pre-phi, 12               ; 2 uses
  %scevgep128 = getelementptr i8, ptr %7, i64 %i.do ; 5 uses
  %scevgep234 = getelementptr i8, ptr %i.d, i64 596 ; 2 uses
  %scevgep236 = getelementptr i8, ptr %8, i64 %i.dn ; 4 uses
  %scevgep237 = getelementptr i8, ptr %8, i64 %i.do ; 4 uses
  %scevgep336.a = getelementptr i8, ptr %6, i64 36
  %i.dp = mul nsw i64 %wide.trip.count218, 12
  %scevgep337 = getelementptr i8, ptr %7, i64 %i.dp ; 3 uses
  %i.dq = mul nsw i64 %.pre-phi, 12
  %scevgep338 = getelementptr i8, ptr %7, i64 %i.dq ; 3 uses
  %i.dr = insertelement <2 x ptr> poison, ptr %scevgep127, i64 0
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %10 = insertelement <4 x ptr> poison, ptr %scevgep237, i64 0
  %11 = insertelement <4 x ptr> %10, ptr %scevgep128, i64 1
  %12 = insertelement <4 x ptr> %11, ptr %i.db, i64 2
  %13 = shufflevector <4 x ptr> %12, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ds = insertelement <4 x ptr> poison, ptr %scevgep128, i64 0
  %i.dt = insertelement <4 x ptr> %i.ds, ptr %i.de, i64 3
  %i.du = insertelement <4 x ptr> poison, ptr %scevgep236, i64 0
  %i.dv = insertelement <4 x ptr> %i.du, ptr %scevgep127, i64 1
  %i.dw = insertelement <4 x ptr> %i.dv, ptr %scevgep53, i64 2
  %14 = shufflevector <4 x ptr> %i.dw, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %15 = insertelement <2 x ptr> poison, ptr %i.db, i64 0
  %16 = insertelement <2 x ptr> %15, ptr %scevgep237, i64 1
  %17 = insertelement <2 x ptr> poison, ptr %scevgep237, i64 0
  %18 = insertelement <2 x ptr> %17, ptr %i.de, i64 1
  %19 = insertelement <2 x ptr> poison, ptr %scevgep53, i64 0
  %20 = insertelement <2 x ptr> %19, ptr %scevgep236, i64 1
  %21 = insertelement <2 x ptr> poison, ptr %scevgep236, i64 0
  %22 = insertelement <2 x ptr> %21, ptr %scevgep234, i64 1
  %i.dx = sub nsw i64 %wide.trip.count218, %.pre-phi ; 7 uses
  %min.iters.check239 = icmp ult i64 %i.dx, 8     ; 3 uses
  %n.vec393 = and i64 %i.dx, -8                   ; 3 uses
  %i.dy = add nsw i64 %.pre-phi, %n.vec393
  %i.dz = getelementptr [12 x i8], ptr %7, i64 %.pre-phi
  %cmp.n409 = icmp eq i64 %i.dx, %n.vec393
  %bound0342.a = icmp ult ptr %scevgep338, %scevgep336.a
  %bound1343.a = icmp ult ptr %i.db, %scevgep337
  %found.conflict344.a = and i1 %bound0342.a, %bound1343.a
  %n.vec350 = and i64 %i.dx, -8                   ; 3 uses
  %i.ea = add nsw i64 %.pre-phi, %n.vec350
  %broadcast.splatinsert351 = insertelement <8 x i64> poison, i64 %.pre-phi, i64 0
  %broadcast.splat352 = shufflevector <8 x i64> %broadcast.splatinsert351, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction353 = add nsw <8 x i64> %broadcast.splat352, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n378 = icmp eq i64 %i.dx, %n.vec350
  %i.eb = add nsw i64 %wide.trip.count218, -1
  %23 = icmp ult <2 x ptr> %18, %20
  %24 = icmp ult <2 x ptr> %16, %22
  %25 = and <2 x i1> %24, %23
  %26 = bitcast <2 x i1> %25 to i2
  %27 = icmp ne i2 %26, 0
  %n.vec269 = and i64 %i.dx, -8                   ; 3 uses
  %i.ec = add nsw i64 %.pre-phi, %n.vec269
  %broadcast.splatinsert284 = insertelement <8 x ptr> poison, ptr %i.db, i64 0
  %broadcast.splat285 = shufflevector <8 x ptr> %broadcast.splatinsert284, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert286 = insertelement <8 x ptr> poison, ptr %i.dc, i64 0
  %broadcast.splat287 = shufflevector <8 x ptr> %broadcast.splatinsert286, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert288 = insertelement <8 x i64> poison, i64 %.pre-phi, i64 0
  %broadcast.splat289 = shufflevector <8 x i64> %broadcast.splatinsert288, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction290 = add nsw <8 x i64> %broadcast.splat289, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n322 = icmp eq i64 %i.dx, %n.vec269
  %28 = insertelement <4 x ptr> poison, ptr %scevgep52, i64 0 ; 2 uses
  %29 = insertelement <4 x ptr> %28, ptr %i.de, i64 3
  %30 = insertelement <4 x ptr> poison, ptr %scevgep50, i64 0
  %31 = insertelement <4 x ptr> %30, ptr %scevgep51.a, i64 1 ; 2 uses
  %32 = insertelement <4 x ptr> %31, ptr %scevgep49.a, i64 2
  %33 = shufflevector <4 x ptr> %32, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %34 = shufflevector <4 x ptr> %28, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %35 = insertelement <4 x ptr> %34, ptr %scevgep51, i64 0
  %i.ed = insertelement <4 x ptr> %35, ptr %i.db, i64 2
  %36 = shufflevector <4 x ptr> %31, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 poison>
  %i.ee = insertelement <4 x ptr> %36, ptr %scevgep, i64 3
  %37 = insertelement <2 x ptr> poison, ptr %i.db, i64 0
  %38 = insertelement <2 x ptr> %37, ptr %scevgep51, i64 1
  %39 = insertelement <2 x ptr> poison, ptr %scevgep51, i64 0
  %40 = insertelement <2 x ptr> %39, ptr %i.de, i64 1
  %41 = insertelement <2 x ptr> poison, ptr %scevgep49.a, i64 0
  %42 = insertelement <2 x ptr> %41, ptr %scevgep50, i64 1
  %43 = insertelement <2 x ptr> poison, ptr %scevgep50, i64 0
  %44 = insertelement <2 x ptr> %43, ptr %scevgep, i64 1
  %i.ef = sub nsw i64 %wide.trip.count218, %.pre-phi ; 7 uses
  %min.iters.check = icmp ult i64 %i.ef, 8        ; 3 uses
  %n.vec183 = and i64 %i.ef, -8                   ; 3 uses
  %i.eg = add nsw i64 %.pre-phi, %n.vec183
  %i.eh = getelementptr [12 x i8], ptr %7, i64 %.pre-phi
  %cmp.n199 = icmp eq i64 %i.ef, %n.vec183
  %bound0132.a = icmp ult ptr %scevgep128, %scevgep53
  %bound1133.a = icmp ult ptr %i.db, %scevgep127
  %found.conflict134.a = and i1 %bound0132.a, %bound1133.a
  %n.vec140 = and i64 %i.ef, -8                   ; 3 uses
  %i.ei = add nsw i64 %.pre-phi, %n.vec140
  %broadcast.splatinsert141 = insertelement <8 x i64> poison, i64 %.pre-phi, i64 0
  %broadcast.splat142 = shufflevector <8 x i64> %broadcast.splatinsert141, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction143 = add nsw <8 x i64> %broadcast.splat142, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n168 = icmp eq i64 %i.ef, %n.vec140
  %i.ej = add nsw i64 %wide.trip.count218, -1
  %45 = icmp ult <2 x ptr> %40, %42
  %46 = icmp ult <2 x ptr> %38, %44
  %47 = and <2 x i1> %46, %45
  %48 = bitcast <2 x i1> %47 to i2
  %49 = icmp ne i2 %48, 0
  %n.vec = and i64 %i.ef, -8                      ; 3 uses
  %i.ek = add nsw i64 %.pre-phi, %n.vec
  %broadcast.splatinsert77 = insertelement <8 x ptr> poison, ptr %i.db, i64 0
  %broadcast.splat78 = shufflevector <8 x ptr> %broadcast.splatinsert77, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert79 = insertelement <8 x ptr> poison, ptr %i.dc, i64 0
  %broadcast.splat80 = shufflevector <8 x ptr> %broadcast.splatinsert79, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert81 = insertelement <8 x i64> poison, i64 %.pre-phi, i64 0
  %broadcast.splat82 = shufflevector <8 x i64> %broadcast.splatinsert81, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat82, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val = load i32, ptr %i.el, align 8, !tbaa !240
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 172
  %.val125 = load i32, ptr %i.em, align 4, !tbaa !240
  %i.en = load i32, ptr %i.b, align 4, !tbaa !240
  %i.eo = mul nsw i32 %i.en, %.val
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !240
  %i.er = add nsw i32 %i.eo, %i.eq
  %i.es = mul nsw i32 %i.er, %.val125
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !240
  %i.ev = add nsw i32 %i.es, %i.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %i.ev

bb.e:                                             ; preds = %.loopexit131, %.critedge
  %indvar = phi i64 [ 0, %.loopexit131 ], [ %indvar.next, %.critedge ] ; 7 uses
  %indvars.iv210 = phi i64 [ 2, %.loopexit131 ], [ %indvars.iv.next211, %.critedge ] ; 16 uses
  %.lcssa169173 = phi float [ %i.cs, %.loopexit131 ], [ %.lcssa168, %.critedge ] ; 3 uses
  %i.ew = phi <2 x float> [ %i.ct, %.loopexit131 ], [ %i.wz, %.critedge ] ; 3 uses
  %i.ex = mul nsw i64 %indvar, -12
  %i.ey = getelementptr i8, ptr %6, i64 %i.ex
  %scevgep385 = getelementptr i8, ptr %i.ey, i64 36
  %i.ez = mul nsw i64 %indvar, -12
  %i.fa = getelementptr i8, ptr %6, i64 %i.ez
  %scevgep335 = getelementptr i8, ptr %i.fa, i64 36
  %i.fb = mul nsw i64 %indvar, -12
  %i.fc = getelementptr i8, ptr %6, i64 %i.fb     ; 2 uses
  %i.fd = insertelement <2 x ptr> %i.dr, ptr %i.fc, i64 1
  %i.fe = getelementptr i8, <2 x ptr> %i.fd, <2 x i64> <i64 0, i64 36>
  %scevgep235 = getelementptr i8, ptr %i.fc, i64 36
  %i.ff = mul nsw i64 %indvar, -12
  %i.fg = getelementptr i8, ptr %6, i64 %i.ff
  %scevgep175 = getelementptr i8, ptr %i.fg, i64 36
  %i.fh = mul nsw i64 %indvar, -12
  %i.fi = getelementptr i8, ptr %6, i64 %i.fh
  %scevgep125 = getelementptr i8, ptr %i.fi, i64 36
  %i.fj = mul nsw i64 %indvar, -12
  %i.fk = getelementptr i8, ptr %6, i64 %i.fj
  %scevgep48 = getelementptr i8, ptr %i.fk, i64 36 ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv210
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !250 ; 5 uses
  %i.fn = icmp slt i64 %indvars.iv210, %i.dk
  br i1 %i.fn, label %bb.f, label %.loopexit127

bb.f:                                             ; preds = %bb.e
  %i.fo = load i8, ptr %i.cx, align 1, !tbaa !141, !range !142, !noundef !143
  %i.fp = trunc nuw i8 %i.fo to i1
  %i.fq = icmp eq i64 %indvars.iv210, 0
  %i.fr = and i1 %i.fq, %i.fp                     ; 8 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv210
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !240
  %.not = icmp eq i32 %i.ft, 0
  br i1 %.not, label %.loopexit129, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv210
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !240
  %i.fw = icmp sgt i32 %i.fv, 1
  br i1 %i.fw, label %.preheader128, label %.loopexit129

.preheader128:                                    ; preds = %bb.g
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv210 ; 2 uses
  %i.fx = icmp samesign ult i64 %indvars.iv210, 2
  br i1 %i.fx, label %.lr.ph144.peel, label %.loopexit129

.lr.ph144.peel:                                   ; preds = %.preheader128
  %indvars.iv.next213.peel = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next213.peel
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !250
  %gep.peel = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next213.peel
  %i.ga = load float, ptr %gep.peel, align 4, !tbaa !250
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.ga, float %i.fm) ; 2 uses
  %i.gc = icmp eq i64 %indvars.iv210, 0
  br i1 %i.gc, label %.loopexit129.loopexit.loopexit, label %.loopexit129

.loopexit129.loopexit.loopexit:                   ; preds = %.lr.ph144.peel
  %i.gd = load float, ptr %9, align 4, !tbaa !250
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 24
  %i.ge = load float, ptr %gep, align 4, !tbaa !250
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.ge, float %i.gb)
  br label %.loopexit129

.loopexit129:                                     ; preds = %.lr.ph144.peel, %.loopexit129.loopexit.loopexit, %.preheader128, %bb.g, %bb.f
  %.1 = phi float [ %i.fm, %bb.f ], [ %i.fm, %bb.g ], [ %i.fm, %.preheader128 ], [ %i.gb, %.lr.ph144.peel ], [ %i.gf, %.loopexit129.loopexit.loopexit ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [12 x i8], ptr %6, i64 %indvars.iv210 ; 41 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv210 ; 3 uses
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !250 ; 2 uses
  %i.gj = fcmp ult float %.1, %i.gi
  br i1 %i.gj, label %.preheader, label %.lr.ph152

.lr.ph152:                                        ; preds = %.loopexit129
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 4 ; 6 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 15 uses
  %i.gm = insertelement <4 x ptr> %i.dt, ptr %i.gg, i64 1
  %50 = shufflevector <4 x ptr> %i.gm, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.gn = shufflevector <2 x ptr> %i.fe, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %bound0389 = icmp ult ptr %scevgep338, %scevgep385
  %bound1390 = icmp ult ptr %i.gg, %scevgep337
  %found.conflict391 = and i1 %bound0389, %bound1390
  %bound0345 = icmp ult ptr %scevgep338, %scevgep335
  %bound1346 = icmp ult ptr %i.gg, %scevgep337
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx348 = or i1 %found.conflict347, %found.conflict344.a
  %51 = icmp ult <4 x ptr> %50, %14
  %52 = insertelement <4 x ptr> %i.gn, ptr %scevgep234, i64 3
  %53 = shufflevector <4 x ptr> %52, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.go = icmp ult <4 x ptr> %13, %53
  %i.gp = and <4 x i1> %i.go, %51
  %bound0260 = icmp ult ptr %scevgep237, %scevgep235
  %bound1261 = icmp ult ptr %i.gg, %scevgep236
  %found.conflict262 = and i1 %bound0260, %bound1261
  %i.gq = bitcast <4 x i1> %i.gp to i4
  %i.gr = icmp ne i4 %i.gq, 0
  %op.rdx414 = or i1 %i.gr, %found.conflict262
  %op.rdx415 = or i1 %op.rdx414, %27
  %broadcast.splatinsert282 = insertelement <8 x i1> poison, i1 %i.fr, i64 0
  %broadcast.splat283 = shufflevector <8 x i1> %broadcast.splatinsert282, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %bb.h

.loopexit126:                                     ; preds = %.lr.ph147.split.split.prol.loopexit, %.lr.ph147.split.split, %.lr.ph147.split.split.us.prol.loopexit, %.lr.ph147.split.split.us, %bb.l, %middle.block408, %middle.block377, %middle.block321, %bb.j
  %i.gs = load float, ptr %i.gh, align 4, !tbaa !250 ; 2 uses
  %i.gt = fcmp ult float %i.hg, %i.gs
  br i1 %i.gt, label %..preheader_crit_edge, label %bb.h, !llvm.loop !396

..preheader_crit_edge:                            ; preds = %.loopexit126
  store <2 x float> %i.hq, ptr %i.cz, align 4, !tbaa !250
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.loopexit129
  %.lcssa = phi float [ %i.hi, %..preheader_crit_edge ], [ %.lcssa169173, %.loopexit129 ] ; 3 uses
  %.2.lcssa = phi float [ %i.hg, %..preheader_crit_edge ], [ %.1, %.loopexit129 ] ; 3 uses
  %i.gu = phi <2 x float> [ %i.hq, %..preheader_crit_edge ], [ %i.ew, %.loopexit129 ] ; 2 uses
  store float %.lcssa, ptr %i.a, align 4
  %i.gv = fcmp olt float %.2.lcssa, 0.000000e+00
  br i1 %i.gv, label %.lr.ph165, label %.loopexit127

.lr.ph165:                                        ; preds = %.preheader
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gg, i64 4 ; 6 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 15 uses
  %54 = insertelement <4 x ptr> %29, ptr %i.gg, i64 1
  %55 = shufflevector <4 x ptr> %54, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %56 = insertelement <4 x ptr> %i.ee, ptr %scevgep48, i64 1
  %bound0179 = icmp ult ptr %scevgep128, %scevgep175
  %bound1180 = icmp ult ptr %i.gg, %scevgep127
  %found.conflict181 = and i1 %bound0179, %bound1180
  %bound0135 = icmp ult ptr %scevgep128, %scevgep125
  %bound1136 = icmp ult ptr %i.gg, %scevgep127
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %found.conflict137, %found.conflict134.a
  %i.gy = icmp ult <4 x ptr> %55, %33
  %i.gz = icmp ult <4 x ptr> %i.ed, %56
  %i.ha = and <4 x i1> %i.gz, %i.gy
  %bound069 = icmp ult ptr %scevgep51, %scevgep48
  %bound170 = icmp ult ptr %i.gg, %scevgep50
  %found.conflict71 = and i1 %bound069, %bound170
  %i.hb = bitcast <4 x i1> %i.ha to i4
  %i.hc = icmp ne i4 %i.hb, 0
  %op.rdx411 = or i1 %i.hc, %found.conflict71
  %op.rdx412 = or i1 %op.rdx411, %49
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %i.fr, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph152, %.loopexit126
  %i.hd = phi float [ %i.gi, %.lr.ph152 ], [ %i.gs, %.loopexit126 ]
  %.2151 = phi float [ %.1, %.lr.ph152 ], [ %i.hg, %.loopexit126 ]
  %i.he = phi float [ %.lcssa169173, %.lr.ph152 ], [ %i.hi, %.loopexit126 ]
  %i.hf = phi <2 x float> [ %i.ew, %.lr.ph152 ], [ %i.hq, %.loopexit126 ]
  %i.hg = fsub float %.2151, %i.hd                ; 3 uses
  %i.hh = load float, ptr %i.gg, align 4, !tbaa !250
  %i.hi = fsub float %i.he, %i.hh                 ; 2 uses
  %i.hj = load <2 x float>, ptr %i.gk, align 4, !tbaa !250
  %i.hk = fsub <2 x float> %i.hf, %i.hj           ; 2 uses
  br i1 %i.fr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.hl = load float, ptr %i.db, align 4, !tbaa !250
  %i.hm = load float, ptr %i.dc, align 4, !tbaa !250
  %i.hn = insertelement <2 x float> poison, float %i.hl, i64 0
  %i.ho = insertelement <2 x float> %i.hn, float %i.hm, i64 1
  %i.hp = fsub <2 x float> %i.ho, %i.hk
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.hq = phi <2 x float> [ %i.hp, %bb.i ], [ %i.hk, %bb.h ] ; 3 uses
  br i1 %i.dd, label %.lr.ph147, label %.loopexit126

.lr.ph147:                                        ; preds = %bb.j
  br i1 %i.g, label %.lr.ph147.split.us.preheader, label %.lr.ph147.split

.lr.ph147.split.us.preheader:                     ; preds = %.lr.ph147
  %brmerge = select i1 %min.iters.check239, i1 true, i1 %op.rdx415
  br i1 %brmerge, label %.lr.ph147.split.us.preheader426, label %vector.ph268

vector.ph268:                                     ; preds = %.lr.ph147.split.us.preheader
  %i.hr = load float, ptr %i.gg, align 4, !tbaa !250, !alias.scope !441
  %broadcast.splatinsert299 = insertelement <8 x float> poison, float %i.hr, i64 0
  %broadcast.splat300 = shufflevector <8 x float> %broadcast.splatinsert299, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.hs = load float, ptr %i.gk, align 4, !tbaa !250, !alias.scope !441
  %broadcast.splatinsert302 = insertelement <8 x float> poison, float %i.hs, i64 0
  %broadcast.splat303 = shufflevector <8 x float> %broadcast.splatinsert302, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ht = load float, ptr %i.gl, align 4, !tbaa !250, !alias.scope !441
  %broadcast.splatinsert305 = insertelement <8 x float> poison, float %i.ht, i64 0
  %broadcast.splat306 = shufflevector <8 x float> %broadcast.splatinsert305, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.hu = load float, ptr %i.de, align 4, !tbaa !250, !alias.scope !442
  %.scalar = fneg float %i.hu
  %i.hv = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.hw = shufflevector <8 x float> %i.hv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hx = load float, ptr %i.df, align 4, !tbaa !250, !alias.scope !442
  %.scalar416 = fneg float %i.hx
  %i.hy = insertelement <8 x float> poison, float %.scalar416, i64 0
  %i.hz = shufflevector <8 x float> %i.hy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ia = load float, ptr %i.dg, align 4, !tbaa !250, !alias.scope !442
  %.scalar417 = fneg float %i.ia
  %i.ib = insertelement <8 x float> poison, float %.scalar417, i64 0
  %i.ic = shufflevector <8 x float> %i.ib, <8 x float> poison, <8 x i32> zeroinitializer
  %i.id = load float, ptr %i.dh, align 4, !tbaa !250, !alias.scope !442
  %.scalar418 = fneg float %i.id
  %i.ie = insertelement <8 x float> poison, float %.scalar418, i64 0
  %i.if = shufflevector <8 x float> %i.ie, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ig = load float, ptr %i.di, align 4, !tbaa !250, !alias.scope !442
  %.scalar419 = fneg float %i.ig
  %i.ih = insertelement <8 x float> poison, float %.scalar419, i64 0
  %i.ii = shufflevector <8 x float> %i.ih, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ij = load float, ptr %i.dj, align 4, !tbaa !250, !alias.scope !442
  %.scalar420 = fneg float %i.ij
  %i.ik = insertelement <8 x float> poison, float %.scalar420, i64 0
  %i.il = shufflevector <8 x float> %i.ik, <8 x float> poison, <8 x i32> zeroinitializer
  %wide.masked.gather315 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat285, <8 x i1> %broadcast.splat283, <8 x float> poison), !tbaa !250, !alias.scope !443
  %wide.masked.gather317 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat287, <8 x i1> %broadcast.splat283, <8 x float> poison), !tbaa !250, !alias.scope !443
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph268
  %index292 = phi i64 [ 0, %vector.ph268 ], [ %index.next319, %vector.body291 ]
  %vec.ind293 = phi <8 x i64> [ %induction290, %vector.ph268 ], [ %vec.ind.next320, %vector.body291 ] ; 3 uses
  %wide.gep294 = getelementptr inbounds [12 x i8], ptr %7, <8 x i64> %vec.ind293 ; 3 uses
  %i.im = extractelement <8 x ptr> %wide.gep294, i64 0 ; 2 uses
  %wide.vec295 = load <24 x float>, ptr %i.im, align 4, !tbaa !250, !alias.scope !444, !noalias !445 ; 3 uses
  %strided.vec296 = shufflevector <24 x float> %wide.vec295, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec297 = shufflevector <24 x float> %wide.vec295, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec298 = shufflevector <24 x float> %wide.vec295, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.in = fsub <8 x float> %strided.vec296, %broadcast.splat300
  %wide.gep301 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep294, i64 4 ; 2 uses
  %i.io = fsub <8 x float> %strided.vec297, %broadcast.splat303
  %wide.gep304 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep294, i64 8 ; 2 uses
  %i.ip = fsub <8 x float> %strided.vec298, %broadcast.splat306
  %i.iq = shufflevector <8 x float> %i.in, <8 x float> %i.io, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ir = shufflevector <8 x float> %i.ip, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec307 = shufflevector <16 x float> %i.iq, <16 x float> %i.ir, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec307, ptr %i.im, align 4, !tbaa !250, !alias.scope !444, !noalias !445
  %wide.gep308 = getelementptr inbounds [12 x i8], ptr %8, <8 x i64> %vec.ind293 ; 4 uses
  %i.is = extractelement <8 x ptr> %wide.gep308, i64 0 ; 2 uses
  %wide.vec309 = load <24 x float>, ptr %i.is, align 4, !tbaa !250, !alias.scope !446, !noalias !447 ; 3 uses
  %strided.vec310 = shufflevector <24 x float> %wide.vec309, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec311 = shufflevector <24 x float> %wide.vec309, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec312 = shufflevector <24 x float> %wide.vec309, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.it = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hw, <8 x float> %broadcast.splat300, <8 x float> %strided.vec310) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.it, <8 x ptr> align 4 %wide.gep308, <8 x i1> splat (i1 true)), !tbaa !250, !alias.scope !446, !noalias !447
  %i.iu = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hz, <8 x float> %broadcast.splat303, <8 x float> %i.it) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.iu, <8 x ptr> align 4 %wide.gep308, <8 x i1> splat (i1 true)), !tbaa !250, !alias.scope !446, !noalias !447
  %wide.gep313 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep308, i64 4
  %i.iv = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ic, <8 x float> %broadcast.splat303, <8 x float> %strided.vec311) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.iv, <8 x ptr> align 4 %wide.gep313, <8 x i1> splat (i1 true)), !tbaa !250, !alias.scope !446, !noalias !447
  %i.iw = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.if, <8 x float> %broadcast.splat306, <8 x float> %i.iu)
  %i.ix = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ii, <8 x float> %broadcast.splat306, <8 x float> %i.iv)
  %i.iy = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.il, <8 x float> %broadcast.splat306, <8 x float> %strided.vec312)
  %i.iz = shufflevector <8 x float> %i.iw, <8 x float> %i.ix, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ja = shufflevector <8 x float> %i.iy, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec314 = shufflevector <16 x float> %i.iz, <16 x float> %i.ja, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec314, ptr %i.is, align 4, !tbaa !250, !alias.scope !446, !noalias !447
  %wide.masked.gather316 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep301, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !250, !alias.scope !444, !noalias !445
  %i.jb = fsub <8 x float> %wide.masked.gather315, %wide.masked.gather316
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jb, <8 x ptr> align 4 %wide.gep301, <8 x i1> %broadcast.splat283), !tbaa !250, !alias.scope !444, !noalias !445
  %wide.masked.gather318 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep304, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !250, !alias.scope !444, !noalias !445
  %i.jc = fsub <8 x float> %wide.masked.gather317, %wide.masked.gather318
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jc, <8 x ptr> align 4 %wide.gep304, <8 x i1> %broadcast.splat283), !tbaa !250, !alias.scope !444, !noalias !445
  %index.next319 = add nuw i64 %index292, 8       ; 2 uses
  %vec.ind.next320 = add nsw <8 x i64> %vec.ind293, splat (i64 8)
  %i.jd = icmp eq i64 %index.next319, %n.vec269
  br i1 %i.jd, label %middle.block321, label %vector.body291, !llvm.loop !403

middle.block321:                                  ; preds = %vector.body291
  br i1 %cmp.n322, label %.loopexit126, label %.lr.ph147.split.us.preheader426

.lr.ph147.split.us.preheader426:                  ; preds = %.lr.ph147.split.us.preheader, %middle.block321
  %indvars.iv225.ph = phi i64 [ %i.ec, %middle.block321 ], [ %.pre-phi, %.lr.ph147.split.us.preheader ]
  br label %.lr.ph147.split.us

.lr.ph147.split.us:                               ; preds = %.lr.ph147.split.us.preheader426, %bb.l
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %bb.l ], [ %indvars.iv225.ph, %.lr.ph147.split.us.preheader426 ] ; 3 uses
  %i.je = getelementptr inbounds [12 x i8], ptr %7, i64 %indvars.iv225 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 4 uses
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !250
  %i.jh = load float, ptr %i.gl, align 4, !tbaa !250
  %i.ji = fsub float %i.jg, %i.jh
  %i.jj = load <2 x float>, ptr %i.je, align 4, !tbaa !250
  %i.jk = load <2 x float>, ptr %i.gg, align 4, !tbaa !250
  %i.jl = fsub <2 x float> %i.jj, %i.jk
  store <2 x float> %i.jl, ptr %i.je, align 4, !tbaa !250
  store float %i.ji, ptr %i.jf, align 4, !tbaa !250
  %i.jm = getelementptr inbounds [12 x i8], ptr %8, i64 %indvars.iv225 ; 6 uses
  %i.jn = load float, ptr %i.de, align 4, !tbaa !250
  %i.jo = load float, ptr %i.gg, align 4, !tbaa !250
  %i.jp = load float, ptr %i.jm, align 4, !tbaa !250
  %i.jq = fneg float %i.jn
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.jq, float %i.jo, float %i.jp) ; 2 uses
  store float %i.jr, ptr %i.jm, align 4, !tbaa !250
  %i.js = load float, ptr %i.df, align 4, !tbaa !250
  %i.jt = load float, ptr %i.gk, align 4, !tbaa !250
  %i.ju = fneg float %i.js
  %i.jv = tail call float @llvm.fmuladd.f32(float %i.ju, float %i.jt, float %i.jr) ; 2 uses
  store float %i.jv, ptr %i.jm, align 4, !tbaa !250
  %i.jw = load float, ptr %i.dg, align 4, !tbaa !250
  %i.jx = load float, ptr %i.gk, align 4, !tbaa !250
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jm, i64 4 ; 3 uses
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !250
  %i.ka = fneg float %i.jw
  %i.kb = tail call float @llvm.fmuladd.f32(float %i.ka, float %i.jx, float %i.jz) ; 2 uses
  store float %i.kb, ptr %i.jy, align 4, !tbaa !250
  %i.kc = load float, ptr %i.dh, align 4, !tbaa !250
  %i.kd = load float, ptr %i.gl, align 4, !tbaa !250
  %i.ke = fneg float %i.kc
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.ke, float %i.kd, float %i.jv)
  store float %i.kf, ptr %i.jm, align 4, !tbaa !250
  %i.kg = load float, ptr %i.di, align 4, !tbaa !250
  %i.kh = load float, ptr %i.gl, align 4, !tbaa !250
  %i.ki = fneg float %i.kg
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.ki, float %i.kh, float %i.kb)
  store float %i.kj, ptr %i.jy, align 4, !tbaa !250
  %i.kk = load float, ptr %i.dj, align 4, !tbaa !250
  %i.kl = load float, ptr %i.gl, align 4, !tbaa !250
  %i.km = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.kn = load float, ptr %i.km, align 4, !tbaa !250
  %i.ko = fneg float %i.kk
  %i.kp = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.kl, float %i.kn)
  store float %i.kp, ptr %i.km, align 4, !tbaa !250
  br i1 %i.fr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph147.split.us
  %i.kq = getelementptr inbounds nuw i8, ptr %i.je, i64 4 ; 2 uses
  %i.kr = load float, ptr %i.db, align 4, !tbaa !250
  %i.ks = load float, ptr %i.kq, align 4, !tbaa !250
  %i.kt = fsub float %i.kr, %i.ks
  store float %i.kt, ptr %i.kq, align 4, !tbaa !250
  %i.ku = load float, ptr %i.dc, align 4, !tbaa !250
  %i.kv = load float, ptr %i.jf, align 4, !tbaa !250
  %i.kw = fsub float %i.ku, %i.kv
  store float %i.kw, ptr %i.jf, align 4, !tbaa !250
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph147.split.us
  %indvars.iv.next226 = add nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count228
  br i1 %exitcond229.not, label %.loopexit126, label %.lr.ph147.split.us, !llvm.loop !404

.lr.ph147.split:                                  ; preds = %.lr.ph147
  br i1 %i.fr, label %.lr.ph147.split.split.us.preheader, label %.lr.ph147.split.split.preheader

.lr.ph147.split.split.preheader:                  ; preds = %.lr.ph147.split
end_hunk_0
begin_hunk_1_@llvm.masked.gather.v8f32.v8p0
!245 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !244, i64 0, !244, i64 8, !244, i64 16}
!246 = !{!245, !244, i64 0}
!247 = !{!245, !244, i64 8}
!248 = !{!245, !244, i64 16}
!249 = !{!94, !12, i64 0}
!250 = !{!22, !22, i64 0}
!251 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!252 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!253 = !{!32, !7, i64 0}
!254 = distinct !{!254, i1 true, !"_ZL24getAtomGroupDistributionRKN3gmx8MDLoggerERK10gmx_mtop_tPA3_KfRK11gmx_ddbox_tPA3_fSD_P12gmx_domdec_t"}
!255 = distinct !{!255, !254, !"_ZL24getAtomGroupDistributionRKN3gmx8MDLoggerERK10gmx_mtop_tPA3_KfRK11gmx_ddbox_tPA3_fSD_P12gmx_domdec_t: argument 0"}
!256 = distinct !{!256, !152, !153, !154}
!257 = distinct !{!257, !152, !153, !154}
!258 = distinct !{!258, !152, !154, !153}
!259 = distinct !{!259, !152}
!260 = distinct !{!260, !152}
!261 = distinct !{!261, !152}
!262 = distinct !{!262, !152}
!263 = distinct !{!263, !242}
!264 = distinct !{null}
!265 = distinct !{!265, !152}
!266 = distinct !{!266, !152}
!267 = distinct !{!267, !152}
!268 = distinct !{!268, !152, !153, !154}
!269 = distinct !{!269, !152, !153, !154}
!270 = distinct !{!270, !242}
!271 = distinct !{!271, !152, !153, !154}
!272 = distinct !{!272, !242}
!273 = distinct !{!273, !152, !153}
!274 = distinct !{!274, !152}
!275 = distinct !{!275, !152, !153}
!276 = distinct !{!276, !152, !153, !154}
!277 = distinct !{!277, !242}
!278 = distinct !{!278, !152}
!279 = distinct !{!279, !152, !153}
!280 = !{!50, !49, i64 0}
!281 = !{!255}
!282 = !{!238, !10, i64 504}
!283 = !{!"p2 omnipotent char", !220, i64 0}
!284 = !{!"_ZTSNSt12_Vector_baseI19InteractionFunctionSaIS0_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!285 = !{!"_ZTSNSt12_Vector_baseI19InteractionFunctionSaIS0_EE12_Vector_implE", !284, i64 0}
!286 = !{!"_ZTSSt12_Vector_baseI19InteractionFunctionSaIS0_EE", !285, i64 0}
!287 = !{!"_ZTSSt6vectorI19InteractionFunctionSaIS0_EE", !286, i64 0}
!288 = !{!"p1 _ZTS9t_iparams", !11, i64 0}
!289 = !{!"_ZTSNSt12_Vector_baseI9t_iparamsSaIS0_EE17_Vector_impl_dataE", !288, i64 0, !288, i64 8, !288, i64 16}
!290 = !{!"_ZTSNSt12_Vector_baseI9t_iparamsSaIS0_EE12_Vector_implE", !289, i64 0}
!291 = !{!"_ZTSSt12_Vector_baseI9t_iparamsSaIS0_EE", !290, i64 0}
!292 = !{!"_ZTSSt6vectorI9t_iparamsSaIS0_EE", !291, i64 0}
!293 = !{!"p1 _ZTS14gmx_cmapdata_t", !11, i64 0}
!294 = !{!"_ZTSNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE17_Vector_impl_dataE", !293, i64 0, !293, i64 8, !293, i64 16}
!295 = !{!"_ZTSNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE12_Vector_implE", !294, i64 0}
!296 = !{!"_ZTSSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE", !295, i64 0}
!297 = !{!"_ZTSSt6vectorI14gmx_cmapdata_tSaIS0_EE", !296, i64 0}
!298 = !{!"_ZTS10gmx_cmap_t", !7, i64 0, !297, i64 8}
!299 = !{!"_ZTS14gmx_ffparams_t", !7, i64 0, !287, i64 8, !292, i64 32, !237, i64 56, !22, i64 64, !298, i64 72}
!300 = !{!"p1 _ZTS13gmx_moltype_t", !11, i64 0}
!301 = !{!"_ZTSNSt12_Vector_baseI13gmx_moltype_tSaIS0_EE17_Vector_impl_dataE", !300, i64 0, !300, i64 8, !300, i64 16}
!302 = !{!"_ZTSNSt12_Vector_baseI13gmx_moltype_tSaIS0_EE12_Vector_implE", !301, i64 0}
!303 = !{!"_ZTSSt12_Vector_baseI13gmx_moltype_tSaIS0_EE", !302, i64 0}
!304 = !{!"_ZTSSt6vectorI13gmx_moltype_tSaIS0_EE", !303, i64 0}
!305 = !{!"p1 _ZTS14gmx_molblock_t", !11, i64 0}
!306 = !{!"_ZTSNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE17_Vector_impl_dataE", !305, i64 0, !305, i64 8, !305, i64 16}
!307 = !{!"_ZTSNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE12_Vector_implE", !306, i64 0}
!308 = !{!"_ZTSSt12_Vector_baseI14gmx_molblock_tSaIS0_EE", !307, i64 0}
!309 = !{!"_ZTSSt6vectorI14gmx_molblock_tSaIS0_EE", !308, i64 0}
!310 = !{!"p1 _ZTSN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEE", !11, i64 0}
!311 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEELb0EE", !310, i64 0}
!312 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EEE", !311, i64 0}
!313 = !{!"_ZTSSt5tupleIJPN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EEE", !312, i64 0}
!314 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EE", !313, i64 0}
!315 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_ELb1ELb1EE", !314, i64 0}
!316 = !{!"_ZTSSt10unique_ptrIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EE", !315, i64 0}
!317 = !{!"_ZTSN3gmx16EnumerationArrayI23SimulationAtomGroupTypeSt6vectorIiSaIiEELS1_10EEE", !6, i64 0}
!318 = !{!"any p3 pointer", !220, i64 0}
!319 = !{!"p3 omnipotent char", !318, i64 0}
!320 = !{!"_ZTSNSt12_Vector_baseIPPcSaIS1_EE17_Vector_impl_dataE", !319, i64 0, !319, i64 8, !319, i64 16}
!321 = !{!"_ZTSNSt12_Vector_baseIPPcSaIS1_EE12_Vector_implE", !320, i64 0}
!322 = !{!"_ZTSSt12_Vector_baseIPPcSaIS1_EE", !321, i64 0}
!323 = !{!"_ZTSSt6vectorIPPcSaIS1_EE", !322, i64 0}
!324 = !{!"_ZTSN3gmx16EnumerationArrayI23SimulationAtomGroupTypeSt6vectorIhSaIhEELS1_10EEE", !6, i64 0}
!325 = !{!"_ZTS16SimulationGroups", !317, i64 0, !323, i64 240, !324, i64 264}
!326 = !{!"p1 _ZTS8t_symbuf", !11, i64 0}
!327 = !{!"_ZTS8t_symtab", !7, i64 0, !326, i64 8}
!328 = !{!"p1 _ZTS20MoleculeBlockIndices", !11, i64 0}
!329 = !{!"_ZTSNSt12_Vector_baseI20MoleculeBlockIndicesSaIS0_EE17_Vector_impl_dataE", !328, i64 0, !328, i64 8, !328, i64 16}
!330 = !{!"_ZTSNSt12_Vector_baseI20MoleculeBlockIndicesSaIS0_EE12_Vector_implE", !329, i64 0}
!331 = !{!"_ZTSSt12_Vector_baseI20MoleculeBlockIndicesSaIS0_EE", !330, i64 0}
!332 = !{!"_ZTSSt6vectorI20MoleculeBlockIndicesSaIS0_EE", !331, i64 0}
!333 = !{!"_ZTS10gmx_mtop_t", !283, i64 0, !299, i64 8, !304, i64 112, !309, i64 136, !10, i64 160, !316, i64 168, !7, i64 176, !325, i64 184, !327, i64 688, !10, i64 704, !16, i64 712, !332, i64 736, !7, i64 760, !7, i64 764}
!334 = !{!333, !7, i64 176}
!335 = !{!305, !305, i64 0}
!336 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !239, i64 0}
!337 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !336, i64 0}
!338 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !337, i64 0}
!339 = !{!"_ZTS14gmx_molblock_t", !7, i64 0, !7, i64 4, !338, i64 8, !338, i64 32}
!340 = !{!339, !7, i64 0}
!341 = !{!339, !7, i64 4}
!342 = !{!"p1 _ZTSN3gmx10ILogTargetE", !11, i64 0}
!343 = !{!"_ZTSN3gmx14LogLevelHelperE", !342, i64 0}
!344 = !{!343, !342, i64 0}
!345 = !{!"p1 omnipotent char", !11, i64 0}
!346 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !345, i64 0}
!347 = !{!346, !345, i64 0}
!348 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !346, i64 0, !25, i64 8, !6, i64 16}
!349 = !{!348, !25, i64 8}
!350 = !{!"vtable pointer", !5, i64 0}
!351 = !{!350, !350, i64 0}
!352 = !{!348, !345, i64 0}
!353 = !{!140, !7, i64 888}
!354 = !{!238, !7, i64 1040}
!355 = !{!196, !195, i64 16}
!356 = !{!12, !12, i64 0}
!357 = !{!10, !10, i64 0}
!358 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!359 = !{!358, !358, i64 0}
!360 = !{!"_ZTSN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypefLS1_7EEE", !6, i64 0}
!361 = !{!"p1 double", !11, i64 0}
!362 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !361, i64 0, !361, i64 8, !361, i64 16}
!363 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !362, i64 0}
!364 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !363, i64 0}
!365 = !{!"_ZTSSt6vectorIdSaIdEE", !364, i64 0}
!366 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS3_NS1_9AllocatorIS3_NS1_20HostAllocationPolicyEEEEEE", !49, i64 0}
!367 = !{!"_ZTSN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEEE", !132, i64 0, !366, i64 32}
!368 = !{!"_ZTS11ekinstate_t", !10, i64 0, !7, i64 4, !17, i64 8, !17, i64 16, !17, i64 24, !6, i64 32, !365, i64 72, !365, i64 96, !365, i64 120, !22, i64 144, !22, i64 148, !10, i64 152}
!369 = !{!"_ZTS9history_t", !22, i64 0, !21, i64 8, !22, i64 32, !21, i64 40}
!370 = !{!"p1 _ZTS12df_history_t", !11, i64 0}
!371 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!372 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !371, i64 0}
!373 = !{!"_ZTSSt12__shared_ptrI12df_history_tLN9__gnu_cxx12_Lock_policyE2EE", !370, i64 0, !372, i64 8}
!374 = !{!"_ZTSSt10shared_ptrI12df_history_tE", !373, i64 0}
!375 = !{!"p1 _ZTSN3gmx10AwhHistoryE", !11, i64 0}
!376 = !{!"_ZTSSt12__shared_ptrIN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EE", !375, i64 0, !372, i64 8}
!377 = !{!"_ZTSSt10shared_ptrIN3gmx10AwhHistoryEE", !376, i64 0}
!378 = !{!"_ZTS7t_state", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !360, i64 24, !6, i64 52, !6, i64 88, !6, i64 124, !6, i64 160, !6, i64 196, !6, i64 232, !365, i64 272, !365, i64 296, !365, i64 320, !365, i64 344, !365, i64 368, !237, i64 392, !22, i64 400, !22, i64 404, !367, i64 408, !367, i64 448, !367, i64 488, !368, i64 528, !369, i64 688, !374, i64 752, !377, i64 768, !7, i64 784, !7, i64 788, !16, i64 792, !365, i64 816}
!379 = !{!378, !7, i64 16}
!380 = !{!378, !7, i64 20}
!381 = !{!373, !370, i64 0}
!382 = !{!378, !7, i64 8}
!383 = !{!362, !361, i64 0}
!384 = !{!237, !237, i64 0}
!385 = !{!"branch_weights", i32 4, i32 12}
!386 = !{!378, !7, i64 12}
!387 = !{!378, !237, i64 392}
!388 = !{!378, !7, i64 4}
!389 = distinct !{!389, !152, !153, !154}
!390 = distinct !{!390, !152, !153, !154}
!391 = distinct !{!391, !152, !154, !153}
!392 = !{!94, !12, i64 8}
!393 = !{!94, !12, i64 16}
!394 = distinct !{!394, !242}
!395 = distinct !{!395, !152}
!396 = distinct !{!396, !152}
!397 = distinct !{!397, i1 false, !"LVerDomain"}
!398 = distinct !{!398, !397}
!399 = distinct !{!399, !397}
!400 = distinct !{!400, !397}
!401 = distinct !{!401, !397}
!402 = distinct !{!402, !397}
!403 = distinct !{!403, !152, !153, !154}
!404 = distinct !{!404, !152, !153}
!405 = distinct !{!405, i1 false, !"LVerDomain"}
!406 = distinct !{!406, !405}
!407 = distinct !{!407, !405}
!408 = distinct !{!408, !152, !153, !154}
!409 = distinct !{!409, !242}
!410 = distinct !{!410, i1 false, !"LVerDomain"}
!411 = distinct !{!411, !410}
!412 = distinct !{!412, !410}
!413 = distinct !{!413, !410}
!414 = distinct !{!414, !152, !153, !154}
!415 = distinct !{!415, !152, !153}
!416 = distinct !{!416, !152, !153}
!417 = distinct !{!417, !152}
!418 = distinct !{!418, i1 false, !"LVerDomain"}
!419 = distinct !{!419, !418}
!420 = distinct !{!420, !418}
!421 = distinct !{!421, !418}
!422 = distinct !{!422, !418}
!423 = distinct !{!423, !418}
!424 = distinct !{!424, !152, !153, !154}
!425 = distinct !{!425, !152, !153}
!426 = distinct !{!426, i1 false, !"LVerDomain"}
!427 = distinct !{!427, !426}
!428 = distinct !{!428, !426}
!429 = distinct !{!429, !152, !153, !154}
!430 = distinct !{!430, !242}
!431 = distinct !{!431, i1 false, !"LVerDomain"}
!432 = distinct !{!432, !431}
!433 = distinct !{!433, !431}
!434 = distinct !{!434, !431}
!435 = distinct !{!435, !152, !153, !154}
!436 = distinct !{!436, !152, !153}
!437 = distinct !{!437, !152, !153}
!438 = distinct !{!438, !152}
!439 = distinct !{!439, !152}
!440 = !{!238, !10, i64 558}
!441 = !{!398}
!442 = !{!399}
!443 = !{!400}
!444 = !{!401}
!445 = !{!402, !398, !400, !399}
!446 = !{!402}
!447 = !{!398, !400, !399}
!448 = !{!406}
!449 = !{!407}
!450 = !{!411}
!451 = !{!412}
!452 = !{!413}
!453 = !{!411, !412}
!454 = !{!419}
!455 = !{!420}
!456 = !{!421}
!457 = !{!422}
!458 = !{!423, !419, !421, !420}
!459 = !{!423}
!460 = !{!419, !421, !420}
!461 = !{!427}
!462 = !{!428}
!463 = !{!432}
!464 = !{!433}
!465 = !{!434}
!466 = !{!432, !433}
!467 = !{!32, !22, i64 80}
!468 = !{!25, !25, i64 0}
!469 = !{!17, !17, i64 0}
!470 = !{i64 16, i64 8, !468, i64 24, i64 8, !468, i64 32, i64 8, !469}
!471 = distinct !{!471, i1 true, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!472 = distinct !{!472, !471, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!473 = distinct !{!473, !471, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!474 = distinct !{!474, !152}
!475 = distinct !{!475, !152}
!476 = distinct !{!476, !152}
!477 = !{i64 0, i64 12, !243}
!478 = !{!473, !472}
!479 = !{!45, !37, i64 0}
!480 = !{!234, !234, i64 0}
!481 = !{!239, !49, i64 0}
!482 = !{!148, !12, i64 0}
!483 = !{!18, !17, i64 16}
end_hunk_1
