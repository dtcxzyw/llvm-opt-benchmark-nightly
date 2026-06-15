inline.NumInlined: 352
inline.NumDeleted: 135
begin_hunk_0_@_ZN6google8protobuf4util8TimeUtil23TimestampToMicrosecondsERKNS0_9TimestampE:bb.a
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6google8protobuf4util8TimeUtil23TimestampToMillisecondsERKNS0_9TimestampE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = mul nsw i64 %i.b, 1000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7    ; 3 uses
  %i.f = sdiv i32 %i.e, 1000000
  %.sext = sext i32 %i.f to i64
  %i.g = srem i32 %i.e, 1000000
  %i.h = icmp slt i32 %i.e, -999999
  %i.i = icmp sgt i32 %i.g, 0
  %or.cond.i = and i1 %i.h, %i.i
  %i.j = zext i1 %or.cond.i to i64
  %.0.i = add i64 %i.c, %.sext
  %i.k = add i64 %.0.i, %i.j
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6google8protobuf4util8TimeUtil18TimestampToSecondsERKNS0_9TimestampE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil16TimeTToTimestampEl(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::Timestamp") align 8 %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6google8protobuf9TimestampC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.a, align 8, !tbaa !7, !alias.scope !102
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3, !alias.scope !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !7, !alias.scope !102
  %i.e = or i32 %i.c, 3
  store i32 %i.e, ptr %i.b, align 8, !tbaa !3, !alias.scope !102
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6google8protobuf4util8TimeUtil16TimestampToTimeTERKNS0_9TimestampE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil18TimevalToTimestampERK7timeval(ptr dead_on_unwind noalias writable sret(%"class.google::protobuf::Timestamp") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !105    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !107
  %i.d = trunc i64 %i.c to i32
  %i.e = mul i32 %i.d, 1000                       ; 4 uses
  %i.f = add i32 %i.e, -1000000000
  %or.cond.i = icmp ult i32 %i.f, -1999999999
  br i1 %or.cond.i, label %bb.b, label %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i32 %i.e, 1000000000
  %i.h = sext i32 %i.g to i64
  %i.i = add nsw i64 %i.a, %i.h
  %i.j = srem i32 %i.e, 1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit

_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit: ; preds = %bb.a, %bb.b
  %.013.i = phi i32 [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.a, %bb.a ]
  %i.k = icmp slt i32 %.013.i, 0
  %i.l = add nsw i32 %.013.i, 1000000000
  %.114.i = select i1 %i.k, i32 %i.l, i32 %.013.i
  %.013.lobit.i = ashr i32 %.013.i, 31
  %i.m = sext i32 %.013.lobit.i to i64
  %.1.i = add nsw i64 %.0.i, %i.m
  tail call void @_ZN6google8protobuf9TimestampC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.1.i, ptr %i.n, align 8, !tbaa !7, !alias.scope !108
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !3, !alias.scope !108
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.114.i, ptr %i.q, align 8, !tbaa !7, !alias.scope !108
  %i.r = or i32 %i.p, 3
  store i32 %i.r, ptr %i.o, align 8, !tbaa !3, !alias.scope !108
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN6google8protobuf4util8TimeUtil18TimestampToTimevalERKNS0_9TimestampE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !7    ; 3 uses
  %i.e = sdiv i32 %i.d, 1000
  %.sext = sext i32 %i.e to i64
  %i.f = srem i32 %i.d, 1000
  %i.g = icmp slt i32 %i.d, -999
  %i.h = icmp sgt i32 %i.f, 0
  %or.cond.i = and i1 %i.g, %i.h
  %i.i = zext i1 %or.cond.i to i64
  %.0.i = add nsw i64 %i.i, %.sext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.0.i, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util8TimeUtil17TimevalToDurationERK7timeval(ptr dead_on_unwind noalias writable sret(%"class.google::protobuf::Duration") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !105    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !107
  %i.d = trunc i64 %i.c to i32
  %i.e = mul i32 %i.d, 1000                       ; 4 uses
  %i.f = add i32 %i.e, -1000000000
  %or.cond.i = icmp ult i32 %i.f, -1999999999
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i32 %i.e, 1000000000
  %i.h = sext i32 %i.g to i64
  %i.i = add nsw i64 %i.a, %i.h
  %i.j = srem i32 %i.e, 1000000000
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.022.i = phi i32 [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 5 uses
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.k = icmp slt i64 %.0.i, 0
  %i.l = icmp sgt i32 %.022.i, 0
  %or.cond3.i = and i1 %i.l, %i.k
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i64 %.0.i, 1
  %i.n = add nuw nsw i32 %.022.i, -1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.e:                                             ; preds = %bb.c
  %i.o = icmp sgt i64 %.0.i, 0
  %i.p = icmp slt i32 %.022.i, 0
  %or.cond5.i = and i1 %i.p, %i.o
  br i1 %or.cond5.i, label %bb.f, label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i64 %.0.i, -1
  %i.r = add nsw i32 %.022.i, 1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.123.i = phi i32 [ %i.n, %bb.d ], [ %i.r, %bb.f ], [ %.022.i, %bb.e ]
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %i.q, %bb.f ], [ %.0.i, %bb.e ]
  tail call void @_ZN6google8protobuf8DurationC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.1.i, ptr %i.s, align 8, !tbaa !7, !alias.scope !111
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !3, !alias.scope !111
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.123.i, ptr %i.v, align 8, !tbaa !7, !alias.scope !111
  %i.w = or i32 %i.u, 3
  store i32 %i.w, ptr %i.t, align 8, !tbaa !3, !alias.scope !111
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN6google8protobuf4util8TimeUtil17DurationToTimevalERKNS0_8DurationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !7    ; 3 uses
  %i.e = sdiv i32 %i.d, 1000
  %.sext = sext i32 %i.e to i64
  %i.f = srem i32 %i.d, 1000
  %i.g = icmp slt i32 %i.d, -999
  %i.h = icmp sgt i32 %i.f, 0
  %or.cond.i = and i1 %i.g, %i.h
  %i.i = zext i1 %or.cond.i to i64
  %.0.i = add nsw i64 %i.i, %.sext                ; 4 uses
  %i.j = icmp slt i64 %.0.i, 0
  %i.k = add nsw i64 %.0.i, 1000000
  %.0.i.lobit = ashr i64 %.0.i, 63
  %.sroa.0.0 = add nsw i64 %.0.i.lobit, %i.b
  %.sroa.4.0 = select i1 %i.j, i64 %i.k, i64 %.0.i
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN6google8protobufpLERNS0_8DurationERKS1_(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::Duration", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7
  %i.e = add nsw i64 %i.d, %i.b                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !7
  %i.j = add nsw i32 %i.i, %i.g                   ; 4 uses
  %i.k = add i32 %i.j, -1000000000
  %or.cond.i = icmp ult i32 %i.k, -1999999999
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sdiv i32 %i.j, 1000000000
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %i.e, %i.m
  %i.o = srem i32 %i.j, 1000000000
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.022.i = phi i32 [ %i.o, %bb.b ], [ %i.j, %bb.a ] ; 5 uses
  %.0.i = phi i64 [ %i.n, %bb.b ], [ %i.e, %bb.a ] ; 5 uses
  %i.p = icmp slt i64 %.0.i, 0
  %i.q = icmp sgt i32 %.022.i, 0
  %or.cond3.i = and i1 %i.q, %i.p
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i64 %.0.i, 1
  %i.s = add nuw nsw i32 %.022.i, -1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp sgt i64 %.0.i, 0
  %i.u = icmp slt i32 %.022.i, 0
  %or.cond5.i = and i1 %i.u, %i.t
  br i1 %or.cond5.i, label %bb.f, label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i64 %.0.i, -1
  %i.w = add nsw i32 %.022.i, 1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.123.i = phi i32 [ %i.s, %bb.d ], [ %i.w, %bb.f ], [ %.022.i, %bb.e ]
  %.1.i = phi i64 [ %i.r, %bb.d ], [ %i.v, %bb.f ], [ %.0.i, %bb.e ]
  call void @_ZN6google8protobuf8DurationC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.x, align 8, !tbaa !7, !alias.scope !114
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !3, !alias.scope !114
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.123.i, ptr %i.aa, align 8, !tbaa !7, !alias.scope !114
  %i.ab = or i32 %i.z, 3
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !3, !alias.scope !114
  %3 = icmp eq ptr %0, %2
  br i1 %3, label %_ZN6google8protobuf8DurationaSEOS1_.exit, label %4

4:                                                ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !37       ; 3 uses
  %7 = trunc i64 %6 to i1
  br i1 %7, label %bb.g, label %bb.h, !prof !39

bb.g:                                             ; preds = %4
  %i.ac = add nsw i64 %6, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.h:                                             ; preds = %4
  %i.af = inttoptr i64 %6 to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.ae, %bb.g ], [ %i.af, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 3 uses
  %i.ai = trunc i64 %i.ah to i1
  br i1 %i.ai, label %bb.i, label %bb.j, !prof !39

bb.i:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.aj = add nsw i64 %i.ah, -1
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.am = inttoptr i64 %i.ah to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i: ; preds = %bb.j, %bb.i
  %.0.i.i7.i = phi ptr [ %i.al, %bb.i ], [ %i.am, %bb.j ]
  %i.an = icmp eq ptr %.0.i.i.i, %.0.i.i7.i
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i
  invoke void @_ZN6google8protobuf8Duration12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN6google8protobuf8DurationaSEOS1_.exit unwind label %bb.m

bb.l:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i
  invoke void @_ZN6google8protobuf8Duration8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN6google8protobuf8DurationaSEOS1_.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #20
  unreachable

_ZN6google8protobuf8DurationaSEOS1_.exit:         ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit, %bb.k, %bb.l
  call void @_ZN6google8protobuf8DurationD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf8DurationD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN6google8protobufmIERNS0_8DurationERKS1_(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::Duration", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7
  %i.e = sub nsw i64 %i.b, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !7
  %i.j = sub nsw i32 %i.g, %i.i                   ; 4 uses
  %i.k = add i32 %i.j, -1000000000
  %or.cond.i = icmp ult i32 %i.k, -1999999999
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sdiv i32 %i.j, 1000000000
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %i.e, %i.m
  %i.o = srem i32 %i.j, 1000000000
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.022.i = phi i32 [ %i.o, %bb.b ], [ %i.j, %bb.a ] ; 5 uses
  %.0.i = phi i64 [ %i.n, %bb.b ], [ %i.e, %bb.a ] ; 5 uses
  %i.p = icmp slt i64 %.0.i, 0
  %i.q = icmp sgt i32 %.022.i, 0
  %or.cond3.i = and i1 %i.q, %i.p
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i64 %.0.i, 1
  %i.s = add nuw nsw i32 %.022.i, -1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp sgt i64 %.0.i, 0
  %i.u = icmp slt i32 %.022.i, 0
  %or.cond5.i = and i1 %i.u, %i.t
  br i1 %or.cond5.i, label %bb.f, label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i64 %.0.i, -1
  %i.w = add nsw i32 %.022.i, 1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.123.i = phi i32 [ %i.s, %bb.d ], [ %i.w, %bb.f ], [ %.022.i, %bb.e ]
  %.1.i = phi i64 [ %i.r, %bb.d ], [ %i.v, %bb.f ], [ %.0.i, %bb.e ]
  call void @_ZN6google8protobuf8DurationC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.x, align 8, !tbaa !7, !alias.scope !117
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !3, !alias.scope !117
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.123.i, ptr %i.aa, align 8, !tbaa !7, !alias.scope !117
  %i.ab = or i32 %i.z, 3
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !3, !alias.scope !117
  %3 = icmp eq ptr %0, %2
  br i1 %3, label %_ZN6google8protobuf8DurationaSEOS1_.exit, label %4

4:                                                ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !37       ; 3 uses
  %7 = trunc i64 %6 to i1
  br i1 %7, label %bb.g, label %bb.h, !prof !39

bb.g:                                             ; preds = %4
  %i.ac = add nsw i64 %6, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.h:                                             ; preds = %4
  %i.af = inttoptr i64 %6 to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.ae, %bb.g ], [ %i.af, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 3 uses
  %i.ai = trunc i64 %i.ah to i1
  br i1 %i.ai, label %bb.i, label %bb.j, !prof !39

bb.i:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.aj = add nsw i64 %i.ah, -1
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.am = inttoptr i64 %i.ah to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i: ; preds = %bb.j, %bb.i
  %.0.i.i7.i = phi ptr [ %i.al, %bb.i ], [ %i.am, %bb.j ]
  %i.an = icmp eq ptr %.0.i.i.i, %.0.i.i7.i
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i
  invoke void @_ZN6google8protobuf8Duration12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN6google8protobuf8DurationaSEOS1_.exit unwind label %bb.m

bb.l:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i
  invoke void @_ZN6google8protobuf8Duration8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN6google8protobuf8DurationaSEOS1_.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #20
  unreachable

_ZN6google8protobuf8DurationaSEOS1_.exit:         ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit, %bb.k, %bb.l
  call void @_ZN6google8protobuf8DurationD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN6google8protobufmLERNS0_8DurationEl(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #5 {
_ZN6google8protobuf12_GLOBAL__N_19ToUint128ERKNS0_8DurationEPN4absl12lts_202505127uint128EPb.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = icmp slt i64 %i.b, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !7 ; 3 uses
  %i.d = icmp slt i32 %.pre, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.d     ; 3 uses
  %i.e = sub nsw i64 0, %i.b
  %i.f = sub nsw i32 0, %.pre
  %.sink = select i1 %or.cond, i32 %i.f, i32 %.pre
  %.sink22.in.in = select i1 %or.cond, i64 %i.e, i64 %i.b
  %.sink22.in = zext i64 %.sink22.in.in to i128
  %.sink22 = mul nuw nsw i128 %.sink22.in, 1000000000
  %i.g = zext i32 %.sink to i128
  %i.h = add nuw nsw i128 %.sink22, %i.g
  %i.i = icmp slt i64 %1, 1
  %.sink29 = tail call i64 @llvm.abs.i64(i64 %1, i1 true)
  %.0 = xor i1 %or.cond, %i.i                     ; 2 uses
  %i.j = zext nneg i64 %.sink29 to i128
  %i.k = mul i128 %i.h, %i.j
  %.frozen = freeze i128 %i.k                     ; 2 uses
  %i.l = udiv i128 %.frozen, 1000000000           ; 2 uses
  %i.m = trunc i128 %i.l to i64                   ; 2 uses
  %i.n = mul i128 %i.l, 1000000000
  %.decomposed = sub i128 %.frozen, %i.n
  %i.o = trunc nuw nsw i128 %.decomposed to i32   ; 2 uses
  %i.p = sub nsw i64 0, %i.m
  %i.q = sub nsw i32 0, %i.o
  %.015.i = select i1 %.0, i32 %i.q, i32 %i.o
  %.0.i = select i1 %.0, i64 %i.p, i64 %i.m
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.015.i, ptr %i.t, align 8, !tbaa !7
  %i.u = or i32 %i.s, 3
  store i32 %i.u, ptr %i.r, align 8, !tbaa !3
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN6google8protobufmLERNS0_8DurationEd(ptr noundef nonnull returned align 8 dereferenceable(40) %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::Duration", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = sitofp i64 %i.b to double
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7
  %i.f = sitofp i32 %i.e to double
  %i.g = tail call nnan double @llvm.fmuladd.f64(double %i.f, double 1.000000e-09, double %i.c)
  %i.h = fmul double %1, %i.g                     ; 2 uses
  %i.i = fptosi double %i.h to i64                ; 3 uses
  %i.j = sitofp i64 %i.i to double
  %i.k = fsub double %i.h, %i.j
  %i.l = fmul double %i.k, 1.000000e+09
  %i.m = fptosi double %i.l to i32                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.n = add i32 %i.m, -1000000000
  %or.cond.i = icmp ult i32 %i.n, -1999999999
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = sdiv i32 %i.m, 1000000000
  %i.p = sext i32 %i.o to i64
  %i.q = add nsw i64 %i.p, %i.i
  %i.r = srem i32 %i.m, 1000000000
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.022.i = phi i32 [ %i.r, %bb.b ], [ %i.m, %bb.a ] ; 5 uses
  %.0.i = phi i64 [ %i.q, %bb.b ], [ %i.i, %bb.a ] ; 5 uses
  %i.s = icmp slt i64 %.0.i, 0
  %i.t = icmp sgt i32 %.022.i, 0
  %or.cond3.i = and i1 %i.t, %i.s
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = add nsw i64 %.0.i, 1
  %i.v = add nuw nsw i32 %.022.i, -1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.e:                                             ; preds = %bb.c
  %i.w = icmp sgt i64 %.0.i, 0
  %i.x = icmp slt i32 %.022.i, 0
  %or.cond5.i = and i1 %i.x, %i.w
  br i1 %or.cond5.i, label %bb.f, label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i64 %.0.i, -1
  %i.z = add nsw i32 %.022.i, 1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.123.i = phi i32 [ %i.v, %bb.d ], [ %i.z, %bb.f ], [ %.022.i, %bb.e ]
  %.1.i = phi i64 [ %i.u, %bb.d ], [ %i.y, %bb.f ], [ %.0.i, %bb.e ]
  call void @_ZN6google8protobuf8DurationC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.aa, align 8, !tbaa !7, !alias.scope !120
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !3, !alias.scope !120
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.123.i, ptr %i.ad, align 8, !tbaa !7, !alias.scope !120
  %i.ae = or i32 %i.ac, 3
  store i32 %i.ae, ptr %i.ab, align 8, !tbaa !3, !alias.scope !120
  %3 = icmp eq ptr %0, %2
  br i1 %3, label %_ZN6google8protobuf8DurationaSEOS1_.exit, label %4

4:                                                ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !37       ; 3 uses
  %7 = trunc i64 %6 to i1
  br i1 %7, label %bb.g, label %bb.h, !prof !39

bb.g:                                             ; preds = %4
  %i.af = add nsw i64 %6, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.h:                                             ; preds = %4
  %i.ai = inttoptr i64 %6 to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.ah, %bb.g ], [ %i.ai, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !37 ; 3 uses
  %i.al = trunc i64 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.j, !prof !39

bb.i:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.am = add nsw i64 %i.ak, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.ap = inttoptr i64 %i.ak to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i: ; preds = %bb.j, %bb.i
  %.0.i.i7.i = phi ptr [ %i.ao, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = icmp eq ptr %.0.i.i.i, %.0.i.i7.i
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i
  invoke void @_ZN6google8protobuf8Duration12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN6google8protobuf8DurationaSEOS1_.exit unwind label %bb.m

bb.l:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i
  invoke void @_ZN6google8protobuf8Duration8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN6google8protobuf8DurationaSEOS1_.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #20
  unreachable

_ZN6google8protobuf8DurationaSEOS1_.exit:         ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit, %bb.k, %bb.l
  call void @_ZN6google8protobuf8DurationD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN6google8protobufdVERNS0_8DurationEl(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #5 {
_ZN6google8protobuf12_GLOBAL__N_19ToUint128ERKNS0_8DurationEPN4absl12lts_202505127uint128EPb.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = icmp slt i64 %i.b, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !7 ; 3 uses
  %i.d = icmp slt i32 %.pre, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.d     ; 3 uses
  %i.e = sub nsw i64 0, %i.b
  %i.f = sub nsw i32 0, %.pre
  %.sink = select i1 %or.cond, i32 %i.f, i32 %.pre
  %.sink22.in.in = select i1 %or.cond, i64 %i.e, i64 %i.b
  %.sink22.in = zext i64 %.sink22.in.in to i128
  %.sink22 = mul nuw nsw i128 %.sink22.in, 1000000000
  %i.g = zext i32 %.sink to i128
  %i.h = add nuw nsw i128 %.sink22, %i.g
  %i.i = icmp slt i64 %1, 1
  %.sink29 = tail call i64 @llvm.abs.i64(i64 %1, i1 true)
  %.0 = xor i1 %or.cond, %i.i                     ; 2 uses
  %i.j = zext nneg i64 %.sink29 to i128
  %i.k = udiv i128 %i.h, %i.j
  %.frozen = freeze i128 %i.k                     ; 2 uses
  %i.l = udiv i128 %.frozen, 1000000000           ; 2 uses
  %i.m = trunc i128 %i.l to i64                   ; 2 uses
  %i.n = mul i128 %i.l, 1000000000
  %.decomposed = sub i128 %.frozen, %i.n
  %i.o = trunc nuw nsw i128 %.decomposed to i32   ; 2 uses
  %i.p = sub nsw i64 0, %i.m
  %i.q = sub nsw i32 0, %i.o
  %.015.i = select i1 %.0, i32 %i.q, i32 %i.o
  %.0.i = select i1 %.0, i64 %i.p, i64 %i.m
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.015.i, ptr %i.t, align 8, !tbaa !7
  %i.u = or i32 %i.s, 3
  store i32 %i.u, ptr %i.r, align 8, !tbaa !3
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN6google8protobufdVERNS0_8DurationEd(ptr noundef nonnull returned align 8 dereferenceable(40) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fdiv double 1.000000e+00, %1
  %i.b = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6google8protobufmLERNS0_8DurationEd(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.a) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN6google8protobufrMERNS0_8DurationERKS1_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #5 {
_ZN6google8protobuf12_GLOBAL__N_19ToUint128ERKNS0_8DurationEPN4absl12lts_202505127uint128EPb.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = icmp slt i64 %i.b, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !7 ; 3 uses
  %i.d = icmp slt i32 %.pre, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.d     ; 4 uses
  %i.e = sub nsw i64 0, %i.b
  %i.f = sub nsw i32 0, %.pre
  %.sink = select i1 %or.cond, i32 %i.f, i32 %.pre
  %.sink24.in.in = select i1 %or.cond, i64 %i.e, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !7    ; 3 uses
  %i.i = icmp slt i64 %i.h, 0
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre17 = load i32, ptr %.phi.trans.insert16, align 8, !tbaa !7 ; 3 uses
  %i.j = icmp slt i32 %.pre17, 0
  %or.cond32 = or i1 %i.i, %i.j                   ; 2 uses
  %i.k = sub nsw i64 0, %i.h
  %i.l = sub nsw i32 0, %.pre17
  %.sink31 = select i1 %or.cond32, i32 %i.l, i32 %.pre17
  %.sink29.in.in = select i1 %or.cond32, i64 %i.k, i64 %i.h
  %.sink29.in = zext i64 %.sink29.in.in to i128
  %.sink29 = mul nuw nsw i128 %.sink29.in, 1000000000
  %.sink24.in = zext i64 %.sink24.in.in to i128
  %.sink24 = mul nuw nsw i128 %.sink24.in, 1000000000
  %i.m = zext i32 %.sink to i128
  %i.n = add nuw nsw i128 %.sink24, %i.m
  %i.o = zext i32 %.sink31 to i128
  %i.p = add nuw nsw i128 %.sink29, %i.o
  %i.q = urem i128 %i.n, %i.p
  %.frozen = freeze i128 %i.q                     ; 2 uses
  %i.r = udiv i128 %.frozen, 1000000000           ; 2 uses
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = mul i128 %i.r, 1000000000
  %.decomposed = sub i128 %.frozen, %i.t
  %i.u = trunc nuw nsw i128 %.decomposed to i32   ; 2 uses
  %i.v = sub nsw i64 0, %i.s
  %i.w = sub nsw i32 0, %i.u
  %.015.i = select i1 %or.cond, i32 %i.w, i32 %i.u
  %.0.i = select i1 %or.cond, i64 %i.v, i64 %i.s
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.015.i, ptr %i.z, align 8, !tbaa !7
  %i.aa = or i32 %i.y, 3
  store i32 %i.aa, ptr %i.x, align 8, !tbaa !3
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6google8protobufdvERKNS0_8DurationES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #4 {
_ZN6google8protobuf12_GLOBAL__N_19ToUint128ERKNS0_8DurationEPN4absl12lts_202505127uint128EPb.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = icmp slt i64 %i.b, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !7 ; 3 uses
  %i.d = icmp slt i32 %.pre, 0
  %or.cond = or i1 %i.c, %i.d                     ; 3 uses
  %i.e = sub nsw i64 0, %i.b
  %i.f = sub nsw i32 0, %.pre
  %.sink = select i1 %or.cond, i32 %i.f, i32 %.pre
  %.sink24.in.in = select i1 %or.cond, i64 %i.e, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !7    ; 3 uses
  %i.i = icmp slt i64 %i.h, 0
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre17 = load i32, ptr %.phi.trans.insert16, align 8, !tbaa !7 ; 3 uses
  %i.j = icmp slt i32 %.pre17, 0
  %or.cond32 = or i1 %i.i, %i.j                   ; 3 uses
  %i.k = sub nsw i64 0, %i.h
  %i.l = sub nsw i32 0, %.pre17
  %.sink31 = select i1 %or.cond32, i32 %i.l, i32 %.pre17
  %.sink29.in.in = select i1 %or.cond32, i64 %i.k, i64 %i.h
  %.sink29.in = zext i64 %.sink29.in.in to i128
  %.sink29 = mul nuw nsw i128 %.sink29.in, 1000000000
  %.sink24.in = zext i64 %.sink24.in.in to i128
  %.sink24 = mul nuw nsw i128 %.sink24.in, 1000000000
  %i.m = zext i32 %.sink to i128
  %i.n = add nuw nsw i128 %.sink24, %i.m
  %i.o = zext i32 %.sink31 to i128
  %i.p = add nuw nsw i128 %.sink29, %i.o
  %i.q = udiv i128 %i.n, %i.p
  %i.r = trunc i128 %i.q to i64                   ; 2 uses
  %i.s = xor i1 %or.cond, %or.cond32
  %i.t = sub nsw i64 0, %i.r
  %spec.select = select i1 %i.s, i64 %i.t, i64 %i.r
  ret i64 %spec.select
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN6google8protobufpLERNS0_9TimestampERKNS0_8DurationE(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::Timestamp", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7
  %i.e = add nsw i64 %i.d, %i.b                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !7
  %i.j = add nsw i32 %i.i, %i.g                   ; 4 uses
  %i.k = add i32 %i.j, -1000000000
  %or.cond.i = icmp ult i32 %i.k, -1999999999
  br i1 %or.cond.i, label %bb.b, label %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit

bb.b:                                             ; preds = %bb.a
  %i.l = sdiv i32 %i.j, 1000000000
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %i.e, %i.m
  %i.o = srem i32 %i.j, 1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit

_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit: ; preds = %bb.a, %bb.b
  %.013.i = phi i32 [ %i.o, %bb.b ], [ %i.j, %bb.a ] ; 4 uses
  %.0.i = phi i64 [ %i.n, %bb.b ], [ %i.e, %bb.a ]
  %i.p = icmp slt i32 %.013.i, 0
  %i.q = add nsw i32 %.013.i, 1000000000
  %.114.i = select i1 %i.p, i32 %i.q, i32 %.013.i
  %.013.lobit.i = ashr i32 %.013.i, 31
  %i.r = sext i32 %.013.lobit.i to i64
  %.1.i = add nsw i64 %.0.i, %i.r
  call void @_ZN6google8protobuf9TimestampC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.s, align 8, !tbaa !7, !alias.scope !123
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !3, !alias.scope !123
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.114.i, ptr %i.v, align 8, !tbaa !7, !alias.scope !123
  %i.w = or i32 %i.u, 3
  store i32 %i.w, ptr %i.t, align 8, !tbaa !3, !alias.scope !123
  %3 = icmp eq ptr %0, %2
  br i1 %3, label %_ZN6google8protobuf9TimestampaSEOS1_.exit, label %4

4:                                                ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !37       ; 3 uses
  %7 = trunc i64 %6 to i1
  br i1 %7, label %bb.c, label %bb.d, !prof !39

bb.c:                                             ; preds = %4
  %i.x = add nsw i64 %6, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.d:                                             ; preds = %4
  %i.aa = inttoptr i64 %6 to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.aa, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !37 ; 3 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f, !prof !39

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.ae = add nsw i64 %i.ac, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

bb.f:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.ah = inttoptr i64 %i.ac to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i: ; preds = %bb.f, %bb.e
  %.0.i.i7.i = phi ptr [ %i.ag, %bb.e ], [ %i.ah, %bb.f ]
  %i.ai = icmp eq ptr %.0.i.i.i, %.0.i.i7.i
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i
  invoke void @_ZN6google8protobuf9Timestamp12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN6google8protobuf9TimestampaSEOS1_.exit unwind label %bb.i

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i
  invoke void @_ZN6google8protobuf9Timestamp8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN6google8protobuf9TimestampaSEOS1_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #20
  unreachable

_ZN6google8protobuf9TimestampaSEOS1_.exit:        ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit, %bb.g, %bb.h
  call void @_ZN6google8protobuf9TimestampD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN6google8protobufmIERNS0_9TimestampERKNS0_8DurationE(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::Timestamp", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7
  %i.e = sub nsw i64 %i.b, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !7
  %i.j = sub nsw i32 %i.g, %i.i                   ; 4 uses
  %i.k = add i32 %i.j, -1000000000
  %or.cond.i = icmp ult i32 %i.k, -1999999999
  br i1 %or.cond.i, label %bb.b, label %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit

bb.b:                                             ; preds = %bb.a
  %i.l = sdiv i32 %i.j, 1000000000
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %i.e, %i.m
  %i.o = srem i32 %i.j, 1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit

_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit: ; preds = %bb.a, %bb.b
  %.013.i = phi i32 [ %i.o, %bb.b ], [ %i.j, %bb.a ] ; 4 uses
  %.0.i = phi i64 [ %i.n, %bb.b ], [ %i.e, %bb.a ]
  %i.p = icmp slt i32 %.013.i, 0
  %i.q = add nsw i32 %.013.i, 1000000000
  %.114.i = select i1 %i.p, i32 %i.q, i32 %.013.i
  %.013.lobit.i = ashr i32 %.013.i, 31
  %i.r = sext i32 %.013.lobit.i to i64
  %.1.i = add nsw i64 %.0.i, %i.r
  call void @_ZN6google8protobuf9TimestampC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.s, align 8, !tbaa !7, !alias.scope !126
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !3, !alias.scope !126
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.114.i, ptr %i.v, align 8, !tbaa !7, !alias.scope !126
  %i.w = or i32 %i.u, 3
  store i32 %i.w, ptr %i.t, align 8, !tbaa !3, !alias.scope !126
  %3 = icmp eq ptr %0, %2
  br i1 %3, label %_ZN6google8protobuf9TimestampaSEOS1_.exit, label %4

4:                                                ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !37       ; 3 uses
  %7 = trunc i64 %6 to i1
  br i1 %7, label %bb.c, label %bb.d, !prof !39

bb.c:                                             ; preds = %4
  %i.x = add nsw i64 %6, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.d:                                             ; preds = %4
  %i.aa = inttoptr i64 %6 to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.aa, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !37 ; 3 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f, !prof !39

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.ae = add nsw i64 %i.ac, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

bb.f:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.ah = inttoptr i64 %i.ac to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i: ; preds = %bb.f, %bb.e
  %.0.i.i7.i = phi ptr [ %i.ag, %bb.e ], [ %i.ah, %bb.f ]
  %i.ai = icmp eq ptr %.0.i.i.i, %.0.i.i7.i
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i
  invoke void @_ZN6google8protobuf9Timestamp12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN6google8protobuf9TimestampaSEOS1_.exit unwind label %bb.i

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i
  invoke void @_ZN6google8protobuf9Timestamp8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN6google8protobuf9TimestampaSEOS1_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #20
  unreachable

_ZN6google8protobuf9TimestampaSEOS1_.exit:        ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit, %bb.g, %bb.h
  call void @_ZN6google8protobuf9TimestampD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobufmiERKNS0_9TimestampES3_(ptr dead_on_unwind noalias writable sret(%"class.google::protobuf::Duration") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7
  %i.e = sub nsw i64 %i.b, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !7
  %i.j = sub nsw i32 %i.g, %i.i                   ; 4 uses
  %i.k = add i32 %i.j, -1000000000
  %or.cond.i = icmp ult i32 %i.k, -1999999999
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sdiv i32 %i.j, 1000000000
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %i.e, %i.m
  %i.o = srem i32 %i.j, 1000000000
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.022.i = phi i32 [ %i.o, %bb.b ], [ %i.j, %bb.a ] ; 5 uses
  %.0.i = phi i64 [ %i.n, %bb.b ], [ %i.e, %bb.a ] ; 5 uses
  %i.p = icmp slt i64 %.0.i, 0
  %i.q = icmp sgt i32 %.022.i, 0
  %or.cond3.i = and i1 %i.q, %i.p
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i64 %.0.i, 1
  %i.s = add nuw nsw i32 %.022.i, -1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp sgt i64 %.0.i, 0
  %i.u = icmp slt i32 %.022.i, 0
  %or.cond5.i = and i1 %i.u, %i.t
  br i1 %or.cond5.i, label %bb.f, label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i64 %.0.i, -1
  %i.w = add nsw i32 %.022.i, 1000000000
  br label %_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit

_ZN6google8protobuf4util12_GLOBAL__N_124CreateNormalizedDurationEli.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.123.i = phi i32 [ %i.s, %bb.d ], [ %i.w, %bb.f ], [ %.022.i, %bb.e ]
  %.1.i = phi i64 [ %i.r, %bb.d ], [ %i.v, %bb.f ], [ %.0.i, %bb.e ]
  tail call void @_ZN6google8protobuf8DurationC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.1.i, ptr %i.x, align 8, !tbaa !7, !alias.scope !129
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !3, !alias.scope !129
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.123.i, ptr %i.aa, align 8, !tbaa !7, !alias.scope !129
  %i.ab = or i32 %i.z, 3
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !3, !alias.scope !129
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(read, argmem: readwrite)
declare void @_ZN4absl12lts_2025051210FormatTimeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS0_4TimeENS0_8TimeZoneE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr readonly, i64, i32, ptr readonly) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i32 } @_ZN4absl12lts_2025051216TimeFromTimespecE8timespec(i64, i64) local_unnamed_addr #8

declare ptr @_ZN4absl12lts_2025051213time_internal4cctz13utc_time_zoneEv() local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4absl12lts_202505129ParseTimeESt17basic_string_viewIcSt11char_traitsIcEES4_PNS0_4TimeEPNSt7__cxx1112basic_stringIcS3_SaIcEEE(i64, ptr, i64, ptr, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i64 } @_ZN4absl12lts_2025051210ToTimespecENS0_4TimeE(i64, i32) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare void @_ZN6google8protobuf9Timestamp12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

declare void @_ZN6google8protobuf9Timestamp8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare { i64, i32 } @_ZN4absl12lts_202505123NowEv() local_unnamed_addr #3

declare void @_ZN6google8protobuf9TimestampC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #3

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferElPc(i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

declare void @_ZN6google8protobuf8DurationC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #3

declare void @_ZN6google8protobuf8Duration12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

declare void @_ZN6google8protobuf8Duration8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind willreturn memory(read, argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { nounwind willreturn memory(read, argmem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN6google8protobuf4util12_GLOBAL__N_110FormatTimeB5cxx11Eli: argument 0"}
!10 = distinct !{!10, !"_ZN6google8protobuf4util12_GLOBAL__N_110FormatTimeB5cxx11Eli"}
!11 = !{!12, !14, !9}
!12 = distinct !{!12, !13, !"_ZN4absl12lts_202505129StrFormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!13 = distinct !{!13, !"_ZN4absl12lts_202505129StrFormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!14 = distinct !{!14, !15, !"_ZN6google8protobuf4util12_GLOBAL__N_111FormatNanosB5cxx11Ei: argument 0"}
!15 = distinct !{!15, !"_ZN6google8protobuf4util12_GLOBAL__N_111FormatNanosB5cxx11Ei"}
!16 = !{!17, !18, i64 8}
!17 = !{!"_ZTSN4absl12lts_2025051219str_format_internal13FormatArgImplE", !5, i64 0, !18, i64 8}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!20, !14, !9}
!20 = distinct !{!20, !21, !"_ZN4absl12lts_202505129StrFormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!21 = distinct !{!21, !"_ZN4absl12lts_202505129StrFormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!22 = !{!23, !14, !9}
!23 = distinct !{!23, !24, !"_ZN4absl12lts_202505129StrFormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!24 = distinct !{!24, !"_ZN4absl12lts_202505129StrFormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!25 = !{!26, !28, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !29, i64 8, !5, i64 16}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!28 = !{!"p1 omnipotent char", !18, i64 0}
!29 = !{!"long", !5, i64 0}
!30 = !{!26, !29, i64 8}
!31 = !{!32, !4, i64 8}
!32 = !{!"_ZTSN4absl12lts_202505128DurationE", !33, i64 0, !4, i64 8}
!33 = !{!"_ZTSN4absl12lts_202505128Duration5HiRepE", !4, i64 0, !4, i64 4}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli: argument 0"}
!36 = distinct !{!36, !"_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli"}
end_hunk_0
