Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/scale_x86_fma?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4ncnn13Scale_x86_fma15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined:bb.a
  %i.l = load i32, ptr %3, align 4, !tbaa !34
  %i.m = shl nsw i32 %.022, 3
  %i.n = add nsw i32 %i.l, %i.m
  %i.o = load ptr, ptr %4, align 8, !tbaa !39
  %i.p = sext i32 %i.n to i64                     ; 3 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load <8 x float>, ptr %i.q, align 1, !tbaa !64
  %i.s = load ptr, ptr %5, align 8, !tbaa !39
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.p
  %i.u = load <8 x float>, ptr %i.t, align 1, !tbaa !64
  %i.v = load ptr, ptr %6, align 8, !tbaa !39
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.p
  %i.x = load <8 x float>, ptr %i.w, align 1, !tbaa !64
  %i.y = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.r, <8 x float> nofpclass(nan inf) %i.u, <8 x float> nofpclass(nan inf) %i.x)
  store <8 x float> %i.y, ptr %i.q, align 1, !tbaa !64
  %i.z = add i32 %.022, 1
  %exitcond.not = icmp eq i32 %.022, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #5 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !66 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #5

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn13Scale_x86_fma15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !34     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !34
  %i.h = load i32, ptr %0, align 4, !tbaa !34     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !34
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !34
  %i.k = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %.not21 = icmp sgt i32 %i.k, %i.j
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.022 = phi i32 [ %i.z, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !34
  %i.m = shl nsw i32 %.022, 2
  %i.n = add nsw i32 %i.l, %i.m
  %i.o = load ptr, ptr %4, align 8, !tbaa !39
  %i.p = sext i32 %i.n to i64                     ; 3 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load <4 x float>, ptr %i.q, align 16, !tbaa !64
  %i.s = load ptr, ptr %5, align 8, !tbaa !39
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.p
  %i.u = load <4 x float>, ptr %i.t, align 16, !tbaa !64
  %i.v = load ptr, ptr %6, align 8, !tbaa !39
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.p
  %i.x = load <4 x float>, ptr %i.w, align 1, !tbaa !64
  %i.y = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.r, <4 x float> nofpclass(nan inf) %i.u, <4 x float> nofpclass(nan inf) %i.x)
  store <4 x float> %i.y, ptr %i.q, align 16, !tbaa !64
  %i.z = add i32 %.022, 1
  %exitcond.not = icmp eq i32 %.022, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn13Scale_x86_fma15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !34     ; 10 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !34     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.i, ptr %i.b, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !34
  %i.j = load i32, ptr %0, align 4, !tbaa !34     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !34
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 8 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !34
  %i.m = load i32, ptr %i.a, align 4, !tbaa !34   ; 12 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !39     ; 7 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !39     ; 7 uses
  %i.r = load ptr, ptr %6, align 8, !tbaa !39     ; 7 uses
  %i.s = add i32 %i.l, 1
  %i.t = sub i32 %i.s, %i.m                       ; 7 uses
  %min.iters.check = icmp ult i32 %i.t, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.u = add i32 %i.m, %i.e
  %i.v = add i32 %i.l, %i.e
  %i.w = icmp slt i32 %i.v, %i.u
  br i1 %i.w, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.x = add i32 %i.m, %i.e
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = shl nsw i64 %i.y, 2                      ; 3 uses
  %i.aa = getelementptr i8, ptr %i.p, i64 %i.z    ; 2 uses
  %i.ab = sub i32 %i.l, %i.m
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nsw i64 %i.y, %i.ac
  %i.ae = shl nsw i64 %i.ad, 2
  %i.af = add nsw i64 %i.ae, 4                    ; 3 uses
  %i.ag = getelementptr i8, ptr %i.p, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.q, i64 %i.z
  %i.ai = getelementptr i8, ptr %i.q, i64 %i.af
  %i.aj = getelementptr i8, ptr %i.r, i64 %i.z
  %i.ak = getelementptr i8, ptr %i.r, i64 %i.af
  %bound0 = icmp ult ptr %i.aa, %i.ai
  %bound1 = icmp ult ptr %i.ah, %i.ag
  %found.conflict = and i1 %bound0, %bound1
  %bound035 = icmp ult ptr %i.aa, %i.ak
  %bound136 = icmp ult ptr %i.aj, %i.ag
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx = or i1 %found.conflict, %found.conflict37
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check38 = icmp ult i32 %i.t, 32
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = and i32 %i.t, 28
  %n.vec = and i32 %i.t, -32                      ; 4 uses
  %i.am = add i32 %i.m, %n.vec
  %invariant.op = add i32 %i.m, %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i32 %index, %invariant.op
  %i.an = sext i32 %.reass to i64                 ; 3 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.an ; 5 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.ao, i64 64 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.ao, align 4, !tbaa !57, !alias.scope !85, !noalias !86
  %wide.load39 = load <8 x float>, ptr %7, align 4, !tbaa !57, !alias.scope !85, !noalias !86
  %wide.load.a = load <8 x float>, ptr %8, align 4, !tbaa !57, !alias.scope !85, !noalias !86
  %wide.load39.a = load <8 x float>, ptr %i.ap, align 4, !tbaa !57, !alias.scope !85, !noalias !86
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.an ; 4 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %10 = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %wide.load42 = load <8 x float>, ptr %i.aq, align 4, !tbaa !57, !alias.scope !87
  %wide.load43 = load <8 x float>, ptr %9, align 4, !tbaa !57, !alias.scope !87
  %wide.load40 = load <8 x float>, ptr %10, align 4, !tbaa !57, !alias.scope !87
  %wide.load41 = load <8 x float>, ptr %i.ar, align 4, !tbaa !57, !alias.scope !87
  %11 = fmul fast <8 x float> %wide.load42, %wide.load
  %12 = fmul fast <8 x float> %wide.load43, %wide.load39
  %i.as = fmul fast <8 x float> %wide.load40, %wide.load.a
  %i.at = fmul fast <8 x float> %wide.load41, %wide.load39.a
  %i.au = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.an ; 4 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %14 = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %wide.load46 = load <8 x float>, ptr %i.au, align 4, !tbaa !57, !alias.scope !88
  %wide.load47 = load <8 x float>, ptr %13, align 4, !tbaa !57, !alias.scope !88
  %wide.load42.a = load <8 x float>, ptr %14, align 4, !tbaa !57, !alias.scope !88
  %wide.load43.a = load <8 x float>, ptr %i.av, align 4, !tbaa !57, !alias.scope !88
  %15 = fadd fast <8 x float> %wide.load46, %11
  %16 = fadd fast <8 x float> %wide.load47, %12
  %i.aw = fadd fast <8 x float> %wide.load42.a, %i.as
  %i.ax = fadd fast <8 x float> %wide.load43.a, %i.at
  store <8 x float> %15, ptr %i.ao, align 4, !tbaa !57, !alias.scope !85, !noalias !86
  store <8 x float> %16, ptr %7, align 4, !tbaa !57, !alias.scope !85, !noalias !86
  store <8 x float> %i.aw, ptr %8, align 4, !tbaa !57, !alias.scope !85, !noalias !86
  store <8 x float> %i.ax, ptr %i.ap, align 4, !tbaa !57, !alias.scope !85, !noalias !86
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.ay = icmp eq i32 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.al, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !61

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i32 %i.t, -4                     ; 3 uses
  %i.az = add i32 %i.m, %n.vec44
  %invariant.op52 = add i32 %i.m, %i.e
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 2 uses
  %.reass53 = add i32 %index45, %invariant.op52
  %i.ba = sext i32 %.reass53 to i64               ; 3 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ba ; 2 uses
  %wide.load46.a = load <4 x float>, ptr %i.bb, align 4, !tbaa !57, !alias.scope !85, !noalias !86
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ba
  %wide.load47.a = load <4 x float>, ptr %i.bc, align 4, !tbaa !57, !alias.scope !87
  %i.bd = fmul fast <4 x float> %wide.load47.a, %wide.load46.a
  %i.be = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ba
  %wide.load48 = load <4 x float>, ptr %i.be, align 4, !tbaa !57, !alias.scope !88
  %i.bf = fadd fast <4 x float> %wide.load48, %i.bd
  store <4 x float> %i.bf, ptr %i.bb, align 4, !tbaa !57, !alias.scope !85, !noalias !86
  %index.next49 = add nuw i32 %index45, 4         ; 2 uses
  %i.bg = icmp eq i32 %index.next49, %n.vec44
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !83

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i32 %i.t, %n.vec44
  br i1 %cmp.n50, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.ph = phi i32 [ %i.m, %iter.check ], [ %i.m, %vector.scevcheck ], [ %i.m, %vector.memcheck ], [ %i.am, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ] ; 5 uses
  %i.bh = add i32 %i.l, %.023.ph
  %i.bi = and i32 %i.bh, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bi, 0
  br i1 %lcmp.mod.not.not, label %vec.epilog.scalar.ph.prol, label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bj = add i32 %.023.ph, %i.e
  %i.bk = sext i32 %i.bj to i64                   ; 3 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bk ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !57
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bk
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !57
  %i.bp = fmul fast float %i.bo, %i.bm
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bk
  %i.br = load float, ptr %i.bq, align 4, !tbaa !57
  %i.bs = fadd fast float %i.br, %i.bp
  store float %i.bs, ptr %i.bl, align 4, !tbaa !57
  %i.bt = add nuw i32 %.023.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.023.unr = phi i32 [ %.023.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bt, %vec.epilog.scalar.ph.prol ]
  %i.bu = icmp eq i32 %i.l, %.023.ph
  br i1 %i.bu, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.023 = phi i32 [ %i.cq, %vec.epilog.scalar.ph ], [ %.023.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.bv = add i32 %.023, %i.e
  %i.bw = sext i32 %i.bv to i64                   ; 3 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bw ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !57
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bw
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !57
  %i.cb = fmul fast float %i.ca, %i.by
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bw
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !57
  %i.ce = fadd fast float %i.cd, %i.cb
  store float %i.ce, ptr %i.bx, align 4, !tbaa !57
  %i.cf = add nuw i32 %.023, 1                    ; 2 uses
  %i.cg = add i32 %i.cf, %i.e
  %i.ch = sext i32 %i.cg to i64                   ; 3 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ch ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !57
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ch
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !57
  %i.cm = fmul fast float %i.cl, %i.cj
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ch
  %i.co = load float, ptr %i.cn, align 4, !tbaa !57
  %i.cp = fadd fast float %i.co, %i.cm
  store float %i.cp, ptr %i.ci, align 4, !tbaa !57
  %i.cq = add nuw i32 %.023, 2
  %exitcond.not.1 = icmp eq i32 %i.cf, %i.l
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !84

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #5

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn13Scale_x86_fma15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !34     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !34
  %i.h = load i32, ptr %0, align 4, !tbaa !34     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !34
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 5 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !34
  %i.k = load i32, ptr %i.a, align 4, !tbaa !34   ; 6 uses
  %.not19 = icmp sgt i32 %i.k, %i.j
  br i1 %.not19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = add i32 %i.j, %i.k
  %i.m = and i32 %i.l, 1
  %lcmp.mod.not.not = icmp eq i32 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.n = load i32, ptr %3, align 4, !tbaa !34
  %i.o = shl nsw i32 %i.k, 3
  %i.p = add nsw i32 %i.n, %i.o
  %i.q = load ptr, ptr %4, align 8, !tbaa !39
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load <8 x float>, ptr %i.s, align 1, !tbaa !64
  %i.u = load ptr, ptr %5, align 8, !tbaa !39
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.r
  %i.w = load <8 x float>, ptr %i.v, align 1, !tbaa !64
  %i.x = fmul fast <8 x float> %i.w, %i.t
  store <8 x float> %i.x, ptr %i.s, align 1, !tbaa !64
  %i.y = add i32 %i.k, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.020.unr = phi i32 [ %i.k, %.lr.ph.preheader ], [ %i.y, %.lr.ph.prol ]
  %i.z = icmp eq i32 %i.j, %i.k
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.020 = phi i32 [ %i.ax, %.lr.ph ], [ %.020.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.aa = load i32, ptr %3, align 4, !tbaa !34
  %i.ab = shl nsw i32 %.020, 3
  %i.ac = add nsw i32 %i.aa, %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !39
  %i.ae = sext i32 %i.ac to i64                   ; 2 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load <8 x float>, ptr %i.af, align 1, !tbaa !64
  %i.ah = load ptr, ptr %5, align 8, !tbaa !39
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !64
  %i.ak = fmul fast <8 x float> %i.aj, %i.ag
  store <8 x float> %i.ak, ptr %i.af, align 1, !tbaa !64
  %i.al = add i32 %.020, 1                        ; 2 uses
  %i.am = load i32, ptr %3, align 4, !tbaa !34
  %i.an = shl nsw i32 %i.al, 3
  %i.ao = add nsw i32 %i.am, %i.an
  %i.ap = load ptr, ptr %4, align 8, !tbaa !39
  %i.aq = sext i32 %i.ao to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load <8 x float>, ptr %i.ar, align 1, !tbaa !64
  %i.at = load ptr, ptr %5, align 8, !tbaa !39
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.aq
  %i.av = load <8 x float>, ptr %i.au, align 1, !tbaa !64
  %i.aw = fmul fast <8 x float> %i.av, %i.as
  store <8 x float> %i.aw, ptr %i.ar, align 1, !tbaa !64
  %i.ax = add i32 %.020, 2
  %exitcond.not.1 = icmp eq i32 %i.al, %i.j
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

end_hunk_0
begin_hunk_1_@_ZNK4ncnn13Scale_x86_fma15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined.4:bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !34
  %i.h = load i32, ptr %0, align 4, !tbaa !34     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !34
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 5 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !34
  %i.k = load i32, ptr %i.a, align 4, !tbaa !34   ; 6 uses
  %.not19 = icmp sgt i32 %i.k, %i.j
  br i1 %.not19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = add i32 %i.j, %i.k
  %i.m = and i32 %i.l, 1
  %lcmp.mod.not.not = icmp eq i32 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.n = load i32, ptr %3, align 4, !tbaa !34
  %i.o = shl nsw i32 %i.k, 2
  %i.p = add nsw i32 %i.n, %i.o
  %i.q = load ptr, ptr %4, align 8, !tbaa !39
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load <4 x float>, ptr %i.s, align 16, !tbaa !64
  %i.u = load ptr, ptr %5, align 8, !tbaa !39
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.r
  %i.w = load <4 x float>, ptr %i.v, align 16, !tbaa !64
  %i.x = fmul fast <4 x float> %i.w, %i.t
  store <4 x float> %i.x, ptr %i.s, align 16, !tbaa !64
  %i.y = add i32 %i.k, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.020.unr = phi i32 [ %i.k, %.lr.ph.preheader ], [ %i.y, %.lr.ph.prol ]
  %i.z = icmp eq i32 %i.j, %i.k
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.020 = phi i32 [ %i.ax, %.lr.ph ], [ %.020.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.aa = load i32, ptr %3, align 4, !tbaa !34
  %i.ab = shl nsw i32 %.020, 2
  %i.ac = add nsw i32 %i.aa, %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !39
  %i.ae = sext i32 %i.ac to i64                   ; 2 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load <4 x float>, ptr %i.af, align 16, !tbaa !64
  %i.ah = load ptr, ptr %5, align 8, !tbaa !39
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load <4 x float>, ptr %i.ai, align 16, !tbaa !64
  %i.ak = fmul fast <4 x float> %i.aj, %i.ag
  store <4 x float> %i.ak, ptr %i.af, align 16, !tbaa !64
  %i.al = add i32 %.020, 1                        ; 2 uses
  %i.am = load i32, ptr %3, align 4, !tbaa !34
  %i.an = shl nsw i32 %i.al, 2
  %i.ao = add nsw i32 %i.am, %i.an
  %i.ap = load ptr, ptr %4, align 8, !tbaa !39
  %i.aq = sext i32 %i.ao to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load <4 x float>, ptr %i.ar, align 16, !tbaa !64
  %i.at = load ptr, ptr %5, align 8, !tbaa !39
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.aq
  %i.av = load <4 x float>, ptr %i.au, align 16, !tbaa !64
  %i.aw = fmul fast <4 x float> %i.av, %i.as
  store <4 x float> %i.aw, ptr %i.ar, align 16, !tbaa !64
  %i.ax = add i32 %.020, 2
  %exitcond.not.1 = icmp eq i32 %i.al, %i.j
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn13Scale_x86_fma15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !34     ; 10 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !34     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.i, ptr %i.b, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !34
  %i.j = load i32, ptr %0, align 4, !tbaa !34     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !34
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 8 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !34
  %i.m = load i32, ptr %i.a, align 4, !tbaa !34   ; 12 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !39     ; 7 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !39     ; 7 uses
  %i.r = add i32 %i.l, 1
  %i.s = sub i32 %i.r, %i.m                       ; 7 uses
  %min.iters.check = icmp ult i32 %i.s, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.t = add i32 %i.m, %i.e
  %i.u = add i32 %i.l, %i.e
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.w = add i32 %i.m, %i.e
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = shl nsw i64 %i.x, 2                      ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y
  %i.aa = sub i32 %i.l, %i.m
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nsw i64 %i.x, %i.ab
  %i.ad = shl nsw i64 %i.ac, 2
  %i.ae = add nsw i64 %i.ad, 4                    ; 2 uses
  %i.af = getelementptr i8, ptr %i.p, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.y
  %i.ah = getelementptr i8, ptr %i.q, i64 %i.ae
  %bound0 = icmp ult ptr %i.z, %i.ah
  %bound1 = icmp ult ptr %i.ag, %i.af
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check28 = icmp ult i32 %i.s, 32
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i32 %i.s, 24
  %n.vec = and i32 %i.s, -32                      ; 4 uses
  %i.aj = add i32 %i.m, %n.vec
  %invariant.op = add i32 %i.m, %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i32 %index, %invariant.op
  %i.ak = sext i32 %.reass to i64                 ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.al, align 4, !tbaa !57, !alias.scope !95, !noalias !96
  %wide.load29 = load <8 x float>, ptr %i.am, align 4, !tbaa !57, !alias.scope !95, !noalias !96
  %wide.load30 = load <8 x float>, ptr %i.an, align 4, !tbaa !57, !alias.scope !95, !noalias !96
  %wide.load31 = load <8 x float>, ptr %i.ao, align 4, !tbaa !57, !alias.scope !95, !noalias !96
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ak ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %wide.load32 = load <8 x float>, ptr %i.ap, align 4, !tbaa !57, !alias.scope !96
  %wide.load33 = load <8 x float>, ptr %i.aq, align 4, !tbaa !57, !alias.scope !96
  %wide.load34 = load <8 x float>, ptr %i.ar, align 4, !tbaa !57, !alias.scope !96
  %wide.load35 = load <8 x float>, ptr %i.as, align 4, !tbaa !57, !alias.scope !96
  %i.at = fmul fast <8 x float> %wide.load32, %wide.load
  %i.au = fmul fast <8 x float> %wide.load33, %wide.load29
  %i.av = fmul fast <8 x float> %wide.load34, %wide.load30
  %i.aw = fmul fast <8 x float> %wide.load35, %wide.load31
  store <8 x float> %i.at, ptr %i.al, align 4, !tbaa !57, !alias.scope !95, !noalias !96
  store <8 x float> %i.au, ptr %i.am, align 4, !tbaa !57, !alias.scope !95, !noalias !96
  store <8 x float> %i.av, ptr %i.an, align 4, !tbaa !57, !alias.scope !95, !noalias !96
  store <8 x float> %i.aw, ptr %i.ao, align 4, !tbaa !57, !alias.scope !95, !noalias !96
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.ax = icmp eq i32 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ai, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !67

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i32 %i.s, -8                     ; 3 uses
  %i.ay = add i32 %i.m, %n.vec36
  %invariant.op43 = add i32 %i.m, %i.e
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %.reass44 = add i32 %index37, %invariant.op43
  %i.az = sext i32 %.reass44 to i64               ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.az ; 2 uses
  %wide.load38 = load <8 x float>, ptr %i.ba, align 4, !tbaa !57, !alias.scope !95, !noalias !96
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.az
  %wide.load39 = load <8 x float>, ptr %i.bb, align 4, !tbaa !57, !alias.scope !96
  %i.bc = fmul fast <8 x float> %wide.load39, %wide.load38
  store <8 x float> %i.bc, ptr %i.ba, align 4, !tbaa !57, !alias.scope !95, !noalias !96
  %index.next40 = add nuw i32 %index37, 8         ; 2 uses
  %i.bd = icmp eq i32 %index.next40, %n.vec36
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !93

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i32 %i.s, %n.vec36
  br i1 %cmp.n41, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.021.ph = phi i32 [ %i.m, %iter.check ], [ %i.m, %vector.scevcheck ], [ %i.m, %vector.memcheck ], [ %i.aj, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ] ; 5 uses
  %i.be = add i32 %i.l, %.021.ph
  %i.bf = and i32 %i.be, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bf, 0
  br i1 %lcmp.mod.not.not, label %vec.epilog.scalar.ph.prol, label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bg = add i32 %.021.ph, %i.e
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bh ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !57
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bh
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !57
  %i.bm = fmul fast float %i.bl, %i.bj
  store float %i.bm, ptr %i.bi, align 4, !tbaa !57
  %i.bn = add nuw i32 %.021.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.021.unr = phi i32 [ %.021.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bn, %vec.epilog.scalar.ph.prol ]
  %i.bo = icmp eq i32 %i.l, %.021.ph
  br i1 %i.bo, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.021 = phi i32 [ %i.ce, %vec.epilog.scalar.ph ], [ %.021.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.bp = add i32 %.021, %i.e
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bq ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !57
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bq
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !57
  %i.bv = fmul fast float %i.bu, %i.bs
  store float %i.bv, ptr %i.br, align 4, !tbaa !57
  %i.bw = add nuw i32 %.021, 1                    ; 2 uses
  %i.bx = add i32 %i.bw, %i.e
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.by ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !57
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.by
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !57
  %i.cd = fmul fast float %i.cc, %i.ca
  store float %i.cd, ptr %i.bz, align 4, !tbaa !57
  %i.ce = add nuw i32 %.021, 2
  %exitcond.not.1 = icmp eq i32 %i.bw, %i.l
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !94

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn13Scale_x86_fma15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !34     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !34
  %i.h = load i32, ptr %0, align 4, !tbaa !34     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !34
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !34
  %i.k = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %.not126 = icmp sgt i32 %i.k, %i.j
  br i1 %.not126, label %._crit_edge, label %.lr.ph130

.lr.ph130:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 212 ; 3 uses
  %i.o = sext i32 %i.k to i64
  %i.p = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph130, %.loopexit
  %indvars.iv = phi i64 [ %i.o, %.lr.ph130 ], [ %indvars.iv.next, %.loopexit ] ; 8 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !23
  %i.r = load i32, ptr %i.l, align 4, !tbaa !32
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %indvars.iv, %i.s
  %i.u = load i64, ptr %i.m, align 8, !tbaa !31
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v ; 4 uses
  %i.x = load ptr, ptr %4, align 8, !tbaa !39     ; 3 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load float, ptr %i.y, align 4, !tbaa !57 ; 7 uses
  %i.aa = load i32, ptr %5, align 4, !tbaa !34    ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 4
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = insertelement <4 x float> poison, float %i.z, i64 0 ; 2 uses
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ae = icmp eq i32 %i.aa, 8
  br i1 %i.ae, label %.thread80, label %.thread89

bb.e:                                             ; preds = %bb.c
  %i.af = shl nsw i64 %indvars.iv, 2              ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.af
  %i.ah = load <4 x float>, ptr %i.ag, align 1, !tbaa !64 ; 3 uses
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !52
  %.not68 = icmp eq i32 %i.aj, 0
  br i1 %.not68, label %.preheader94, label %.split

.thread89:                                        ; preds = %bb.d
  %i.ak = shufflevector <4 x float> %i.ac, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.al = load i32, ptr %i.n, align 4, !tbaa !52
  %.not6890 = icmp eq i32 %i.al, 0
  br i1 %.not6890, label %.preheader94, label %.thread92

.preheader94:                                     ; preds = %bb.e, %.thread80, %.thread89
  %.ph = phi <8 x float> [ %i.ak, %.thread89 ], [ %i.av, %.thread80 ], [ %i.ai, %bb.e ]
  %.ph95 = phi <4 x float> [ %i.ad, %.thread89 ], [ %i.ad, %.thread80 ], [ %i.ah, %bb.e ]
  %i.am = load i32, ptr %8, align 4, !tbaa !34    ; 2 uses
  %i.an = icmp sgt i32 %i.am, 7
  br i1 %i.an, label %.lr.ph114, label %.preheader93

.thread92:                                        ; preds = %.thread89
  %i.ao = load ptr, ptr %7, align 8, !tbaa !39
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !57 ; 2 uses
  %i.ar = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.f

.thread80:                                        ; preds = %bb.d
  %i.at = shl nsw i64 %indvars.iv, 3              ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.at
  %i.av = load <8 x float>, ptr %i.au, align 1, !tbaa !64 ; 2 uses
  %i.aw = load i32, ptr %i.n, align 4, !tbaa !52
  %.not6881 = icmp eq i32 %i.aw, 0
  br i1 %.not6881, label %.preheader94, label %.thread88

.thread88:                                        ; preds = %.thread80
  %i.ax = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = load float, ptr %i.ay, align 4, !tbaa !57 ; 2 uses
  %i.ba = insertelement <4 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.at
  %i.bd = load <8 x float>, ptr %i.bc, align 1, !tbaa !64
  br label %bb.g

.split:                                           ; preds = %bb.e
  %i.be = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !57
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.af
  %i.bi = load <4 x float>, ptr %i.bh, align 1, !tbaa !64
  br label %bb.f
end_hunk_1
begin_hunk_2_@_ZNK4ncnn13Scale_x86_fma15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined.6:bb.a

iter.check218:                                    ; preds = %.preheader96
  %i.cg = xor i32 %.163.lcssa, -1
  %i.ch = add i32 %.lcssa, %i.cg                  ; 3 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 5 uses
  %min.iters.check197 = icmp ult i32 %i.ch, 3
  br i1 %min.iters.check197, label %.lr.ph111.preheader, label %vector.main.loop.iter.check198

vector.main.loop.iter.check198:                   ; preds = %iter.check218
  %min.iters.check199 = icmp ult i32 %i.ch, 31
  br i1 %min.iters.check199, label %vec.epilog.ph222, label %vector.ph200

vector.ph200:                                     ; preds = %vector.main.loop.iter.check198
  %i.ck = and i64 %i.cj, 28
  %n.vec201 = and i64 %i.cj, 8589934560           ; 5 uses
  %i.cl = trunc i64 %n.vec201 to i32
  %i.cm = add i32 %.163.lcssa, %i.cl
  %i.cn = shl nuw nsw i64 %n.vec201, 2
  %i.co = getelementptr i8, ptr %.166.lcssa, i64 %i.cn
  %broadcast.splatinsert202 = insertelement <8 x float> poison, float %i.z, i64 0
  %broadcast.splat203 = shufflevector <8 x float> %broadcast.splatinsert202, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert204 = insertelement <8 x float> poison, float %i.br, i64 0
  %broadcast.splat205 = shufflevector <8 x float> %broadcast.splatinsert204, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body206

vector.body206:                                   ; preds = %vector.ph200, %vector.body206
  %index207 = phi i64 [ 0, %vector.ph200 ], [ %index.next213, %vector.body206 ] ; 2 uses
  %i.cp = shl i64 %index207, 2
  %next.gep208 = getelementptr i8, ptr %.166.lcssa, i64 %i.cp ; 5 uses
  %i.cq = getelementptr i8, ptr %next.gep208, i64 32 ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep208, i64 64 ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep208, i64 96 ; 2 uses
  %wide.load209 = load <8 x float>, ptr %next.gep208, align 4, !tbaa !57
  %wide.load210 = load <8 x float>, ptr %i.cq, align 4, !tbaa !57
  %wide.load211 = load <8 x float>, ptr %i.cr, align 4, !tbaa !57
  %wide.load212 = load <8 x float>, ptr %i.cs, align 4, !tbaa !57
  %i.ct = fmul fast <8 x float> %wide.load209, %broadcast.splat203
  %i.cu = fmul fast <8 x float> %wide.load210, %broadcast.splat203
  %i.cv = fmul fast <8 x float> %wide.load211, %broadcast.splat203
  %i.cw = fmul fast <8 x float> %wide.load212, %broadcast.splat203
  %i.cx = fadd fast <8 x float> %i.ct, %broadcast.splat205
  %i.cy = fadd fast <8 x float> %i.cu, %broadcast.splat205
  %i.cz = fadd fast <8 x float> %i.cv, %broadcast.splat205
  %i.da = fadd fast <8 x float> %i.cw, %broadcast.splat205
  store <8 x float> %i.cx, ptr %next.gep208, align 4, !tbaa !57
  store <8 x float> %i.cy, ptr %i.cq, align 4, !tbaa !57
  store <8 x float> %i.cz, ptr %i.cr, align 4, !tbaa !57
  store <8 x float> %i.da, ptr %i.cs, align 4, !tbaa !57
  %index.next213 = add nuw i64 %index207, 32      ; 2 uses
  %i.db = icmp eq i64 %index.next213, %n.vec201
  br i1 %i.db, label %middle.block214, label %vector.body206, !llvm.loop !98

middle.block214:                                  ; preds = %vector.body206
  %cmp.n215 = icmp eq i64 %i.cj, %n.vec201
  br i1 %cmp.n215, label %.loopexit, label %vec.epilog.iter.check220

vec.epilog.iter.check220:                         ; preds = %middle.block214
  %min.epilog.iters.check221 = icmp eq i64 %i.ck, 0
  br i1 %min.epilog.iters.check221, label %.lr.ph111.preheader, label %vec.epilog.ph222, !prof !61

vec.epilog.ph222:                                 ; preds = %vector.main.loop.iter.check198, %vec.epilog.iter.check220
  %vec.epilog.resume.val216 = phi i64 [ %n.vec201, %vec.epilog.iter.check220 ], [ 0, %vector.main.loop.iter.check198 ]
  %n.vec223 = and i64 %i.cj, 8589934588           ; 4 uses
  %i.dc = trunc i64 %n.vec223 to i32
  %i.dd = add i32 %.163.lcssa, %i.dc
  %i.de = shl nuw nsw i64 %n.vec223, 2
  %i.df = getelementptr i8, ptr %.166.lcssa, i64 %i.de
  %broadcast.splatinsert224 = insertelement <4 x float> poison, float %i.z, i64 0
  %broadcast.splat225 = shufflevector <4 x float> %broadcast.splatinsert224, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert226 = insertelement <4 x float> poison, float %i.br, i64 0
  %broadcast.splat227 = shufflevector <4 x float> %broadcast.splatinsert226, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body228

vec.epilog.vector.body228:                        ; preds = %vec.epilog.vector.body228, %vec.epilog.ph222
  %index229 = phi i64 [ %vec.epilog.resume.val216, %vec.epilog.ph222 ], [ %index.next232, %vec.epilog.vector.body228 ] ; 2 uses
  %i.dg = shl i64 %index229, 2
  %next.gep230 = getelementptr i8, ptr %.166.lcssa, i64 %i.dg ; 2 uses
  %wide.load231 = load <4 x float>, ptr %next.gep230, align 4, !tbaa !57
  %i.dh = fmul fast <4 x float> %wide.load231, %broadcast.splat225
  %i.di = fadd fast <4 x float> %i.dh, %broadcast.splat227
  store <4 x float> %i.di, ptr %next.gep230, align 4, !tbaa !57
  %index.next232 = add nuw i64 %index229, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next232, %n.vec223
  br i1 %i.dj, label %vec.epilog.middle.block233, label %vec.epilog.vector.body228, !llvm.loop !99

vec.epilog.middle.block233:                       ; preds = %vec.epilog.vector.body228
  %cmp.n234 = icmp eq i64 %i.cj, %n.vec223
  br i1 %cmp.n234, label %.loopexit, label %.lr.ph111.preheader

.lr.ph111.preheader:                              ; preds = %iter.check218, %vec.epilog.iter.check220, %vec.epilog.middle.block233
  %.264110.ph = phi i32 [ %.163.lcssa, %iter.check218 ], [ %i.cm, %vec.epilog.iter.check220 ], [ %i.dd, %vec.epilog.middle.block233 ]
  %.267109.ph = phi ptr [ %.166.lcssa, %iter.check218 ], [ %i.co, %vec.epilog.iter.check220 ], [ %i.df, %vec.epilog.middle.block233 ]
  br label %.lr.ph111

.lr.ph105:                                        ; preds = %.preheader98, %.lr.ph105
  %.163104 = phi i32 [ %i.dn, %.lr.ph105 ], [ %.062.lcssa, %.preheader98 ]
  %.166103 = phi ptr [ %i.dm, %.lr.ph105 ], [ %.065.lcssa, %.preheader98 ] ; 3 uses
  %i.dk = load <4 x float>, ptr %.166103, align 1, !tbaa !64
  %i.dl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dk, <4 x float> nofpclass(nan inf) %i.bq, <4 x float> nofpclass(nan inf) %i.bo)
  store <4 x float> %i.dl, ptr %.166103, align 1, !tbaa !64
  %i.dm = getelementptr inbounds nuw i8, ptr %.166103, i64 16 ; 2 uses
  %i.dn = add nuw nsw i32 %.163104, 4             ; 3 uses
  %i.do = or disjoint i32 %i.dn, 3
  %i.dp = load i32, ptr %8, align 4, !tbaa !34    ; 2 uses
  %i.dq = icmp slt i32 %i.do, %i.dp
  br i1 %i.dq, label %.lr.ph105, label %.preheader96, !llvm.loop !100

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.lr.ph111
  %.264110 = phi i32 [ %i.dv, %.lr.ph111 ], [ %.264110.ph, %.lr.ph111.preheader ]
  %.267109 = phi ptr [ %i.du, %.lr.ph111 ], [ %.267109.ph, %.lr.ph111.preheader ] ; 3 uses
  %i.dr = load float, ptr %.267109, align 4, !tbaa !57
  %i.ds = fmul fast float %i.dr, %i.z
  %i.dt = fadd fast float %i.ds, %i.br
  store float %i.dt, ptr %.267109, align 4, !tbaa !57
  %i.du = getelementptr inbounds nuw i8, ptr %.267109, i64 4
  %i.dv = add nuw nsw i32 %.264110, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.dv, %.lcssa
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph111, !llvm.loop !101

.preheader93:                                     ; preds = %.lr.ph114, %.preheader94
  %i.dw = phi i32 [ %i.am, %.preheader94 ], [ %i.ee, %.lr.ph114 ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.w, %.preheader94 ], [ %i.eb, %.lr.ph114 ] ; 2 uses
  %.061.lcssa = phi i32 [ 0, %.preheader94 ], [ %i.ec, %.lr.ph114 ] ; 3 uses
  %i.dx = or disjoint i32 %.061.lcssa, 3
  %i.dy = icmp slt i32 %i.dx, %i.dw
  br i1 %i.dy, label %.lr.ph119, label %.preheader

.lr.ph114:                                        ; preds = %.preheader94, %.lr.ph114
  %.061113 = phi i32 [ %i.ec, %.lr.ph114 ], [ 0, %.preheader94 ]
  %.3112 = phi ptr [ %i.eb, %.lr.ph114 ], [ %i.w, %.preheader94 ] ; 3 uses
  %i.dz = load <8 x float>, ptr %.3112, align 1, !tbaa !64
  %i.ea = fmul fast <8 x float> %i.dz, %.ph
  store <8 x float> %i.ea, ptr %.3112, align 1, !tbaa !64
  %i.eb = getelementptr inbounds nuw i8, ptr %.3112, i64 32 ; 2 uses
  %i.ec = add nuw nsw i32 %.061113, 8             ; 3 uses
  %i.ed = or disjoint i32 %i.ec, 7
  %i.ee = load i32, ptr %8, align 4, !tbaa !34    ; 2 uses
  %i.ef = icmp slt i32 %i.ed, %i.ee
  br i1 %i.ef, label %.lr.ph114, label %.preheader93, !llvm.loop !102

.preheader:                                       ; preds = %.lr.ph119, %.preheader93
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader93 ], [ %i.fi, %.lr.ph119 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.061.lcssa, %.preheader93 ], [ %i.fj, %.lr.ph119 ] ; 5 uses
  %.lcssa99 = phi i32 [ %i.dw, %.preheader93 ], [ %i.fl, %.lr.ph119 ] ; 3 uses
  %i.eg = icmp slt i32 %.1.lcssa, %.lcssa99
  br i1 %i.eg, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.eh = xor i32 %.1.lcssa, -1
  %i.ei = add i32 %.lcssa99, %i.eh                ; 3 uses
  %i.ej = zext i32 %i.ei to i64
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ei, 7
  br i1 %min.iters.check, label %.lr.ph125.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check182 = icmp ult i32 %i.ei, 31
  br i1 %min.iters.check182, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.el = and i64 %i.ek, 24
  %n.vec = and i64 %i.ek, 8589934560              ; 5 uses
  %i.em = trunc i64 %n.vec to i32
  %i.en = add i32 %.1.lcssa, %i.em
  %i.eo = shl nuw nsw i64 %n.vec, 2
  %i.ep = getelementptr i8, ptr %.4.lcssa, i64 %i.eo
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.z, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.4.lcssa, i64 %i.eq ; 5 uses
  %i.er = getelementptr i8, ptr %next.gep, i64 32 ; 2 uses
  %i.es = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.et = getelementptr i8, ptr %next.gep, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !57
  %wide.load183 = load <8 x float>, ptr %i.er, align 4, !tbaa !57
  %wide.load184 = load <8 x float>, ptr %i.es, align 4, !tbaa !57
  %wide.load185 = load <8 x float>, ptr %i.et, align 4, !tbaa !57
  %i.eu = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.ev = fmul fast <8 x float> %wide.load183, %broadcast.splat
  %i.ew = fmul fast <8 x float> %wide.load184, %broadcast.splat
  %i.ex = fmul fast <8 x float> %wide.load185, %broadcast.splat
  store <8 x float> %i.eu, ptr %next.gep, align 4, !tbaa !57
  store <8 x float> %i.ev, ptr %i.er, align 4, !tbaa !57
  store <8 x float> %i.ew, ptr %i.es, align 4, !tbaa !57
  store <8 x float> %i.ex, ptr %i.et, align 4, !tbaa !57
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ek, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.el, 0
  br i1 %min.epilog.iters.check, label %.lr.ph125.preheader, label %vec.epilog.ph, !prof !67

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec187 = and i64 %i.ek, 8589934584           ; 4 uses
  %i.ez = trunc i64 %n.vec187 to i32
  %i.fa = add i32 %.1.lcssa, %i.ez
  %i.fb = shl nuw nsw i64 %n.vec187, 2
  %i.fc = getelementptr i8, ptr %.4.lcssa, i64 %i.fb
  %broadcast.splatinsert188 = insertelement <8 x float> poison, float %i.z, i64 0
  %broadcast.splat189 = shufflevector <8 x float> %broadcast.splatinsert188, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index190 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next193, %vec.epilog.vector.body ] ; 2 uses
  %i.fd = shl i64 %index190, 2
  %next.gep191 = getelementptr i8, ptr %.4.lcssa, i64 %i.fd ; 2 uses
  %wide.load192 = load <8 x float>, ptr %next.gep191, align 4, !tbaa !57
  %i.fe = fmul fast <8 x float> %wide.load192, %broadcast.splat189
  store <8 x float> %i.fe, ptr %next.gep191, align 4, !tbaa !57
  %index.next193 = add nuw i64 %index190, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next193, %n.vec187
  br i1 %i.ff, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !104

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n194 = icmp eq i64 %i.ek, %n.vec187
  br i1 %cmp.n194, label %.loopexit, label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2124.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.en, %vec.epilog.iter.check ], [ %i.fa, %vec.epilog.middle.block ]
  %.5123.ph = phi ptr [ %.4.lcssa, %iter.check ], [ %i.ep, %vec.epilog.iter.check ], [ %i.fc, %vec.epilog.middle.block ]
  br label %.lr.ph125

