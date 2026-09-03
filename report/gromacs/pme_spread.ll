Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_spread?download=true
inline.NumInlined: 325
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb:bb.a
  %wide.load86 = load <8 x float>, ptr %i.lx, align 4, !tbaa !134, !alias.scope !252
  %wide.load87 = load <8 x float>, ptr %i.ly, align 4, !tbaa !134, !alias.scope !252
  %wide.load88 = load <8 x float>, ptr %i.lz, align 4, !tbaa !134, !alias.scope !252
  %wide.load89 = load <8 x float>, ptr %i.ma, align 4, !tbaa !134, !alias.scope !252
  %i.mb = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %index85 ; 5 uses
  %i.mc = getelementptr i8, ptr %i.mb, i64 32     ; 2 uses
  %i.md = getelementptr i8, ptr %i.mb, i64 64     ; 2 uses
  %i.me = getelementptr i8, ptr %i.mb, i64 96     ; 2 uses
  %wide.load90 = load <8 x float>, ptr %i.mb, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  %wide.load91 = load <8 x float>, ptr %i.mc, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  %wide.load92 = load <8 x float>, ptr %i.md, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  %wide.load93 = load <8 x float>, ptr %i.me, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  %i.mf = fadd <8 x float> %wide.load86, %wide.load90
  %i.mg = fadd <8 x float> %wide.load87, %wide.load91
  %i.mh = fadd <8 x float> %wide.load88, %wide.load92
  %i.mi = fadd <8 x float> %wide.load89, %wide.load93
  store <8 x float> %i.mf, ptr %i.mb, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  store <8 x float> %i.mg, ptr %i.mc, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  store <8 x float> %i.mh, ptr %i.md, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  store <8 x float> %i.mi, ptr %i.me, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  %index.next94 = add nuw i64 %index85, 32        ; 2 uses
  %i.mj = icmp eq i64 %index.next94, %n.vec83
  br i1 %i.mj, label %middle.block95, label %vector.body84, !llvm.loop !219

middle.block95:                                   ; preds = %vector.body84
  br i1 %cmp.n96, label %._crit_edge28.i, label %vec.epilog.iter.check100

vec.epilog.iter.check100:                         ; preds = %middle.block95
  br i1 %min.epilog.iters.check101, label %vec.epilog.scalar.ph99.preheader, label %vec.epilog.ph102, !prof !138

vec.epilog.ph102:                                 ; preds = %vector.main.loop.iter.check80, %vec.epilog.iter.check100
  %vec.epilog.resume.val97 = phi i64 [ %n.vec83, %vec.epilog.iter.check100 ], [ 0, %vector.main.loop.iter.check80 ]
  br label %vec.epilog.vector.body104

vec.epilog.vector.body104:                        ; preds = %vec.epilog.vector.body104, %vec.epilog.ph102
  %index105 = phi i64 [ %vec.epilog.resume.val97, %vec.epilog.ph102 ], [ %index.next108, %vec.epilog.vector.body104 ] ; 3 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %index105
  %wide.load106 = load <4 x float>, ptr %i.mk, align 4, !tbaa !134, !alias.scope !252
  %i.ml = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %index105 ; 2 uses
  %wide.load107 = load <4 x float>, ptr %i.ml, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  %i.mm = fadd <4 x float> %wide.load106, %wide.load107
  store <4 x float> %i.mm, ptr %i.ml, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  %index.next108 = add nuw i64 %index105, 4       ; 2 uses
  %i.mn = icmp eq i64 %index.next108, %n.vec103
  br i1 %i.mn, label %vec.epilog.middle.block109, label %vec.epilog.vector.body104, !llvm.loop !220

vec.epilog.middle.block109:                       ; preds = %vec.epilog.vector.body104
  br i1 %cmp.n110, label %._crit_edge28.i, label %vec.epilog.scalar.ph99.preheader

