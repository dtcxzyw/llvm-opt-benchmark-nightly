Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/proposal?download=true
inline.NumInlined: 296
inline.NumDeleted: 150
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ncnn8ProposalC2Ev:bb.a
  store i64 0, ptr %i.d, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.az, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #10
  resume { ptr, i32 } %i.u
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nofpclass(nan inf) float @_ZNK4ncnn9ParamDict3getEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #8

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn8Proposal7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not199 = icmp sgt i32 %i.k, %i.j
  br i1 %.not199, label %._crit_edge201.split, label %.noexc120.lr.ph

.noexc120.lr.ph:                                  ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19, !noalias !120 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !120
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42, !noalias !120
  %factor.op.mul = mul i64 %i.n, %i.p             ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !41, !noalias !121
  %i.s = load ptr, ptr %4, align 8, !tbaa !19, !noalias !121
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !121
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !42, !noalias !121 ; 2 uses
  %factor.op.mul208 = mul i64 %i.u, %i.w
  %i.x = sext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 376
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 420
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !41
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 392
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !42
  %factor.op.mul210 = mul i64 %i.ae, %i.ac
  %i.af = load i32, ptr %6, align 4, !tbaa !45    ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  %i.ah = mul i64 %i.w, %i.x
  br i1 %i.ag, label %.noexc120.lr.ph.split, label %._crit_edge201.split

.noexc120.lr.ph.split:                            ; preds = %.noexc120.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.aj = load i32, ptr %7, align 4, !tbaa !45    ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  %i.al = sext i32 %i.aj to i64                   ; 4 uses
  %i.am = load i32, ptr %i.ai, align 8, !tbaa !37
  %i.an = sitofp fast i32 %i.am to float          ; 2 uses
  br i1 %i.ak, label %.noexc120.lr.ph.split.split, label %._crit_edge201.split

.noexc120.lr.ph.split.split:                      ; preds = %.noexc120.lr.ph.split
  %i.ao = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.ap = sext i32 %i.k to i64
  %i.aq = add nsw i32 %i.j, 1
  %wide.trip.count217 = zext nneg i32 %i.af to i64
  br label %.noexc120

.noexc120:                                        ; preds = %.noexc120.lr.ph.split.split, %._ZN4ncnn3MatD2Ev.exit_crit_edge
  %indvars.iv219 = phi i64 [ %i.ap, %.noexc120.lr.ph.split.split ], [ %indvars.iv.next220, %._ZN4ncnn3MatD2Ev.exit_crit_edge ] ; 4 uses
  %i.ar = shl nsw i64 %indvars.iv219, 2           ; 4 uses
  %.reass = mul i64 %factor.op.mul, %i.ar
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %i.at = or disjoint i64 %i.ar, 1
  %.reass203 = mul i64 %factor.op.mul, %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass203
  %i.av = or disjoint i64 %i.ar, 2
  %.reass205 = mul i64 %factor.op.mul, %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass205
  %i.ax = or disjoint i64 %i.ar, 3
  %.reass207 = mul i64 %factor.op.mul, %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass207
  %.reass209 = mul i64 %factor.op.mul208, %indvars.iv219
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass209
  %.reass211 = mul i64 %factor.op.mul210, %indvars.iv219
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 %.reass211 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load float, ptr %i.bb, align 4, !tbaa !43
  %i.be = load <2 x float>, ptr %i.ba, align 4, !tbaa !43
  %i.bf = load <2 x float>, ptr %i.bc, align 4, !tbaa !43
  %i.bg = fsub fast <2 x float> %i.bf, %i.be      ; 2 uses
  %i.bh = fmul fast <2 x float> %i.bg, splat (float 5.000000e-01)
  br label %.lr.ph

._ZN4ncnn3MatD2Ev.exit_crit_edge:                 ; preds = %._crit_edge
  %indvars.iv.next220 = add nsw i64 %indvars.iv219, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next220 to i32
  %exitcond222.not = icmp eq i32 %i.aq, %lftr.wideiv
  br i1 %exitcond222.not, label %._crit_edge201.split, label %.noexc120