.lr.ph119:                                        ; preds = %.preheader93, %.lr.ph119
  %.1118 = phi i32 [ %i.fj, %.lr.ph119 ], [ %.061.lcssa, %.preheader93 ]
  %.4117 = phi ptr [ %i.fi, %.lr.ph119 ], [ %.3.lcssa, %.preheader93 ] ; 3 uses
  %i.fg = load <4 x float>, ptr %.4117, align 1, !tbaa !64
  %i.fh = fmul fast <4 x float> %i.fg, %.ph95
  store <4 x float> %i.fh, ptr %.4117, align 1, !tbaa !64
  %i.fi = getelementptr inbounds nuw i8, ptr %.4117, i64 16 ; 2 uses
  %i.fj = add nuw nsw i32 %.1118, 4               ; 3 uses
  %i.fk = or disjoint i32 %i.fj, 3
  %i.fl = load i32, ptr %8, align 4, !tbaa !34    ; 2 uses
  %i.fm = icmp slt i32 %i.fk, %i.fl
  br i1 %i.fm, label %.lr.ph119, label %.preheader, !llvm.loop !105

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %.lr.ph125
  %.2124 = phi i32 [ %i.fq, %.lr.ph125 ], [ %.2124.ph, %.lr.ph125.preheader ]
  %.5123 = phi ptr [ %i.fp, %.lr.ph125 ], [ %.5123.ph, %.lr.ph125.preheader ] ; 3 uses
  %i.fn = load float, ptr %.5123, align 4, !tbaa !57
  %i.fo = fmul fast float %i.fn, %i.z
  store float %i.fo, ptr %.5123, align 4, !tbaa !57
  %i.fp = getelementptr inbounds nuw i8, ptr %.5123, i64 4
  %i.fq = add nuw nsw i32 %.2124, 1               ; 2 uses
  %exitcond142.not = icmp eq i32 %i.fq, %.lcssa99
  br i1 %exitcond142.not, label %.loopexit, label %.lr.ph125, !llvm.loop !106

