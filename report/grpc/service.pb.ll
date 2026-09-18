Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/service.pb?download=true
inline.NumInlined: 1035
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MergeIntoEmptyEPNS0_5ArenaEPNS1_8NodeBaseEm:bb.a
  tail call void @_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6ResizeEPNS0_5ArenaEj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %.sroa.speculated.i)
  %.pre = load i32, ptr %i.l, align 4, !tbaa !70
  br label %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE38ResizeIfLoadIsOutOfRangeForMultiInsertEPNS0_5ArenaEm.exit

_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE38ResizeIfLoadIsOutOfRangeForMultiInsertEPNS0_5ArenaEm.exit: ; preds = %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24CalculateCapacityForSizeEm.exit.i, %bb.c
  %i.n = phi i32 [ %.0.i.i, %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24CalculateCapacityForSizeEm.exit.i ], [ %.pre, %bb.c ]
  %i.o = trunc i64 %3 to i32
  store i32 %i.o, ptr %0, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !69   ; 2 uses
  %i.r = add i32 %i.n, -1
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE38ResizeIfLoadIsOutOfRangeForMultiInsertEPNS0_5ArenaEm.exit
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE38ResizeIfLoadIsOutOfRangeForMultiInsertEPNS0_5ArenaEm.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.014 = phi ptr [ %2, %.lr.ph ], [ %i.t, %bb.d ] ; 5 uses
  %.01013 = phi i64 [ 0, %.lr.ph ], [ %i.am, %bb.d ]
  %i.t = load ptr, ptr %.014, align 8, !tbaa !84  ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.t, i32 0, i32 0, i32 1)
  %i.u = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !27   ; 2 uses
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.v, i64 noundef %i.x)
  %i.z = add i64 %i.x, 87
  %i.aa = add i64 %i.z, %i.y
  %i.ab = xor i64 %i.aa, %i.s
  %i.ac = mul i64 %i.ab, -2543921745674291987
  %i.ad = tail call noundef i64 @llvm.bswap.i64(i64 %i.ac)
  %i.ae = xor i64 %i.ad, %i.s
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af)
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.r, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !82
  store ptr %i.al, ptr %.014, align 8, !tbaa !84
  store ptr %.014, ptr %i.ak, align 8, !tbaa !82
  %i.am = add nuw i64 %.01013, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !148
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14CloneFromOtherEPNS0_5ArenaERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !70, !noalias !153 ; 2 uses
  %.not12.i.i = icmp eq i32 %i.c, 0
  br i1 %.not12.i.i, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69, !noalias !153
  %i.f = zext i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82, !noalias !153 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.f
  br i1 %.not.i.i, label %._crit_edge, label %bb.b, !llvm.loop !1

.lr.ph:                                           ; preds = %bb.b
  %i.j = trunc nuw i64 %indvars.iv.i.i to i32
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit.outer

._crit_edge:                                      ; preds = %bb.c, %bb.k, %bb.l, %bb.a
  %.0.lcssa = phi ptr [ %i.q, %bb.k ], [ null, %bb.a ], [ %i.q, %bb.l ], [ null, %bb.c ]
  ret ptr %.0.lcssa

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit.outer: ; preds = %.lr.ph51, %.lr.ph
  %.022.ph = phi ptr [ null, %.lr.ph ], [ %i.q, %.lr.ph51 ]
  %.sroa.014.021.ph = phi ptr [ %i.h, %.lr.ph ], [ %i.ao, %.lr.ph51 ]
  %.sroa.11.020.ph = phi i32 [ %i.j, %.lr.ph ], [ %.08.i.i49, %.lr.ph51 ]
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit: ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit.outer, %_ZN6google8protobuf5Arena20CreateInArenaStorageIN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEJRKS6_EEEvPT_PS1_DpOT0_.exit
  %.022 = phi ptr [ %i.q, %_ZN6google8protobuf5Arena20CreateInArenaStorageIN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEJRKS6_EEEvPT_PS1_DpOT0_.exit ], [ %.022.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit.outer ]
  %.sroa.014.021 = phi ptr [ %i.ah, %_ZN6google8protobuf5Arena20CreateInArenaStorageIN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEJRKS6_EEEvPT_PS1_DpOT0_.exit ], [ %.sroa.014.021.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit.outer ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.014.021, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.014.021, i64 40 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit
  %i.o = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28
  br label %bb.f

bb.e:                                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit
  %i.p = call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef 72)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !32
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.014.021, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.v, ptr %i.a, align 8, !tbaa !48
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.f
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %i.r, align 8, !tbaa !33
  %i.y = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.y, ptr %i.s, align 8, !tbaa !23
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.f
  %i.z = phi ptr [ %i.x, %.noexc.i.i ], [ %i.s, %bb.f ] ; 2 uses
  switch i64 %i.v, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !23
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !27
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.k, label %bb.i, label %bb.j, !prof !28

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @_ZN4grpc8channelz2v231QueryTraceRequest_QueryArgValueC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  br label %_ZN6google8protobuf5Arena20CreateInArenaStorageIN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEJRKS6_EEEvPT_PS1_DpOT0_.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @_ZN6google8protobuf8internal15ThreadSafeArena10AddCleanupEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull %i.r, ptr noundef nonnull @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPv)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @_ZN4grpc8channelz2v231QueryTraceRequest_QueryArgValueC1EPN6google8protobuf5ArenaERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  br label %_ZN6google8protobuf5Arena20CreateInArenaStorageIN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEJRKS6_EEEvPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena20CreateInArenaStorageIN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEJRKS6_EEEvPT_PS1_DpOT0_.exit: ; preds = %bb.i, %bb.j
  store ptr %.022, ptr %i.q, align 8, !tbaa !84
  %i.ah = load ptr, ptr %.sroa.014.021, align 8, !tbaa !84 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i13, label %bb.k, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit

