Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/mvn?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4ncnn3MVN7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 3 uses
  %.not33 = icmp sgt i32 %i.k, %i.j
  br i1 %.not33, label %._crit_edge35, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !35, !noalias !74
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !74
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34, !noalias !74
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load i32, ptr %4, align 4, !tbaa !33     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = load ptr, ptr %5, align 8, !tbaa !35     ; 2 uses
  %i.t = sext i32 %i.k to i64                     ; 2 uses
  br i1 %i.r, label %.noexc.us.preheader, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.u = shl nsw i64 %i.t, 2
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.u
  %i.v = sub i32 %i.j, %i.k
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.y, i1 false), !tbaa !37
  br label %._crit_edge35

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph
  %i.z = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv39 = phi i64 [ %i.t, %.noexc.us.preheader ], [ %indvars.iv.next40, %._crit_edge.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv39
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.noexc.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.noexc.us ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.ad, %vector.body ], [ zeroinitializer, %.noexc.us ]
  %vec.phi46 = phi <4 x float> [ %i.ae, %vector.body ], [ zeroinitializer, %.noexc.us ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load = load <4 x float>, ptr %i.ab, align 4, !tbaa !37
  %wide.load47 = load <4 x float>, ptr %i.ac, align 4, !tbaa !37
  %i.ad = fadd fast <4 x float> %wide.load, %vec.phi ; 2 uses
  %i.ae = fadd fast <4 x float> %wide.load47, %vec.phi46 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.ae, %i.ad
  %i.ag = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.noexc.us ], [ %n.vec, %middle.block ]
  %.02231.us.ph = phi float [ 0.000000e+00, %.noexc.us ], [ %i.ag, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.02231.us = phi float [ %i.aj, %scalar.ph ], [ %.02231.us.ph, %scalar.ph.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !37
  %i.aj = fadd fast float %i.ai, %.02231.us       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !73

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi float [ %i.ag, %middle.block ], [ %i.aj, %scalar.ph ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv39
  store float %.lcssa, ptr %i.ak, align 4, !tbaa !37
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next40 to i32
  %exitcond42.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond42.not, label %._crit_edge35, label %.noexc.us

._crit_edge35:                                    ; preds = %._crit_edge.us, %.noexc.preheader, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge35, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #6 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !45 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn3MVN7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 3 uses
  %.not57 = icmp sgt i32 %i.k, %i.j
  br i1 %.not57, label %._crit_edge59.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !35, !noalias !86 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !86 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34, !noalias !86 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !35, !noalias !87 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !36, !noalias !87 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !34, !noalias !87 ; 3 uses
  %factor.op.mul60 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !33     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc.preheader, label %._crit_edge59.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.x = sext i32 %i.k to i64                     ; 4 uses
  %i.y = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 6 uses
  %i.z = mul i64 %i.u, %i.s                       ; 2 uses
  %i.aa = mul i64 %i.z, %i.x
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aa ; 2 uses
  %i.ab = sub i32 %i.j, %i.k
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nsw i64 %i.x, %i.ac                 ; 2 uses
  %i.ae = mul i64 %i.z, %i.ad
  %i.af = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.ae
  %scevgep70 = getelementptr i8, ptr %i.ag, i64 %i.af ; 2 uses
  %i.ah = mul i64 %i.u, %i.s                      ; 2 uses
  %i.ai = mul i64 %i.p, %i.n                      ; 3 uses
  %i.aj = mul i64 %i.ai, %i.x
  %scevgep71 = getelementptr i8, ptr %i.l, i64 %i.aj
  %i.ak = mul i64 %i.ai, %i.ad
  %i.al = getelementptr i8, ptr %i.l, i64 %i.ak
  %scevgep72 = getelementptr i8, ptr %i.al, i64 %i.af
  %scevgep73 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %min.iters.check = icmp ult i32 %i.v, 12
  %bound0 = icmp ult ptr %scevgep, %scevgep72
  %bound1 = icmp ult ptr %scevgep71, %scevgep70
  %found.conflict = and i1 %bound0, %bound1
  %i.am = or i64 %i.ai, %i.ah
  %i.an = icmp slt i64 %i.am, 0
  %i.ao = or i1 %found.conflict, %i.an
  %bound075 = icmp ult ptr %scevgep, %scevgep73
  %bound176 = icmp ult ptr %6, %scevgep70
  %found.conflict77 = and i1 %bound075, %bound176
  %stride.check78 = icmp slt i64 %i.ah, 0
  %7 = or i1 %found.conflict77, %stride.check78
  %conflict.rdx = or i1 %i.ao, %7
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %indvars.iv63 = phi i64 [ %i.x, %.noexc.preheader ], [ %indvars.iv.next64, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv63
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 6 uses
  %.reass61 = mul i64 %factor.op.mul60, %indvars.iv63
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass61 ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc
  %i.ar = load float, ptr %6, align 4, !tbaa !37, !alias.scope !88
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ar, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <4 x float>, ptr %i.as, align 4, !tbaa !37, !alias.scope !89
  %wide.load79 = load <4 x float>, ptr %i.at, align 4, !tbaa !37, !alias.scope !89
  %i.au = fsub fast <4 x float> %wide.load, %broadcast.splat
  %i.av = fsub fast <4 x float> %wide.load79, %broadcast.splat
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <4 x float> %i.au, ptr %i.aw, align 4, !tbaa !37, !alias.scope !90, !noalias !91
  store <4 x float> %i.av, ptr %i.ax, align 4, !tbaa !37, !alias.scope !90, !noalias !91
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.prol
  %i.ba = load float, ptr %i.az, align 4, !tbaa !37
  %i.bb = load float, ptr %6, align 4, !tbaa !37
  %i.bc = fsub fast float %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.prol
  store float %i.bc, ptr %i.bd, align 4, !tbaa !37
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !84

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.be = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next64 to i32
  %exitcond66.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond66.not, label %._crit_edge59.split, label %.noexc

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !37
  %i.bi = load float, ptr %6, align 4, !tbaa !37
  %i.bj = fsub fast float %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  store float %i.bj, ptr %i.bk, align 4, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !37
  %i.bn = load float, ptr %6, align 4, !tbaa !37
  %i.bo = fsub fast float %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next
  store float %i.bo, ptr %i.bp, align 4, !tbaa !37
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.1
  %i.br = load float, ptr %i.bq, align 4, !tbaa !37
  %i.bs = load float, ptr %6, align 4, !tbaa !37
  %i.bt = fsub fast float %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.1
  store float %i.bt, ptr %i.bu, align 4, !tbaa !37
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.2
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !37
  %i.bx = load float, ptr %6, align 4, !tbaa !37
  %i.by = fsub fast float %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.2
  store float %i.by, ptr %i.bz, align 4, !tbaa !37
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !85

._crit_edge59.split:                              ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge59.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn3MVN7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 3 uses
  %.not59 = icmp sgt i32 %i.k, %i.j
  br i1 %.not59, label %._crit_edge61.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !35, !noalias !102 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !102 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34, !noalias !102 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !35, !noalias !103 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !36, !noalias !103 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !34, !noalias !103 ; 3 uses
  %factor.op.mul62 = mul i64 %i.s, %i.u
  %i.v = load ptr, ptr %5, align 8, !tbaa !35
  %i.w = load i32, ptr %6, align 4, !tbaa !33     ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.noexc.preheader, label %._crit_edge61.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.y = sitofp fast i32 %i.w to float
  %i.z = sext i32 %i.k to i64                     ; 4 uses
  %i.aa = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.w to i64    ; 6 uses
  %i.ab = mul i64 %i.u, %i.s                      ; 2 uses
  %i.ac = mul i64 %i.ab, %i.z
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ac
  %i.ad = sub i32 %i.j, %i.k
  %i.ae = zext i32 %i.ad to i64
  %i.af = add nsw i64 %i.z, %i.ae                 ; 2 uses
  %i.ag = mul i64 %i.ab, %i.af
  %i.ah = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.q, i64 %i.ag
  %scevgep72 = getelementptr i8, ptr %i.ai, i64 %i.ah
  %i.aj = mul i64 %i.u, %i.s
  %i.ak = mul i64 %i.p, %i.n                      ; 3 uses
  %i.al = mul i64 %i.ak, %i.z
  %scevgep73 = getelementptr i8, ptr %i.l, i64 %i.al
  %i.am = mul i64 %i.ak, %i.af
  %i.an = getelementptr i8, ptr %i.l, i64 %i.am
  %scevgep74 = getelementptr i8, ptr %i.an, i64 %i.ah
  %i.ao = fdiv fast float 1.000000e+00, %i.y
  %min.iters.check = icmp ult i32 %i.w, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep74
  %bound1 = icmp ult ptr %scevgep73, %scevgep72
  %found.conflict = and i1 %bound0, %bound1
  %i.ap = or i64 %i.ak, %i.aj
  %i.aq = icmp slt i64 %i.ap, 0
  %i.ar = or i1 %found.conflict, %i.aq
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
end_hunk_0
