Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFPQ?download=true
inline.NumInlined: 3008
inline.NumDeleted: 509
loop-unroll.NumRuntimeUnrolled: 239
loop-unroll.NumUnrolled: 239
begin_hunk_0_@_ZN5faissL17compute_residualsEPKNS_5IndexElPKfPKl:bb.a
  store ptr %i.o, ptr %0, align 8, !tbaa !41
  %i.p = icmp sgt i64 %2, 1000
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 6, ptr nonnull @_ZN5faissL17compute_residualsEPKNS_5IndexElPKfPKl.omp_outlined, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.a, ptr nonnull %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @1, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !198
  call void @_ZN5faissL17compute_residualsEPKNS_5IndexElPKfPKl.omp_outlined(ptr nonnull %i.f, ptr nonnull poison, ptr %i.b, ptr %i.d, ptr %0, ptr %i.e, ptr %i.a, ptr %i.c) #16
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @1, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  ret void
}

declare void @_ZNK5faiss16ProductQuantizer13compute_codesEPKfPhm(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

declare noundef i64 @_ZNK5faiss15Level1Quantizer16coarse_code_sizeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare void @_ZNK5faiss15Level1Quantizer13encode_listnoElPh(ptr noundef nonnull align 8 dereferenceable(88), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN5faissL17compute_residualsEPKNS_5IndexElPKfPKl.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 0, ptr %i.a, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.g, ptr %i.b, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i64 1, ptr %i.c, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i32 0, ptr %i.d, align 4, !tbaa !198
  %i.h = load i32, ptr %0, align 4, !tbaa !198    ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !39
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !39
  %i.k = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %.not20 = icmp sgt i64 %i.k, %i.j
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.021 = phi i64 [ %i.ae, %bb.e ], [ %i.k, %bb.b ] ; 5 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !176
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.021
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39   ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %4, align 8, !tbaa !41
  %i.q = load i64, ptr %5, align 8, !tbaa !39     ; 2 uses
  %i.r = mul i64 %i.q, %.021
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r
  %i.t = shl i64 %i.q, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 0, i64 %i.t, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %6, align 8, !tbaa !257    ; 2 uses
  %i.v = load ptr, ptr %7, align 8, !tbaa !41
  %i.w = load i64, ptr %5, align 8, !tbaa !39
  %i.x = mul i64 %i.w, %.021                      ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.x
  %i.z = load ptr, ptr %4, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.x
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(36) %i.u, ptr noundef %i.y, ptr noundef %i.aa, i64 noundef %i.n)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = add nsw i64 %.021, 1
  %i.af = load i64, ptr %i.b, align 8, !tbaa !39
  %.not.not = icmp slt i64 %.021, %i.af
  br i1 %.not.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.g:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #35
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #16

; Function Attrs: nounwind
declare !callback !259 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #16

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK5faiss10IndexIVFPQ9sa_decodeElPKhPf.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #22 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !87   ; 3 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp slt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #33
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = shl nuw nsw i64 %i.g, 2
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #34
          to label %.noexc27 unwind label %.loopexit.split-lp ; 5 uses

.noexc27:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.g ; 2 uses
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !88
  %i.l = add nsw i64 %i.g, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc27
  %i.n = getelementptr i8, ptr %i.j, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !88
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc27, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9.0 = phi ptr [ %i.k, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc27 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.028.0 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc27 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %i.o = load i64, ptr %3, align 8, !tbaa !39     ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !198   ; 3 uses
  br i1 %i.p, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.q = add nsw i64 %i.o, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 0, ptr %i.a, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.q, ptr %i.b, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i64 1, ptr %i.c, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i32 0, ptr %i.d, align 4, !tbaa !198
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %.pre, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.r = load i64, ptr %i.b, align 8, !tbaa !39
  %i.s = call i64 @llvm.smin.i64(i64 %i.r, i64 %i.q) ; 2 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !39
  %i.t = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %.not33 = icmp sgt i64 %i.t, %i.s
  br i1 %.not33, label %._crit_edge, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 272
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph35, %.loopexit
  %.02634 = phi i64 [ %i.t, %.lr.ph35 ], [ %i.cg, %.loopexit ] ; 5 uses
  %i.y = shl i64 %.02634, 2
  %i.z = load ptr, ptr %4, align 8, !tbaa !40
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !73
  %i.ab = load i64, ptr %5, align 8, !tbaa !39
  %i.ac = add i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, %.02634
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad ; 2 uses
  %i.af = invoke noundef i64 @_ZNK5faiss15Level1Quantizer13decode_listnoEPKh(ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef %i.ae)
          to label %bb.f unwind label %.loopexit31

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %6, align 8, !tbaa !41    ; 2 uses
  %i.ah = load i32, ptr %i.e, align 8, !tbaa !87
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = mul nsw i64 %.02634, %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.aj ; 8 uses
  %i.al = load i64, ptr %5, align 8, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.al
  invoke void @_ZNK5faiss16ProductQuantizer6decodeEPKhPf(ptr noundef nonnull align 8 dereferenceable(224) %i.w, ptr noundef %i.am, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit31

bb.g:                                             ; preds = %bb.f
  %i.an = load i8, ptr %i.x, align 8, !tbaa !69, !range !70, !noundef !71
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.v, align 8, !tbaa !72  ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(36) %i.ap, i64 noundef %i.af, ptr noundef %.sroa.028.0)
          to label %.preheader unwind label %.loopexit31

.preheader:                                       ; preds = %bb.h
  %i.at = load i32, ptr %i.e, align 8, !tbaa !87  ; 3 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.at to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.at, 8
  br i1 %min.iters.check, label %.lr.ph.preheader45, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.av = mul i64 %i.y, %i.ai
  %i.aw = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ag, i64 %i.av
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.aw
  %scevgep41 = getelementptr i8, ptr %.sroa.028.0, i64 %i.aw
  %bound0 = icmp ult ptr %i.ak, %scevgep41
  %bound1 = icmp ult ptr %.sroa.028.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader45, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <4 x float>, ptr %i.ay, align 4, !tbaa !88, !alias.scope !2886
  %wide.load42 = load <4 x float>, ptr %i.az, align 4, !tbaa !88, !alias.scope !2886
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %wide.load43 = load <4 x float>, ptr %i.ba, align 4, !tbaa !88, !alias.scope !2887, !noalias !2886
  %wide.load44 = load <4 x float>, ptr %i.bb, align 4, !tbaa !88, !alias.scope !2887, !noalias !2886
  %i.bc = fadd <4 x float> %wide.load, %wide.load43
  %i.bd = fadd <4 x float> %wide.load42, %wide.load44
  store <4 x float> %i.bc, ptr %i.ba, align 4, !tbaa !88, !alias.scope !2887, !noalias !2886
  store <4 x float> %i.bd, ptr %i.bb, align 4, !tbaa !88, !alias.scope !2887, !noalias !2886
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !2883

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader45

.lr.ph.preheader45:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader45, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader45 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader45 ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %indvars.iv.prol
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !88
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.prol ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !88
  %i.bj = fadd float %i.bg, %i.bi
  store float %i.bj, ptr %i.bh, align 4, !tbaa !88
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !2884

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader45
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader45 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bk = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %indvars.iv
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !88
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !88
  %i.bq = fadd float %i.bn, %i.bp
  store float %i.bq, ptr %i.bo, align 4, !tbaa !88
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %indvars.iv.next
  %i.bs = load float, ptr %i.br, align 4, !tbaa !88
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !88
  %i.bv = fadd float %i.bs, %i.bu
  store float %i.bv, ptr %i.bt, align 4, !tbaa !88
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %indvars.iv.next.1
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !88
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.1 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !88
  %i.ca = fadd float %i.bx, %i.bz
  store float %i.ca, ptr %i.by, align 4, !tbaa !88
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.028.0, i64 %indvars.iv.next.2
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !88
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.2 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !88
  %i.cf = fadd float %i.cc, %i.ce
  store float %i.cf, ptr %i.cd, align 4, !tbaa !88
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !2885

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader, %bb.g
  %i.cg = add nsw i64 %.02634, 1
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !39
  %.not.not = icmp slt i64 %.02634, %i.ch
  br i1 %.not.not, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %.pre)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  call void @__kmpc_barrier(ptr nonnull @3, i32 %.pre)
  %.not.i.i.i = icmp eq ptr %.sroa.028.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = ptrtoint ptr %.sroa.9.0 to i64
  %i.cj = ptrtoint ptr %.sroa.028.0 to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.028.0, i64 noundef %i.ck) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  ret void