bb.k:                                             ; preds = %_ZN6google8protobuf5Arena20CreateInArenaStorageIN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEJRKS6_EEEvPT_PS1_DpOT0_.exit
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !70  ; 2 uses
  %.08.i.i48 = add i32 %.sroa.11.020.ph, 1        ; 2 uses
  %i.aj = icmp ult i32 %.08.i.i48, %i.ai
  br i1 %i.aj, label %.lr.ph51.preheader, label %._crit_edge

.lr.ph51.preheader:                               ; preds = %bb.k
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !69
  br label %.lr.ph51

bb.l:                                             ; preds = %.lr.ph51
  %.08.i.i = add i32 %.08.i.i49, 1                ; 2 uses
  %i.al = icmp ult i32 %.08.i.i, %i.ai
  br i1 %i.al, label %.lr.ph51, label %._crit_edge, !llvm.loop !2

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %bb.l
  %.08.i.i49 = phi i32 [ %.08.i.i, %bb.l ], [ %.08.i.i48, %.lr.ph51.preheader ] ; 3 uses
  %i.am = zext i32 %.08.i.i49 to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !82 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.l, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE14const_iteratorppEv.exit.outer, !llvm.loop !2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6ResizeEPNS0_5ArenaEj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !70   ; 4 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i32 %2, ptr %i.a, align 4, !tbaa !70
  %i.d = icmp eq ptr %1, null
  %i.e = zext i32 %2 to i64
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 3 uses
  br i1 %i.d, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  br label %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit

_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i: ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.f)
  br label %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit

_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit: ; preds = %bb.c, %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i
  %i.i = phi ptr [ %i.h, %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i ], [ %i.g, %bb.c ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.f, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !69
  br label %_ZN6google8protobuf8internal14UntypedMapBase11DeleteTableEPNS0_5ArenaEPPNS1_8NodeBaseEj.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69   ; 8 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !70
  %i.m = icmp eq ptr %1, null                     ; 2 uses
  %i.n = zext i32 %2 to i64
  %i.o = shl nuw nsw i64 %i.n, 3                  ; 3 uses
  br i1 %i.m, label %bb.e, label %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i20

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28
  br label %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21

_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i20: ; preds = %bb.d
  %i.q = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21

_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21: ; preds = %bb.e, %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i20
  %i.r = phi ptr [ %i.q, %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i20 ], [ %i.p, %bb.e ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.o, i1 false)
  store ptr %i.r, ptr %i.k, align 8, !tbaa !69
  %i.s = add i32 %2, -1
  %.not30 = icmp eq i32 %i.b, 0
  br i1 %.not30, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %wide.trip.count = zext i32 %i.b to i64         ; 2 uses
  br label %bb.m

._crit_edge29:                                    ; preds = %._crit_edge, %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21
  %.pre-phi = phi i64 [ 0, %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21 ], [ %wide.trip.count, %._crit_edge ] ; 3 uses
  %i.u = shl nuw nsw i64 %.pre-phi, 3             ; 3 uses
  br i1 %i.m, label %bb.l, label %bb.f

bb.f:                                             ; preds = %._crit_edge29
  %i.v = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !158
  %i.y = load i64, ptr %1, align 8, !tbaa !184
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf8internal14UntypedMapBase11DeleteTableEPNS0_5ArenaEPPNS1_8NodeBaseEj.exit, !prof !44

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !185 ; 4 uses
  %i.ac = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.ae = sub nuw nsw i64 59, %i.ad               ; 2 uses
  %i.af = load i8, ptr %i.ab, align 8, !tbaa !186 ; 3 uses
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.ae, %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !187 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h, !prof !44

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp ugt i8 %i.af, 1
  br i1 %i.aj, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.i, !prof !44

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp eq i8 %i.af, 1
  br i1 %i.ak, label %bb.j, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !189
  store ptr %i.al, ptr %i.l, align 8, !tbaa !189
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.h
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ag, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.ai, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ab, align 8, !tbaa !186
  %i.am = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %.pre-phi, %i.am
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.j, %bb.i
  %i.an = phi i64 [ %i.am, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.j ], [ 0, %bb.i ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.an, 3      ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.u, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !189
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.l, ptr %i.ah, align 8, !tbaa !187
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.pre-phi, i64 64)
  %i.ap = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.ap, ptr %i.ab, align 8, !tbaa !186
  br label %_ZN6google8protobuf8internal14UntypedMapBase11DeleteTableEPNS0_5ArenaEPPNS1_8NodeBaseEj.exit

bb.k:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ae ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !189
  store ptr %i.ar, ptr %i.l, align 8, !tbaa !191
  store ptr %i.l, ptr %i.aq, align 8, !tbaa !189
  br label %_ZN6google8protobuf8internal14UntypedMapBase11DeleteTableEPNS0_5ArenaEPPNS1_8NodeBaseEj.exit

bb.l:                                             ; preds = %._crit_edge29
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.u) #26
  br label %_ZN6google8protobuf8internal14UntypedMapBase11DeleteTableEPNS0_5ArenaEPPNS1_8NodeBaseEj.exit