.loopexit:                                        ; preds = %.lr.ph111, %.lr.ph125, %middle.block214, %vec.epilog.middle.block233, %middle.block, %vec.epilog.middle.block, %.preheader96, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond144.not = icmp eq i32 %i.p, %lftr.wideiv
  br i1 %exitcond144.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn13Scale_x86_fma15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !34     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !34
  %i.h = load i32, ptr %0, align 4, !tbaa !34     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !34
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !34
  %i.k = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %.not133 = icmp sgt i32 %i.k, %i.j
  br i1 %.not133, label %._crit_edge, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 212 ; 3 uses
  %i.o = sext i32 %i.k to i64
  %i.p = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %i.o, %.noexc.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 8 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !23, !noalias !119
  %i.r = load i64, ptr %i.l, align 8, !tbaa !24, !noalias !119
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !31, !noalias !119
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 4 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !39     ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load float, ptr %i.x, align 4, !tbaa !57 ; 7 uses
  %i.z = load i32, ptr %5, align 4, !tbaa !34     ; 2 uses
  %i.aa = icmp eq i32 %i.z, 4
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.ab = insertelement <4 x float> poison, float %i.y, i64 0 ; 2 uses
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ad = icmp eq i32 %i.z, 8
  br i1 %i.ad, label %.thread87, label %.thread96

bb.d:                                             ; preds = %.noexc
  %i.ae = shl nsw i64 %indvars.iv, 2              ; 2 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ae
  %i.ag = load <4 x float>, ptr %i.af, align 1, !tbaa !64 ; 3 uses
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ai = load i32, ptr %i.n, align 4, !tbaa !52
  %.not68 = icmp eq i32 %i.ai, 0
  br i1 %.not68, label %.preheader101, label %.split

.thread96:                                        ; preds = %bb.c
  %i.aj = shufflevector <4 x float> %i.ab, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ak = load i32, ptr %i.n, align 4, !tbaa !52
  %.not6897 = icmp eq i32 %i.ak, 0
  br i1 %.not6897, label %.preheader101, label %.thread99

.preheader101:                                    ; preds = %bb.d, %.thread87, %.thread96
  %.ph = phi <8 x float> [ %i.aj, %.thread96 ], [ %i.au, %.thread87 ], [ %i.ah, %bb.d ]
  %.ph102 = phi <4 x float> [ %i.ac, %.thread96 ], [ %i.ac, %.thread87 ], [ %i.ag, %bb.d ]
  %i.al = load i32, ptr %8, align 4, !tbaa !34    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 7
  br i1 %i.am, label %.lr.ph121, label %.preheader100

.thread99:                                        ; preds = %.thread96
  %i.an = load ptr, ptr %7, align 8, !tbaa !39
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !57 ; 2 uses
  %i.aq = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.e

.thread87:                                        ; preds = %bb.c
  %i.as = shl nsw i64 %indvars.iv, 3              ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.as
  %i.au = load <8 x float>, ptr %i.at, align 1, !tbaa !64 ; 2 uses
  %i.av = load i32, ptr %i.n, align 4, !tbaa !52
  %.not6888 = icmp eq i32 %i.av, 0
  br i1 %.not6888, label %.preheader101, label %.thread95

.thread95:                                        ; preds = %.thread87
  %i.aw = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !57 ; 2 uses
  %i.az = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.as
  %i.bc = load <8 x float>, ptr %i.bb, align 1, !tbaa !64
  br label %bb.f

.split:                                           ; preds = %bb.d
  %i.bd = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bf = load float, ptr %i.be, align 4, !tbaa !57
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.ae
  %i.bh = load <4 x float>, ptr %i.bg, align 1, !tbaa !64
  br label %bb.e

bb.e:                                             ; preds = %.split, %.thread99
  %i.bi = phi <4 x float> [ %i.bh, %.split ], [ %i.ar, %.thread99 ] ; 2 uses
  %i.bj = phi <8 x float> [ %i.ah, %.split ], [ %i.aj, %.thread99 ]
  %i.bk = phi <4 x float> [ %i.ag, %.split ], [ %i.ac, %.thread99 ]
  %i.bl = phi float [ %i.bf, %.split ], [ %i.ap, %.thread99 ]
  %i.bm = shufflevector <4 x float> %i.bi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread95
  %i.bn = phi <4 x float> [ %i.ba, %.thread95 ], [ %i.bi, %bb.e ]
  %i.bo = phi <8 x float> [ %i.au, %.thread95 ], [ %i.bj, %bb.e ]
end_hunk_2
begin_hunk_3_@_ZNK4ncnn13Scale_x86_fma15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined.7:bb.a

iter.check224:                                    ; preds = %.preheader103
  %i.cf = xor i32 %.163.lcssa, -1
  %i.cg = add i32 %.lcssa, %i.cf                  ; 3 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 5 uses
  %min.iters.check203 = icmp ult i32 %i.cg, 3
  br i1 %min.iters.check203, label %.lr.ph118.preheader, label %vector.main.loop.iter.check204

vector.main.loop.iter.check204:                   ; preds = %iter.check224
  %min.iters.check205 = icmp ult i32 %i.cg, 31
  br i1 %min.iters.check205, label %vec.epilog.ph228, label %vector.ph206

vector.ph206:                                     ; preds = %vector.main.loop.iter.check204
  %i.cj = and i64 %i.ci, 28
  %n.vec207 = and i64 %i.ci, 8589934560           ; 5 uses
  %i.ck = trunc i64 %n.vec207 to i32
  %i.cl = add i32 %.163.lcssa, %i.ck
  %i.cm = shl nuw nsw i64 %n.vec207, 2
  %i.cn = getelementptr i8, ptr %.166.lcssa, i64 %i.cm
  %broadcast.splatinsert208 = insertelement <8 x float> poison, float %i.y, i64 0
  %broadcast.splat209 = shufflevector <8 x float> %broadcast.splatinsert208, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert210 = insertelement <8 x float> poison, float %i.bq, i64 0
  %broadcast.splat211 = shufflevector <8 x float> %broadcast.splatinsert210, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.ph206, %vector.body212
  %index213 = phi i64 [ 0, %vector.ph206 ], [ %index.next219, %vector.body212 ] ; 2 uses
  %i.co = shl i64 %index213, 2
  %next.gep214 = getelementptr i8, ptr %.166.lcssa, i64 %i.co ; 5 uses
  %i.cp = getelementptr i8, ptr %next.gep214, i64 32 ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep214, i64 64 ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep214, i64 96 ; 2 uses
  %wide.load215 = load <8 x float>, ptr %next.gep214, align 4, !tbaa !57
  %wide.load216 = load <8 x float>, ptr %i.cp, align 4, !tbaa !57
  %wide.load217 = load <8 x float>, ptr %i.cq, align 4, !tbaa !57
  %wide.load218 = load <8 x float>, ptr %i.cr, align 4, !tbaa !57
  %i.cs = fmul fast <8 x float> %wide.load215, %broadcast.splat209
  %i.ct = fmul fast <8 x float> %wide.load216, %broadcast.splat209
  %i.cu = fmul fast <8 x float> %wide.load217, %broadcast.splat209
  %i.cv = fmul fast <8 x float> %wide.load218, %broadcast.splat209
  %i.cw = fadd fast <8 x float> %i.cs, %broadcast.splat211
  %i.cx = fadd fast <8 x float> %i.ct, %broadcast.splat211
  %i.cy = fadd fast <8 x float> %i.cu, %broadcast.splat211
  %i.cz = fadd fast <8 x float> %i.cv, %broadcast.splat211
  store <8 x float> %i.cw, ptr %next.gep214, align 4, !tbaa !57
  store <8 x float> %i.cx, ptr %i.cp, align 4, !tbaa !57
  store <8 x float> %i.cy, ptr %i.cq, align 4, !tbaa !57
  store <8 x float> %i.cz, ptr %i.cr, align 4, !tbaa !57
  %index.next219 = add nuw i64 %index213, 32      ; 2 uses
  %i.da = icmp eq i64 %index.next219, %n.vec207
  br i1 %i.da, label %middle.block220, label %vector.body212, !llvm.loop !110