.lr.ph:                                           ; preds = %.noexc120, %._crit_edge
  %indvars.iv214 = phi i64 [ 0, %.noexc120 ], [ %indvars.iv.next215, %._crit_edge ] ; 2 uses
  %.077197 = phi ptr [ %i.as, %.noexc120 ], [ %i.bl, %._crit_edge ] ; 2 uses
  %.078196 = phi ptr [ %i.au, %.noexc120 ], [ %i.bm, %._crit_edge ] ; 2 uses
  %.079195 = phi ptr [ %i.aw, %.noexc120 ], [ %i.bn, %._crit_edge ] ; 2 uses
  %.080194 = phi ptr [ %i.ay, %.noexc120 ], [ %i.bo, %._crit_edge ] ; 2 uses
  %.081193 = phi float [ %i.bd, %.noexc120 ], [ %i.bp, %._crit_edge ] ; 2 uses
  %i.bi = load float, ptr %i.ba, align 4, !tbaa !43
  %i.bj = mul nuw nsw i64 %indvars.iv214, %i.ao
  %i.bk = insertelement <4 x float> poison, float %.081193, i64 1
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.077197, i64 %i.al
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.078196, i64 %i.al
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.079195, i64 %i.al
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.080194, i64 %i.al
  %i.bp = fadd fast float %.081193, %i.an
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count217
  br i1 %exitcond218.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge, label %.lr.ph, !llvm.loop !118

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 6 uses
  %.083190 = phi float [ %i.bi, %.lr.ph ], [ %i.ct, %bb.c ] ; 2 uses
  %i.bq = add nuw nsw i64 %i.bj, %indvars.iv
  %i.br = mul i64 %i.ah, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.077197, i64 %indvars.iv
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !43
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.078196, i64 %indvars.iv
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !43
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.079195, i64 %indvars.iv
  %i.by = load float, ptr %i.bx, align 4, !tbaa !43
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.080194, i64 %indvars.iv
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !43
  %i.cb = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %i.bw, i64 1
  %i.cd = fadd fast <2 x float> %i.cc, splat (float 5.000000e-01)
  %i.ce = fmul fast <2 x float> %i.cd, %i.bg
  %i.cf = call fast float @llvm.exp.f32(float %i.by)
  %i.cg = call fast float @llvm.exp.f32(float %i.ca)
  %i.ch = shufflevector <2 x float> %i.ce, <2 x float> %i.bh, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ci = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.cj = insertelement <4 x float> %i.ci, float %i.cg, i64 1
  %i.ck = insertelement <4 x float> %i.bk, float %.083190, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.cm = fadd fast <4 x float> %i.ch, %i.cl      ; 2 uses
  %i.cn = fmul fast <4 x float> %i.ch, %i.cl      ; 2 uses
  %i.co = shufflevector <4 x float> %i.cm, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.cp = shufflevector <4 x float> %i.cn, <4 x float> %i.cm, <4 x i32> <i32 2, i32 3, i32 4, i32 5> ; 2 uses
  %i.cq = fsub fast <4 x float> %i.co, %i.cp
  %i.cr = fadd fast <4 x float> %i.co, %i.cp
  %i.cs = shufflevector <4 x float> %i.cq, <4 x float> %i.cr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.cs, ptr %i.bs, align 4, !tbaa !43
  %i.ct = fadd fast float %.083190, %i.an
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ao
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !119

._crit_edge201.split:                             ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge, %.noexc120.lr.ph, %.noexc120.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge201.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare !callback !57 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #10

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn8Proposal7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not72 = icmp sgt i32 %i.k, %i.j
  br i1 %.not72, label %._crit_edge.split, label %.noexc29.lr.ph

.noexc29.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !41, !noalias !125
  %i.n = load ptr, ptr %3, align 8, !tbaa !19, !noalias !125
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !125
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !42, !noalias !125 ; 2 uses
  %factor.op.mul = mul i64 %i.p, %i.r
  %i.s = sext i32 %i.m to i64
  %i.t = load i32, ptr %4, align 4, !tbaa !45
  %i.u = load i32, ptr %5, align 4, !tbaa !45
  %i.v = mul nsw i32 %i.u, %i.t                   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = mul i64 %i.r, %i.s
  br i1 %i.w, label %.noexc29.preheader, label %._crit_edge.split

.noexc29.preheader:                               ; preds = %.noexc29.lr.ph
  %i.y = sext i32 %i.k to i64
  %i.z = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.v to i64
  br label %.noexc29