bb.m:                                             ; preds = %.lr.ph28, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !82 ; 2 uses
  %.not25 = icmp eq ptr %i.at, null
  br i1 %.not25, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge29, label %bb.m, !llvm.loop !154

.lr.ph:                                           ; preds = %bb.m, %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit
  %.026 = phi ptr [ %i.au, %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit ], [ %i.at, %bb.m ] ; 5 uses
  %i.au = load ptr, ptr %.026, align 8, !tbaa !84 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.026, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !33 ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.026, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !27 ; 14 uses
  %i.az = icmp ult i64 %i.ay, 9
  br i1 %i.az, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.lr.ph
  %i.ba = icmp samesign ugt i64 %i.ay, 3
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.0.copyload.i.i.i = load i32, ptr %i.aw, align 1
  %i.bb = zext i32 %.0.copyload.i.i.i to i64
  %i.bc = shl nuw i64 %i.bb, 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %.0.copyload.i4.i.i = load i32, ptr %i.be, align 1
  %i.bf = zext i32 %.0.copyload.i4.i.i to i64
  %i.bg = or disjoint i64 %i.bc, %i.bf
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = load i8, ptr %i.aw, align 1, !tbaa !23
  %i.bi = zext i8 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 16
  %i.bk = getelementptr i8, ptr %i.aw, i64 %i.ay
  %i.bl = getelementptr i8, ptr %i.bk, i64 -1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !23
  %i.bn = zext i8 %i.bm to i64
  %i.bo = or disjoint i64 %i.bj, %i.bn
  %i.bp = lshr i64 %i.ay, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !23
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 8
  %i.bu = or disjoint i64 %i.bo, %i.bt
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.0.i.i = phi i64 [ %i.bg, %bb.o ], [ %i.bu, %bb.q ]
  %i.bv = xor i64 %.0.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bw = mul i64 %i.bv, -2543921745674291987
  %i.bx = tail call noundef i64 @llvm.bswap.i64(i64 %i.bw)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.s:                                             ; preds = %.lr.ph
  %i.by = icmp ult i64 %i.ay, 17
  br i1 %i.by, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.0.copyload.i.i.i.i = load i64, ptr %i.aw, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8
  %.0.copyload.i.i4.i.i = load i64, ptr %i.ca, align 1
  %i.cb = xor i64 %.0.copyload.i.i.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.cc = xor i64 %.0.copyload.i.i4.i.i, -2543921745674291987
  %i.cd = zext i64 %i.cb to i128
  %i.ce = zext i64 %i.cc to i128
  %i.cf = mul nuw i128 %i.ce, %i.cd               ; 2 uses
  %i.cg = lshr i128 %i.cf, 64
  %i.ch = xor i128 %i.cg, %i.cf
  %i.ci = trunc i128 %i.ch to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.u:                                             ; preds = %bb.s
  %i.cj = icmp ult i64 %i.ay, 33
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.0.copyload.i.i20.i = load i64, ptr %i.aw, align 1
  %i.ck = xor i64 %.0.copyload.i.i20.i, 1376283091369227076
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.0.copyload.i.i21.i = load i64, ptr %i.cl, align 1
  %i.cm = xor i64 %.0.copyload.i.i21.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.cn = zext i64 %i.ck to i128
  %i.co = zext i64 %i.cm to i128
  %i.cp = mul nuw i128 %i.co, %i.cn               ; 2 uses
  %i.cq = getelementptr i8, ptr %i.aw, i64 %i.ay  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -16
  %.0.copyload.i.i22.i = load i64, ptr %i.cr, align 1
  %i.cs = xor i64 %.0.copyload.i.i22.i, 589684135938649225
  %i.ct = getelementptr i8, ptr %i.cq, i64 -8
  %.0.copyload.i.i23.i = load i64, ptr %i.ct, align 1
  %i.cu = xor i64 %.0.copyload.i.i23.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.cv = zext i64 %i.cs to i128
  %i.cw = zext i64 %i.cu to i128
  %i.cx = mul nuw i128 %i.cw, %i.cv               ; 2 uses
  %i.cy = xor i128 %i.cx, %i.cp
  %i.cz = lshr i128 %i.cy, 64
  %i.da = xor i128 %i.cp, %i.cz
  %i.db = xor i128 %i.da, %i.cx
  %i.dc = trunc i128 %i.db to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.w:                                             ; preds = %bb.u
  %.not.i22 = icmp ugt i64 %i.ay, 1024
  br i1 %.not.i22, label %bb.y, label %bb.x, !prof !28