vec.epilog.scalar.ph99.preheader:                 ; preds = %iter.check98, %vec.epilog.iter.check100, %vec.epilog.middle.block109
  %indvars.iv69.i.ph = phi i64 [ 0, %iter.check98 ], [ %n.vec103, %vec.epilog.middle.block109 ], [ %n.vec83, %vec.epilog.iter.check100 ] ; 4 uses
  %i.mo = sub nsw i64 %i.la, %indvars.iv69.i.ph
  %xtraiter115 = and i64 %i.mo, 7                 ; 2 uses
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %vec.epilog.scalar.ph99.prol.loopexit, label %vec.epilog.scalar.ph99.prol

vec.epilog.scalar.ph99.prol:                      ; preds = %vec.epilog.scalar.ph99.preheader, %vec.epilog.scalar.ph99.prol
  %indvars.iv69.i.prol = phi i64 [ %indvars.iv.next70.i.prol, %vec.epilog.scalar.ph99.prol ], [ %indvars.iv69.i.ph, %vec.epilog.scalar.ph99.preheader ] ; 3 uses
  %prol.iter117 = phi i64 [ %prol.iter117.next, %vec.epilog.scalar.ph99.prol ], [ 0, %vec.epilog.scalar.ph99.preheader ]
  %gep103.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv69.i.prol
  %i.mp = load float, ptr %gep103.i.prol, align 4, !tbaa !134
  %gep105.i.prol = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv69.i.prol ; 2 uses
  %i.mq = load float, ptr %gep105.i.prol, align 4, !tbaa !134
  %i.mr = fadd float %i.mp, %i.mq
  store float %i.mr, ptr %gep105.i.prol, align 4, !tbaa !134
  %indvars.iv.next70.i.prol = add nuw nsw i64 %indvars.iv69.i.prol, 1 ; 2 uses
  %prol.iter117.next = add i64 %prol.iter117, 1   ; 2 uses
  %prol.iter117.cmp.not = icmp eq i64 %prol.iter117.next, %xtraiter115
  br i1 %prol.iter117.cmp.not, label %vec.epilog.scalar.ph99.prol.loopexit, label %vec.epilog.scalar.ph99.prol, !llvm.loop !221

vec.epilog.scalar.ph99.prol.loopexit:             ; preds = %vec.epilog.scalar.ph99.prol, %vec.epilog.scalar.ph99.preheader
  %indvars.iv69.i.unr = phi i64 [ %indvars.iv69.i.ph, %vec.epilog.scalar.ph99.preheader ], [ %indvars.iv.next70.i.prol, %vec.epilog.scalar.ph99.prol ]
  %i.ms = sub nsw i64 %indvars.iv69.i.ph, %i.la
  %i.mt = icmp ugt i64 %i.ms, -8
  br i1 %i.mt, label %._crit_edge28.i, label %vec.epilog.scalar.ph99

