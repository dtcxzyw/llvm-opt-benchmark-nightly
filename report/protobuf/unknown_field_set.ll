inline.NumInlined: 521
inline.NumDeleted: 274
begin_hunk_0_@_ZN6google8protobuf15UnknownFieldSet19MergeFromAndDestroyEPS1_:bb.a

bb.f:                                             ; preds = %_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit11
  tail call void @_ZN6google8protobuf15UnknownFieldSet9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.r

bb.g:                                             ; preds = %_ZN6google8protobuf15UnknownFieldSet5arenaEv.exit11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17   ; 4 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4SwapEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull %i.p)
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.t = load i32, ptr %i.p, align 4, !tbaa !7
  %i.u = and i32 %i.t, 1
  %i.v = icmp eq i32 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !17   ; 5 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = add nsw i32 %i.x, %i.r                   ; 3 uses
  %i.z = load i32, ptr %i.o, align 8, !tbaa !7    ; 2 uses
  %i.aa = and i32 %i.z, -2                        ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds i8, ptr %i.o, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !9  ; 3 uses
  %i.af = trunc i64 %i.ae to i1
  br i1 %i.af, label %bb.l, label %bb.m, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i64 %i.ae, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.aj = inttoptr i64 %i.ae to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i: ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.j ], [ %i.ai, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = and i32 %i.z, 1                         ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0                    ; 2 uses
  br i1 %i.al, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !19
  br label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i: ; preds = %bb.n, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i
  %i.ap = phi i32 [ %i.ao, %bb.n ], [ 0, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i ]
  %i.aq = icmp sgt i32 %i.y, %i.ap
  br i1 %i.aq, label %bb.o, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i, !prof !12

bb.o:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.al, i32 noundef %i.r, i32 noundef %i.y)
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !7
  %.pre14.i = load i32, ptr %i.q, align 4, !tbaa !17
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i: ; preds = %bb.o, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.ak, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.o ]
  %i.ar = phi i32 [ %i.r, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.o ]
  %i.as = icmp eq i32 %.pre-phi.i, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.0.i.i.i.i = select i1 %i.as, ptr %i.at, ptr %i.av
  store i32 %i.y, ptr %i.q, align 4, !tbaa !17
  %i.aw = sext i32 %i.ar to i64
  %i.ax = getelementptr inbounds [16 x i8], ptr %.0.i.i.i.i, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.0.i.i.i.i.i = select i1 %i.v, ptr %i.ay, ptr %i.ba
  %i.bb = icmp sgt i32 %i.x, 1
  br i1 %i.bb, label %bb.p, label %bb.q, !prof !41

bb.p:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i
  %i.bc = zext nneg i32 %i.x to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bc, 4
  br label %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i

bb.q:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i
  %i.bd = icmp eq i32 %i.x, 1
  br i1 %i.bd, label %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit

_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i: ; preds = %bb.q, %bb.p
  %.idx.i.i.sink.i.i = phi i64 [ %.idx.i.i.i.i, %bb.p ], [ 16, %bb.q ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull align 8 %.0.i.i.i.i.i, i64 %.idx.i.i.sink.i.i, i1 false), !alias.scope !42
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit: ; preds = %bb.i, %bb.q, %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i
  store i32 0, ptr %i.w, align 4, !tbaa !17
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4SwapEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::NoDestructor", align 8 ; 6 uses
  %3 = alloca %"class.google::protobuf::RepeatedField", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.c = and i32 %i.b, -2                         ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.g to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !7      ; 3 uses
  %i.n = and i32 %i.m, -2                         ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread, label %bb.f

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread: ; preds = %bb.b
  %i.p = load i32, ptr %1, align 4, !tbaa !7      ; 3 uses
  %i.q = and i32 %i.p, -2                         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit
  %i.s = phi i32 [ %i.q, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread ], [ %i.n, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit ]
  %i.t = phi i32 [ %i.p, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread ], [ %i.m, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit ]
  %.0.i.i.i.i24 = phi ptr [ null, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit ] ; 3 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !9    ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13

