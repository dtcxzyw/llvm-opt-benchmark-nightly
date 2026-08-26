Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/quantize_x86_fma?download=true
inline.NumInlined: 16
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0

$__clang_call_terminate = comdat any

@_ZTVN4ncnn16Quantize_x86_fmaE = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn16Quantize_x86_fmaE, ptr @_ZN4ncnn8QuantizeD2Ev, ptr @_ZN4ncnn16Quantize_x86_fmaD0Ev, ptr @_ZN4ncnn8Quantize10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn8Quantize10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn16Quantize_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn16Quantize_x86_fmaE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn16Quantize_x86_fmaE, ptr @_ZTIN4ncnn8QuantizeE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn16Quantize_x86_fmaE = hidden constant [26 x i8] c"N4ncnn16Quantize_x86_fmaE\00", align 1
@_ZTIN4ncnn8QuantizeE = external constant ptr
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_ZTVN4ncnn8QuantizeE = external constant { [12 x ptr] }, align 8

@_ZN4ncnn16Quantize_x86_fmaC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn16Quantize_x86_fmaC2Ev

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
  tail call void @__clang_call_terminate(ptr %i.m) #17
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
define linkonce_odr hidden void @_ZN4ncnn16Quantize_x86_fmaD0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @__clang_call_terminate(ptr %i.m) #17
  unreachable

_ZN4ncnn8QuantizeD2Ev.exit:                       ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 0, ptr %i.o, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(288) %0) #5
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #18
  ret void
}

declare noundef i32 @_ZN4ncnn8Quantize10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn8Quantize10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn16Quantize_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !21, !range !24, !noundef !25
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !26   ; 4 uses
  br i1 %i.k, label %bb.b, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27
  %.tr.i = trunc i64 %i.o to i32
  %i.p = shl i32 %.tr.i, 3
  %i.q = sdiv i32 %i.p, %i.m
  %i.r = icmp eq i32 %i.q, 16
  br i1 %i.r, label %bb.c, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.s = tail call noundef i32 @_ZNK4ncnn16Quantize_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %bb.r

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.a, %bb.b, %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.t = phi i32 [ %i.m, %_ZNK4ncnn3Mat8elembitsEv.exit ], [ 0, %bb.b ], [ %i.m, %bb.a ] ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !28   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !29   ; 7 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31   ; 4 uses
  store i32 %i.z, ptr %i.b, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32 ; 2 uses
  store i32 %i.ab, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  store i32 %i.ad, ptr %i.d, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i32 %i.t, ptr %i.e, align 4, !tbaa !30
  switch i32 %i.v, label %bb.j [
    i32 1, label %bb.d
    i32 2, label %._crit_edge
  ]

bb.d:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !34, !range !24, !noundef !25
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = mul nsw i32 %i.t, %i.x                  ; 2 uses
  %i.ai = and i32 %i.ah, 7
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = and i1 %i.aj, %i.ag
  %.079 = select i1 %i.ak, i32 8, i32 1           ; 3 uses
  %i.al = sdiv i32 %i.ah, %.079
  %i.am = zext nneg i32 %.079 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !35
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.al, i64 noundef %i.am, i32 noundef %.079, ptr noundef %i.ao)
  %i.ap = load ptr, ptr %2, align 8, !tbaa !18
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit90

_ZNK4ncnn3Mat5emptyEv.exit90:                     ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.au = load i32, ptr %i.at, align 8, !tbaa !33
  %i.av = sext i32 %i.au to i64
  %i.aw = mul i64 %i.as, %i.av
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !36 ; 2 uses
  %i.ba = sdiv i32 %i.x, %i.az
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 1) ; 3 uses
  store i32 %.sroa.speculated, ptr %i.f, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.bb = add i32 %i.x, -1
  %i.bc = add i32 %i.bb, %.sroa.speculated
  %i.bd = sdiv i32 %i.bc, %.sroa.speculated
  store i32 %i.bd, ptr %i.g, align 4, !tbaa !30
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.h, i32 %i.az)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn16Quantize_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %1, ptr nonnull %i.e, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  br label %.critedge

