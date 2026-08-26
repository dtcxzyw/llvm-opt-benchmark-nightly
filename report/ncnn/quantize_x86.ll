Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/quantize_x86?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
@_ZTIN4ncnn12Quantize_x86E = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn12Quantize_x86E, ptr @_ZTIN4ncnn8QuantizeE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn12Quantize_x86E = hidden constant [22 x i8] c"N4ncnn12Quantize_x86E\00", align 1
@_ZTIN4ncnn8QuantizeE = external constant ptr
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_ZTVN4ncnn8QuantizeE = external constant { [12 x ptr] }, align 8

@_ZN4ncnn12Quantize_x86C1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn12Quantize_x86C2Ev

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn8QuantizeD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn8QuantizeE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %.not3.i = icmp eq ptr %i.g, null
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.g, !inline_history !19

bb.e:                                             ; preds = %bb.c
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.h) #5
  br label %_ZN4ncnn3MatD2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 0, ptr %i.o, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #5
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn12Quantize_x86D0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn8QuantizeE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4ncnn8QuantizeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN4ncnn8QuantizeD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %.not3.i.i = icmp eq ptr %i.g, null
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h)
          to label %_ZN4ncnn8QuantizeD2Ev.exit unwind label %bb.g, !inline_history !19

bb.e:                                             ; preds = %bb.c
  %.not.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i1.i, label %_ZN4ncnn8QuantizeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.h) #5
  br label %_ZN4ncnn8QuantizeD2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #14
  unreachable

_ZN4ncnn8QuantizeD2Ev.exit:                       ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 0, ptr %i.o, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(288) %0) #5
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #15
  ret void
}

declare noundef i32 @_ZN4ncnn8Quantize10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn8Quantize10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn12Quantize_x867forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 12 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 8 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load i8, ptr %i.m, align 8, !tbaa !21, !range !24, !noundef !25
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !26   ; 4 uses
  br i1 %i.o, label %bb.b, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !27
  %.tr.i = trunc i64 %i.s to i32
  %i.t = shl i32 %.tr.i, 3
  %i.u = sdiv i32 %i.t, %i.q
  %i.v = icmp eq i32 %i.u, 16
  br i1 %i.v, label %bb.c, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.w = tail call noundef i32 @_ZNK4ncnn12Quantize_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %bb.ab

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.a, %bb.b, %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.x = phi i32 [ %i.q, %_ZNK4ncnn3Mat8elembitsEv.exit ], [ 0, %bb.b ], [ %i.q, %bb.a ] ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !28   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29 ; 7 uses
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !31 ; 4 uses
  store i32 %i.ad, ptr %i.b, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !32 ; 2 uses
  store i32 %i.af, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !33 ; 2 uses
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i32 %i.x, ptr %i.e, align 4, !tbaa !30
  switch i32 %i.z, label %bb.o [
    i32 1, label %bb.d
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !34, !range !24, !noundef !25
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = mul nsw i32 %i.x, %i.ab                 ; 2 uses
  %i.am = and i32 %i.al, 7
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = and i1 %i.an, %i.ak
  %.075 = select i1 %i.ao, i32 8, i32 1           ; 3 uses
  %i.ap = sdiv i32 %i.al, %.075
  %i.aq = zext nneg i32 %.075 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !35
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ap, i64 noundef %i.aq, i32 noundef %.075, ptr noundef %i.as)
  %i.at = load ptr, ptr %2, align 8, !tbaa !18
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit84

_ZNK4ncnn3Mat5emptyEv.exit84:                     ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !33
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul i64 %i.aw, %i.az
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !36 ; 2 uses
  %i.be = sdiv i32 %i.ab, %i.bd
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.be, i32 1) ; 3 uses
  store i32 %.sroa.speculated, ptr %i.f, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.bf = add i32 %i.ab, -1
  %i.bg = add i32 %i.bf, %.sroa.speculated
  %i.bh = sdiv i32 %i.bg, %.sroa.speculated
  store i32 %i.bh, ptr %i.g, align 4, !tbaa !30
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.bd)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn12Quantize_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %1, ptr nonnull %i.e, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  br label %.critedge