bb.x:                                             ; preds = %bb.w
  %i.dd = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %i.aw, i64 noundef %i.ay)
  %i.de = xor i64 %i.dd, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.df = zext i64 %i.de to i128
  %i.dg = mul nuw i128 %i.df, 15902822328035259629 ; 2 uses
  %i.dh = lshr i128 %i.dg, 64
  %i.di = xor i128 %i.dh, %i.dg
  %i.dj = trunc i128 %i.di to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.y:                                             ; preds = %bb.w
  %i.dk = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.aw, i64 noundef %i.ay)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.y
  %.0.i = phi i64 [ %i.dk, %bb.y ], [ %i.ci, %bb.t ], [ %i.dc, %bb.v ], [ %i.dj, %bb.x ], [ %i.bx, %bb.r ], [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.p ]
  %i.dl = add i64 %i.ay, 87
  %i.dm = add i64 %i.dl, %.0.i
  %i.dn = xor i64 %i.dm, %i.t
  %i.do = mul i64 %i.dn, -2543921745674291987
  %i.dp = tail call noundef i64 @llvm.bswap.i64(i64 %i.do)
  %i.dq = xor i64 %i.dp, %i.t
  %i.dr = mul i64 %i.dq, -2543921745674291987
  %i.ds = tail call noundef i64 @llvm.bswap.i64(i64 %i.dr)
  %i.dt = trunc i64 %i.ds to i32
  %i.du = and i32 %i.s, %i.dt
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dv ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !82
  store ptr %i.dx, ptr %.026, align 8, !tbaa !84
  store ptr %.026, ptr %i.dw, align 8, !tbaa !82
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !155

_ZN6google8protobuf8internal14UntypedMapBase11DeleteTableEPNS0_5ArenaEPPNS1_8NodeBaseEj.exit: ; preds = %bb.l, %bb.k, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.f, %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #16

declare noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 9
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %2, 3
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i = load i32, ptr %1, align 1
  %i.c = zext i32 %.0.copyload.i.i to i64
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE18TryEmplaceInternalIRKS7_JEEESt4pairINSC_8iteratorEbEOT_DpOT0_:bb.a
  br i1 %i.ba, label %bb.e, label %bb.g, !prof !28

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal14UntypedMapBase5arenaEv.exit
  %.not23.i = icmp slt i32 %i.s, 0
  br i1 %.not23.i, label %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24ResizeIfLoadIsOutOfRangeEPNS0_5ArenaEm.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = shl nuw i32 %i.s, 1
  br label %bb.k

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal14UntypedMapBase5arenaEv.exit
  %i.bc = lshr i64 %i.az, 2
  %.not.i15 = icmp samesign uge i64 %i.bc, %i.av
  %i.bd = icmp ugt i32 %i.s, 2
  %or.cond.i = and i1 %i.bd, %.not.i15
  br i1 %or.cond.i, label %bb.h, label %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24ResizeIfLoadIsOutOfRangeEPNS0_5ArenaEm.exit.thread, !prof !213

bb.h:                                             ; preds = %bb.g
  %i.be = lshr i64 %i.av, 2
  %i.bf = add nuw nsw i64 %i.av, 1
  %i.bg = add nuw nsw i64 %i.bf, %i.be
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0.i16 = phi i64 [ 1, %bb.h ], [ %i.bh, %bb.i ] ; 2 uses
  %i.bh = add i64 %.0.i16, 1                      ; 2 uses
  %i.bi = shl i64 %i.bg, %i.bh
  %i.bj = icmp ult i64 %i.bi, %i.az
  br i1 %i.bj, label %bb.i, label %bb.j, !llvm.loop !211