._crit_edge:                                      ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !34, !range !24, !noundef !25
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = mul nsw i32 %i.t, %i.z                  ; 2 uses
  %i.bi = and i32 %i.bh, 7
  %i.bj = icmp eq i32 %i.bi, 0
  %i.bk = and i1 %i.bj, %i.bg                     ; 2 uses
  %.084 = select i1 %i.bk, i32 8, i32 1           ; 4 uses
  %i.bl = sdiv i32 %i.bh, %.084
  %i.bm = zext nneg i32 %.084 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !35
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.x, i32 noundef %i.bl, i64 noundef %i.bm, i32 noundef %.084, ptr noundef %i.bo)
  %i.bp = load ptr, ptr %2, align 8, !tbaa !18
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit89

_ZNK4ncnn3Mat5emptyEv.exit89:                     ; preds = %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !33
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul i64 %i.bs, %i.bv
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit89
  %i.by = icmp ne i32 %i.t, 4
  %or.cond.not = or i1 %i.by, %i.bk
  br i1 %or.cond.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.h, i32 %i.ca)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn16Quantize_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.a)
  %.pre95 = load i32, ptr %i.e, align 4, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cb = phi i32 [ %.pre95, %bb.g ], [ %i.t, %bb.f ]
  %i.cc = icmp eq i32 %i.cb, %.084
  br i1 %i.cc, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !36
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.h, i32 %i.ce)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn16Quantize_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.a)
  br label %.critedge

bb.j:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.cf = add i32 %i.v, -3
  %or.cond5 = icmp ult i32 %i.cf, 2
  br i1 %or.cond5, label %._crit_edge97, label %.critedge

._crit_edge97:                                    ; preds = %bb.j
  %i.cg = icmp eq i32 %i.v, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !34, !range !24, !noundef !25
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = mul nsw i32 %i.t, %i.ad                 ; 2 uses
  %i.cl = and i32 %i.ck, 7
  %i.cm = icmp eq i32 %i.cl, 0
  %i.cn = select i1 %i.cj, i1 %i.cm, i1 false     ; 2 uses
  %.080 = select i1 %i.cn, i32 8, i32 1           ; 5 uses
  %i.co = sdiv i32 %i.ck, %.080                   ; 2 uses
  %i.cp = zext nneg i32 %.080 to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !35 ; 2 uses
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge97
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.co, i64 noundef %i.cp, i32 noundef %.080, ptr noundef %i.cr)
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge97
  tail call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef %i.co, i64 noundef %i.cp, i32 noundef %.080, ptr noundef %i.cr)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cs = load ptr, ptr %2, align 8, !tbaa !18
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !33
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul i64 %i.cv, %i.cy
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.db = icmp ne i32 %i.t, 4
  %or.cond7.not = or i1 %i.db, %i.cn
  br i1 %or.cond7.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.h, i32 %i.dd)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn16Quantize_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.pre96 = load i32, ptr %i.e, align 4, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.de = phi i32 [ %.pre96, %bb.o ], [ %i.t, %bb.n ]
  %i.df = icmp eq i32 %i.de, %.080
  br i1 %i.df, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !36
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.h, i32 %i.dh)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn16Quantize_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.e, %bb.h, %bb.i, %._crit_edge, %bb.d, %bb.j, %bb.p, %bb.q, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit89, %_ZNK4ncnn3Mat5emptyEv.exit90
  %.5 = phi i32 [ 0, %bb.j ], [ 0, %bb.e ], [ -100, %bb.d ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit89 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit90 ], [ 0, %bb.q ], [ 0, %bb.p ], [ -100, %._crit_edge ], [ 0, %bb.i ], [ 0, %bb.h ], [ -100, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %bb.c
  %.6 = phi i32 [ %i.s, %bb.c ], [ %.5, %.critedge ]
  ret i32 %.6
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn16Quantize_x86_fmaC2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4ncnn8QuantizeC2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn16Quantize_x86_fmaE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.b, align 4, !tbaa !51
  ret void
}