bb.f:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  store i32 1, ptr %i.h, align 4, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !34, !range !24, !noundef !25
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = mul nsw i32 %i.x, %i.ad                 ; 2 uses
  br i1 %i.bk, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.bm = and i32 %i.bl, 7
  %i.bn = icmp eq i32 %i.bm, 0
  %i.bo = select i1 %i.bn, i32 8, i32 1           ; 2 uses
  store i32 %i.bo, ptr %i.h, align 4, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.g
  %i.bp = phi i32 [ %i.bo, %bb.g ], [ 1, %bb.f ]  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  %i.bq = sdiv i32 %i.bl, %i.bp                   ; 2 uses
  store i32 %i.bq, ptr %i.i, align 4, !tbaa !30
  %i.br = zext nneg i32 %i.bp to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !35
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ab, i32 noundef %i.bq, i64 noundef %i.br, i32 noundef %i.bp, ptr noundef %i.bt)
  %i.bu = load ptr, ptr %2, align 8, !tbaa !18
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %.critedge80, label %_ZNK4ncnn3Mat5emptyEv.exit83

_ZNK4ncnn3Mat5emptyEv.exit83:                     ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !20
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !33
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul i64 %i.bx, %i.ca
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %.critedge80, label %bb.h

bb.h:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit83
  %i.cd = icmp eq i32 %i.x, 4
  %i.ce = icmp eq i32 %i.bp, 8
  %or.cond = and i1 %i.cd, %i.ce
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.cg)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn12Quantize_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.i, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.h, ptr nonnull %i.a)
  %.pre89 = load i32, ptr %i.e, align 4, !tbaa !30
  %.pre90 = load i32, ptr %i.h, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ch = phi i32 [ %.pre90, %bb.i ], [ %i.bp, %bb.h ] ; 2 uses
  %i.ci = phi i32 [ %.pre89, %bb.i ], [ %i.x, %bb.h ] ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 4
  %i.ck = icmp eq i32 %i.ch, 1
  %or.cond5 = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond5, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !36
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.cm)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn12Quantize_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.a)
  %.pre91 = load i32, ptr %i.e, align 4, !tbaa !30
  %.pre92 = load i32, ptr %i.h, align 4, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cn = phi i32 [ %.pre92, %bb.k ], [ %i.ch, %bb.j ]
  %i.co = phi i32 [ %.pre91, %bb.k ], [ %i.ci, %bb.j ]
  %i.cp = icmp eq i32 %i.co, %i.cn
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !36
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.cr)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn12Quantize_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  br label %.critedge

bb.o:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.cs = icmp eq i32 %i.z, 3
  %i.ct = add i32 %i.z, -3
  %or.cond7 = icmp ult i32 %i.ct, 2
  br i1 %or.cond7, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  store i32 1, ptr %i.j, align 4, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !34, !range !24, !noundef !25
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = mul nsw i32 %i.x, %i.ah                 ; 2 uses
  br i1 %i.cw, label %bb.q, label %._crit_edge97

bb.q:                                             ; preds = %bb.p
  %i.cy = and i32 %i.cx, 7
  %i.cz = icmp eq i32 %i.cy, 0
  %i.da = select i1 %i.cz, i32 8, i32 1           ; 2 uses
  store i32 %i.da, ptr %i.j, align 4, !tbaa !30
  br label %._crit_edge97

._crit_edge97:                                    ; preds = %bb.p, %bb.q
  %i.db = phi i32 [ %i.da, %bb.q ], [ 1, %bb.p ]  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  %i.dc = sdiv i32 %i.cx, %i.db                   ; 3 uses
  store i32 %i.dc, ptr %i.k, align 4, !tbaa !30
  %i.dd = zext nneg i32 %i.db to i64              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !35 ; 2 uses
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge97
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.dc, i64 noundef %i.dd, i32 noundef %i.db, ptr noundef %i.df)
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge97
  tail call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef %i.dc, i64 noundef %i.dd, i32 noundef %i.db, ptr noundef %i.df)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dg = load ptr, ptr %2, align 8, !tbaa !18
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %.critedge82, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.t
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !33
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul i64 %i.dj, %i.dm
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %.critedge82, label %bb.u

bb.u:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.dp = icmp eq i32 %i.x, 4
  %i.dq = icmp eq i32 %i.db, 8
  %or.cond9 = and i1 %i.dp, %i.dq
  br i1 %or.cond9, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.ds)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn12Quantize_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4, ptr nonnull %i.k, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.j, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.pre93 = load i32, ptr %i.e, align 4, !tbaa !30
  %.pre94 = load i32, ptr %i.j, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dt = phi i32 [ %.pre94, %bb.v ], [ %i.db, %bb.u ] ; 2 uses
  %i.du = phi i32 [ %.pre93, %bb.v ], [ %i.x, %bb.u ] ; 2 uses
  %i.dv = icmp eq i32 %i.du, 4
  %i.dw = icmp eq i32 %i.dt, 1
  %or.cond11 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond11, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !36
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.dy)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn12Quantize_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.pre95 = load i32, ptr %i.e, align 4, !tbaa !30
  %.pre96 = load i32, ptr %i.j, align 4, !tbaa !30
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dz = phi i32 [ %.pre96, %bb.x ], [ %i.dt, %bb.w ]
  %i.ea = phi i32 [ %.pre95, %bb.x ], [ %i.du, %bb.w ]
  %i.eb = icmp eq i32 %i.ea, %i.dz
  br i1 %i.eb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !36
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.ed)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn12Quantize_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  br label %.critedge

