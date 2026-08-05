inline.NumInlined: 1843
inline.NumDeleted: 893
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6duckdb15ReservoirSample14GetSampleCountEv
define noundef i64 @_ZN6duckdb15ReservoirSample14GetSampleCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !155
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb15ReservoirSample19NumSamplesCollectedEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !103
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 2) i8 @_ZNK6duckdb15ReservoirSample16GetSamplingStateEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.g = icmp ne ptr %i.d, %i.f
  %. = zext i1 %i.g to i8
  ret i8 %.
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i64, ptr %i.g, align 8, !tbaa !117
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.06 = phi i64 [ %i.h, %bb.b ], [ %i.q, %bb.c ]
  ret i64 %.06
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb15ReservoirSample13GetTuplesSeenEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(72) ptr @_ZN6duckdb15ReservoirSample5ChunkEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ReservoirSample8GetChunkEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.56") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.56", align 8 ; 11 uses
  %3 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::vector.46", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.b = load i8, ptr %i.a, align 1, !tbaa !79, !range !164, !noundef !165
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93
  %.not41 = icmp eq ptr %i.e, null
  br i1 %.not41, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !103
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !166
  br label %bb.am

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.j = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #27, !noalias !169 ; 3 uses
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %_ZN6duckdb9make_uniqINS_9DataChunkEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.f, !noalias !169

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %.pn27.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #28, !noalias !169
  br label %common.resume

_ZN6duckdb9make_uniqINS_9DataChunkEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.e
  store ptr %i.j, ptr %2, align 8, !tbaa !172, !alias.scope !169
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb9make_uniqINS_9DataChunkEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.l) #29
  br label %.body

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %_ZN6duckdb9make_uniqINS_9DataChunkEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = load i64, ptr %i.t, align 8, !tbaa !117
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit

bb.i:                                             ; preds = %.noexc
  %i.v = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc32 unwind label %bb.k   ; 2 uses

.noexc32:                                         ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit: ; preds = %.noexc32, %bb.h
  %.06.i = phi i64 [ %i.u, %bb.h ], [ %i.ad, %.noexc32 ] ; 4 uses
  %i.ae = icmp eq i64 %.06.i, 0
  br i1 %i.ae, label %bb.j, label %.lr.ph

bb.j:                                             ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit
  store ptr null, ptr %0, align 8, !tbaa !166
  br label %bb.ae

bb.k:                                             ; preds = %bb.i, %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.lr.ph:                                           ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit
  %.024 = call i64 @llvm.usub.sat.i64(i64 %.06.i, i64 2048) ; 2 uses
  %.023 = call i64 @llvm.umin.i64(i64 %.06.i, i64 2048) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  br label %bb.l

._crit_edge:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.ai = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN6duckdb15ReservoirSample5ChunkEv.exit unwind label %bb.ab

bb.l:                                             ; preds = %.lr.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %.02243 = phi i64 [ %.024, %.lr.ph ], [ %i.bg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 4 uses
  %i.aj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.m unwind label %bb.q       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !47
  %.not42 = icmp eq ptr %i.al, %i.an
  br i1 %.not42, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = invoke { double, i64 } @_ZN6duckdb14BlockingSample18PopFromWeightQueueEv(ptr noundef nonnull align 8 dereferenceable(18) %1)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ap = extractvalue { double, i64 } %i.ao, 1   ; 2 uses
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !137 ; 2 uses
  %.not.i35 = icmp eq ptr %i.aq, null
  br i1 %.not.i35, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = zext i32 %i.as to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

bb.q:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.r:                                             ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.s:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !137 ; 2 uses
  %.not.i36 = icmp eq ptr %i.aw, null
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.02243
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = zext i32 %i.ay to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.s, %bb.t, %bb.o, %bb.p
  %.sink55 = phi i64 [ %i.ap, %bb.o ], [ %i.at, %bb.p ], [ %i.az, %bb.t ], [ %.02243, %bb.s ]
  %i.ba = sub nuw i64 %.02243, %.024
  %i.bb = trunc i64 %.sink55 to i32
  %i.bc = load ptr, ptr %3, align 8, !tbaa !137
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ba
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !3
  %i.be = load i64, ptr %i.ah, align 8, !tbaa !117
  %i.bf = add i64 %i.be, -1
  store i64 %i.bf, ptr %i.ah, align 8, !tbaa !117
  %i.bg = add nuw i64 %.02243, 1                  ; 2 uses
  %5 = icmp ult i64 %i.bg, %.06.i
  br i1 %5, label %bb.l, label %._crit_edge, !llvm.loop !173

_ZN6duckdb15ReservoirSample5ChunkEv.exit:         ; preds = %._crit_edge
  invoke void @_ZNK6duckdb9DataChunk8GetTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.46") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.ai)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZN6duckdb15ReservoirSample5ChunkEv.exit
  %i.bh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !174, !nonnull !165, !align !175
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 2048)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.bk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.bl = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN6duckdb15ReservoirSample5ChunkEv.exit39 unwind label %bb.ac

_ZN6duckdb15ReservoirSample5ChunkEv.exit39:       ; preds = %bb.x
  invoke void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %i.bk, ptr noundef nonnull align 8 dereferenceable(72) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.023, i64 noundef 0)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %_ZN6duckdb15ReservoirSample5ChunkEv.exit39
  %i.bm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i64 %.023, ptr %i.bn, align 8, !tbaa !103
  %i.bo = load i64, ptr %2, align 8, !tbaa !172
  store i64 %i.bo, ptr %0, align 8, !tbaa !172
  store ptr null, ptr %2, align 8, !tbaa !172
  %i.bp = load ptr, ptr %4, align 8, !tbaa !98    ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !101 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i ], [ %i.bp, %bb.z ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #29
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, %i.br
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !102

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !98
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.z
  %i.bt = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.bp, %bb.z ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bt) #28
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.ae

bb.ab:                                            ; preds = %._crit_edge, %_ZN6duckdb15ReservoirSample5ChunkEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x, %bb.y, %_ZN6duckdb15ReservoirSample5ChunkEv.exit39, %bb.w, %bb.v, %bb.u
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #29
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.ac ], [ %i.bu, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.al

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !135 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.by, align 8, !tbaa !138
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !140
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !141
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #29, !inline_history !145
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !141
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #29, !inline_history !145
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i = phi i32 [ %i.cb, %bb.ai ], [ %i.cl, %bb.aj ]
  %i.cm = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cm, label %bb.ak, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !40

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.ae, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.cn = load ptr, ptr %2, align 8, !tbaa !172   ; 3 uses
  %.not.i40 = icmp eq ptr %i.cn, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.cn) #29
  call void @_ZdlPv(ptr noundef nonnull %i.cn) #28
  br label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.am

bb.al:                                            ; preds = %bb.ad, %bb.r, %bb.q, %bb.k
  %.pn27.pn.pn = phi { ptr, i32 } [ %i.af, %bb.k ], [ %.pn, %bb.ad ], [ %i.av, %bb.r ], [ %i.au, %bb.q ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  br label %.body

.body:                                            ; preds = %bb.g, %bb.al
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn, %bb.al ], [ %i.m, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume

bb.am:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.52", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !172    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
end_hunk_0