declare void @_ZN4ncnn8QuantizeC2Ev(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn16Quantize_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load i32, ptr %i.j, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 5 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !28   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !29   ; 7 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !31   ; 4 uses
  store i32 %i.r, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !32   ; 2 uses
  store i32 %i.t, ptr %i.d, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load i32, ptr %i.u, align 8, !tbaa !33   ; 2 uses
  store i32 %i.v, ptr %i.e, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !26   ; 8 uses
  store i32 %i.x, ptr %i.f, align 4, !tbaa !30
  switch i32 %i.n, label %bb.h [
    i32 1, label %bb.b
    i32 2, label %._crit_edge.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34, !range !24, !noundef !25
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = mul nsw i32 %i.x, %i.p                  ; 2 uses
  %i.ac = and i32 %i.ab, 7
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = and i1 %i.ad, %i.aa
  %.078.i = select i1 %i.ae, i32 8, i32 1         ; 3 uses
  %i.af = sdiv i32 %i.ab, %.078.i
  %i.ag = zext nneg i32 %.078.i to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !35
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.af, i64 noundef %i.ag, i32 noundef %.078.i, ptr noundef %i.ai)
  %i.aj = load ptr, ptr %2, align 8, !tbaa !18
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit, label %_ZNK4ncnn3Mat5emptyEv.exit89.i

_ZNK4ncnn3Mat5emptyEv.exit89.i:                   ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.am = load i64, ptr %i.al, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !33
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.am, %i.ap
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit89.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !36 ; 2 uses
  %i.au = sdiv i32 %i.p, %i.at
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.au, i32 1) ; 3 uses
  store i32 %.sroa.speculated.i, ptr %i.g, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  %i.av = add i32 %i.p, -1
  %i.aw = add i32 %i.av, %.sroa.speculated.i
  %i.ax = sdiv i32 %i.aw, %.sroa.speculated.i
  store i32 %i.ax, ptr %i.h, align 4, !tbaa !30
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.at)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.f, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

._crit_edge.i:                                    ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !34, !range !24, !noundef !25
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = mul nsw i32 %i.x, %i.r                  ; 2 uses
  %i.bc = and i32 %i.bb, 7
  %i.bd = icmp eq i32 %i.bc, 0
  %i.be = and i1 %i.bd, %i.ba                     ; 2 uses
  %.083.i = select i1 %i.be, i32 8, i32 1         ; 4 uses
  %i.bf = sdiv i32 %i.bb, %.083.i
  %i.bg = zext nneg i32 %.083.i to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !35
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.p, i32 noundef %i.bf, i64 noundef %i.bg, i32 noundef %.083.i, ptr noundef %i.bi)
  %i.bj = load ptr, ptr %2, align 8, !tbaa !18
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit, label %_ZNK4ncnn3Mat5emptyEv.exit88.i

_ZNK4ncnn3Mat5emptyEv.exit88.i:                   ; preds = %._crit_edge.i
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !33
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %i.bm, %i.bp
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit88.i
  %i.bs = icmp ne i32 %i.x, 4
  %or.cond.not.i = or i1 %i.bs, %i.be
  br i1 %or.cond.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.bu)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.5, ptr nonnull %i.c, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %i.i, ptr nonnull %i.f, ptr nonnull %i.b)
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bv = phi i32 [ %.pre.i, %bb.e ], [ %i.x, %bb.d ]
  %i.bw = icmp eq i32 %i.bv, %.083.i
  br i1 %i.bw, label %bb.g, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

bb.g:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !36
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.by)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.6, ptr nonnull %i.c, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %i.i, ptr nonnull %i.f, ptr nonnull %i.b)
  br label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

bb.h:                                             ; preds = %bb.a
  %i.bz = add i32 %i.n, -3
  %or.cond5.i = icmp ult i32 %i.bz, 2
  br i1 %or.cond5.i, label %._crit_edge95.i, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

._crit_edge95.i:                                  ; preds = %bb.h
  %i.ca = icmp eq i32 %i.n, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !34, !range !24, !noundef !25
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = mul nsw i32 %i.x, %i.v                  ; 2 uses
  %i.cf = and i32 %i.ce, 7
  %i.cg = icmp eq i32 %i.cf, 0
  %i.ch = select i1 %i.cd, i1 %i.cg, i1 false     ; 2 uses
  %.079.i = select i1 %i.ch, i32 8, i32 1         ; 5 uses
  %i.ci = sdiv i32 %i.ce, %.079.i                 ; 2 uses
  %i.cj = zext nneg i32 %.079.i to i64            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !35 ; 2 uses
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge95.i
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.ci, i64 noundef %i.cj, i32 noundef %.079.i, ptr noundef %i.cl)
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge95.i
  tail call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.ci, i64 noundef %i.cj, i32 noundef %.079.i, ptr noundef %i.cl)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cm = load ptr, ptr %2, align 8, !tbaa !18
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit, label %_ZNK4ncnn3Mat5emptyEv.exit.i