vec.epilog.scalar.ph99:                           ; preds = %vec.epilog.scalar.ph99.prol.loopexit, %vec.epilog.scalar.ph99
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i.7, %vec.epilog.scalar.ph99 ], [ %indvars.iv69.i.unr, %vec.epilog.scalar.ph99.prol.loopexit ] ; 10 uses
  %gep103.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv69.i
  %i.mu = load float, ptr %gep103.i, align 4, !tbaa !134
  %gep105.i = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv69.i ; 2 uses
  %i.mv = load float, ptr %gep105.i, align 4, !tbaa !134
  %i.mw = fadd float %i.mu, %i.mv
  store float %i.mw, ptr %gep105.i, align 4, !tbaa !134
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %gep103.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv.next70.i
  %i.mx = load float, ptr %gep103.i.1, align 4, !tbaa !134
  %gep105.i.1 = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv.next70.i ; 2 uses
  %i.my = load float, ptr %gep105.i.1, align 4, !tbaa !134
  %i.mz = fadd float %i.mx, %i.my
  store float %i.mz, ptr %gep105.i.1, align 4, !tbaa !134
  %indvars.iv.next70.i.1 = add nuw nsw i64 %indvars.iv69.i, 2 ; 2 uses
  %gep103.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv.next70.i.1
  %i.na = load float, ptr %gep103.i.2, align 4, !tbaa !134
  %gep105.i.2 = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv.next70.i.1 ; 2 uses
  %i.nb = load float, ptr %gep105.i.2, align 4, !tbaa !134
  %i.nc = fadd float %i.na, %i.nb
  store float %i.nc, ptr %gep105.i.2, align 4, !tbaa !134
  %indvars.iv.next70.i.2 = add nuw nsw i64 %indvars.iv69.i, 3 ; 2 uses
  %gep103.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv.next70.i.2
  %i.nd = load float, ptr %gep103.i.3, align 4, !tbaa !134
  %gep105.i.3 = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv.next70.i.2 ; 2 uses
  %i.ne = load float, ptr %gep105.i.3, align 4, !tbaa !134
  %i.nf = fadd float %i.nd, %i.ne
  store float %i.nf, ptr %gep105.i.3, align 4, !tbaa !134
  %indvars.iv.next70.i.3 = add nuw nsw i64 %indvars.iv69.i, 4 ; 2 uses
  %gep103.i.4 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv.next70.i.3
  %i.ng = load float, ptr %gep103.i.4, align 4, !tbaa !134
  %gep105.i.4 = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv.next70.i.3 ; 2 uses
  %i.nh = load float, ptr %gep105.i.4, align 4, !tbaa !134
  %i.ni = fadd float %i.ng, %i.nh
  store float %i.ni, ptr %gep105.i.4, align 4, !tbaa !134
  %indvars.iv.next70.i.4 = add nuw nsw i64 %indvars.iv69.i, 5 ; 2 uses
  %gep103.i.5 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv.next70.i.4
  %i.nj = load float, ptr %gep103.i.5, align 4, !tbaa !134
  %gep105.i.5 = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv.next70.i.4 ; 2 uses
  %i.nk = load float, ptr %gep105.i.5, align 4, !tbaa !134
  %i.nl = fadd float %i.nj, %i.nk
  store float %i.nl, ptr %gep105.i.5, align 4, !tbaa !134
  %indvars.iv.next70.i.5 = add nuw nsw i64 %indvars.iv69.i, 6 ; 2 uses
  %gep103.i.6 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv.next70.i.5
  %i.nm = load float, ptr %gep103.i.6, align 4, !tbaa !134
  %gep105.i.6 = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv.next70.i.5 ; 2 uses
  %i.nn = load float, ptr %gep105.i.6, align 4, !tbaa !134
  %i.no = fadd float %i.nm, %i.nn
  store float %i.no, ptr %gep105.i.6, align 4, !tbaa !134
  %indvars.iv.next70.i.6 = add nuw nsw i64 %indvars.iv69.i, 7 ; 2 uses
  %gep103.i.7 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv.next70.i.6
  %i.np = load float, ptr %gep103.i.7, align 4, !tbaa !134
  %gep105.i.7 = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv.next70.i.6 ; 2 uses
  %i.nq = load float, ptr %gep105.i.7, align 4, !tbaa !134
  %i.nr = fadd float %i.np, %i.nq
  store float %i.nr, ptr %gep105.i.7, align 4, !tbaa !134
  %indvars.iv.next70.i.7 = add nuw nsw i64 %indvars.iv69.i, 8 ; 2 uses
  %exitcond73.not.i.7 = icmp eq i64 %indvars.iv.next70.i.7, %i.la
  br i1 %exitcond73.not.i.7, label %._crit_edge28.i, label %vec.epilog.scalar.ph99, !llvm.loop !222

._crit_edge28.i:                                  ; preds = %vec.epilog.scalar.ph99.prol.loopexit, %vec.epilog.scalar.ph99, %vec.epilog.middle.block109, %middle.block95
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next75.i, %i.lc
  br i1 %exitcond78.not.i, label %._crit_edge31.i, label %iter.check98, !llvm.loop !223

._crit_edge31.i:                                  ; preds = %._crit_edge28.i
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, %wide.trip.count82.i
  br i1 %exitcond83.not.i, label %_ZL14sum_fftgrid_ddPK9gmx_pme_tP14PmeAndFftGrids.exit, label %.preheader.i, !llvm.loop !224