middle.block220:                                  ; preds = %vector.body212
  %cmp.n221 = icmp eq i64 %i.ci, %n.vec207
  br i1 %cmp.n221, label %.loopexit, label %vec.epilog.iter.check226

vec.epilog.iter.check226:                         ; preds = %middle.block220
  %min.epilog.iters.check227 = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check227, label %.lr.ph118.preheader, label %vec.epilog.ph228, !prof !61

vec.epilog.ph228:                                 ; preds = %vector.main.loop.iter.check204, %vec.epilog.iter.check226
  %vec.epilog.resume.val222 = phi i64 [ %n.vec207, %vec.epilog.iter.check226 ], [ 0, %vector.main.loop.iter.check204 ]
  %n.vec229 = and i64 %i.ci, 8589934588           ; 4 uses
  %i.db = trunc i64 %n.vec229 to i32
  %i.dc = add i32 %.163.lcssa, %i.db
  %i.dd = shl nuw nsw i64 %n.vec229, 2
  %i.de = getelementptr i8, ptr %.166.lcssa, i64 %i.dd
  %broadcast.splatinsert230 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat231 = shufflevector <4 x float> %broadcast.splatinsert230, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert232 = insertelement <4 x float> poison, float %i.bq, i64 0
  %broadcast.splat233 = shufflevector <4 x float> %broadcast.splatinsert232, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body234

vec.epilog.vector.body234:                        ; preds = %vec.epilog.vector.body234, %vec.epilog.ph228
  %index235 = phi i64 [ %vec.epilog.resume.val222, %vec.epilog.ph228 ], [ %index.next238, %vec.epilog.vector.body234 ] ; 2 uses
  %i.df = shl i64 %index235, 2
  %next.gep236 = getelementptr i8, ptr %.166.lcssa, i64 %i.df ; 2 uses
  %wide.load237 = load <4 x float>, ptr %next.gep236, align 4, !tbaa !57
  %i.dg = fmul fast <4 x float> %wide.load237, %broadcast.splat231
  %i.dh = fadd fast <4 x float> %i.dg, %broadcast.splat233
  store <4 x float> %i.dh, ptr %next.gep236, align 4, !tbaa !57
  %index.next238 = add nuw i64 %index235, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next238, %n.vec229
  br i1 %i.di, label %vec.epilog.middle.block239, label %vec.epilog.vector.body234, !llvm.loop !111

vec.epilog.middle.block239:                       ; preds = %vec.epilog.vector.body234
  %cmp.n240 = icmp eq i64 %i.ci, %n.vec229
  br i1 %cmp.n240, label %.loopexit, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %iter.check224, %vec.epilog.iter.check226, %vec.epilog.middle.block239
  %.264117.ph = phi i32 [ %.163.lcssa, %iter.check224 ], [ %i.cl, %vec.epilog.iter.check226 ], [ %i.dc, %vec.epilog.middle.block239 ]
  %.267116.ph = phi ptr [ %.166.lcssa, %iter.check224 ], [ %i.cn, %vec.epilog.iter.check226 ], [ %i.de, %vec.epilog.middle.block239 ]
  br label %.lr.ph118

.lr.ph112:                                        ; preds = %.preheader105, %.lr.ph112
  %.163111 = phi i32 [ %i.dm, %.lr.ph112 ], [ %.062.lcssa, %.preheader105 ]
  %.166110 = phi ptr [ %i.dl, %.lr.ph112 ], [ %.065.lcssa, %.preheader105 ] ; 3 uses
  %i.dj = load <4 x float>, ptr %.166110, align 1, !tbaa !64
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> nofpclass(nan inf) %i.bp, <4 x float> nofpclass(nan inf) %i.bn)
  store <4 x float> %i.dk, ptr %.166110, align 1, !tbaa !64
  %i.dl = getelementptr inbounds nuw i8, ptr %.166110, i64 16 ; 2 uses
  %i.dm = add nuw nsw i32 %.163111, 4             ; 3 uses
  %i.dn = or disjoint i32 %i.dm, 3
  %i.do = load i32, ptr %8, align 4, !tbaa !34    ; 2 uses
  %i.dp = icmp slt i32 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph112, label %.preheader103, !llvm.loop !112

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %.lr.ph118
  %.264117 = phi i32 [ %i.du, %.lr.ph118 ], [ %.264117.ph, %.lr.ph118.preheader ]
  %.267116 = phi ptr [ %i.dt, %.lr.ph118 ], [ %.267116.ph, %.lr.ph118.preheader ] ; 3 uses
  %i.dq = load float, ptr %.267116, align 4, !tbaa !57
  %i.dr = fmul fast float %i.dq, %i.y
  %i.ds = fadd fast float %i.dr, %i.bq
  store float %i.ds, ptr %.267116, align 4, !tbaa !57
  %i.dt = getelementptr inbounds nuw i8, ptr %.267116, i64 4
  %i.du = add nuw nsw i32 %.264117, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.du, %.lcssa
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph118, !llvm.loop !113

.preheader100:                                    ; preds = %.lr.ph121, %.preheader101
  %i.dv = phi i32 [ %i.al, %.preheader101 ], [ %i.ed, %.lr.ph121 ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.v, %.preheader101 ], [ %i.ea, %.lr.ph121 ] ; 2 uses
  %.061.lcssa = phi i32 [ 0, %.preheader101 ], [ %i.eb, %.lr.ph121 ] ; 3 uses
  %i.dw = or disjoint i32 %.061.lcssa, 3
  %i.dx = icmp slt i32 %i.dw, %i.dv
  br i1 %i.dx, label %.lr.ph126, label %.preheader

.lr.ph121:                                        ; preds = %.preheader101, %.lr.ph121
  %.061120 = phi i32 [ %i.eb, %.lr.ph121 ], [ 0, %.preheader101 ]
  %.3119 = phi ptr [ %i.ea, %.lr.ph121 ], [ %i.v, %.preheader101 ] ; 3 uses
  %i.dy = load <8 x float>, ptr %.3119, align 1, !tbaa !64
  %i.dz = fmul fast <8 x float> %i.dy, %.ph
  store <8 x float> %i.dz, ptr %.3119, align 1, !tbaa !64
  %i.ea = getelementptr inbounds nuw i8, ptr %.3119, i64 32 ; 2 uses
  %i.eb = add nuw nsw i32 %.061120, 8             ; 3 uses
  %i.ec = or disjoint i32 %i.eb, 7
  %i.ed = load i32, ptr %8, align 4, !tbaa !34    ; 2 uses
  %i.ee = icmp slt i32 %i.ec, %i.ed
  br i1 %i.ee, label %.lr.ph121, label %.preheader100, !llvm.loop !114

.preheader:                                       ; preds = %.lr.ph126, %.preheader100
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader100 ], [ %i.fh, %.lr.ph126 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.061.lcssa, %.preheader100 ], [ %i.fi, %.lr.ph126 ] ; 5 uses
  %.lcssa106 = phi i32 [ %i.dv, %.preheader100 ], [ %i.fk, %.lr.ph126 ] ; 3 uses
  %i.ef = icmp slt i32 %.1.lcssa, %.lcssa106
  br i1 %i.ef, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.eg = xor i32 %.1.lcssa, -1
  %i.eh = add i32 %.lcssa106, %i.eg               ; 3 uses
  %i.ei = zext i32 %i.eh to i64
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.eh, 7
  br i1 %min.iters.check, label %.lr.ph132.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check188 = icmp ult i32 %i.eh, 31
  br i1 %min.iters.check188, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ek = and i64 %i.ej, 24
  %n.vec = and i64 %i.ej, 8589934560              ; 5 uses
  %i.el = trunc i64 %n.vec to i32
  %i.em = add i32 %.1.lcssa, %i.el
  %i.en = shl nuw nsw i64 %n.vec, 2
  %i.eo = getelementptr i8, ptr %.4.lcssa, i64 %i.en
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.y, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ep = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.4.lcssa, i64 %i.ep ; 5 uses
  %i.eq = getelementptr i8, ptr %next.gep, i64 32 ; 2 uses
  %i.er = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.es = getelementptr i8, ptr %next.gep, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !57
  %wide.load189 = load <8 x float>, ptr %i.eq, align 4, !tbaa !57
  %wide.load190 = load <8 x float>, ptr %i.er, align 4, !tbaa !57
  %wide.load191 = load <8 x float>, ptr %i.es, align 4, !tbaa !57
  %i.et = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.eu = fmul fast <8 x float> %wide.load189, %broadcast.splat
  %i.ev = fmul fast <8 x float> %wide.load190, %broadcast.splat
  %i.ew = fmul fast <8 x float> %wide.load191, %broadcast.splat
  store <8 x float> %i.et, ptr %next.gep, align 4, !tbaa !57
  store <8 x float> %i.eu, ptr %i.eq, align 4, !tbaa !57
  store <8 x float> %i.ev, ptr %i.er, align 4, !tbaa !57
  store <8 x float> %i.ew, ptr %i.es, align 4, !tbaa !57
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ej, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ek, 0
  br i1 %min.epilog.iters.check, label %.lr.ph132.preheader, label %vec.epilog.ph, !prof !67

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec193 = and i64 %i.ej, 8589934584           ; 4 uses
  %i.ey = trunc i64 %n.vec193 to i32
  %i.ez = add i32 %.1.lcssa, %i.ey
  %i.fa = shl nuw nsw i64 %n.vec193, 2
  %i.fb = getelementptr i8, ptr %.4.lcssa, i64 %i.fa
  %broadcast.splatinsert194 = insertelement <8 x float> poison, float %i.y, i64 0
  %broadcast.splat195 = shufflevector <8 x float> %broadcast.splatinsert194, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index196 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next199, %vec.epilog.vector.body ] ; 2 uses
  %i.fc = shl i64 %index196, 2
  %next.gep197 = getelementptr i8, ptr %.4.lcssa, i64 %i.fc ; 2 uses
  %wide.load198 = load <8 x float>, ptr %next.gep197, align 4, !tbaa !57
  %i.fd = fmul fast <8 x float> %wide.load198, %broadcast.splat195
  store <8 x float> %i.fd, ptr %next.gep197, align 4, !tbaa !57
  %index.next199 = add nuw i64 %index196, 8       ; 2 uses
  %i.fe = icmp eq i64 %index.next199, %n.vec193
  br i1 %i.fe, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !116

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n200 = icmp eq i64 %i.ej, %n.vec193
  br i1 %cmp.n200, label %.loopexit, label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2131.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.em, %vec.epilog.iter.check ], [ %i.ez, %vec.epilog.middle.block ]
  %.5130.ph = phi ptr [ %.4.lcssa, %iter.check ], [ %i.eo, %vec.epilog.iter.check ], [ %i.fb, %vec.epilog.middle.block ]
  br label %.lr.ph132

.lr.ph126:                                        ; preds = %.preheader100, %.lr.ph126
  %.1125 = phi i32 [ %i.fi, %.lr.ph126 ], [ %.061.lcssa, %.preheader100 ]
  %.4124 = phi ptr [ %i.fh, %.lr.ph126 ], [ %.3.lcssa, %.preheader100 ] ; 3 uses
  %i.ff = load <4 x float>, ptr %.4124, align 1, !tbaa !64
  %i.fg = fmul fast <4 x float> %i.ff, %.ph102
  store <4 x float> %i.fg, ptr %.4124, align 1, !tbaa !64
  %i.fh = getelementptr inbounds nuw i8, ptr %.4124, i64 16 ; 2 uses
  %i.fi = add nuw nsw i32 %.1125, 4               ; 3 uses
  %i.fj = or disjoint i32 %i.fi, 3
  %i.fk = load i32, ptr %8, align 4, !tbaa !34    ; 2 uses
  %i.fl = icmp slt i32 %i.fj, %i.fk
  br i1 %i.fl, label %.lr.ph126, label %.preheader, !llvm.loop !117

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %.lr.ph132
  %.2131 = phi i32 [ %i.fp, %.lr.ph132 ], [ %.2131.ph, %.lr.ph132.preheader ]
  %.5130 = phi ptr [ %i.fo, %.lr.ph132 ], [ %.5130.ph, %.lr.ph132.preheader ] ; 3 uses
  %i.fm = load float, ptr %.5130, align 4, !tbaa !57
  %i.fn = fmul fast float %i.fm, %i.y
  store float %i.fn, ptr %.5130, align 4, !tbaa !57
  %i.fo = getelementptr inbounds nuw i8, ptr %.5130, i64 4
  %i.fp = add nuw nsw i32 %.2131, 1               ; 2 uses
  %exitcond148.not = icmp eq i32 %i.fp, %.lcssa106
  br i1 %exitcond148.not, label %.loopexit, label %.lr.ph132, !llvm.loop !118

.loopexit:                                        ; preds = %.lr.ph118, %.lr.ph132, %middle.block220, %vec.epilog.middle.block239, %middle.block, %vec.epilog.middle.block, %.preheader103, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond150.not = icmp eq i32 %i.p, %lftr.wideiv
  br i1 %exitcond150.not, label %._crit_edge, label %.noexc

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

declare void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn13Scale_x86_fma21forward_inplace_bf16sERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !34     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !34
  %i.h = load i32, ptr %0, align 4, !tbaa !34     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !34
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !34
  %i.k = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %.not37 = icmp sgt i32 %i.k, %i.j
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 212
  %i.o = sext i32 %i.k to i64
  %i.p = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit
  %indvars.iv = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit ] ; 3 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !23
  %i.r = load i32, ptr %i.l, align 4, !tbaa !32
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %indvars.iv, %i.s
  %i.u = load i64, ptr %i.m, align 8, !tbaa !31
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v ; 4 uses
  %i.x = load ptr, ptr %4, align 8, !tbaa !39
  %i.y = load i32, ptr %5, align 4, !tbaa !34     ; 5 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %indvars.iv, %i.z           ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.aa ; 6 uses
  %i.ac = load i32, ptr %i.n, align 4, !tbaa !52
  %.not25 = icmp eq i32 %i.ac, 0
  br i1 %.not25, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %7, align 8, !tbaa !39
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.aa ; 3 uses
  %i.af = load i32, ptr %8, align 4, !tbaa !34    ; 8 uses
  %i.ag = icmp eq i32 %i.y, 4
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load float, ptr %i.ab, align 4, !tbaa !57 ; 2 uses
  %i.ai = insertelement <4 x float> poison, float %i.ah, i64 0 ; 2 uses
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ak = load float, ptr %i.ae, align 4, !tbaa !57 ; 2 uses
  %i.al = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.an = icmp eq i32 %i.y, 8
  br i1 %i.an, label %bb.g, label %.thread51.i