bb.j:                                             ; preds = %bb.i
  %i.bk = trunc i64 %.0.i16 to i32
  %i.bl = lshr i32 %i.s, %i.bk
  %i.bm = tail call i32 @llvm.umax.i32(i32 %i.bl, i32 2) ; 2 uses
  %.not22.i = icmp eq i32 %i.bm, %i.s
  br i1 %.not22.i, label %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24ResizeIfLoadIsOutOfRangeEPNS0_5ArenaEm.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sink.i = phi i32 [ %i.bb, %bb.f ], [ %i.bm, %bb.j ]
  tail call void @_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6ResizeEPNS0_5ArenaEj(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %.0.i.i.i, i32 noundef %.sink.i)
  %i.bn = load ptr, ptr %2, align 8, !tbaa !33
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.bq = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.bn, i64 noundef %i.bo)
  %i.br = add i64 %i.bo, 87
  %i.bs = add i64 %i.br, %i.bq
  %i.bt = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bu = xor i64 %i.bs, %i.bt
  %i.bv = mul i64 %i.bu, -2543921745674291987
  %i.bw = tail call noundef i64 @llvm.bswap.i64(i64 %i.bv)
  %i.bx = xor i64 %i.bw, %i.bt
  %i.by = mul i64 %i.bx, -2543921745674291987
  %i.bz = tail call noundef i64 @llvm.bswap.i64(i64 %i.by)
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = load i32, ptr %i.r, align 4, !tbaa !70
  %i.cc = add i32 %i.cb, -1
  %i.cd = and i32 %i.cc, %i.ca
  br label %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24ResizeIfLoadIsOutOfRangeEPNS0_5ArenaEm.exit.thread

_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24ResizeIfLoadIsOutOfRangeEPNS0_5ArenaEm.exit.thread: ; preds = %bb.j, %bb.e, %bb.g, %bb.k
  %.0 = phi i32 [ %i.cd, %bb.k ], [ %i.u, %bb.g ], [ %i.u, %bb.e ], [ %i.u, %bb.j ] ; 2 uses
  %i.ce = icmp eq ptr %.0.i.i.i, null             ; 2 uses
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24ResizeIfLoadIsOutOfRangeEPNS0_5ArenaEm.exit.thread
  %i.cf = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28
  br label %bb.n

bb.m:                                             ; preds = %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24ResizeIfLoadIsOutOfRangeEPNS0_5ArenaEm.exit.thread
  %i.cg = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %.0.i.i.i, i64 noundef 72)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ch = phi ptr [ %i.cf, %bb.l ], [ %i.cg, %bb.m ] ; 13 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 3 uses
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !32
  %i.ck = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !27  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.cl, ptr %i.a, align 8, !tbaa !48
  %i.cm = icmp ugt i64 %i.cl, 15
  br i1 %i.cm, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.cn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cn, ptr %i.ci, align 8, !tbaa !33
  %i.co = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.co, ptr %i.cj, align 8, !tbaa !23
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.n
  %i.cp = phi ptr [ %i.cn, %.noexc.i.i ], [ %i.cj, %bb.n ] ; 2 uses
  switch i64 %i.cl, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.cq = load i8, ptr %i.ck, align 1, !tbaa !23
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.ck, i64 %i.cl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !27
  %i.ct = load ptr, ptr %i.ci, align 8, !tbaa !33
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  store i8 0, ptr %i.cu, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.ce, label %bb.q, label %bb.r, !prof !28

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  store i64 0, ptr %i.cw, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4grpc8channelz2v231QueryTraceRequest_QueryArgValueE, i64 16), ptr %i.cv, align 8, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  store i32 0, ptr %i.cx, align 8, !tbaa !19
  %.ptr.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 68
  store i32 0, ptr %.ptr.i.i.i.i.i.i, align 4, !tbaa !17
  br label %_ZN6google8protobuf5Arena20CreateInArenaStorageIN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEJEEEvPT_PS1_DpOT0_.exit

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @_ZN6google8protobuf8internal15ThreadSafeArena10AddCleanupEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(168) %.0.i.i.i, ptr noundef nonnull %i.ci, ptr noundef nonnull @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPv)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  call void @_ZN4grpc8channelz2v231QueryTraceRequest_QueryArgValueC1EPN6google8protobuf5ArenaE(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(168) %.0.i.i.i), !inline_history !212
  br label %_ZN6google8protobuf5Arena20CreateInArenaStorageIN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEJEEEvPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena20CreateInArenaStorageIN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEJEEEvPT_PS1_DpOT0_.exit: ; preds = %bb.q, %bb.r
  %i.cz = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.da = zext i32 %.0 to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.da ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !82 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN6google8protobuf5Arena20CreateInArenaStorageIN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEJEEEvPT_PS1_DpOT0_.exit
  store ptr %i.ch, ptr %i.db, align 8, !tbaa !82
  store ptr null, ptr %i.ch, align 8, !tbaa !84
  br label %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12InsertUniqueEjPNS1_7KeyNodeIS8_EE.exit