.loopexit31:                                      ; preds = %bb.e, %bb.f, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.b, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit31
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit31 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cl = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.cl) #35
  unreachable
}

declare noundef i64 @_ZNK5faiss15Level1Quantizer13decode_listnoEPKh(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #1

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #15

declare void @_ZN5faiss17InterruptCallback5checkEv() local_unnamed_addr #1

declare void @_ZN5faiss9DirectMap13check_can_addEPKl(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #1

declare noundef double @_ZN5faiss12getmillisecsEv() local_unnamed_addr #1

declare void @_ZN5faiss12DirectMapAddC1ERNS_9DirectMapEmPKl(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(88), i64 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss10IndexIVFPQ10add_core_oElPKfPKlPfS4_Pv.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr noundef %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11) #22 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca [1 x ptr], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 0, ptr %i.a, align 8, !tbaa !39
  %i.c = tail call i32 @omp_get_num_threads()
  %i.d = tail call i32 @omp_get_thread_num()      ; 2 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !39
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %bb.a
  %i.g = sext i32 %i.c to i64
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 168
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 280
  %i.n = icmp eq i32 %i.d, 0
  br label %bb.b

._crit_edge:                                      ; preds = %bb.n, %bb.a
  store ptr %i.a, ptr %i.b, align 8
  %i.o = load i32, ptr %0, align 4, !tbaa !198    ; 2 uses
  %i.p = call i32 @__kmpc_reduce_nowait(ptr nonnull @4, i32 %i.o, i32 1, i64 8, ptr nonnull %i.b, ptr nonnull @_ZN5faiss10IndexIVFPQ10add_core_oElPKfPKlPfS4_Pv.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.p, label %bb.q [
    i32 1, label %bb.o
    i32 2, label %bb.p
  ]

bb.b:                                             ; preds = %.lr.ph51, %bb.n
  %i.q = phi i64 [ 0, %.lr.ph51 ], [ %i.co, %bb.n ] ; 4 uses
  %.04150 = phi i64 [ 0, %.lr.ph51 ], [ %i.cp, %bb.n ] ; 10 uses
  %i.r = shl i64 %.04150, 2
  %i.s = load ptr, ptr %3, align 8, !tbaa !176
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.04150
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39   ; 4 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5faiss12DirectMapAdd3addEmlm(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef %.04150, i64 noundef -1, i64 noundef 0)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.w = add i64 %i.q, 1                          ; 3 uses
  store i64 %i.w, ptr %i.a, align 8, !tbaa !39
  %i.x = load ptr, ptr %6, align 8, !tbaa !41     ; 2 uses
  %.not48 = icmp eq ptr %i.x, null
  br i1 %.not48, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.l, align 8, !tbaa !87
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = mul nsw i64 %.04150, %i.z
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.aa
  %i.ac = shl nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ab, i8 0, i64 %i.ac, i1 false)
  br label %bb.n

bb.g:                                             ; preds = %bb.b
  %i.ad = srem i64 %i.u, %i.g
  %.not = icmp eq i64 %i.ad, %i.h
  br i1 %.not, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %8, align 8, !tbaa !176   ; 2 uses
  %.not46 = icmp eq ptr %i.ae, null
  br i1 %.not46, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.04150
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !39
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.i, align 8, !tbaa !256
  %i.ai = add nsw i64 %i.ah, %.04150
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = phi i64 [ %i.ag, %bb.i ], [ %i.ai, %bb.j ]
  %i.ak = load ptr, ptr %9, align 8, !tbaa !40
  %i.al = load i64, ptr %i.j, align 8, !tbaa !73
  %i.am = mul i64 %i.al, %.04150
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !86  ; 2 uses
  %i.ap = load ptr, ptr %10, align 8, !tbaa !255
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(25) %i.ao, i64 noundef %i.u, i64 noundef %i.aj, ptr noundef %i.an, ptr noundef %i.ap)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %6, align 8, !tbaa !41    ; 3 uses
  %.not47 = icmp eq ptr %i.au, null
  br i1 %.not47, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = load i32, ptr %i.l, align 8, !tbaa !87
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = mul nsw i64 %.04150, %i.aw              ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ax ; 8 uses
  %i.az = load ptr, ptr %11, align 8, !tbaa !41   ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %i.ax ; 7 uses
  invoke void @_ZNK5faiss16ProductQuantizer6decodeEPKhPf(ptr noundef nonnull align 8 dereferenceable(224) %i.m, ptr noundef %i.an, ptr noundef nonnull %i.ay)
          to label %.preheader unwind label %bb.r

.preheader:                                       ; preds = %bb.m
  %i.bb = load i32, ptr %i.l, align 8, !tbaa !87  ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.bb to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.bb, 8
  br i1 %min.iters.check, label %.lr.ph.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.bd = mul i64 %i.r, %i.aw
  %i.be = shl nuw nsw i64 %wide.trip.count, 2
  %i.bf = add i64 %i.bd, %i.be                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.au, i64 %i.bf
  %scevgep58 = getelementptr i8, ptr %i.az, i64 %i.bf
  %bound0 = icmp ult ptr %i.ay, %scevgep58
  %bound1 = icmp ult ptr %i.ba, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <4 x float>, ptr %i.bg, align 4, !tbaa !88, !alias.scope !2895
end_hunk_0