.thread51.i:                                      ; preds = %bb.e
  %i.ao = shufflevector <4 x float> %i.ai, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ap = load <4 x float>, ptr %i.ab, align 1    ; 3 uses
  %i.aq = load <4 x float>, ptr %i.ae, align 1    ; 2 uses
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.as = extractelement <4 x float> %i.ap, i64 0
  %i.at = extractelement <4 x float> %i.aq, i64 0
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.au = load <8 x float>, ptr %i.ab, align 4    ; 2 uses
  %i.av = load <8 x float>, ptr %i.ae, align 4    ; 2 uses
  %i.aw = extractelement <8 x float> %i.au, i64 0
  %i.ax = extractelement <8 x float> %i.av, i64 0
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread51.i
  %i.ay = phi float [ %i.ak, %.thread51.i ], [ %i.at, %bb.f ]
  %i.az = phi float [ %i.ah, %.thread51.i ], [ %i.as, %bb.f ]
  %i.ba = phi <8 x float> [ %i.ao, %.thread51.i ], [ %i.ar, %bb.f ]
  %i.bb = phi <4 x float> [ %i.aj, %.thread51.i ], [ %i.ap, %bb.f ]
  %i.bc = phi <4 x float> [ %i.am, %.thread51.i ], [ %i.aq, %bb.f ] ; 2 uses
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.be = phi float [ %i.ax, %bb.g ], [ %i.ay, %bb.h ] ; 3 uses
  %i.bf = phi float [ %i.aw, %bb.g ], [ %i.az, %bb.h ] ; 3 uses
  %i.bg = phi <8 x float> [ %i.au, %bb.g ], [ %i.ba, %bb.h ]
  %i.bh = phi <4 x float> [ %i.aj, %bb.g ], [ %i.bb, %bb.h ]
  %i.bi = phi <4 x float> [ %i.am, %bb.g ], [ %i.bc, %bb.h ]
  %i.bj = phi fast <8 x float> [ %i.av, %bb.g ], [ %i.bd, %bb.h ]
  %i.bk = icmp sgt i32 %i.af, 7
  br i1 %i.bk, label %.lr.ph.i, label %.preheader52.i

.preheader52.loopexit.i:                          ; preds = %.lr.ph.i
  %i.bl = and i32 %i.af, 2147483640
  br label %.preheader52.i

.preheader52.i:                                   ; preds = %.preheader52.loopexit.i, %bb.i
  %.031.lcssa.i = phi ptr [ %i.w, %bb.i ], [ %i.ca, %.preheader52.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.bl, %.preheader52.loopexit.i ] ; 3 uses
  %i.bm = or disjoint i32 %.0.lcssa.i, 3
  %i.bn = icmp slt i32 %i.bm, %i.af
  br i1 %i.bn, label %.lr.ph58.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.054.i = phi i32 [ %i.cb, %.lr.ph.i ], [ 0, %bb.i ]
  %.03153.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %i.w, %bb.i ] ; 3 uses
  %i.bo = load <8 x i16>, ptr %.03153.i, align 1, !tbaa !64 ; 2 uses
  %i.bp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.br = shufflevector <8 x i16> %i.bp, <8 x i16> %i.bq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bs = bitcast <16 x i16> %i.br to <8 x float>
  %i.bt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %i.bj)
  %i.bu = bitcast <8 x float> %i.bt to <8 x i32>  ; 2 uses
  %i.bv = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bw = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bx = lshr <4 x i32> %i.bv, splat (i32 16)
  %i.by = lshr <4 x i32> %i.bw, splat (i32 16)
  %i.bz = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bx, <4 x i32> %i.by)
  store <8 x i16> %i.bz, ptr %.03153.i, align 1, !tbaa !64
  %i.ca = getelementptr inbounds nuw i8, ptr %.03153.i, i64 16 ; 2 uses
  %i.cb = add nuw nsw i32 %.054.i, 8              ; 2 uses
  %i.cc = or disjoint i32 %i.cb, 7
  %i.cd = icmp slt i32 %i.cc, %i.af
  br i1 %i.cd, label %.lr.ph.i, label %.preheader52.loopexit.i, !llvm.loop !1

.preheader.i:                                     ; preds = %.lr.ph58.i, %.preheader52.i
  %.132.lcssa.i = phi ptr [ %.031.lcssa.i, %.preheader52.i ], [ %i.dx, %.lr.ph58.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader52.i ], [ %i.dy, %.lr.ph58.i ] ; 5 uses
  %i.ce = icmp slt i32 %.1.lcssa.i, %i.af
  br i1 %i.ce, label %iter.check95, label %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit

iter.check95:                                     ; preds = %.preheader.i
  %i.cf = xor i32 %.1.lcssa.i, -1
  %i.cg = add i32 %i.af, %i.cf                    ; 3 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 5 uses
  %min.iters.check77 = icmp ult i32 %i.cg, 3
  br i1 %min.iters.check77, label %.lr.ph63.i.preheader, label %vector.main.loop.iter.check78

vector.main.loop.iter.check78:                    ; preds = %iter.check95
  %min.iters.check79 = icmp ult i32 %i.cg, 15
  br i1 %min.iters.check79, label %vec.epilog.ph99, label %vector.ph80

vector.ph80:                                      ; preds = %vector.main.loop.iter.check78
  %i.cj = and i64 %i.ci, 12
  %n.vec81 = and i64 %i.ci, 8589934576            ; 5 uses
  %i.ck = trunc i64 %n.vec81 to i32
  %i.cl = add i32 %.1.lcssa.i, %i.ck
  %i.cm = shl nuw nsw i64 %n.vec81, 1
  %i.cn = getelementptr i8, ptr %.132.lcssa.i, i64 %i.cm
  %broadcast.splatinsert82 = insertelement <16 x float> poison, float %i.bf, i64 0
  %broadcast.splat83 = shufflevector <16 x float> %broadcast.splatinsert82, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert84 = insertelement <16 x float> poison, float %i.be, i64 0
  %broadcast.splat85 = shufflevector <16 x float> %broadcast.splatinsert84, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body86

vector.body86:                                    ; preds = %vector.ph80, %vector.body86
  %index87 = phi i64 [ 0, %vector.ph80 ], [ %index.next90, %vector.body86 ] ; 2 uses
  %i.co = shl i64 %index87, 1
  %next.gep88 = getelementptr i8, ptr %.132.lcssa.i, i64 %i.co ; 2 uses
  %wide.load89 = load <16 x i16>, ptr %next.gep88, align 2, !tbaa !55
  %i.cp = zext <16 x i16> %wide.load89 to <16 x i32>
  %i.cq = shl nuw <16 x i32> %i.cp, splat (i32 16)
  %i.cr = bitcast <16 x i32> %i.cq to <16 x float>
  %i.cs = fmul fast <16 x float> %broadcast.splat83, %i.cr
  %i.ct = fadd fast <16 x float> %i.cs, %broadcast.splat85
  %i.cu = bitcast <16 x float> %i.ct to <16 x i32>
  %i.cv = lshr <16 x i32> %i.cu, splat (i32 16)
  %i.cw = trunc nuw <16 x i32> %i.cv to <16 x i16>
  store <16 x i16> %i.cw, ptr %next.gep88, align 2, !tbaa !55
  %index.next90 = add nuw i64 %index87, 16        ; 2 uses
  %i.cx = icmp eq i64 %index.next90, %n.vec81
  br i1 %i.cx, label %middle.block91, label %vector.body86, !llvm.loop !120

middle.block91:                                   ; preds = %vector.body86
  %cmp.n92 = icmp eq i64 %i.ci, %n.vec81
  br i1 %cmp.n92, label %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit, label %vec.epilog.iter.check97

vec.epilog.iter.check97:                          ; preds = %middle.block91
  %min.epilog.iters.check98 = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check98, label %.lr.ph63.i.preheader, label %vec.epilog.ph99, !prof !68

vec.epilog.ph99:                                  ; preds = %vector.main.loop.iter.check78, %vec.epilog.iter.check97
  %vec.epilog.resume.val93 = phi i64 [ %n.vec81, %vec.epilog.iter.check97 ], [ 0, %vector.main.loop.iter.check78 ]
  %n.vec100 = and i64 %i.ci, 8589934588           ; 4 uses
  %i.cy = trunc i64 %n.vec100 to i32
  %i.cz = add i32 %.1.lcssa.i, %i.cy
  %i.da = shl nuw nsw i64 %n.vec100, 1
  %i.db = getelementptr i8, ptr %.132.lcssa.i, i64 %i.da
  %broadcast.splatinsert101 = insertelement <4 x float> poison, float %i.bf, i64 0
  %broadcast.splat102 = shufflevector <4 x float> %broadcast.splatinsert101, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat104 = shufflevector <4 x float> %broadcast.splatinsert103, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body105

vec.epilog.vector.body105:                        ; preds = %vec.epilog.vector.body105, %vec.epilog.ph99
  %index106 = phi i64 [ %vec.epilog.resume.val93, %vec.epilog.ph99 ], [ %index.next109, %vec.epilog.vector.body105 ] ; 2 uses
  %i.dc = shl i64 %index106, 1
  %next.gep107 = getelementptr i8, ptr %.132.lcssa.i, i64 %i.dc ; 2 uses
  %wide.load108 = load <4 x i16>, ptr %next.gep107, align 2, !tbaa !55
  %i.dd = zext <4 x i16> %wide.load108 to <4 x i32>
  %i.de = shl nuw <4 x i32> %i.dd, splat (i32 16)
  %i.df = bitcast <4 x i32> %i.de to <4 x float>
  %i.dg = fmul fast <4 x float> %broadcast.splat102, %i.df
  %i.dh = fadd fast <4 x float> %i.dg, %broadcast.splat104
  %i.di = bitcast <4 x float> %i.dh to <4 x i32>
  %i.dj = lshr <4 x i32> %i.di, splat (i32 16)
  %i.dk = trunc nuw <4 x i32> %i.dj to <4 x i16>
  store <4 x i16> %i.dk, ptr %next.gep107, align 2, !tbaa !55
  %index.next109 = add nuw i64 %index106, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next109, %n.vec100
  br i1 %i.dl, label %vec.epilog.middle.block110, label %vec.epilog.vector.body105, !llvm.loop !121

vec.epilog.middle.block110:                       ; preds = %vec.epilog.vector.body105
  %cmp.n111 = icmp eq i64 %i.ci, %n.vec100
  br i1 %cmp.n111, label %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit, label %.lr.ph63.i.preheader

.lr.ph63.i.preheader:                             ; preds = %iter.check95, %vec.epilog.iter.check97, %vec.epilog.middle.block110
  %.262.i.ph = phi i32 [ %.1.lcssa.i, %iter.check95 ], [ %i.cl, %vec.epilog.iter.check97 ], [ %i.cz, %vec.epilog.middle.block110 ]
  %.23361.i.ph = phi ptr [ %.132.lcssa.i, %iter.check95 ], [ %i.cn, %vec.epilog.iter.check97 ], [ %i.db, %vec.epilog.middle.block110 ]
  br label %.lr.ph63.i

.lr.ph58.i:                                       ; preds = %.preheader52.i, %.lr.ph58.i
  %.157.i = phi i32 [ %i.dy, %.lr.ph58.i ], [ %.0.lcssa.i, %.preheader52.i ]
  %.13256.i = phi ptr [ %i.dx, %.lr.ph58.i ], [ %.031.lcssa.i, %.preheader52.i ] ; 3 uses
  %i.dm = load i64, ptr %.13256.i, align 1, !tbaa !64
  %i.dn = insertelement <2 x i64> poison, i64 %i.dm, i64 0
  %i.do = bitcast <2 x i64> %i.dn to <8 x i16>
  %i.dp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.do, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dq = bitcast <8 x i16> %i.dp to <4 x float>
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> nofpclass(nan inf) %i.bh, <4 x float> nofpclass(nan inf) %i.bi)
  %i.ds = bitcast <4 x float> %i.dr to <4 x i32>
  %i.dt = lshr <4 x i32> %i.ds, splat (i32 16)
  %i.du = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dt, <4 x i32> poison)
  %i.dv = bitcast <8 x i16> %i.du to <2 x i64>
  %i.dw = extractelement <2 x i64> %i.dv, i64 0
  store i64 %i.dw, ptr %.13256.i, align 1, !tbaa !64
  %i.dx = getelementptr inbounds nuw i8, ptr %.13256.i, i64 8 ; 2 uses
  %i.dy = add nuw nsw i32 %.157.i, 4              ; 3 uses
  %i.dz = or disjoint i32 %i.dy, 3
  %i.ea = icmp slt i32 %i.dz, %i.af
  br i1 %i.ea, label %.lr.ph58.i, label %.preheader.i, !llvm.loop !2

.lr.ph63.i:                                       ; preds = %.lr.ph63.i.preheader, %.lr.ph63.i
  %.262.i = phi i32 [ %i.el, %.lr.ph63.i ], [ %.262.i.ph, %.lr.ph63.i.preheader ]
  %.23361.i = phi ptr [ %i.ek, %.lr.ph63.i ], [ %.23361.i.ph, %.lr.ph63.i.preheader ] ; 3 uses
  %i.eb = load i16, ptr %.23361.i, align 2, !tbaa !55
  %i.ec = zext i16 %i.eb to i32
  %i.ed = shl nuw i32 %i.ec, 16
  %i.ee = bitcast i32 %i.ed to float
  %i.ef = fmul fast float %i.bf, %i.ee
  %i.eg = fadd fast float %i.ef, %i.be
  %i.eh = bitcast float %i.eg to i32
  %i.ei = lshr i32 %i.eh, 16
  %i.ej = trunc nuw i32 %i.ei to i16
  store i16 %i.ej, ptr %.23361.i, align 2, !tbaa !55
  %i.ek = getelementptr inbounds nuw i8, ptr %.23361.i, i64 2
  %i.el = add nuw nsw i32 %.262.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.el, %i.af
  br i1 %exitcond.not.i, label %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit, label %.lr.ph63.i, !llvm.loop !122

bb.j:                                             ; preds = %bb.c
  %i.em = load i32, ptr %8, align 4, !tbaa !34    ; 8 uses
  %i.en = icmp eq i32 %i.y, 4
  br i1 %i.en, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j
  %i.eo = load <4 x float>, ptr %i.ab, align 1    ; 2 uses
  %i.ep = extractelement <4 x float> %i.eo, i64 0
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.eq = load float, ptr %i.ab, align 4, !tbaa !57 ; 2 uses
  %i.er = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.et = icmp eq i32 %i.y, 8
  br i1 %i.et, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eu = load <8 x float>, ptr %i.ab, align 4    ; 2 uses
  %i.ev = extractelement <8 x float> %i.eu, i64 0
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %.thread.i
  %i.ew = phi float [ %i.ep, %.thread.i ], [ %i.eq, %bb.k ]
  %i.ex = phi <4 x float> [ %i.eo, %.thread.i ], [ %i.es, %bb.k ] ; 2 uses
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ez = phi float [ %i.ev, %bb.l ], [ %i.ew, %bb.m ] ; 3 uses
  %i.fa = phi <4 x float> [ %i.es, %bb.l ], [ %i.ex, %bb.m ]
  %i.fb = phi fast <8 x float> [ %i.eu, %bb.l ], [ %i.ey, %bb.m ]
  %i.fc = icmp sgt i32 %i.em, 7
  br i1 %i.fc, label %.lr.ph.i30, label %.preheader36.i

.preheader36.loopexit.i:                          ; preds = %.lr.ph.i30
  %i.fd = and i32 %i.em, 2147483640
  br label %.preheader36.i

.preheader36.i:                                   ; preds = %.preheader36.loopexit.i, %bb.n
  %.025.lcssa.i = phi ptr [ %i.w, %bb.n ], [ %i.fs, %.preheader36.loopexit.i ] ; 2 uses
  %.0.lcssa.i26 = phi i32 [ 0, %bb.n ], [ %i.fd, %.preheader36.loopexit.i ] ; 3 uses
  %i.fe = or disjoint i32 %.0.lcssa.i26, 3
  %i.ff = icmp slt i32 %i.fe, %i.em
  br i1 %i.ff, label %.lr.ph42.i, label %.preheader.i27