bb.t:                                             ; preds = %_ZN6google8protobuf5Arena20CreateInArenaStorageIN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEJEEEvPT_PS1_DpOT0_.exit
  store ptr %i.dc, ptr %i.ch, align 8, !tbaa !84
  store ptr %i.ch, ptr %i.db, align 8, !tbaa !82
  br label %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12InsertUniqueEjPNS1_7KeyNodeIS8_EE.exit

_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12InsertUniqueEjPNS1_7KeyNodeIS8_EE.exit: ; preds = %bb.s, %bb.t
  %i.de = load i32, ptr %1, align 8, !tbaa !71
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %1, align 8, !tbaa !71
  br label %.split.us

.split.us:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.lr.ph.i.us, %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12InsertUniqueEjPNS1_7KeyNodeIS8_EE.exit
  %.sink56 = phi ptr [ %i.ch, %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12InsertUniqueEjPNS1_7KeyNodeIS8_EE.exit ], [ %.019.i.us, %.lr.ph.i.us ], [ %.019.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  %.0.sink = phi i32 [ %.0, %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12InsertUniqueEjPNS1_7KeyNodeIS8_EE.exit ], [ %i.u, %.lr.ph.i.us ], [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  %.sink = phi i8 [ 1, %_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12InsertUniqueEjPNS1_7KeyNodeIS8_EE.exit ], [ 0, %.lr.ph.i.us ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  store ptr %.sink56, ptr %0, align 8
  %.sroa.020.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.020.sroa.4.0..sroa_idx, align 8
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.0.sink, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.dg, align 8, !tbaa !216
  ret void
}

declare noundef i64 @_ZNK4grpc8channelz2v210TraceEvent12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #7

; Function Attrs: uwtable
define internal void @_GLOBAL__I_000102() #22 section ".text.startup" {
bb.a:
  tail call void @_ZN6google8protobuf8internal14AddDescriptorsEPKNS1_15DescriptorTableE(ptr noundef nonnull @descriptor_table_src_2fproto_2fgrpc_2fchannelz_2fv2_2fservice_2eproto)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { builtin allocsize(0) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !47}
!1 = distinct !{!1, !47}
!2 = distinct !{!2, !47}
!3 = distinct !{!3, !47}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"vtable pointer", !7, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!9, !9, i64 0}
!18 = !{!"_ZTSN6google8protobuf8internal10CachedSizeE", !9, i64 0}
!19 = !{!18, !9, i64 0}
!20 = !{!"any pointer", !8, i64 0}
!21 = !{!"_ZTSN6google8protobuf8internal15TaggedStringPtrE", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!8, !8, i64 0}
!24 = !{!"p1 omnipotent char", !20, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !12, i64 8, !8, i64 16}
!27 = !{!26, !12, i64 8}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !20, i64 0}
!30 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!25, !24, i64 0}
!33 = !{!26, !24, i64 0}
!34 = !{!"p1 _ZTSN6google8protobuf11MessageLiteE", !20, i64 0}
!35 = !{!"p1 _ZTSN6google8protobuf8internal16TcParseTableBaseE", !20, i64 0}
!36 = !{!"_ZTSN6google8protobuf8internal14MessageCreator3TagE", !8, i64 0}
!37 = !{!"_ZTSN6google8protobuf8internal14MessageCreatorE", !9, i64 0, !36, i64 4, !8, i64 5, !20, i64 8}
!38 = !{!"bool", !8, i64 0}
!39 = !{!"_ZTSN6google8protobuf8internal9ClassDataE", !34, i64 0, !35, i64 8, !20, i64 16, !20, i64 24, !37, i64 32, !9, i64 48, !38, i64 52, !38, i64 53}
!40 = !{!39, !35, i64 8}
!41 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !20, i64 0}
!42 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !24, i64 0, !24, i64 8, !8, i64 16, !41, i64 48, !38, i64 56, !38, i64 57, !38, i64 58, !38, i64 59}
!43 = !{!42, !24, i64 0}
!44 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!45 = !{!"branch_weights", i32 1, i32 1999}
!46 = !{!"branch_weights", i32 0, i32 1}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!12, !12, i64 0}
!49 = !{!20, !20, i64 0}
!50 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj0EEE", !9, i64 0}
!51 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBaseE", !20, i64 0, !9, i64 8, !50, i64 12}
!52 = !{!51, !9, i64 8}
!53 = !{!50, !9, i64 0}
!54 = !{i8 0, i8 2}
!55 = !{}
!56 = !{!51, !20, i64 0}
!57 = !{!"_ZTSN6google8protobuf8internal7HasBitsILi1EEE", !8, i64 0}
!58 = !{!"_ZTSN6google8protobuf8internal14ArenaStringPtrE", !21, i64 0}
!59 = !{!"p1 _ZTSN6google8protobuf7MessageE", !20, i64 0}
!60 = !{!"_ZTSN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EEUt_E", !57, i64 0, !18, i64 4, !58, i64 8, !59, i64 16}
!61 = !{!60, !59, i64 16}
!62 = !{!"_ZTSSt13__atomic_baseIPKvE", !20, i64 0}
!63 = !{!62, !20, i64 0}
!64 = !{!"short", !8, i64 0}
!65 = !{!"_ZTSN6google8protobuf8internal14UntypedMapBase8TypeInfoE", !64, i64 0, !8, i64 2, !8, i64 3, !8, i64 3}
!66 = !{!"any p2 pointer", !20, i64 0}
!67 = !{!"p2 _ZTSN6google8protobuf8internal8NodeBaseE", !66, i64 0}
!68 = !{!"_ZTSN6google8protobuf8internal14UntypedMapBaseE", !9, i64 0, !9, i64 4, !50, i64 8, !65, i64 12, !67, i64 16}
!69 = !{!68, !67, i64 16}
!70 = !{!68, !9, i64 4}
!71 = !{!68, !9, i64 0}
!72 = !{!66, !66, i64 0}
!73 = !{!"_ZTSSt10_Head_baseILm0EPPKvLb0EE", !66, i64 0}
!74 = !{!"_ZTSSt11_Tuple_implILm0EJPPKvSt14default_deleteIA_S1_EEE", !73, i64 0}
!75 = !{!"_ZTSSt5tupleIJPPKvSt14default_deleteIA_S1_EEE", !74, i64 0}
!76 = !{!"_ZTSSt15__uniq_ptr_implIPKvSt14default_deleteIA_S1_EE", !75, i64 0}
!77 = !{!"_ZTSSt15__uniq_ptr_dataIPKvSt14default_deleteIA_S1_ELb1ELb1EE", !76, i64 0}
!78 = !{!"_ZTSSt10unique_ptrIA_PKvSt14default_deleteIS2_EE", !77, i64 0}
!79 = !{!"_ZTSN6google8protobuf8internal12MapSorterPtrINS0_3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEEEEE", !12, i64 0, !78, i64 8}
!80 = !{!79, !12, i64 0}
!81 = !{!"p1 _ZTSN6google8protobuf8internal8NodeBaseE", !20, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"_ZTSN6google8protobuf8internal8NodeBaseE", !81, i64 0}
!84 = !{!83, !81, i64 0}
!85 = !{!"_ZTSN6google8protobuf11MessageLiteE", !13, i64 8}
!86 = !{!"_ZTSN6google8protobuf7MessageE", !85, i64 0}
!87 = !{!"_ZTSN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EEE", !86, i64 0, !60, i64 16}
!88 = !{!87, !59, i64 32}
!89 = !{!"p1 _ZTSN6google8protobuf8internal14UntypedMapBaseE", !20, i64 0}
!90 = !{!"_ZTSN6google8protobuf8internal18UntypedMapIteratorE", !81, i64 0, !89, i64 8, !9, i64 16}
!91 = distinct !{!91, !"_ZN6google8protobuf8internal7memswapILm16EEEvPcS3_"}
!92 = distinct !{!92, !91, !"_ZN6google8protobuf8internal7memswapILm16EEEvPcS3_: argument 0"}
!93 = distinct !{!93, !91, !"_ZN6google8protobuf8internal7memswapILm16EEEvPcS3_: argument 1"}
!94 = !{!92}
!95 = !{!93}
!96 = distinct !{!96, !47}
!97 = distinct !{!97, !"_ZN6google8protobuf16RepeatedPtrFieldIN4grpc8channelz2v26EntityEE12InternalSwapEPS6_"}
!98 = distinct !{!98, !97, !"_ZN6google8protobuf16RepeatedPtrFieldIN4grpc8channelz2v26EntityEE12InternalSwapEPS6_: argument 0"}
!99 = distinct !{!99, !"_ZN6google8protobuf8internal20RepeatedPtrFieldBase12InternalSwapEPS2_"}
!100 = distinct !{!100, !99, !"_ZN6google8protobuf8internal20RepeatedPtrFieldBase12InternalSwapEPS2_: argument 0"}
!101 = distinct !{!101, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_"}
!102 = distinct !{!102, !101, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_: argument 0"}
!103 = distinct !{!103, !101, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_: argument 1"}
!104 = !{!98}
!105 = !{!100}
!106 = !{!102}
!107 = !{!103}
!108 = !{!103, !100, !98}
!109 = !{!38, !38, i64 0}
!110 = !{i64 0, i64 4, !23, i64 4, i64 4, !17, i64 8, i64 8, !48}
!111 = !{!"p1 _ZTSN4grpc8channelz2v26EntityE", !20, i64 0}
!112 = !{!111, !111, i64 0}
!113 = distinct !{null}
!114 = distinct !{!114, !"_ZNK6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE5beginEv"}
!115 = distinct !{!115, !114, !"_ZNK6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE5beginEv: argument 0"}
!116 = distinct !{!116, !"_ZNK6google8protobuf8internal14UntypedMapBase5beginEv"}
!117 = distinct !{!117, !116, !"_ZNK6google8protobuf8internal14UntypedMapBase5beginEv: argument 0"}
!118 = !{!42, !38, i64 58}
!119 = !{!117, !115}
!120 = distinct !{!120, !"_ZNK6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE5beginEv"}
!121 = distinct !{!121, !120, !"_ZNK6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE5beginEv: argument 0"}
!122 = distinct !{!122, !"_ZNK6google8protobuf8internal14UntypedMapBase5beginEv"}
!123 = distinct !{!123, !122, !"_ZNK6google8protobuf8internal14UntypedMapBase5beginEv: argument 0"}
!124 = distinct !{!124, !47}
!125 = !{!123, !121}
!126 = distinct !{!126, !47}
!127 = distinct !{!127, !"_ZNK6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE5beginEv"}
!128 = distinct !{!128, !127, !"_ZNK6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE5beginEv: argument 0"}
!129 = distinct !{!129, !"_ZNK6google8protobuf8internal14UntypedMapBase5beginEv"}
!130 = distinct !{!130, !129, !"_ZNK6google8protobuf8internal14UntypedMapBase5beginEv: argument 0"}
!131 = !{!130, !128}
!132 = distinct !{!132, !47}
!133 = distinct !{!133, !"_ZN6google8protobuf16RepeatedPtrFieldIN4grpc8channelz2v210TraceEventEE12InternalSwapEPS6_"}
!134 = distinct !{!134, !133, !"_ZN6google8protobuf16RepeatedPtrFieldIN4grpc8channelz2v210TraceEventEE12InternalSwapEPS6_: argument 0"}
!135 = distinct !{!135, !"_ZN6google8protobuf8internal20RepeatedPtrFieldBase12InternalSwapEPS2_"}
!136 = distinct !{!136, !135, !"_ZN6google8protobuf8internal20RepeatedPtrFieldBase12InternalSwapEPS2_: argument 0"}
!137 = distinct !{!137, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_"}
!138 = distinct !{!138, !137, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_: argument 0"}
!139 = distinct !{!139, !137, !"_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_: argument 1"}
!140 = !{!134}
!141 = !{!136}
!142 = !{!138}
!143 = !{!139}
!144 = !{!139, !136, !134}
!145 = distinct !{null, null}
!146 = distinct !{ptr @_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EED2Ev, null, null}
!147 = !{ptr @_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EED2Ev}
!148 = distinct !{!148, !47}
!149 = distinct !{!149, !"_ZNK6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE5beginEv"}
!150 = distinct !{!150, !149, !"_ZNK6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4grpc8channelz2v231QueryTraceRequest_QueryArgValueEE5beginEv: argument 0"}
!151 = distinct !{!151, !"_ZNK6google8protobuf8internal14UntypedMapBase5beginEv"}
!152 = distinct !{!152, !151, !"_ZNK6google8protobuf8internal14UntypedMapBase5beginEv: argument 0"}
!153 = !{!152, !150}
!154 = distinct !{!154, !47}
!155 = distinct !{!155, !47}
!156 = !{!"p1 _ZTSN6google8protobuf8internal11SerialArenaE", !20, i64 0}
!157 = !{!"_ZTSN6google8protobuf8internal15ThreadSafeArena11ThreadCacheE", !12, i64 0, !12, i64 8, !156, i64 16}
!158 = !{!157, !12, i64 8}
!159 = !{!"_ZTSN6google8protobuf8internal25TaggedAllocationPolicyPtrE", !12, i64 0}
!160 = !{!"p1 _ZTSN6google8protobuf8internal15ThreadSafeArena16SerialArenaChunkE", !20, i64 0}
end_hunk_1