.critedge80:                                      ; preds = %._crit_edge, %_ZNK4ncnn3Mat5emptyEv.exit83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  br label %.critedge

.critedge82:                                      ; preds = %bb.t, %_ZNK4ncnn3Mat5emptyEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.n, %bb.d, %bb.o, %bb.aa, %_ZNK4ncnn3Mat5emptyEv.exit84, %.critedge82, %.critedge80
  %.5 = phi i32 [ -100, %.critedge82 ], [ -100, %.critedge80 ], [ 0, %bb.o ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit84 ], [ 0, %bb.aa ], [ -100, %bb.d ], [ 0, %bb.n ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge, %bb.c
  %.6 = phi i32 [ %i.w, %bb.c ], [ %.5, %.critedge ]
  ret i32 %.6
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn12Quantize_x86C2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4ncnn8QuantizeC2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn12Quantize_x86E, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.b, align 4, !tbaa !51
  ret void
}

declare void @_ZN4ncnn8QuantizeC2Ev(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn12Quantize_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 12 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 8 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 8 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 7 uses
  store i32 %i.o, ptr %i.a, align 4, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !28   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !29   ; 7 uses
  store i32 %i.t, ptr %i.b, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !31   ; 4 uses
  store i32 %i.v, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32   ; 2 uses
  store i32 %i.x, ptr %i.d, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = load i32, ptr %i.y, align 8, !tbaa !33   ; 2 uses
  store i32 %i.z, ptr %i.e, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !26 ; 8 uses
  store i32 %i.ab, ptr %i.f, align 4, !tbaa !30
  switch i32 %i.r, label %bb.m [
    i32 1, label %bb.b
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !34, !range !24, !noundef !25
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = mul nsw i32 %i.ab, %i.t                 ; 2 uses
  %i.ag = and i32 %i.af, 7
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = and i1 %i.ah, %i.ae
  %.076.i = select i1 %i.ai, i32 8, i32 1         ; 3 uses
  %i.aj = sdiv i32 %i.af, %.076.i
  %i.ak = zext nneg i32 %.076.i to i64
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !35
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.aj, i64 noundef %i.ak, i32 noundef %.076.i, ptr noundef %i.am)
  %i.an = load ptr, ptr %2, align 8, !tbaa !18
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit, label %_ZNK4ncnn3Mat5emptyEv.exit85.i

_ZNK4ncnn3Mat5emptyEv.exit85.i:                   ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !33
  %i.at = sext i32 %i.as to i64
  %i.au = mul i64 %i.aq, %i.at
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit85.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !36 ; 2 uses
  %i.ay = sdiv i32 %i.t, %i.ax
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 1) ; 3 uses
  store i32 %.sroa.speculated.i, ptr %i.g, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  %i.az = add i32 %i.t, -1
  %i.ba = add i32 %i.az, %.sroa.speculated.i
  %i.bb = sdiv i32 %i.ba, %.sroa.speculated.i
  store i32 %i.bb, ptr %i.h, align 4, !tbaa !30
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.ax)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.f, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  store i32 1, ptr %i.i, align 4, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !34, !range !24, !noundef !25
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = mul nsw i32 %i.ab, %i.v                 ; 2 uses
  br i1 %i.be, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %i.bg = and i32 %i.bf, 7
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = select i1 %i.bh, i32 8, i32 1           ; 2 uses
  store i32 %i.bi, ptr %i.i, align 4, !tbaa !30
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %i.bj = phi i32 [ %i.bi, %bb.e ], [ 1, %bb.d ]  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  %i.bk = sdiv i32 %i.bf, %i.bj                   ; 2 uses
  store i32 %i.bk, ptr %i.j, align 4, !tbaa !30
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !35
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.t, i32 noundef %i.bk, i64 noundef %i.bl, i32 noundef %i.bj, ptr noundef %i.bn)
  %i.bo = load ptr, ptr %2, align 8, !tbaa !18
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.critedge81.i, label %_ZNK4ncnn3Mat5emptyEv.exit84.i