.lr.ph.i30:                                       ; preds = %bb.n, %.lr.ph.i30
  %.038.i = phi i32 [ %i.ft, %.lr.ph.i30 ], [ 0, %bb.n ]
  %.02537.i = phi ptr [ %i.fs, %.lr.ph.i30 ], [ %i.w, %bb.n ] ; 3 uses
  %i.fg = load <8 x i16>, ptr %.02537.i, align 1, !tbaa !64 ; 2 uses
  %i.fh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fi = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fj = shufflevector <8 x i16> %i.fh, <8 x i16> %i.fi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fk = bitcast <16 x i16> %i.fj to <8 x float>
  %i.fl = fmul fast <8 x float> %i.fb, %i.fk
  %i.fm = bitcast <8 x float> %i.fl to <8 x i32>  ; 2 uses
  %i.fn = shufflevector <8 x i32> %i.fm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fo = shufflevector <8 x i32> %i.fm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fp = lshr <4 x i32> %i.fn, splat (i32 16)
  %i.fq = lshr <4 x i32> %i.fo, splat (i32 16)
  %i.fr = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fp, <4 x i32> %i.fq)
  store <8 x i16> %i.fr, ptr %.02537.i, align 1, !tbaa !64
  %i.fs = getelementptr inbounds nuw i8, ptr %.02537.i, i64 16 ; 2 uses
  %i.ft = add nuw nsw i32 %.038.i, 8              ; 2 uses
  %i.fu = or disjoint i32 %i.ft, 7
  %i.fv = icmp slt i32 %i.fu, %i.em
  br i1 %i.fv, label %.lr.ph.i30, label %.preheader36.loopexit.i, !llvm.loop !3

.preheader.i27:                                   ; preds = %.lr.ph42.i, %.preheader36.i
  %.126.lcssa.i = phi ptr [ %.025.lcssa.i, %.preheader36.i ], [ %i.hn, %.lr.ph42.i ] ; 5 uses
  %.1.lcssa.i28 = phi i32 [ %.0.lcssa.i26, %.preheader36.i ], [ %i.ho, %.lr.ph42.i ] ; 5 uses
  %i.fw = icmp slt i32 %.1.lcssa.i28, %i.em
  br i1 %i.fw, label %iter.check, label %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit

iter.check:                                       ; preds = %.preheader.i27
  %i.fx = xor i32 %.1.lcssa.i28, -1
  %i.fy = add i32 %i.em, %i.fx                    ; 3 uses
  %i.fz = zext i32 %i.fy to i64
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.fy, 3
  br i1 %min.iters.check, label %.lr.ph47.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check65 = icmp ult i32 %i.fy, 15
  br i1 %min.iters.check65, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gb = and i64 %i.ga, 12
  %n.vec = and i64 %i.ga, 8589934576              ; 5 uses
  %i.gc = trunc i64 %n.vec to i32
  %i.gd = add i32 %.1.lcssa.i28, %i.gc
  %i.ge = shl nuw nsw i64 %n.vec, 1
  %i.gf = getelementptr i8, ptr %.126.lcssa.i, i64 %i.ge
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.ez, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gg = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.126.lcssa.i, i64 %i.gg ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !55
  %i.gh = zext <16 x i16> %wide.load to <16 x i32>
  %i.gi = shl nuw <16 x i32> %i.gh, splat (i32 16)
  %i.gj = bitcast <16 x i32> %i.gi to <16 x float>
  %i.gk = fmul fast <16 x float> %broadcast.splat, %i.gj
  %i.gl = bitcast <16 x float> %i.gk to <16 x i32>
  %i.gm = lshr <16 x i32> %i.gl, splat (i32 16)
  %i.gn = trunc nuw <16 x i32> %i.gm to <16 x i16>
  store <16 x i16> %i.gn, ptr %next.gep, align 2, !tbaa !55
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.go = icmp eq i64 %index.next, %n.vec
  br i1 %i.go, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ga, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph47.i.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec67 = and i64 %i.ga, 8589934588            ; 4 uses
  %i.gp = trunc i64 %n.vec67 to i32
  %i.gq = add i32 %.1.lcssa.i28, %i.gp
  %i.gr = shl nuw nsw i64 %n.vec67, 1
  %i.gs = getelementptr i8, ptr %.126.lcssa.i, i64 %i.gr
  %broadcast.splatinsert68 = insertelement <4 x float> poison, float %i.ez, i64 0
  %broadcast.splat69 = shufflevector <4 x float> %broadcast.splatinsert68, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index70 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next73, %vec.epilog.vector.body ] ; 2 uses
  %i.gt = shl i64 %index70, 1
  %next.gep71 = getelementptr i8, ptr %.126.lcssa.i, i64 %i.gt ; 2 uses
  %wide.load72 = load <4 x i16>, ptr %next.gep71, align 2, !tbaa !55
  %i.gu = zext <4 x i16> %wide.load72 to <4 x i32>
  %i.gv = shl nuw <4 x i32> %i.gu, splat (i32 16)
  %i.gw = bitcast <4 x i32> %i.gv to <4 x float>
  %i.gx = fmul fast <4 x float> %broadcast.splat69, %i.gw
  %i.gy = bitcast <4 x float> %i.gx to <4 x i32>
  %i.gz = lshr <4 x i32> %i.gy, splat (i32 16)
  %i.ha = trunc nuw <4 x i32> %i.gz to <4 x i16>
  store <4 x i16> %i.ha, ptr %next.gep71, align 2, !tbaa !55
  %index.next73 = add nuw i64 %index70, 4         ; 2 uses
  %i.hb = icmp eq i64 %index.next73, %n.vec67
  br i1 %i.hb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n74 = icmp eq i64 %i.ga, %n.vec67
  br i1 %cmp.n74, label %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit, label %.lr.ph47.i.preheader

.lr.ph47.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.246.i.ph = phi i32 [ %.1.lcssa.i28, %iter.check ], [ %i.gd, %vec.epilog.iter.check ], [ %i.gq, %vec.epilog.middle.block ]
  %.22745.i.ph = phi ptr [ %.126.lcssa.i, %iter.check ], [ %i.gf, %vec.epilog.iter.check ], [ %i.gs, %vec.epilog.middle.block ]
  br label %.lr.ph47.i

.lr.ph42.i:                                       ; preds = %.preheader36.i, %.lr.ph42.i
  %.141.i = phi i32 [ %i.ho, %.lr.ph42.i ], [ %.0.lcssa.i26, %.preheader36.i ]
  %.12640.i = phi ptr [ %i.hn, %.lr.ph42.i ], [ %.025.lcssa.i, %.preheader36.i ] ; 3 uses
  %i.hc = load i64, ptr %.12640.i, align 1, !tbaa !64
  %i.hd = insertelement <2 x i64> poison, i64 %i.hc, i64 0
  %i.he = bitcast <2 x i64> %i.hd to <8 x i16>
  %i.hf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.he, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hg = bitcast <8 x i16> %i.hf to <4 x float>
  %i.hh = fmul fast <4 x float> %i.fa, %i.hg
  %i.hi = bitcast <4 x float> %i.hh to <4 x i32>
  %i.hj = lshr <4 x i32> %i.hi, splat (i32 16)
  %i.hk = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hj, <4 x i32> poison)
  %i.hl = bitcast <8 x i16> %i.hk to <2 x i64>
  %i.hm = extractelement <2 x i64> %i.hl, i64 0
  store i64 %i.hm, ptr %.12640.i, align 1, !tbaa !64
  %i.hn = getelementptr inbounds nuw i8, ptr %.12640.i, i64 8 ; 2 uses
  %i.ho = add nuw nsw i32 %.141.i, 4              ; 3 uses
  %i.hp = or disjoint i32 %i.ho, 3
  %i.hq = icmp slt i32 %i.hp, %i.em
  br i1 %i.hq, label %.lr.ph42.i, label %.preheader.i27, !llvm.loop !4

.lr.ph47.i:                                       ; preds = %.lr.ph47.i.preheader, %.lr.ph47.i
  %.246.i = phi i32 [ %i.ia, %.lr.ph47.i ], [ %.246.i.ph, %.lr.ph47.i.preheader ]
  %.22745.i = phi ptr [ %i.hz, %.lr.ph47.i ], [ %.22745.i.ph, %.lr.ph47.i.preheader ] ; 3 uses
  %i.hr = load i16, ptr %.22745.i, align 2, !tbaa !55
  %i.hs = zext i16 %i.hr to i32
  %i.ht = shl nuw i32 %i.hs, 16
  %i.hu = bitcast i32 %i.ht to float
  %i.hv = fmul fast float %i.ez, %i.hu
  %i.hw = bitcast float %i.hv to i32
  %i.hx = lshr i32 %i.hw, 16
  %i.hy = trunc nuw i32 %i.hx to i16
  store i16 %i.hy, ptr %.22745.i, align 2, !tbaa !55
  %i.hz = getelementptr inbounds nuw i8, ptr %.22745.i, i64 2
  %i.ia = add nuw nsw i32 %.246.i, 1              ; 2 uses
  %exitcond.not.i29 = icmp eq i32 %i.ia, %i.em
  br i1 %exitcond.not.i29, label %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit, label %.lr.ph47.i, !llvm.loop !125

_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit:       ; preds = %.lr.ph63.i, %.lr.ph47.i, %middle.block91, %vec.epilog.middle.block110, %middle.block, %vec.epilog.middle.block, %.preheader.i27, %.preheader.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.p, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn13Scale_x86_fma21forward_inplace_bf16sERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !34     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !34
  %i.h = load i32, ptr %0, align 4, !tbaa !34     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !34
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !34
  %i.k = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %.not44 = icmp sgt i32 %i.k, %i.j
  br i1 %.not44, label %._crit_edge, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 212
  %i.o = sext i32 %i.k to i64
  %i.p = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit
  %indvars.iv = phi i64 [ %i.o, %.noexc.lr.ph ], [ %indvars.iv.next, %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit ] ; 3 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !23, !noalias !134
  %i.r = load i64, ptr %i.l, align 8, !tbaa !24, !noalias !134
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !31, !noalias !134
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 4 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !39
  %i.x = load i32, ptr %5, align 4, !tbaa !34     ; 5 uses
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %indvars.iv, %i.y            ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.z ; 6 uses
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !52
  %.not25 = icmp eq i32 %i.ab, 0
  br i1 %.not25, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.ac = load ptr, ptr %7, align 8, !tbaa !39
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.z ; 3 uses
  %i.ae = load i32, ptr %8, align 4, !tbaa !34    ; 8 uses
  %i.af = icmp eq i32 %i.x, 4
  br i1 %i.af, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load float, ptr %i.aa, align 4, !tbaa !57 ; 2 uses
  %i.ah = insertelement <4 x float> poison, float %i.ag, i64 0 ; 2 uses
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aj = load float, ptr %i.ad, align 4, !tbaa !57 ; 2 uses
  %i.ak = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.am = icmp eq i32 %i.x, 8
  br i1 %i.am, label %bb.f, label %.thread51.i

.thread51.i:                                      ; preds = %bb.d
  %i.an = shufflevector <4 x float> %i.ah, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ao = load <4 x float>, ptr %i.aa, align 1    ; 3 uses
  %i.ap = load <4 x float>, ptr %i.ad, align 1    ; 2 uses
  %i.aq = shufflevector <4 x float> %i.ao, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ar = extractelement <4 x float> %i.ao, i64 0
  %i.as = extractelement <4 x float> %i.ap, i64 0
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.at = load <8 x float>, ptr %i.aa, align 4    ; 2 uses
  %i.au = load <8 x float>, ptr %i.ad, align 4    ; 2 uses
  %i.av = extractelement <8 x float> %i.at, i64 0
  %i.aw = extractelement <8 x float> %i.au, i64 0
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %.thread51.i
  %i.ax = phi float [ %i.aj, %.thread51.i ], [ %i.as, %bb.e ]
  %i.ay = phi float [ %i.ag, %.thread51.i ], [ %i.ar, %bb.e ]
  %i.az = phi <8 x float> [ %i.an, %.thread51.i ], [ %i.aq, %bb.e ]
  %i.ba = phi <4 x float> [ %i.ai, %.thread51.i ], [ %i.ao, %bb.e ]
  %i.bb = phi <4 x float> [ %i.al, %.thread51.i ], [ %i.ap, %bb.e ] ; 2 uses
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bd = phi float [ %i.aw, %bb.f ], [ %i.ax, %bb.g ] ; 3 uses
  %i.be = phi float [ %i.av, %bb.f ], [ %i.ay, %bb.g ] ; 3 uses
  %i.bf = phi <8 x float> [ %i.at, %bb.f ], [ %i.az, %bb.g ]
  %i.bg = phi <4 x float> [ %i.ai, %bb.f ], [ %i.ba, %bb.g ]
  %i.bh = phi <4 x float> [ %i.al, %bb.f ], [ %i.bb, %bb.g ]
  %i.bi = phi fast <8 x float> [ %i.au, %bb.f ], [ %i.bc, %bb.g ]
  %i.bj = icmp sgt i32 %i.ae, 7
  br i1 %i.bj, label %.lr.ph.i, label %.preheader52.i

.preheader52.loopexit.i:                          ; preds = %.lr.ph.i
  %i.bk = and i32 %i.ae, 2147483640
  br label %.preheader52.i

.preheader52.i:                                   ; preds = %.preheader52.loopexit.i, %bb.h
  %.031.lcssa.i = phi ptr [ %i.v, %bb.h ], [ %i.bz, %.preheader52.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.bk, %.preheader52.loopexit.i ] ; 3 uses
  %i.bl = or disjoint i32 %.0.lcssa.i, 3
  %i.bm = icmp slt i32 %i.bl, %i.ae
  br i1 %i.bm, label %.lr.ph58.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.054.i = phi i32 [ %i.ca, %.lr.ph.i ], [ 0, %bb.h ]
  %.03153.i = phi ptr [ %i.bz, %.lr.ph.i ], [ %i.v, %bb.h ] ; 3 uses
  %i.bn = load <8 x i16>, ptr %.03153.i, align 1, !tbaa !64 ; 2 uses
  %i.bo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bp = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bq = shufflevector <8 x i16> %i.bo, <8 x i16> %i.bp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.br = bitcast <16 x i16> %i.bq to <8 x float>
  %i.bs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.br, <8 x float> nofpclass(nan inf) %i.bf, <8 x float> nofpclass(nan inf) %i.bi)
  %i.bt = bitcast <8 x float> %i.bs to <8 x i32>  ; 2 uses
  %i.bu = shufflevector <8 x i32> %i.bt, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = shufflevector <8 x i32> %i.bt, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bw = lshr <4 x i32> %i.bu, splat (i32 16)
  %i.bx = lshr <4 x i32> %i.bv, splat (i32 16)
  %i.by = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bw, <4 x i32> %i.bx)
  store <8 x i16> %i.by, ptr %.03153.i, align 1, !tbaa !64
  %i.bz = getelementptr inbounds nuw i8, ptr %.03153.i, i64 16 ; 2 uses
  %i.ca = add nuw nsw i32 %.054.i, 8              ; 2 uses
  %i.cb = or disjoint i32 %i.ca, 7
  %i.cc = icmp slt i32 %i.cb, %i.ae
  br i1 %i.cc, label %.lr.ph.i, label %.preheader52.loopexit.i, !llvm.loop !1

.preheader.i:                                     ; preds = %.lr.ph58.i, %.preheader52.i
  %.132.lcssa.i = phi ptr [ %.031.lcssa.i, %.preheader52.i ], [ %i.dw, %.lr.ph58.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader52.i ], [ %i.dx, %.lr.ph58.i ] ; 5 uses
  %i.cd = icmp slt i32 %.1.lcssa.i, %i.ae
  br i1 %i.cd, label %iter.check102, label %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit

iter.check102:                                    ; preds = %.preheader.i
  %i.ce = xor i32 %.1.lcssa.i, -1
  %i.cf = add i32 %i.ae, %i.ce                    ; 3 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 5 uses
  %min.iters.check84 = icmp ult i32 %i.cf, 3
  br i1 %min.iters.check84, label %.lr.ph63.i.preheader, label %vector.main.loop.iter.check85

vector.main.loop.iter.check85:                    ; preds = %iter.check102
  %min.iters.check86 = icmp ult i32 %i.cf, 15
  br i1 %min.iters.check86, label %vec.epilog.ph106, label %vector.ph87

vector.ph87:                                      ; preds = %vector.main.loop.iter.check85
  %i.ci = and i64 %i.ch, 12
  %n.vec88 = and i64 %i.ch, 8589934576            ; 5 uses
  %i.cj = trunc i64 %n.vec88 to i32
  %i.ck = add i32 %.1.lcssa.i, %i.cj
  %i.cl = shl nuw nsw i64 %n.vec88, 1
  %i.cm = getelementptr i8, ptr %.132.lcssa.i, i64 %i.cl
  %broadcast.splatinsert89 = insertelement <16 x float> poison, float %i.be, i64 0
  %broadcast.splat90 = shufflevector <16 x float> %broadcast.splatinsert89, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <16 x float> poison, float %i.bd, i64 0
  %broadcast.splat92 = shufflevector <16 x float> %broadcast.splatinsert91, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body93