_ZNK4ncnn3Mat5emptyEv.exit.i:                     ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !33
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul i64 %i.cp, %i.cs
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.i
  %i.cv = icmp ne i32 %i.x, 4
  %or.cond7.not.i = or i1 %i.cv, %i.ch
  br i1 %or.cond7.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.cx)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.7, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %i.i, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d)
  %.pre94.i = load i32, ptr %i.f, align 4, !tbaa !30
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cy = phi i32 [ %.pre94.i, %bb.m ], [ %i.x, %bb.l ]
  %i.cz = icmp eq i32 %i.cy, %.079.i
  br i1 %i.cz, label %bb.o, label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

bb.o:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !36
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.db)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.8, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %i.i, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d)
  br label %_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.exit: ; preds = %bb.b, %_ZNK4ncnn3Mat5emptyEv.exit89.i, %bb.c, %._crit_edge.i, %_ZNK4ncnn3Mat5emptyEv.exit88.i, %bb.f, %bb.g, %bb.h, %bb.k, %_ZNK4ncnn3Mat5emptyEv.exit.i, %bb.n, %bb.o
  %.5.i = phi i32 [ 0, %bb.h ], [ 0, %bb.c ], [ -100, %bb.b ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit.i ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit88.i ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit89.i ], [ 0, %bb.o ], [ 0, %bb.n ], [ -100, %._crit_edge.i ], [ 0, %bb.g ], [ 0, %bb.f ], [ -100, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.5.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16Quantize_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !30     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !30
  %i.h = load i32, ptr %0, align 4, !tbaa !30     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !30
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !30
  %i.k = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not34 = icmp sgt i32 %i.k, %i.j
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 216
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnnL8quantizeEPKfPaRKNS_3MatEii.exit
  %.035 = phi i32 [ %i.k, %.lr.ph ], [ %i.ej, %_ZN4ncnnL8quantizeEPKfPaRKNS_3MatEii.exit ] ; 3 uses
  %i.m = load i32, ptr %3, align 4, !tbaa !30     ; 2 uses
  %i.n = mul nsw i32 %i.m, %.035                  ; 2 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !18
  %i.p = load i32, ptr %5, align 4, !tbaa !30     ; 2 uses
  %i.q = mul nsw i32 %i.p, %i.n
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %6, align 8, !tbaa !18
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.r ; 2 uses
  %i.v = load i32, ptr %7, align 4, !tbaa !30
  %i.w = sub nsw i32 %i.v, %i.n
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.m, i32 %i.w)
  %i.x = mul nsw i32 %.sroa.speculated, %i.p      ; 13 uses
  %.val = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.y = load float, ptr %.val, align 4, !tbaa !54 ; 6 uses
  %i.z = insertelement <4 x float> poison, float %i.y, i64 0
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ab = insertelement <8 x float> poison, float %i.y, i64 0
  %i.ac = shufflevector <8 x float> %i.ab, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ad = icmp sgt i32 %i.x, 15
  br i1 %i.ad, label %.lr.ph.i, label %.preheader18.i

.preheader18.loopexit.i:                          ; preds = %.lr.ph.i
  %i.ae = and i32 %i.x, 2147483632
  br label %.preheader18.i