_ZNK4ncnn3Mat5emptyEv.exit84.i:                   ; preds = %._crit_edge.i
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !33
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.br, %i.bu
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.critedge81.i, label %bb.f

bb.f:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit84.i
  %i.bx = icmp eq i32 %i.ab, 4
  %i.by = icmp eq i32 %i.bj, 8
  %or.cond.i = and i1 %i.bx, %i.by
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.ca)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.7, ptr nonnull %i.j, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %i.m, ptr nonnull %i.i, ptr nonnull %i.b)
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !30
  %.pre90.i = load i32, ptr %i.i, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cb = phi i32 [ %.pre90.i, %bb.g ], [ %i.bj, %bb.f ] ; 2 uses
  %i.cc = phi i32 [ %.pre.i, %bb.g ], [ %i.ab, %bb.f ] ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 4
  %i.ce = icmp eq i32 %i.cb, 1
  %or.cond5.i = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond5.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !36
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.cg)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.8, ptr nonnull %i.c, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %i.m, ptr nonnull %i.f, ptr nonnull %i.b)
  %.pre91.i = load i32, ptr %i.f, align 4, !tbaa !30
  %.pre92.i = load i32, ptr %i.i, align 4, !tbaa !30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ch = phi i32 [ %.pre92.i, %bb.i ], [ %i.cb, %bb.h ]
  %i.ci = phi i32 [ %.pre91.i, %bb.i ], [ %i.cc, %bb.h ]
  %i.cj = icmp eq i32 %i.ci, %i.ch
  br i1 %i.cj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !36
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.cl)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.9, ptr nonnull %i.c, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %i.m, ptr nonnull %i.f, ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  br label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

bb.m:                                             ; preds = %bb.a
  %i.cm = icmp eq i32 %i.r, 3
  %i.cn = add i32 %i.r, -3
  %or.cond7.i = icmp ult i32 %i.cn, 2
  br i1 %or.cond7.i, label %bb.n, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  store i32 1, ptr %i.k, align 4, !tbaa !30
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !34, !range !24, !noundef !25
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = mul nsw i32 %i.ab, %i.z                 ; 2 uses
  br i1 %i.cq, label %bb.o, label %._crit_edge97.i

bb.o:                                             ; preds = %bb.n
  %i.cs = and i32 %i.cr, 7
  %i.ct = icmp eq i32 %i.cs, 0
  %i.cu = select i1 %i.ct, i32 8, i32 1           ; 2 uses
  store i32 %i.cu, ptr %i.k, align 4, !tbaa !30
  br label %._crit_edge97.i

._crit_edge97.i:                                  ; preds = %bb.o, %bb.n
  %i.cv = phi i32 [ %i.cu, %bb.o ], [ 1, %bb.n ]  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  %i.cw = sdiv i32 %i.cr, %i.cv                   ; 3 uses
  store i32 %i.cw, ptr %i.l, align 4, !tbaa !30
  %i.cx = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !35 ; 2 uses
  br i1 %i.cm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge97.i
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.cw, i64 noundef %i.cx, i32 noundef %i.cv, ptr noundef %i.cz)
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge97.i
  tail call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.cw, i64 noundef %i.cx, i32 noundef %i.cv, ptr noundef %i.cz)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.da = load ptr, ptr %2, align 8, !tbaa !18
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %.critedge83.i, label %_ZNK4ncnn3Mat5emptyEv.exit.i

_ZNK4ncnn3Mat5emptyEv.exit.i:                     ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.df = load i32, ptr %i.de, align 8, !tbaa !33
  %i.dg = sext i32 %i.df to i64
  %i.dh = mul i64 %i.dd, %i.dg
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %.critedge83.i, label %bb.s

bb.s:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.i
  %i.dj = icmp eq i32 %i.ab, 4
  %i.dk = icmp eq i32 %i.cv, 8
  %or.cond9.i = and i1 %i.dj, %i.dk
  br i1 %or.cond9.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.dm)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.10, ptr nonnull %i.l, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %i.m, ptr nonnull %i.k, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d)
  %.pre93.i = load i32, ptr %i.f, align 4, !tbaa !30
  %.pre94.i = load i32, ptr %i.k, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dn = phi i32 [ %.pre94.i, %bb.t ], [ %i.cv, %bb.s ] ; 2 uses
  %i.do = phi i32 [ %.pre93.i, %bb.t ], [ %i.ab, %bb.s ] ; 2 uses
  %i.dp = icmp eq i32 %i.do, 4
  %i.dq = icmp eq i32 %i.dn, 1
  %or.cond11.i = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %or.cond11.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
end_hunk_0