_ZL14sum_fftgrid_ddPK9gmx_pme_tP14PmeAndFftGrids.exit: ; preds = %._crit_edge31.i, %.loopexit4.i, %bb.p, %.preheader.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %_ZL14sum_fftgrid_ddPK9gmx_pme_tP14PmeAndFftGrids.exit, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !105    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !105
  %i.h = load i32, ptr %0, align 4, !tbaa !105    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !105
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !105
  %i.k = load i32, ptr %i.a, align 4, !tbaa !105  ; 2 uses
  %.not22 = icmp sgt i32 %i.k, %i.j
  br i1 %.not22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = sext i32 %i.k to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit
  %indvars.iv = phi i64 [ %i.l, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit ] ; 5 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !13     ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %6 = load i32, ptr %i.n, align 8, !tbaa !180
  %i.o = load i32, ptr %2, align 4, !tbaa !105
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %7 = trunc i64 %indvars.iv to i32
  %8 = insertelement <2 x i32> poison, i32 %7, i64 0
  %i.p = trunc i64 %indvars.iv.next to i32
  %9 = insertelement <2 x i32> %8, i32 %i.p, i64 1
  %10 = insertelement <2 x i32> poison, i32 %6, i64 0
  %11 = shufflevector <2 x i32> %10, <2 x i32> poison, <2 x i32> zeroinitializer
  %12 = mul nsw <2 x i32> %11, %9
  %13 = insertelement <2 x i32> poison, i32 %i.o, i64 0
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <2 x i32> zeroinitializer
  %15 = sdiv <2 x i32> %12, %14                   ; 2 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !11     ; 14 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !15     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.t = load i32, ptr %i.s, align 8, !tbaa !259
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 100
  %i.v = load i32, ptr %i.u, align 4, !tbaa !260
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.x = load i32, ptr %i.w, align 8, !tbaa !261
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 480
  %i.z = load float, ptr %i.y, align 8, !tbaa !134
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 492
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !134
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 496
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !134
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 504
  %i.af = load float, ptr %i.ae, align 8, !tbaa !134
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 508
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !134
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 512
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !134
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !181
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !181
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !181
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 312 ; 5 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !182
  %i.as = icmp sgt i32 %i.ar, 1                   ; 3 uses
  br i1 %i.as, label %.lr.ph.preheader.i, label %.loopexit116.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !183
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !184
  %i.ax = getelementptr inbounds nuw [56 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !186 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i
  store i32 0, ptr %i.az, align 4, !tbaa !105
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ba = load i32, ptr %i.aq, align 8, !tbaa !182
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next.i, %i.bb
  br i1 %i.bc, label %.lr.ph.i, label %.loopexit116.i, !llvm.loop !254

.loopexit116.i:                                   ; preds = %.lr.ph.i, %.lr.ph
  %.0113.i = phi ptr [ null, %.lr.ph ], [ %i.au, %.lr.ph.i ]
  %.0.i = phi ptr [ null, %.lr.ph ], [ %i.ay, %.lr.ph.i ] ; 12 uses
  %16 = extractelement <2 x i32> %15, i64 0       ; 3 uses
  %17 = extractelement <2 x i32> %15, i64 1       ; 3 uses
  %i.bd = icmp slt i32 %16, %17                   ; 2 uses
  br i1 %i.bd, label %.lr.ph119.i, label %._crit_edge.i

.lr.ph119.i:                                      ; preds = %.loopexit116.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !187
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !188
  %i.bj = sitofp i32 %i.t to float
  %i.bk = sitofp i32 %i.v to float
  %i.bl = sitofp i32 %i.x to float
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !133
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 408
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !133
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 312
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !181
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 336
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !181
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !181
  %i.bw = sext i32 %16 to i64
  %wide.trip.count.i = sext i32 %17 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph119.i
  %indvars.iv132.i = phi i64 [ %i.bw, %.lr.ph119.i ], [ %indvars.iv.next133.i, %bb.e ] ; 5 uses
  %i.bx = load i64, ptr %i.be, align 8
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds [12 x i8], ptr %i.by, i64 %indvars.iv132.i ; 3 uses
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.bg, i64 %indvars.iv132.i ; 3 uses
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.bi, i64 %indvars.iv132.i ; 3 uses
  %i.cc = load float, ptr %i.bz, align 4, !tbaa !134
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !134 ; 2 uses
  %i.cf = fmul float %i.ab, %i.ce
  %i.cg = call float @llvm.fmuladd.f32(float %i.cc, float %i.z, float %i.cf)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !134 ; 3 uses
  %i.cj = call float @llvm.fmuladd.f32(float %i.ci, float %i.af, float %i.cg)
  %i.ck = fadd float %i.cj, 2.000000e+00
  %i.cl = fmul float %i.ck, %i.bj                 ; 2 uses
  %i.cm = fmul float %i.ah, %i.ci
  %i.cn = call float @llvm.fmuladd.f32(float %i.ce, float %i.ad, float %i.cm)
  %i.co = fadd float %i.cn, 2.000000e+00
  %i.cp = fmul float %i.co, %i.bk                 ; 2 uses
  %i.cq = call float @llvm.fmuladd.f32(float %i.ci, float %i.aj, float 2.000000e+00)
  %i.cr = fmul float %i.cq, %i.bl                 ; 2 uses
  %i.cs = fptosi float %i.cl to i32               ; 2 uses
  %i.ct = fptosi float %i.cp to i32               ; 2 uses
  %i.cu = fptosi float %i.cr to i32               ; 2 uses
  %i.cv = sitofp i32 %i.cs to float
  %i.cw = fsub float %i.cl, %i.cv
  %i.cx = sext i32 %i.cs to i64                   ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !134
  %i.da = fadd float %i.cz, %i.cw
  store float %i.da, ptr %i.cb, align 4, !tbaa !134
  %i.db = sitofp i32 %i.ct to float
  %i.dc = fsub float %i.cp, %i.db
  %i.dd = sext i32 %i.ct to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !134
  %i.dg = fadd float %i.df, %i.dc
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store float %i.dg, ptr %i.dh, align 4, !tbaa !134
  %i.di = sitofp i32 %i.cu to float
  %i.dj = fsub float %i.cr, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store float %i.dj, ptr %i.dk, align 4, !tbaa !134
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cx
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !105 ; 2 uses
  store i32 %i.dm, ptr %i.ca, align 4, !tbaa !105
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.dd
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !105 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !105
  %i.dq = sext i32 %i.cu to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !105 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !105
  br i1 %i.as, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.du = sext i32 %i.dm to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !105
  %i.dx = sext i32 %i.do to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !105
  %i.ea = add nsw i32 %i.dz, %i.dw
  %i.eb = sext i32 %i.ds to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !105
  %i.ee = add nsw i32 %i.ea, %i.ed                ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %.0113.i, i64 %indvars.iv132.i
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !105
  %i.eg = sext i32 %i.ee to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !105
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !105
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next133.i = add nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next133.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !255

._crit_edge.i:                                    ; preds = %bb.e, %.loopexit116.i
  br i1 %i.as, label %.preheader.i, label %_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.ek = load i32, ptr %i.aq, align 8, !tbaa !182 ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 1
  br i1 %i.el, label %.lr.ph121.i.preheader, label %.preheader.._crit_edge122_crit_edge.i

.lr.ph121.i.preheader:                            ; preds = %.preheader.i
  %load_initial = load i32, ptr %.0.i, align 4
  br label %.lr.ph121.i

.preheader.._crit_edge122_crit_edge.i:            ; preds = %.preheader.i
  %.pre.i = sext i32 %i.ek to i64
  br label %._crit_edge122.i

.lr.ph121.i:                                      ; preds = %.lr.ph121.i.preheader, %.lr.ph121.i
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph121.i.preheader ], [ %i.eo, %.lr.ph121.i ]
  %indvars.iv135.i = phi i64 [ 1, %.lr.ph121.i.preheader ], [ %indvars.iv.next136.i, %.lr.ph121.i ] ; 2 uses
  %i.em = getelementptr [4 x i8], ptr %.0.i, i64 %indvars.iv135.i ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !105
  %i.eo = add nsw i32 %i.en, %store_forwarded     ; 2 uses
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !105
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %i.ep = load i32, ptr %i.aq, align 8, !tbaa !182
  %i.eq = sext i32 %i.ep to i64                   ; 2 uses
  %i.er = icmp slt i64 %indvars.iv.next136.i, %i.eq
  br i1 %i.er, label %.lr.ph121.i, label %._crit_edge122.i, !llvm.loop !256