.preheader18.i:                                   ; preds = %.preheader18.loopexit.i, %bb.c
  %.055.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.ae, %.preheader18.loopexit.i ] ; 3 uses
  %.051.lcssa.i = phi ptr [ %i.u, %bb.c ], [ %i.be, %.preheader18.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.s, %bb.c ], [ %i.bd, %.preheader18.loopexit.i ] ; 2 uses
  %i.af = or disjoint i32 %.055.lcssa.i, 7
  %i.ag = icmp slt i32 %i.af, %i.x
  br i1 %i.ag, label %.lr.ph27.i, label %.preheader17.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.021.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %i.s, %bb.c ] ; 3 uses
  %.05120.i = phi ptr [ %i.be, %.lr.ph.i ], [ %i.u, %bb.c ] ; 2 uses
  %.05519.i = phi i32 [ %i.bf, %.lr.ph.i ], [ 0, %bb.c ]
  %i.ah = load <8 x float>, ptr %.021.i, align 1, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %.021.i, i64 32
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !56
  %i.ak = fmul fast <8 x float> %i.ah, %i.ac      ; 2 uses
  %i.al = fmul fast <8 x float> %i.aj, %i.ac      ; 2 uses
  %i.am = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ak)
  %i.an = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.al)
  %i.ao = fadd fast <8 x float> %i.am, %i.ak
  %i.ap = fadd fast <8 x float> %i.an, %i.al
  %i.aq = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ao) ; 2 uses
  %i.ar = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ap) ; 2 uses
  %i.as = shufflevector <8 x i32> %i.aq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.at = shufflevector <8 x i32> %i.aq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.au = shufflevector <8 x i32> %i.ar, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.av = shufflevector <8 x i32> %i.ar, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aw = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.as, <4 x i32> %i.at)
  %i.ax = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.au, <4 x i32> %i.av)
  %i.ay = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aw, <8 x i16> splat (i16 -127))
  %i.az = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ay, <8 x i16> splat (i16 127))
  %i.ba = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ax, <8 x i16> splat (i16 -127))
  %i.bb = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ba, <8 x i16> splat (i16 127))
  %i.bc = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.az, <8 x i16> %i.bb)
  store <16 x i8> %i.bc, ptr %.05120.i, align 1, !tbaa !56
  %i.bd = getelementptr inbounds nuw i8, ptr %.021.i, i64 64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.05120.i, i64 16 ; 2 uses
  %i.bf = add nuw nsw i32 %.05519.i, 16           ; 2 uses
  %i.bg = or disjoint i32 %i.bf, 15
  %i.bh = icmp slt i32 %i.bg, %i.x
  br i1 %i.bh, label %.lr.ph.i, label %.preheader18.loopexit.i, !llvm.loop !57

.preheader17.i:                                   ; preds = %.lr.ph27.i, %.preheader18.i
  %.156.lcssa.i = phi i32 [ %.055.lcssa.i, %.preheader18.i ], [ %i.bz, %.lr.ph27.i ] ; 3 uses
  %.152.lcssa.i = phi ptr [ %.051.lcssa.i, %.preheader18.i ], [ %i.by, %.lr.ph27.i ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader18.i ], [ %i.bx, %.lr.ph27.i ] ; 2 uses
  %i.bi = or disjoint i32 %.156.lcssa.i, 3
  %i.bj = icmp slt i32 %i.bi, %i.x
  br i1 %i.bj, label %.lr.ph34.i, label %.preheader.i

.lr.ph27.i:                                       ; preds = %.preheader18.i, %.lr.ph27.i
  %.126.i = phi ptr [ %i.bx, %.lr.ph27.i ], [ %.0.lcssa.i, %.preheader18.i ] ; 2 uses
  %.15225.i = phi ptr [ %i.by, %.lr.ph27.i ], [ %.051.lcssa.i, %.preheader18.i ] ; 2 uses
  %.15624.i = phi i32 [ %i.bz, %.lr.ph27.i ], [ %.055.lcssa.i, %.preheader18.i ]
  %i.bk = load <8 x float>, ptr %.126.i, align 1, !tbaa !56
  %i.bl = fmul fast <8 x float> %i.bk, %i.ac      ; 2 uses
  %i.bm = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bl)
  %i.bn = fadd fast <8 x float> %i.bm, %i.bl
  %i.bo = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bn) ; 2 uses
  %i.bp = shufflevector <8 x i32> %i.bo, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bq = shufflevector <8 x i32> %i.bo, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.br = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bp, <4 x i32> %i.bq)
  %i.bs = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.br, <8 x i16> splat (i16 -127))
  %i.bt = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bs, <8 x i16> splat (i16 127))
  %i.bu = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bt, <8 x i16> poison)
  %i.bv = bitcast <16 x i8> %i.bu to <2 x i64>
  %i.bw = extractelement <2 x i64> %i.bv, i64 0
  store i64 %i.bw, ptr %.15225.i, align 8, !tbaa !59
  %i.bx = getelementptr inbounds nuw i8, ptr %.126.i, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.15225.i, i64 8 ; 2 uses
  %i.bz = add nuw nsw i32 %.15624.i, 8            ; 3 uses
  %i.ca = or disjoint i32 %i.bz, 7
  %i.cb = icmp slt i32 %i.ca, %i.x
  br i1 %i.cb, label %.lr.ph27.i, label %.preheader17.i, !llvm.loop !60

.preheader.i:                                     ; preds = %.lr.ph34.i, %.preheader17.i
  %.257.lcssa.i = phi i32 [ %.156.lcssa.i, %.preheader17.i ], [ %i.dt, %.lr.ph34.i ] ; 6 uses
end_hunk_0