vector.body93:                                    ; preds = %vector.ph87, %vector.body93
  %index94 = phi i64 [ 0, %vector.ph87 ], [ %index.next97, %vector.body93 ] ; 2 uses
  %i.cn = shl i64 %index94, 1
  %next.gep95 = getelementptr i8, ptr %.132.lcssa.i, i64 %i.cn ; 2 uses
  %wide.load96 = load <16 x i16>, ptr %next.gep95, align 2, !tbaa !55
  %i.co = zext <16 x i16> %wide.load96 to <16 x i32>
  %i.cp = shl nuw <16 x i32> %i.co, splat (i32 16)
  %i.cq = bitcast <16 x i32> %i.cp to <16 x float>
  %i.cr = fmul fast <16 x float> %broadcast.splat90, %i.cq
  %i.cs = fadd fast <16 x float> %i.cr, %broadcast.splat92
  %i.ct = bitcast <16 x float> %i.cs to <16 x i32>
  %i.cu = lshr <16 x i32> %i.ct, splat (i32 16)
  %i.cv = trunc nuw <16 x i32> %i.cu to <16 x i16>
  store <16 x i16> %i.cv, ptr %next.gep95, align 2, !tbaa !55
  %index.next97 = add nuw i64 %index94, 16        ; 2 uses
  %i.cw = icmp eq i64 %index.next97, %n.vec88
  br i1 %i.cw, label %middle.block98, label %vector.body93, !llvm.loop !128

middle.block98:                                   ; preds = %vector.body93
  %cmp.n99 = icmp eq i64 %i.ch, %n.vec88
  br i1 %cmp.n99, label %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit, label %vec.epilog.iter.check104

vec.epilog.iter.check104:                         ; preds = %middle.block98
  %min.epilog.iters.check105 = icmp eq i64 %i.ci, 0
  br i1 %min.epilog.iters.check105, label %.lr.ph63.i.preheader, label %vec.epilog.ph106, !prof !68

vec.epilog.ph106:                                 ; preds = %vector.main.loop.iter.check85, %vec.epilog.iter.check104
  %vec.epilog.resume.val100 = phi i64 [ %n.vec88, %vec.epilog.iter.check104 ], [ 0, %vector.main.loop.iter.check85 ]
  %n.vec107 = and i64 %i.ch, 8589934588           ; 4 uses
  %i.cx = trunc i64 %n.vec107 to i32
  %i.cy = add i32 %.1.lcssa.i, %i.cx
  %i.cz = shl nuw nsw i64 %n.vec107, 1
  %i.da = getelementptr i8, ptr %.132.lcssa.i, i64 %i.cz
  %broadcast.splatinsert108 = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat109 = shufflevector <4 x float> %broadcast.splatinsert108, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert110 = insertelement <4 x float> poison, float %i.bd, i64 0
  %broadcast.splat111 = shufflevector <4 x float> %broadcast.splatinsert110, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body112

vec.epilog.vector.body112:                        ; preds = %vec.epilog.vector.body112, %vec.epilog.ph106
  %index113 = phi i64 [ %vec.epilog.resume.val100, %vec.epilog.ph106 ], [ %index.next116, %vec.epilog.vector.body112 ] ; 2 uses
  %i.db = shl i64 %index113, 1
  %next.gep114 = getelementptr i8, ptr %.132.lcssa.i, i64 %i.db ; 2 uses
  %wide.load115 = load <4 x i16>, ptr %next.gep114, align 2, !tbaa !55
  %i.dc = zext <4 x i16> %wide.load115 to <4 x i32>
  %i.dd = shl nuw <4 x i32> %i.dc, splat (i32 16)
  %i.de = bitcast <4 x i32> %i.dd to <4 x float>
  %i.df = fmul fast <4 x float> %broadcast.splat109, %i.de
  %i.dg = fadd fast <4 x float> %i.df, %broadcast.splat111
  %i.dh = bitcast <4 x float> %i.dg to <4 x i32>
  %i.di = lshr <4 x i32> %i.dh, splat (i32 16)
  %i.dj = trunc nuw <4 x i32> %i.di to <4 x i16>
  store <4 x i16> %i.dj, ptr %next.gep114, align 2, !tbaa !55
  %index.next116 = add nuw i64 %index113, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next116, %n.vec107
  br i1 %i.dk, label %vec.epilog.middle.block117, label %vec.epilog.vector.body112, !llvm.loop !129

vec.epilog.middle.block117:                       ; preds = %vec.epilog.vector.body112
  %cmp.n118 = icmp eq i64 %i.ch, %n.vec107
  br i1 %cmp.n118, label %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit, label %.lr.ph63.i.preheader

.lr.ph63.i.preheader:                             ; preds = %iter.check102, %vec.epilog.iter.check104, %vec.epilog.middle.block117
  %.262.i.ph = phi i32 [ %.1.lcssa.i, %iter.check102 ], [ %i.ck, %vec.epilog.iter.check104 ], [ %i.cy, %vec.epilog.middle.block117 ]
  %.23361.i.ph = phi ptr [ %.132.lcssa.i, %iter.check102 ], [ %i.cm, %vec.epilog.iter.check104 ], [ %i.da, %vec.epilog.middle.block117 ]
  br label %.lr.ph63.i

.lr.ph58.i:                                       ; preds = %.preheader52.i, %.lr.ph58.i
  %.157.i = phi i32 [ %i.dx, %.lr.ph58.i ], [ %.0.lcssa.i, %.preheader52.i ]
  %.13256.i = phi ptr [ %i.dw, %.lr.ph58.i ], [ %.031.lcssa.i, %.preheader52.i ] ; 3 uses
  %i.dl = load i64, ptr %.13256.i, align 1, !tbaa !64
  %i.dm = insertelement <2 x i64> poison, i64 %i.dl, i64 0
  %i.dn = bitcast <2 x i64> %i.dm to <8 x i16>
  %i.do = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dp = bitcast <8 x i16> %i.do to <4 x float>
  %i.dq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dp, <4 x float> nofpclass(nan inf) %i.bg, <4 x float> nofpclass(nan inf) %i.bh)
  %i.dr = bitcast <4 x float> %i.dq to <4 x i32>
  %i.ds = lshr <4 x i32> %i.dr, splat (i32 16)
  %i.dt = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ds, <4 x i32> poison)
  %i.du = bitcast <8 x i16> %i.dt to <2 x i64>
  %i.dv = extractelement <2 x i64> %i.du, i64 0
  store i64 %i.dv, ptr %.13256.i, align 1, !tbaa !64
  %i.dw = getelementptr inbounds nuw i8, ptr %.13256.i, i64 8 ; 2 uses
  %i.dx = add nuw nsw i32 %.157.i, 4              ; 3 uses
  %i.dy = or disjoint i32 %i.dx, 3
  %i.dz = icmp slt i32 %i.dy, %i.ae
  br i1 %i.dz, label %.lr.ph58.i, label %.preheader.i, !llvm.loop !2

.lr.ph63.i:                                       ; preds = %.lr.ph63.i.preheader, %.lr.ph63.i
  %.262.i = phi i32 [ %i.ek, %.lr.ph63.i ], [ %.262.i.ph, %.lr.ph63.i.preheader ]
  %.23361.i = phi ptr [ %i.ej, %.lr.ph63.i ], [ %.23361.i.ph, %.lr.ph63.i.preheader ] ; 3 uses
  %i.ea = load i16, ptr %.23361.i, align 2, !tbaa !55
  %i.eb = zext i16 %i.ea to i32
  %i.ec = shl nuw i32 %i.eb, 16
  %i.ed = bitcast i32 %i.ec to float
  %i.ee = fmul fast float %i.be, %i.ed
  %i.ef = fadd fast float %i.ee, %i.bd
  %i.eg = bitcast float %i.ef to i32
  %i.eh = lshr i32 %i.eg, 16
  %i.ei = trunc nuw i32 %i.eh to i16
  store i16 %i.ei, ptr %.23361.i, align 2, !tbaa !55
  %i.ej = getelementptr inbounds nuw i8, ptr %.23361.i, i64 2
  %i.ek = add nuw nsw i32 %.262.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ek, %i.ae
  br i1 %exitcond.not.i, label %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit, label %.lr.ph63.i, !llvm.loop !130

bb.i:                                             ; preds = %.noexc
  %i.el = load i32, ptr %8, align 4, !tbaa !34    ; 8 uses
  %i.em = icmp eq i32 %i.x, 4
  br i1 %i.em, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.i
  %i.en = load <4 x float>, ptr %i.aa, align 1    ; 2 uses
  %i.eo = extractelement <4 x float> %i.en, i64 0
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ep = load float, ptr %i.aa, align 4, !tbaa !57 ; 2 uses
  %i.eq = insertelement <4 x float> poison, float %i.ep, i64 0
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.es = icmp eq i32 %i.x, 8
  br i1 %i.es, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.et = load <8 x float>, ptr %i.aa, align 4    ; 2 uses
  %i.eu = extractelement <8 x float> %i.et, i64 0
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %.thread.i
  %i.ev = phi float [ %i.eo, %.thread.i ], [ %i.ep, %bb.j ]
  %i.ew = phi <4 x float> [ %i.en, %.thread.i ], [ %i.er, %bb.j ] ; 2 uses
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ey = phi float [ %i.eu, %bb.k ], [ %i.ev, %bb.l ] ; 3 uses
  %i.ez = phi <4 x float> [ %i.er, %bb.k ], [ %i.ew, %bb.l ]
  %i.fa = phi fast <8 x float> [ %i.et, %bb.k ], [ %i.ex, %bb.l ]
  %i.fb = icmp sgt i32 %i.el, 7
  br i1 %i.fb, label %.lr.ph.i32, label %.preheader36.i

.preheader36.loopexit.i:                          ; preds = %.lr.ph.i32
  %i.fc = and i32 %i.el, 2147483640
  br label %.preheader36.i

.preheader36.i:                                   ; preds = %.preheader36.loopexit.i, %bb.m
  %.025.lcssa.i = phi ptr [ %i.v, %bb.m ], [ %i.fr, %.preheader36.loopexit.i ] ; 2 uses
  %.0.lcssa.i28 = phi i32 [ 0, %bb.m ], [ %i.fc, %.preheader36.loopexit.i ] ; 3 uses
  %i.fd = or disjoint i32 %.0.lcssa.i28, 3
  %i.fe = icmp slt i32 %i.fd, %i.el
  br i1 %i.fe, label %.lr.ph42.i, label %.preheader.i29

.lr.ph.i32:                                       ; preds = %bb.m, %.lr.ph.i32
  %.038.i = phi i32 [ %i.fs, %.lr.ph.i32 ], [ 0, %bb.m ]
  %.02537.i = phi ptr [ %i.fr, %.lr.ph.i32 ], [ %i.v, %bb.m ] ; 3 uses
  %i.ff = load <8 x i16>, ptr %.02537.i, align 1, !tbaa !64 ; 2 uses
  %i.fg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ff, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fh = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ff, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fi = shufflevector <8 x i16> %i.fg, <8 x i16> %i.fh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fj = bitcast <16 x i16> %i.fi to <8 x float>
  %i.fk = fmul fast <8 x float> %i.fa, %i.fj
  %i.fl = bitcast <8 x float> %i.fk to <8 x i32>  ; 2 uses
  %i.fm = shufflevector <8 x i32> %i.fl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fn = shufflevector <8 x i32> %i.fl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fo = lshr <4 x i32> %i.fm, splat (i32 16)
  %i.fp = lshr <4 x i32> %i.fn, splat (i32 16)
  %i.fq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fo, <4 x i32> %i.fp)
  store <8 x i16> %i.fq, ptr %.02537.i, align 1, !tbaa !64
  %i.fr = getelementptr inbounds nuw i8, ptr %.02537.i, i64 16 ; 2 uses
  %i.fs = add nuw nsw i32 %.038.i, 8              ; 2 uses
  %i.ft = or disjoint i32 %i.fs, 7
  %i.fu = icmp slt i32 %i.ft, %i.el
  br i1 %i.fu, label %.lr.ph.i32, label %.preheader36.loopexit.i, !llvm.loop !3

.preheader.i29:                                   ; preds = %.lr.ph42.i, %.preheader36.i
  %.126.lcssa.i = phi ptr [ %.025.lcssa.i, %.preheader36.i ], [ %i.hm, %.lr.ph42.i ] ; 5 uses
  %.1.lcssa.i30 = phi i32 [ %.0.lcssa.i28, %.preheader36.i ], [ %i.hn, %.lr.ph42.i ] ; 5 uses
  %i.fv = icmp slt i32 %.1.lcssa.i30, %i.el
  br i1 %i.fv, label %iter.check, label %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit

iter.check:                                       ; preds = %.preheader.i29
  %i.fw = xor i32 %.1.lcssa.i30, -1
  %i.fx = add i32 %i.el, %i.fw                    ; 3 uses
  %i.fy = zext i32 %i.fx to i64
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.fx, 3
  br i1 %min.iters.check, label %.lr.ph47.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check72 = icmp ult i32 %i.fx, 15
  br i1 %min.iters.check72, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ga = and i64 %i.fz, 12
  %n.vec = and i64 %i.fz, 8589934576              ; 5 uses
  %i.gb = trunc i64 %n.vec to i32
  %i.gc = add i32 %.1.lcssa.i30, %i.gb
  %i.gd = shl nuw nsw i64 %n.vec, 1
  %i.ge = getelementptr i8, ptr %.126.lcssa.i, i64 %i.gd
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.ey, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gf = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.126.lcssa.i, i64 %i.gf ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !55
  %i.gg = zext <16 x i16> %wide.load to <16 x i32>
  %i.gh = shl nuw <16 x i32> %i.gg, splat (i32 16)
  %i.gi = bitcast <16 x i32> %i.gh to <16 x float>
  %i.gj = fmul fast <16 x float> %broadcast.splat, %i.gi
  %i.gk = bitcast <16 x float> %i.gj to <16 x i32>
  %i.gl = lshr <16 x i32> %i.gk, splat (i32 16)
  %i.gm = trunc nuw <16 x i32> %i.gl to <16 x i16>
  store <16 x i16> %i.gm, ptr %next.gep, align 2, !tbaa !55
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gn = icmp eq i64 %index.next, %n.vec
  br i1 %i.gn, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fz, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ga, 0
  br i1 %min.epilog.iters.check, label %.lr.ph47.i.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec74 = and i64 %i.fz, 8589934588            ; 4 uses
  %i.go = trunc i64 %n.vec74 to i32
  %i.gp = add i32 %.1.lcssa.i30, %i.go
  %i.gq = shl nuw nsw i64 %n.vec74, 1
  %i.gr = getelementptr i8, ptr %.126.lcssa.i, i64 %i.gq
  %broadcast.splatinsert75 = insertelement <4 x float> poison, float %i.ey, i64 0
  %broadcast.splat76 = shufflevector <4 x float> %broadcast.splatinsert75, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index77 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next80, %vec.epilog.vector.body ] ; 2 uses
  %i.gs = shl i64 %index77, 1
  %next.gep78 = getelementptr i8, ptr %.126.lcssa.i, i64 %i.gs ; 2 uses
  %wide.load79 = load <4 x i16>, ptr %next.gep78, align 2, !tbaa !55
  %i.gt = zext <4 x i16> %wide.load79 to <4 x i32>
  %i.gu = shl nuw <4 x i32> %i.gt, splat (i32 16)
  %i.gv = bitcast <4 x i32> %i.gu to <4 x float>
  %i.gw = fmul fast <4 x float> %broadcast.splat76, %i.gv
  %i.gx = bitcast <4 x float> %i.gw to <4 x i32>
  %i.gy = lshr <4 x i32> %i.gx, splat (i32 16)
  %i.gz = trunc nuw <4 x i32> %i.gy to <4 x i16>
  store <4 x i16> %i.gz, ptr %next.gep78, align 2, !tbaa !55
  %index.next80 = add nuw i64 %index77, 4         ; 2 uses
  %i.ha = icmp eq i64 %index.next80, %n.vec74
  br i1 %i.ha, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !132

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n81 = icmp eq i64 %i.fz, %n.vec74
  br i1 %cmp.n81, label %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit, label %.lr.ph47.i.preheader