._crit_edge122.i:                                 ; preds = %.lr.ph121.i, %.preheader.._crit_edge122_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.preheader.._crit_edge122_crit_edge.i ], [ %i.eq, %.lr.ph121.i ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !184
  %i.eu = getelementptr inbounds nuw [56 x i8], ptr %i.et, i64 %indvars.iv
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32 ; 2 uses
  %i.ew = getelementptr [4 x i8], ptr %.0.i, i64 %.pre-phi.i
  %i.ex = getelementptr i8, ptr %i.ew, i64 -4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !105
  %i.ez = sext i32 %i.ey to i64
  invoke void @_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i64 noundef %i.ez)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %._crit_edge122.i
  %i.fa = load i32, ptr %i.aq, align 8, !tbaa !182 ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, 1
  br i1 %i.fb, label %.lr.ph125.preheader.i, label %._crit_edge126.i

.lr.ph125.preheader.i:                            ; preds = %.noexc
  %scevgep24 = getelementptr i8, ptr %.0.i, i64 4
  %i.fc = zext nneg i32 %i.fa to i64
  %i.fd = shl nuw nsw i64 %i.fc, 2
  %i.fe = add nsw i64 %i.fd, -4
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep24, ptr nonnull align 4 %.0.i, i64 %i.fe, i1 false), !tbaa !105
  br label %._crit_edge126.i