.noexc29:                                         ; preds = %.noexc29.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge
  %indvars.iv75 = phi i64 [ %i.y, %.noexc29.preheader ], [ %indvars.iv.next76, %._ZN4ncnn3MatD2Ev.exit_crit_edge ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv75
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass
  br label %bb.c

._ZN4ncnn3MatD2Ev.exit_crit_edge:                 ; preds = %bb.c
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next76 to i32
  %exitcond78.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond78.not, label %._crit_edge.split, label %.noexc29

bb.c:                                             ; preds = %.noexc29, %bb.c
  %indvars.iv = phi i64 [ 0, %.noexc29 ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.ab = mul i64 %i.x, %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab ; 5 uses
  %i.ad = load float, ptr %6, align 4, !tbaa !43
  %i.ae = fadd fast float %i.ad, -1.000000e+00    ; 2 uses
  %i.af = load float, ptr %i.ac, align 4, !tbaa !43 ; 2 uses
  %i.ag = fcmp fast olt float %i.ae, %i.af
  %.sroa.speculated61 = select i1 %i.ag, float %i.ae, float %i.af ; 2 uses
  %i.ah = fcmp fast olt float %.sroa.speculated61, 0.000000e+00
  %.sroa.speculated57 = select i1 %i.ah, float 0.000000e+00, float %.sroa.speculated61
  store float %.sroa.speculated57, ptr %i.ac, align 4, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.aj = load float, ptr %7, align 4, !tbaa !43
  %i.ak = fadd fast float %i.aj, -1.000000e+00    ; 2 uses
  %i.al = load float, ptr %i.ai, align 4, !tbaa !43 ; 2 uses
  %i.am = fcmp fast olt float %i.ak, %i.al
  %.sroa.speculated53 = select i1 %i.am, float %i.ak, float %i.al ; 2 uses
  %i.an = fcmp fast olt float %.sroa.speculated53, 0.000000e+00
  %.sroa.speculated49 = select i1 %i.an, float 0.000000e+00, float %.sroa.speculated53
  store float %.sroa.speculated49, ptr %i.ai, align 4, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ap = load float, ptr %6, align 4, !tbaa !43
  %i.aq = fadd fast float %i.ap, -1.000000e+00    ; 2 uses
  %i.ar = load float, ptr %i.ao, align 4, !tbaa !43 ; 2 uses
  %i.as = fcmp fast olt float %i.aq, %i.ar
  %.sroa.speculated45 = select i1 %i.as, float %i.aq, float %i.ar ; 2 uses
  %i.at = fcmp fast olt float %.sroa.speculated45, 0.000000e+00
  %.sroa.speculated41 = select i1 %i.at, float 0.000000e+00, float %.sroa.speculated45
  store float %.sroa.speculated41, ptr %i.ao, align 4, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 2 uses
  %i.av = load float, ptr %7, align 4, !tbaa !43
  %i.aw = fadd fast float %i.av, -1.000000e+00    ; 2 uses
  %i.ax = load float, ptr %i.au, align 4, !tbaa !43 ; 2 uses
  %i.ay = fcmp fast olt float %i.aw, %i.ax
  %.sroa.speculated37 = select i1 %i.ay, float %i.aw, float %i.ax ; 2 uses
  %i.az = fcmp fast olt float %.sroa.speculated37, 0.000000e+00
  %.sroa.speculated = select i1 %i.az, float 0.000000e+00, float %.sroa.speculated37
  store float %.sroa.speculated, ptr %i.au, align 4, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge, label %bb.c, !llvm.loop !124

._crit_edge.split:                                ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge, %.noexc29.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL21qsort_descent_inplaceINS_4RectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #14 {
bb.a:
  %.pre59 = load ptr, ptr %1, align 8, !tbaa !54  ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.h, %bb.a
  %i.a = phi ptr [ %.pre59, %bb.a ], [ %i.ag, %bb.h ] ; 2 uses
  %i.b = phi ptr [ %.pre59, %bb.a ], [ %i.ah, %bb.h ] ; 2 uses
  %.tr45 = phi i32 [ %2, %bb.a ], [ %.038.lcssa, %bb.h ] ; 6 uses
  %i.c = add nsw i32 %.tr45, %3
  %i.d = sdiv i32 %i.c, 2
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !43 ; 2 uses
  %.not50 = icmp sgt i32 %.tr45, %3
  br i1 %.not50, label %._crit_edge, label %.preheader47

.preheader47:                                     ; preds = %tailrecurse, %bb.f
  %i.h = phi ptr [ %i.ac, %bb.f ], [ %i.a, %tailrecurse ] ; 3 uses
end_hunk_0