bb.h:                                             ; preds = %bb.f
  %i.ab = inttoptr i64 %i.w to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i12 = phi ptr [ %i.ab, %bb.h ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ac = icmp eq ptr %.0.i.i.i.i24, %.0.i.i.i.i12
  br i1 %i.ac, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread.thread, label %bb.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit
  %i.ad = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.ad, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread.thread, label %.thread

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13
  %i.ae = phi i32 [ %i.m, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread ], [ %i.t, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13 ], [ %i.p, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread ]
  %i.af = xor i32 %i.ae, %i.b
  %i.ag = and i32 %i.af, 1                        ; 2 uses
  %i.ah = xor i32 %i.ag, %i.b
  store i32 %i.ah, ptr %0, align 8, !tbaa !7
  %i.ai = load i32, ptr %1, align 4, !tbaa !7
  %i.aj = xor i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %1, align 4, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %4 = load <8 x i8>, ptr %i.al, align 4, !tbaa !19, !alias.scope !49, !noalias !46
  %5 = load <8 x i8>, ptr %i.ak, align 4, !tbaa !19, !alias.scope !46, !noalias !49
  store <8 x i8> %4, ptr %i.ak, align 4, !tbaa !19, !alias.scope !46, !noalias !49
  store <8 x i8> %5, ptr %i.al, align 4, !tbaa !19, !alias.scope !49, !noalias !46
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %7 = load <4 x i8>, ptr %6, align 4, !tbaa !19, !alias.scope !49, !noalias !46
  %8 = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !19, !alias.scope !46, !noalias !49
  store <4 x i8> %7, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !19, !alias.scope !46, !noalias !49
  store <4 x i8> %8, ptr %6, align 4, !tbaa !19, !alias.scope !49, !noalias !46
  br label %bb.o

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13
  %.not = icmp eq ptr %.0.i.i.i.i12, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = ptrtoint ptr %.0.i.i.i.i12 to i64
  store i64 %i.an, ptr %i.am, align 8, !tbaa !9
  store i32 16, ptr %2, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !17
  call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE20SwapFallbackWithTempEPNS0_5ArenaERS3_S5_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.0.i.i.i.i12, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.o

.thread:                                          ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread, %bb.i
  %.0.i.i.i.i25 = phi ptr [ %.0.i.i.i.i24, %bb.i ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 0, ptr %3, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ap, align 4, !tbaa !17
  invoke void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE20SwapFallbackWithTempEPNS0_5ArenaERS3_S5_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i25, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.thread
  %i.aq = load i32, ptr %3, align 8, !tbaa !7
  %i.ar = and i32 %i.aq, 1
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !19 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !19
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 4
  %i.ay = add nsw i64 %i.ax, 16
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #20
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEED2Ev.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEED2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.o

bb.m:                                             ; preds = %.thread
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load i32, ptr %3, align 8, !tbaa !7
  %i.bb = and i32 %i.ba, 1
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEED2Ev.exit14, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !19 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !19
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 4
  %i.bi = add nsw i64 %i.bh, 16
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #20
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEED2Ev.exit14

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEED2Ev.exit14: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.az

bb.o:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread.thread, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEED2Ev.exit, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf15UnknownFieldSet23MergeToInternalMetadataERKS1_PNS0_8internal16InternalMetadataE(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  tail call void @_ZN6google8protobuf15UnknownFieldSet9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %.0.i, ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf15UnknownFieldSet26SpaceUsedExcludingSelfLongEv(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7
  %i.f = and i32 %i.e, 1
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !19
  %.fr.i = freeze i32 %i.j                        ; 2 uses
  %i.k = icmp sgt i32 %.fr.i, 0
  %i.l = sext i32 %.fr.i to i64
  %i.m = shl nsw i64 %i.l, 4
  %i.n = add nsw i64 %i.m, 16
  %spec.select.i = select i1 %i.k, i64 %i.n, i64 0
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i, %bb.b
  %.0.i.i.i.i.v = phi ptr [ %i.i, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i ], [ %0, %bb.b ]
  %i.o = phi i64 [ %spec.select.i, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i ], [ 0, %bb.b ]
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.v, i64 16 ; 2 uses
  %i.p = sext i32 %i.b to i64
  %.idx = shl nsw i64 %i.p, 4
  %i.q = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.01219 = phi i64 [ %.1, %bb.e ], [ %i.o, %.lr.ph.preheader ] ; 3 uses
  %.sroa.014.018 = phi ptr [ %i.ae, %bb.e ], [ %.0.i.i.i.i, %.lr.ph.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !22
  switch i32 %i.s, label %bb.e [
    i32 3, label %bb.c
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = tail call noundef i64 @_ZN6google8protobuf8internal32StringSpaceUsedExcludingSelfLongERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.u)
  %i.w = add i64 %.01219, 32
  %i.x = add i64 %i.w, %i.v
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.aa = tail call noundef i64 @_ZNK6google8protobuf15UnknownFieldSet26SpaceUsedExcludingSelfLongEv(ptr noundef nonnull align 8 dereferenceable(32) %i.z), !inline_history !51
  %sext = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext, 32
  %i.ac = add i64 %.01219, 32
  %i.ad = add i64 %i.ac, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d, %bb.c
  %.1 = phi i64 [ %.01219, %.lr.ph ], [ %i.x, %bb.c ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.q
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.e, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %.1, %bb.e ]
  ret i64 %.0
}

declare noundef i64 @_ZN6google8protobuf8internal32StringSpaceUsedExcludingSelfLongERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef range(i64 -2147483616, 2147483680) i64 @_ZNK6google8protobuf15UnknownFieldSet13SpaceUsedLongEv(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK6google8protobuf15UnknownFieldSet26SpaceUsedExcludingSelfLongEv(ptr noundef nonnull align 8 dereferenceable(32) %0), !inline_history !52
  %sext = shl i64 %i.a, 32
  %i.b = ashr exact i64 %sext, 32
  %i.c = add nsw i64 %i.b, 32
  ret i64 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf15UnknownFieldSet9AddVarintEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = and i32 %i.b, -2                         ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE20SwapFallbackWithTempEPNS0_5ArenaERS3_S5_S6_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17   ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.j = and i32 %i.i, -2                         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9    ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.x = load i32, ptr %i.w, align 8, !tbaa !19
  br label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ 0, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i ]
  %i.z = icmp sgt i32 %i.h, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i, !prof !12

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.u, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !7
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !17
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.g ]
  %i.aa = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.g ]
  %i.ab = icmp eq i32 %.pre-phi.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.0.i.i.i.i = select i1 %i.ab, ptr %i.ac, ptr %i.ae
  store i32 %i.h, ptr %i.f, align 4, !tbaa !17
  %i.af = sext i32 %i.aa to i64
  %i.ag = getelementptr inbounds [16 x i8], ptr %.0.i.i.i.i, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.0.i.i.i.i.i = select i1 %i.c, ptr %i.ah, ptr %i.aj
  %i.ak = icmp sgt i32 %i.e, 1
  br i1 %i.ak, label %bb.h, label %bb.i, !prof !41

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i
  %i.al = zext nneg i32 %i.e to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.al, 4
  br label %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i
  %i.am = icmp eq i32 %i.e, 1
  br i1 %i.am, label %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit

_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i: ; preds = %bb.i, %bb.h
  %.idx.i.i.sink.i.i = phi i64 [ %.idx.i.i.i.i, %bb.h ], [ 16, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %.0.i.i.i.i.i, i64 %.idx.i.i.sink.i.i, i1 false), !alias.scope !105
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit: ; preds = %bb.a, %bb.i, %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i
  %i.an = icmp eq ptr %2, %0
  br i1 %i.an, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CopyFromERKS3_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !17
  %i.ao = load i32, ptr %2, align 8, !tbaa !7
  %i.ap = and i32 %i.ao, 1
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !17 ; 7 uses
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CopyFromERKS3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i32, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.au = and i32 %i.at, -2                       ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !9  ; 3 uses
  %i.az = trunc i64 %i.ay to i1
  br i1 %i.az, label %bb.m, label %bb.n, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.ba = add nsw i64 %i.ay, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bd = inttoptr i64 %i.ay to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.k ], [ %i.bc, %bb.m ], [ %i.bd, %bb.n ]
  %i.be = and i32 %i.at, 1                        ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0                    ; 2 uses
  br i1 %i.bf, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !19
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !19
  br label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i: ; preds = %bb.o, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i
  %i.bj = phi i32 [ %i.bi, %bb.o ], [ 0, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i ]
  %i.bk = icmp sgt i32 %i.as, %i.bj
  br i1 %i.bk, label %bb.p, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i.i, !prof !12

bb.p:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.bf, i32 noundef 0, i32 noundef %i.as)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !7
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !17
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bl = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i.i: ; preds = %bb.p, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.be, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.p ]
  %i.bm = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i ], [ %i.bl, %bb.p ]
  %i.bn = icmp eq i32 %.pre-phi.i.i, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.0.i.i.i.i.i5 = select i1 %i.bn, ptr %i.bo, ptr %i.bq
  store i32 %i.as, ptr %i.d, align 4, !tbaa !17
  %i.br = getelementptr inbounds [16 x i8], ptr %.0.i.i.i.i.i5, i64 %i.bm
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.0.i.i.i.i.i.i6 = select i1 %i.aq, ptr %i.bs, ptr %i.bu
  %i.bv = icmp sgt i32 %i.as, 1
  br i1 %i.bv, label %bb.q, label %bb.r, !prof !41