._crit_edge126.i:                                 ; preds = %.lr.ph125.preheader.i, %.noexc
  store i32 0, ptr %.0.i, align 4, !tbaa !105
  br i1 %i.bd, label %.lr.ph129.i, label %_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit

.lr.ph129.i:                                      ; preds = %._crit_edge126.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !183 ; 5 uses
  %i.fh = load ptr, ptr %i.ev, align 8, !tbaa !183 ; 5 uses
  %i.fi = sext i32 %16 to i64                     ; 4 uses
  %wide.trip.count145.i = sext i32 %17 to i64     ; 3 uses
  %i.fj = sub nsw i64 %wide.trip.count145.i, %i.fi
  %xtraiter = and i64 %i.fj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph129.i, %.prol.preheader
  %indvars.iv142.i.prol = phi i64 [ %indvars.iv.next143.i.prol, %.prol.preheader ], [ %i.fi, %.lr.ph129.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph129.i ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv142.i.prol
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !105
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.fm ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !105 ; 2 uses
  %i.fp = add nsw i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !105
  %i.fq = sext i32 %i.fo to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fq
  %i.fs = trunc nsw i64 %indvars.iv142.i.prol to i32
  store i32 %i.fs, ptr %i.fr, align 4, !tbaa !105
  %indvars.iv.next143.i.prol = add nsw i64 %indvars.iv142.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !257

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph129.i
  %indvars.iv142.i.unr = phi i64 [ %i.fi, %.lr.ph129.i ], [ %indvars.iv.next143.i.prol, %.prol.preheader ]
  %i.ft = sub nsw i64 %i.fi, %wide.trip.count145.i
  %i.fu = icmp ugt i64 %i.ft, -4
  br i1 %i.fu, label %_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit, label %.lr.ph129.i.new

.lr.ph129.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph129.i.new
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i.3, %.lr.ph129.i.new ], [ %indvars.iv142.i.unr, %.prol.loopexit ] ; 6 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv142.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !105
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !105 ; 2 uses
  %i.ga = add nsw i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !105
  %i.gb = sext i32 %i.fz to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.gb
  %i.gd = trunc nsw i64 %indvars.iv142.i to i32
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !105
  %indvars.iv.next143.i = add nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.next143.i
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !105
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.gg ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !105 ; 2 uses
  %i.gj = add nsw i32 %i.gi, 1
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !105
  %i.gk = sext i32 %i.gi to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.gk
  %i.gm = trunc nsw i64 %indvars.iv.next143.i to i32
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !105
  %indvars.iv.next143.i.1 = add nsw i64 %indvars.iv142.i, 2 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.next143.i.1
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !105
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.gp ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !105 ; 2 uses
  %i.gs = add nsw i32 %i.gr, 1
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !105
  %i.gt = sext i32 %i.gr to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.gt
  %i.gv = trunc nsw i64 %indvars.iv.next143.i.1 to i32
  store i32 %i.gv, ptr %i.gu, align 4, !tbaa !105
  %indvars.iv.next143.i.2 = add nsw i64 %indvars.iv142.i, 3 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.next143.i.2
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !105
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.gy ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !105 ; 2 uses
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !105
  %i.hc = sext i32 %i.ha to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.hc
  %i.he = trunc nsw i64 %indvars.iv.next143.i.2 to i32
  store i32 %i.he, ptr %i.hd, align 4, !tbaa !105
  %indvars.iv.next143.i.3 = add nsw i64 %indvars.iv142.i, 4 ; 2 uses
  %exitcond146.not.i.3 = icmp eq i64 %indvars.iv.next143.i.3, %wide.trip.count145.i
  br i1 %exitcond146.not.i.3, label %_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit, label %.lr.ph129.i.new, !llvm.loop !258