.lr.ph47.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.246.i.ph = phi i32 [ %.1.lcssa.i30, %iter.check ], [ %i.gc, %vec.epilog.iter.check ], [ %i.gp, %vec.epilog.middle.block ]
  %.22745.i.ph = phi ptr [ %.126.lcssa.i, %iter.check ], [ %i.ge, %vec.epilog.iter.check ], [ %i.gr, %vec.epilog.middle.block ]
  br label %.lr.ph47.i

.lr.ph42.i:                                       ; preds = %.preheader36.i, %.lr.ph42.i
  %.141.i = phi i32 [ %i.hn, %.lr.ph42.i ], [ %.0.lcssa.i28, %.preheader36.i ]
  %.12640.i = phi ptr [ %i.hm, %.lr.ph42.i ], [ %.025.lcssa.i, %.preheader36.i ] ; 3 uses
  %i.hb = load i64, ptr %.12640.i, align 1, !tbaa !64
  %i.hc = insertelement <2 x i64> poison, i64 %i.hb, i64 0
  %i.hd = bitcast <2 x i64> %i.hc to <8 x i16>
  %i.he = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hf = bitcast <8 x i16> %i.he to <4 x float>
  %i.hg = fmul fast <4 x float> %i.ez, %i.hf
  %i.hh = bitcast <4 x float> %i.hg to <4 x i32>
  %i.hi = lshr <4 x i32> %i.hh, splat (i32 16)
  %i.hj = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hi, <4 x i32> poison)
  %i.hk = bitcast <8 x i16> %i.hj to <2 x i64>
  %i.hl = extractelement <2 x i64> %i.hk, i64 0
  store i64 %i.hl, ptr %.12640.i, align 1, !tbaa !64
  %i.hm = getelementptr inbounds nuw i8, ptr %.12640.i, i64 8 ; 2 uses
  %i.hn = add nuw nsw i32 %.141.i, 4              ; 3 uses
  %i.ho = or disjoint i32 %i.hn, 3
  %i.hp = icmp slt i32 %i.ho, %i.el
  br i1 %i.hp, label %.lr.ph42.i, label %.preheader.i29, !llvm.loop !4

.lr.ph47.i:                                       ; preds = %.lr.ph47.i.preheader, %.lr.ph47.i
  %.246.i = phi i32 [ %i.hz, %.lr.ph47.i ], [ %.246.i.ph, %.lr.ph47.i.preheader ]
  %.22745.i = phi ptr [ %i.hy, %.lr.ph47.i ], [ %.22745.i.ph, %.lr.ph47.i.preheader ] ; 3 uses
  %i.hq = load i16, ptr %.22745.i, align 2, !tbaa !55
  %i.hr = zext i16 %i.hq to i32
  %i.hs = shl nuw i32 %i.hr, 16
  %i.ht = bitcast i32 %i.hs to float
  %i.hu = fmul fast float %i.ey, %i.ht
  %i.hv = bitcast float %i.hu to i32
  %i.hw = lshr i32 %i.hv, 16
  %i.hx = trunc nuw i32 %i.hw to i16
  store i16 %i.hx, ptr %.22745.i, align 2, !tbaa !55
  %i.hy = getelementptr inbounds nuw i8, ptr %.22745.i, i64 2
  %i.hz = add nuw nsw i32 %.246.i, 1              ; 2 uses
  %exitcond.not.i31 = icmp eq i32 %i.hz, %i.el
  br i1 %exitcond.not.i31, label %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit, label %.lr.ph47.i, !llvm.loop !133

_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit:       ; preds = %.lr.ph63.i, %.lr.ph47.i, %middle.block98, %vec.epilog.middle.block117, %middle.block, %vec.epilog.middle.block, %.preheader.i29, %.preheader.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.p, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.noexc

._crit_edge:                                      ; preds = %_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL27scale_bf16s_per_element_sseEPtPKfS2_ii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !34     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !34
  %i.h = load i32, ptr %0, align 4, !tbaa !34     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !34
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !34
  %i.k = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %.not24 = icmp sgt i32 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.025 = phi i32 [ %i.aj, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !34
  %i.m = shl nsw i32 %.025, 3
  %i.n = add nsw i32 %i.l, %i.m
  %i.o = load ptr, ptr %4, align 8, !tbaa !63
  %i.p = sext i32 %i.n to i64                     ; 3 uses
  %i.q = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load <8 x i16>, ptr %i.q, align 1, !tbaa !64 ; 2 uses
  %i.s = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.r, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.t = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.r, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.u = shufflevector <8 x i16> %i.s, <8 x i16> %i.t, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.v = bitcast <16 x i16> %i.u to <8 x float>
  %i.w = load ptr, ptr %5, align 8, !tbaa !39
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.p
  %i.y = load <8 x float>, ptr %i.x, align 1, !tbaa !64
  %i.z = load ptr, ptr %6, align 8, !tbaa !39
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.p
  %i.ab = load <8 x float>, ptr %i.aa, align 1, !tbaa !64
  %i.ac = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.v, <8 x float> nofpclass(nan inf) %i.y, <8 x float> nofpclass(nan inf) %i.ab)
  %i.ad = bitcast <8 x float> %i.ac to <8 x i32>  ; 2 uses
  %i.ae = shufflevector <8 x i32> %i.ad, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.af = shufflevector <8 x i32> %i.ad, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ag = lshr <4 x i32> %i.ae, splat (i32 16)
  %i.ah = lshr <4 x i32> %i.af, splat (i32 16)
  %i.ai = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ag, <4 x i32> %i.ah)
  store <8 x i16> %i.ai, ptr %i.q, align 1, !tbaa !64
  %i.aj = add i32 %.025, 1
  %exitcond.not = icmp eq i32 %.025, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL27scale_bf16s_per_element_sseEPtPKfS2_ii.omp_outlined.9(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !34     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !34
  %i.h = load i32, ptr %0, align 4, !tbaa !34     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !34
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !34
  %i.k = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %.not24 = icmp sgt i32 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.025 = phi i32 [ %i.ai, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !34
end_hunk_3
begin_hunk_4_@_ZN4ncnnL35scale_bf16s_no_bias_per_element_sseEPtPKfii.omp_outlined.12:bb.a
  %i.z = zext <8 x i16> %wide.load to <8 x i32>
  %i.aa = shl nuw <8 x i32> %i.z, splat (i32 16)
  %i.ab = bitcast <8 x i32> %i.aa to <8 x float>
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.x
  %wide.load25 = load <8 x float>, ptr %i.ac, align 4, !tbaa !57
  %i.ad = fmul fast <8 x float> %wide.load25, %i.ab
  %i.ae = bitcast <8 x float> %i.ad to <8 x i32>
  %i.af = lshr <8 x i32> %i.ae, splat (i32 16)
  %i.ag = trunc nuw <8 x i32> %i.af to <8 x i16>
  store <8 x i16> %i.ag, ptr %i.y, align 2, !tbaa !55
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ah = icmp eq i32 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %.021.ph = phi i32 [ %i.m, %vector.scevcheck ], [ %i.m, %.lr.ph ], [ %i.w, %middle.block ] ; 5 uses
  %i.ai = add i32 %i.l, %.021.ph
  %i.aj = and i32 %i.ai, 1
  %lcmp.mod.not.not = icmp eq i32 %i.aj, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ak = add i32 %.021.ph, %i.e
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.al ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !55
  %i.ao = zext i16 %i.an to i32
  %i.ap = shl nuw i32 %i.ao, 16
  %i.aq = bitcast i32 %i.ap to float
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.al
  %i.as = load float, ptr %i.ar, align 4, !tbaa !57
  %i.at = fmul fast float %i.as, %i.aq
  %i.au = bitcast float %i.at to i32
  %i.av = lshr i32 %i.au, 16
  %i.aw = trunc nuw i32 %i.av to i16
  store i16 %i.aw, ptr %i.am, align 2, !tbaa !55
  %i.ax = add nuw i32 %.021.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.021.unr = phi i32 [ %.021.ph, %scalar.ph.preheader ], [ %i.ax, %scalar.ph.prol ]
  %i.ay = icmp eq i32 %i.l, %.021.ph
  br i1 %i.ay, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.021 = phi i32 [ %i.ca, %scalar.ph ], [ %.021.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.az = add i32 %.021, %i.e
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.ba ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !55
  %i.bd = zext i16 %i.bc to i32
  %i.be = shl nuw i32 %i.bd, 16
  %i.bf = bitcast i32 %i.be to float
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ba
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !57
  %i.bi = fmul fast float %i.bh, %i.bf
  %i.bj = bitcast float %i.bi to i32
  %i.bk = lshr i32 %i.bj, 16
  %i.bl = trunc nuw i32 %i.bk to i16
  store i16 %i.bl, ptr %i.bb, align 2, !tbaa !55
  %i.bm = add nuw i32 %.021, 1                    ; 2 uses
  %i.bn = add i32 %i.bm, %i.e
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.bo ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !55
  %i.br = zext i16 %i.bq to i32
  %i.bs = shl nuw i32 %i.br, 16
  %i.bt = bitcast i32 %i.bs to float
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bo
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !57
  %i.bw = fmul fast float %i.bv, %i.bt
  %i.bx = bitcast float %i.bw to i32
  %i.by = lshr i32 %i.bx, 16
  %i.bz = trunc nuw i32 %i.by to i16
  store i16 %i.bz, ptr %i.bp, align 2, !tbaa !55
  %i.ca = add nuw i32 %.021, 2
  %exitcond.not.1 = icmp eq i32 %i.bm, %i.l
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !138

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{null}
!1 = distinct !{!1, !58}
!2 = distinct !{!2, !58}
!3 = distinct !{!3, !58}
!4 = distinct !{!4, !58}
!5 = !{i32 7, !"openmp", i32 51}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"vtable pointer", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!"p1 int", !16, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!"p1 _ZTSN4ncnn9AllocatorE", !16, i64 0}
!20 = !{!"_ZTSN4ncnn3MatE", !16, i64 0, !17, i64 8, !18, i64 16, !11, i64 24, !19, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !18, i64 64}
!21 = !{!20, !17, i64 8}
!22 = !{!20, !19, i64 32}
!23 = !{!20, !16, i64 0}
!24 = !{!20, !18, i64 64}
!25 = !{!"p1 _ZTSN4ncnn3MatE", !16, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!26, !25, i64 0}
!28 = !{!"bool", !10, i64 0}
!29 = !{!"_ZTSN4ncnn6OptionE", !28, i64 0, !28, i64 1, !28, i64 2, !28, i64 3, !11, i64 4, !19, i64 8, !19, i64 16, !11, i64 24, !28, i64 28, !28, i64 29, !28, i64 30, !28, i64 31, !28, i64 32, !28, i64 33, !28, i64 34, !28, i64 35, !28, i64 36, !28, i64 37, !28, i64 38, !28, i64 39, !11, i64 40, !28, i64 44, !28, i64 45, !28, i64 46, !28, i64 47, !10, i64 48, !28, i64 49, !28, i64 50, !28, i64 51, !28, i64 52, !28, i64 53, !28, i64 54, !28, i64 55, !28, i64 56, !28, i64 57, !28, i64 58, !28, i64 59, !28, i64 60, !28, i64 61, !28, i64 62, !28, i64 63}
!30 = !{!20, !11, i64 24}
!31 = !{!20, !18, i64 16}
!32 = !{!20, !11, i64 44}
!33 = !{!20, !11, i64 48}
!34 = !{!11, !11, i64 0}
!35 = !{!20, !11, i64 52}
!36 = !{!20, !11, i64 56}
!37 = !{!20, !11, i64 40}
!38 = !{!"p1 float", !16, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"p1 omnipotent char", !16, i64 0}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !40, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !41, i64 0, !18, i64 8, !10, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!44 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !43, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !44, i64 0}
!46 = !{!"_ZTSSt6vectorIiSaIiEE", !45, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !26, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !48, i64 0}
!50 = !{!"_ZTSN4ncnn5LayerE", !28, i64 8, !28, i64 9, !28, i64 10, !28, i64 11, !28, i64 12, !28, i64 13, !28, i64 14, !28, i64 15, !28, i64 16, !28, i64 17, !28, i64 18, !28, i64 19, !28, i64 20, !28, i64 21, !28, i64 22, !28, i64 23, !28, i64 24, !28, i64 25, !28, i64 26, !28, i64 27, !11, i64 28, !16, i64 32, !11, i64 40, !42, i64 48, !42, i64 80, !46, i64 112, !46, i64 136, !49, i64 160, !49, i64 184}
!51 = !{!"_ZTSN4ncnn5ScaleE", !50, i64 0, !11, i64 208, !11, i64 212, !20, i64 216, !20, i64 288}
!52 = !{!51, !11, i64 212}
!53 = !{!29, !11, i64 4}
!54 = !{!"short", !10, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"float", !10, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = !{!"branch_weights", i32 4, i32 28}
!62 = !{!"p1 short", !16, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!10, !10, i64 0}
!65 = !{i64 2, i64 -1, i64 -1, i1 true}
!66 = !{!65}
!67 = !{!"branch_weights", i32 8, i32 24}
!68 = !{!"branch_weights", i32 4, i32 12}
!69 = !{!29, !28, i64 32}
!70 = !{i8 0, i8 2}
!71 = !{}
!72 = !{!50, !28, i64 11}
!73 = !{!50, !28, i64 12}
!74 = distinct !{!74, !58, !59, !60}
!75 = distinct !{!75, !58, !59, !60}
!76 = distinct !{!76, !58, !60, !59}
!77 = !{!29, !19, i64 16}
!78 = distinct !{!78, i1 false, !"LVerDomain"}
!79 = distinct !{!79, !78}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !78}
!82 = distinct !{!82, !59, !60}
!83 = distinct !{!83, !59, !60}
!84 = distinct !{!84, !59}
!85 = !{!79}
!86 = !{!81, !80}
!87 = !{!81}
!88 = !{!80}
!89 = distinct !{!89, i1 false, !"LVerDomain"}
!90 = distinct !{!90, !89}
!91 = distinct !{!91, !89}
!92 = distinct !{!92, !59, !60}
!93 = distinct !{!93, !59, !60}
!94 = distinct !{!94, !59}
!95 = !{!90}
!96 = !{!91}
!97 = distinct !{!97, !58}
!98 = distinct !{!98, !58, !59, !60}
!99 = distinct !{!99, !58, !59, !60}
!100 = distinct !{!100, !58}
!101 = distinct !{!101, !58, !60, !59}
!102 = distinct !{!102, !58}
!103 = distinct !{!103, !58, !59, !60}
!104 = distinct !{!104, !58, !59, !60}
!105 = distinct !{!105, !58}
!106 = distinct !{!106, !58, !60, !59}
!107 = distinct !{!107, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!108 = distinct !{!108, !107, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!109 = distinct !{!109, !58}
!110 = distinct !{!110, !58, !59, !60}
!111 = distinct !{!111, !58, !59, !60}
!112 = distinct !{!112, !58}
!113 = distinct !{!113, !58, !60, !59}
!114 = distinct !{!114, !58}
!115 = distinct !{!115, !58, !59, !60}
!116 = distinct !{!116, !58, !59, !60}
!117 = distinct !{!117, !58}
!118 = distinct !{!118, !58, !60, !59}
!119 = !{!108}
!120 = distinct !{!120, !58, !59, !60}
!121 = distinct !{!121, !58, !59, !60}
!122 = distinct !{!122, !58, !60, !59}
!123 = distinct !{!123, !58, !59, !60}
!124 = distinct !{!124, !58, !59, !60}
!125 = distinct !{!125, !58, !60, !59}
!126 = distinct !{!126, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!127 = distinct !{!127, !126, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!128 = distinct !{!128, !58, !59, !60}
!129 = distinct !{!129, !58, !59, !60}
!130 = distinct !{!130, !58, !60, !59}
!131 = distinct !{!131, !58, !59, !60}
!132 = distinct !{!132, !58, !59, !60}
!133 = distinct !{!133, !58, !60, !59}
!134 = !{!127}
!135 = distinct !{!135, !59, !60}
!136 = distinct !{!136, !59}
!137 = distinct !{!137, !59, !60}
!138 = distinct !{!138, !59}
end_hunk_4