bb.q:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i.i
  %i.bw = zext nneg i32 %i.as to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bw, 4
  br label %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i.i

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i.i
  %i.bx = icmp eq i32 %i.as, 1
  br i1 %i.bx, label %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i.i, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CopyFromERKS3_.exit

_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i.i: ; preds = %bb.r, %bb.q
  %.idx.i.i.sink.i.i.i = phi i64 [ %.idx.i.i.i.i.i, %bb.q ], [ 16, %bb.r ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.br, ptr nonnull align 8 %.0.i.i.i.i.i.i6, i64 %.idx.i.i.sink.i.i.i, i1 false), !alias.scope !109
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CopyFromERKS3_.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CopyFromERKS3_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit, %bb.j, %bb.r, %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE15UnsafeArenaSwapEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE15UnsafeArenaSwapEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !7
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !7
  %i.g = load i32, ptr %1, align 4, !tbaa !7
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %2 = load <8 x i8>, ptr %i.j, align 4, !tbaa !19, !alias.scope !116, !noalias !113
  %3 = load <8 x i8>, ptr %i.i, align 4, !tbaa !19, !alias.scope !113, !noalias !116
  store <8 x i8> %2, ptr %i.i, align 4, !tbaa !19, !alias.scope !113, !noalias !116
  store <8 x i8> %3, ptr %i.j, align 4, !tbaa !19, !alias.scope !116, !noalias !113
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %5 = load <4 x i8>, ptr %4, align 4, !tbaa !19, !alias.scope !116, !noalias !113
  %6 = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !19, !alias.scope !113, !noalias !116
  store <4 x i8> %5, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !19, !alias.scope !113, !noalias !116
  store <4 x i8> %6, ptr %4, align 4, !tbaa !19, !alias.scope !116, !noalias !113
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741815
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit, label %.thread, !prof !118

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 0, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 16                 ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #18
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !19
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.0.i.i.i = select i1 %2, ptr %i.r, ptr %i.t
  %i.u = zext nneg i32 %3 to i64
  %i.v = shl nuw nsw i64 %i.u, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.v, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 8 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !19
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 4
  %i.ab = add nsw i64 %i.aa, 16                   ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #20
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !119
  %i.af = load i64, ptr %1, align 8, !tbaa !122
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !41

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !149 ; 5 uses
  %i.aj = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.al = sub nuw nsw i64 59, %i.ak               ; 2 uses
  %i.am = load i8, ptr %i.ai, align 8, !tbaa !150 ; 3 uses
  %i.an = zext i8 %i.am to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.al, %i.an
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !41