_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit: ; preds = %.prol.loopexit, %.lr.ph129.i.new, %._crit_edge.i, %._crit_edge126.i
  %i.hf = load i32, ptr %i.b, align 4, !tbaa !105
  %i.hg = sext i32 %i.hf to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.hg
  br i1 %.not.not, label %.lr.ph, label %._crit_edge

bb.f:                                             ; preds = %._crit_edge122.i
  %i.hh = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0      ; 2 uses
  %i.hj = extractvalue { ptr, i32 } %i.hh, 1
  %i.hk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #3
  %i.hl = icmp eq i32 %i.hj, %i.hk
  br i1 %i.hl, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.hm = call ptr @__cxa_begin_catch(ptr %i.hi) #3
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.hm) #16
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

._crit_edge:                                      ; preds = %_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.j:                                             ; preds = %bb.g
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #17
  unreachable

bb.k:                                             ; preds = %bb.f
  call void @__clang_call_terminate(ptr %i.hi) #17
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #3 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !190 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %6, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 5 uses
  %i.b = alloca [3 x i32], align 4                ; 3 uses
  %i.c = alloca [3 x i32], align 4                ; 5 uses
  %i.d = alloca [12 x float], align 16            ; 94 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = load i32, ptr %2, align 4, !tbaa !105    ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #3
  store i32 0, ptr %i.e, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #3
  store i32 %i.k, ptr %i.f, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #3
  store i32 1, ptr %i.g, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #3
  store i32 0, ptr %i.h, align 4, !tbaa !105
  %i.l = load i32, ptr %0, align 4, !tbaa !105    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.l, i32 34, ptr nonnull %i.h, ptr nonnull %i.e, ptr nonnull %i.f, ptr nonnull %i.g, i32 1, i32 1)
  %i.m = load i32, ptr %i.f, align 4, !tbaa !105
  %i.n = call i32 @llvm.smin.i32(i32 %i.m, i32 %i.k) ; 2 uses
  store i32 %i.n, ptr %i.f, align 4, !tbaa !105
  %i.o = load i32, ptr %i.e, align 4, !tbaa !105  ; 2 uses
end_hunk_0