bb.k:                                             ; preds = %bb.j
  %i.ao = lshr exact i64 %i.ab, 3                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !151 ; 2 uses
  %i.ar = icmp ugt i8 %i.am, 1
  br i1 %i.ar, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !41

bb.l:                                             ; preds = %bb.k
  %i.as = icmp eq i8 %i.am, 1
  br i1 %i.as, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !152
  store ptr %i.at, ptr %i.x, align 8, !tbaa !152
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.an, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.aq, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ai, align 8, !tbaa !150
  %i.au = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ao, %i.au
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.av = phi i64 [ %i.au, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.av, 3      ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ab, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aw, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !152
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.x, ptr %i.ap, align 8, !tbaa !151
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 64)
  %i.ax = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.ax, ptr %i.ai, align 8, !tbaa !150
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !151
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.al ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !152
  store ptr %i.bb, ptr %i.x, align 8, !tbaa !154
  store ptr %i.x, ptr %i.ba, align 8, !tbaa !152
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.bc = load i32, ptr %0, align 8, !tbaa !7
  %i.bd = or i32 %i.bc, 1
  store i32 %i.bd, ptr %0, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.be, align 8, !tbaa !19
  ret void
}

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #12

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

declare noundef i64 @_ZNK6google8protobuf2io16CordOutputStream9ByteCountEv(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

declare noundef zeroext i1 @_ZN6google8protobuf2io16CordOutputStream4NextEPPvPi(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #3

declare { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, i32 noundef) local_unnamed_addr #3

end_hunk_1
