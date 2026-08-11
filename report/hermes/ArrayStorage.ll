inline.NumInlined: 574
inline.NumDeleted: 243
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj:bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i32 %1, 2
  %i.d = add nuw nsw i32 %i.c, 12
  %i.e = and i32 %i.d, 8388600                    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 2 uses
  %i.h = zext nneg i32 %i.e to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.i, %i.k
  br i1 %.not.i.not.i.i.i.i.i, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.m = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.l, i32 noundef %i.e) #6
  br label %_ZN6hermes2vm7Runtime13makeAVariableINS0_16ArrayStorageBaseINS0_13HermesValue32EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_jDpOT2_.exit

bb.e:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.f, align 8, !tbaa !8
  br label %_ZN6hermes2vm7Runtime13makeAVariableINS0_16ArrayStorageBaseINS0_13HermesValue32EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_jDpOT2_.exit

_ZN6hermes2vm7Runtime13makeAVariableINS0_16ArrayStorageBaseINS0_13HermesValue32EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_jDpOT2_.exit: ; preds = %bb.d, %bb.e
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.g, %bb.e ] ; 3 uses
  store i64 0, ptr %i.n, align 4
  %i.o = or disjoint i32 %i.e, 251658240
  store i32 %i.o, ptr %i.n, align 4, !tbaa !15
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = or i64 %i.p, -281474976710656
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm7Runtime13makeAVariableINS0_16ArrayStorageBaseINS0_13HermesValue32EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_jDpOT2_.exit, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ %i.q, %_ZN6hermes2vm7Runtime13makeAVariableINS0_16ArrayStorageBaseINS0_13HermesValue32EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_jDpOT2_.exit ]
  %.sroa.0.0 = phi i32 [ %i.b, %bb.b ], [ 1, %_ZN6hermes2vm7Runtime13makeAVariableINS0_16ArrayStorageBaseINS0_13HermesValue32EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_jDpOT2_.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit17:
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9456
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.5, i32 noundef %1) #6
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %.sroa.023.0.insert.ext = zext i32 %1 to i64
  %i.h = inttoptr i64 %.sroa.023.0.insert.ext to ptr
  store ptr @.str.2, ptr %4, align 8, !tbaa !15, !alias.scope !82
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.i, align 8, !tbaa !28, !alias.scope !82
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.h, ptr %i.j, align 8, !tbaa !15, !alias.scope !82
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 7, ptr %i.k, align 8, !tbaa !32, !alias.scope !82
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 76, ptr %i.l, align 8, !tbaa !33, !alias.scope !82
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %i.g, ptr %i.m, align 8, !tbaa !34, !alias.scope !82
  %i.n = add nsw i64 %i.g, 76
  store ptr %4, ptr %3, align 8, !tbaa !15, !alias.scope !87
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %i.o, align 8, !tbaa !28, !alias.scope !87
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.3, ptr %i.p, align 8, !tbaa !15, !alias.scope !87
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 3, ptr %i.q, align 8, !tbaa !32, !alias.scope !87
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.n, ptr %i.r, align 8, !tbaa !33, !alias.scope !87
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 17, ptr %i.s, align 8, !tbaa !34, !alias.scope !87
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.5, i32 noundef 1027070) #6
  %i.u = sext i32 %i.t to i64
  %i.v = add nsw i64 %i.g, 93
  store ptr %3, ptr %2, align 8, !tbaa !15, !alias.scope !92
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 2, ptr %i.w, align 8, !tbaa !28, !alias.scope !92
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr inttoptr (i64 1027070 to ptr), ptr %i.x, align 8, !tbaa !15, !alias.scope !92
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 7, ptr %i.y, align 8, !tbaa !32, !alias.scope !92
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.v, ptr %i.z, align 8, !tbaa !33, !alias.scope !92
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.u, ptr %i.aa, align 8, !tbaa !34, !alias.scope !92
  %i.ab = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { i32, i64 } @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE15createLongLivedERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::lock_guard", align 8   ; 4 uses
  %i.a = icmp ugt i32 %1, 1027070
  br i1 %i.a, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i32 %1, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.e = add nuw nsw i32 %i.c, 12
  %i.f = and i32 %i.e, 8388600                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @_ZN6hermes2vm7HadesGC19pauseBackgroundTaskEv(ptr dead_on_unwind nonnull writable sret(%"class.std::lock_guard") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8112) %i.d) #6
  %i.g = call noundef ptr @_ZN6hermes2vm7HadesGC14allocLongLivedEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.d, i32 noundef %i.f) #6 ; 3 uses
  store i64 0, ptr %i.g, align 4
  %i.h = or disjoint i32 %i.f, 251658240
  store i32 %i.h, ptr %i.g, align 4, !tbaa !15
  %i.i = load ptr, ptr %2, align 8, !tbaa !45, !nonnull !48, !align !49
  %i.j = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = or i64 %i.k, -281474976710656
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ %i.l, %bb.c ]
  %.sroa.0.0 = phi i32 [ %i.b, %bb.b ], [ 1, %bb.c ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { i32, i64 } @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 1027070
  br i1 %i.a, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i32 %1, 2
  %i.c = add nuw nsw i32 %i.b, 12
  %i.d = and i32 %i.c, 8388600                    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  %i.g = zext nneg i32 %i.d to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.h, %i.j
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.l = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.k, i32 noundef %i.d) #6
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread

bb.d:                                             ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !8
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread: ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.f, %bb.d ] ; 3 uses
  store i64 0, ptr %i.m, align 4
  %i.n = or disjoint i32 %i.d, 251658240
  store i32 %i.n, ptr %i.m, align 4, !tbaa !15
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = or i64 %i.o, -281474976710656
  br label %bb.e

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit: ; preds = %bb.a
  %i.q = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.e, !prof !50

bb.e:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit
  %.sroa.0.0.i12 = phi i32 [ 1, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread ], [ %i.q, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ]
  %.sroa.3.0.i10 = phi i64 [ %i.p, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread ], [ undef, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ] ; 2 uses
  %i.s = and i64 %.sroa.3.0.i10, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 4 ; 4 uses
  %i.x = icmp ugt i32 %2, %i.w
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.z = zext i32 %i.w to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z ; 3 uses
  %i.ab = zext i32 %2 to i64                      ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ab
  %3 = shl nuw nsw i64 %i.ab, 2
  %i.ad = add nsw i64 %3, -4
  %4 = shl nuw nsw i64 %i.z, 2
  %5 = sub nsw i64 %i.ad, %4                      ; 2 uses
  %6 = lshr exact i64 %5, 2
  %i.ae = add nuw nsw i64 %6, 1                   ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.f
  %n.vec = and i64 %i.ae, 9223372036854775800     ; 3 uses
  %i.af = shl i64 %n.vec, 2
  %i.ag = getelementptr i8, ptr %i.aa, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.ai, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7RuntimeEj.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f, %middle.block
  %.01320.i.i.i.ph = phi ptr [ %i.aa, %bb.f ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.01320.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.01320.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i.i.i, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %i.ac
  br i1 %.not.i.i.i, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7RuntimeEj.exit, label %.lr.ph.i.i.i, !llvm.loop !100

bb.g:                                             ; preds = %bb.e
  %i.al = icmp ult i32 %2, %i.w
  br i1 %i.al, label %bb.h, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7RuntimeEj.exit

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.an = zext i32 %2 to i64
  %.idx18.i.i = shl nuw nsw i64 %i.an, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx18.i.i ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !54
  %i.as = and i64 %i.ap, 1125899902648320
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = icmp ne ptr %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8489
  %i.aw = load i8, ptr %i.av, align 1, !range !55
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond.i.i.i.i = select i1 %i.au, i1 %i.ax, i1 false, !prof !56
  br i1 %or.cond.i.i.i.i, label %bb.i, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7RuntimeEj.exit, !prof !56

bb.i:                                             ; preds = %bb.h
  %i.ay = sub i32 %i.w, %2
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.u, ptr noundef nonnull %i.ao, i32 noundef %i.ay) #6
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7RuntimeEj.exit

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7RuntimeEj.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.g, %bb.h, %bb.i
  store atomic i32 %2, ptr %i.v release, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7RuntimeEj.exit
  %.sroa.3.0.i11 = phi i64 [ %.sroa.3.0.i10, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7RuntimeEj.exit ], [ undef, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ]
  %.sroa.05.0 = phi i32 [ %.sroa.0.0.i12, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7RuntimeEj.exit ], [ 0, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.05.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0.i11, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7RuntimeEj(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load atomic i32, ptr %i.b monotonic, align 4 ; 4 uses
  %i.d = icmp ugt i32 %2, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = zext i32 %i.c to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = zext i32 %2 to i64                       ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h
  %3 = shl nuw nsw i64 %i.h, 2
  %i.j = add nsw i64 %3, -4
  %4 = shl nuw nsw i64 %i.f, 2
  %5 = sub nsw i64 %i.j, %4                       ; 2 uses
  %6 = lshr exact i64 %5, 2
  %i.k = add nuw nsw i64 %6, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.k, 9223372036854775800      ; 3 uses
  %i.l = shl i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %i.g, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.n ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.o, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7HadesGCEj.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b, %middle.block
  %.01320.i.i.ph = phi ptr [ %i.g, %bb.b ], [ %i.m, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.01320.i.i = phi ptr [ %i.q, %.lr.ph.i.i ], [ %.01320.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i.i, align 4, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not.i.i, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7HadesGCEj.exit, label %.lr.ph.i.i, !llvm.loop !102

bb.c:                                             ; preds = %bb.a
  %i.r = icmp ult i32 %2, %i.c
  br i1 %i.r, label %bb.d, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7HadesGCEj.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = zext i32 %2 to i64
  %.idx18.i = shl nuw nsw i64 %i.t, 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx18.i ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.y = and i64 %i.v, -4194304
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = icmp ne ptr %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.ac = load i8, ptr %i.ab, align 1, !range !55
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i.i = select i1 %i.aa, i1 %i.ad, i1 false, !prof !56
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7HadesGCEj.exit, !prof !56

bb.e:                                             ; preds = %bb.d
  %i.ae = sub i32 %i.c, %2
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.a, ptr noundef nonnull %i.u, i32 noundef %i.ae) #6
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7HadesGCEj.exit

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7HadesGCEj.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.c, %bb.d, %bb.e
  store atomic i32 %2, ptr %i.b release, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE4dataEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE4dataEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8capacityEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = and i32 %i.a, 16777212
  %i.c = add nsw i32 %i.b, -8
  %i.d = lshr exact i32 %i.c, 2
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE4sizeEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE5beginEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3endEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !51
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %2, align 8, !tbaa !51 ; 9 uses
  %i.f = ashr i64 %.sroa.0.0.copyload.i.i17, 47
  switch i64 %i.f, label %bb.i [
    i64 -14, label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
    i64 -12, label %bb.b
    i64 -11, label %bb.c
    i64 -10, label %bb.d
    i64 -9, label %bb.e
    i64 -6, label %bb.f
    i64 -5, label %bb.f
    i64 -4, label %bb.g
    i64 -3, label %bb.g
    i64 -2, label %bb.h
    i64 -1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.d:                                             ; preds = %bb.a
  %i.g = trunc i64 %.sroa.0.0.copyload.i.i17 to i1
  %i.h = select i1 %i.g, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.e:                                             ; preds = %bb.a
  %i.i = trunc i64 %.sroa.0.0.copyload.i.i17 to i32
  %i.j = shl i32 %i.i, 3
  %i.k = or disjoint i32 %i.j, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %.sroa.0.0.copyload.i.i17, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = or i32 %i.n, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.p = ptrtoint ptr %1 to i64
  %i.q = sub i64 %.sroa.0.0.copyload.i.i17, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = or i32 %i.r, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.h:                                             ; preds = %bb.a, %bb.a
  %i.t = ptrtoint ptr %1 to i64
  %i.u = sub i64 %.sroa.0.0.copyload.i.i17, %i.t
  %i.v = trunc i64 %i.u to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.i:                                             ; preds = %bb.a
  %i.w = bitcast i64 %.sroa.0.0.copyload.i.i17 to double
  %i.x = fptosi double %i.w to i32
  %i.y = shl i32 %i.x, 3                          ; 2 uses
  %i.z = ashr exact i32 %i.y, 3
  %i.aa = sitofp i32 %i.z to double
  %i.ab = bitcast double %i.aa to i64
  %i.ac = icmp eq i64 %.sroa.0.0.copyload.i.i17, %i.ab
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !60

bb.j:                                             ; preds = %bb.i
  %i.ad = or disjoint i32 %i.y, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.k:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !14
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.ag, %i.ai
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ak = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.aj, i32 noundef 16) #6
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.m:                                             ; preds = %bb.k
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !8
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.m, %bb.l
  %i.al = phi ptr [ %i.ak, %bb.l ], [ %i.af, %bb.m ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.sroa.0.0.copyload.i.i17, ptr %i.am, align 8, !tbaa !103
  store i32 402653200, ptr %i.al, align 8, !tbaa !15
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %1 to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = or i32 %i.aq, 3
  %.pre = load ptr, ptr %0, align 8, !tbaa !57
  %.sroa.0.0.copyload.i.i18.pre = load i64, ptr %.pre, align 8, !tbaa !51
  %.pre20 = and i64 %.sroa.0.0.copyload.i.i18.pre, 281474976710655
  %.pre21 = inttoptr i64 %.pre20 to ptr
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %.pre-phi22 = phi ptr [ %i.c, %bb.a ], [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.f ], [ %i.c, %bb.g ], [ %i.c, %bb.h ], [ %i.c, %bb.j ], [ %.pre21, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 3 uses
  %.sroa.04.0.i = phi i32 [ 7, %bb.a ], [ 14, %bb.b ], [ 15, %bb.c ], [ %i.h, %bb.d ], [ %i.k, %bb.e ], [ %i.o, %bb.f ], [ %i.s, %bb.g ], [ %i.v, %bb.h ], [ %i.ad, %bb.j ], [ %i.ar, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 2 uses
  %i.as = load i32, ptr %.pre-phi22, align 4
  %i.at = and i32 %i.as, 16777212
  %i.au = add nsw i32 %i.at, -8
  %i.av = lshr exact i32 %i.au, 2
  %i.aw = icmp ult i32 %i.e, %i.av
  br i1 %i.aw, label %bb.n, label %bb.p, !prof !60

bb.n:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre-phi22, i64 8
  %i.ay = zext nneg i32 %i.e to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay ; 3 uses
  store i32 %.sroa.04.0.i, ptr %i.az, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !54
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = and i64 %i.bc, 1125899902648320
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = icmp eq ptr %i.bb, %i.be
  br i1 %i.bf, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit, label %bb.o, !prof !60

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %i.az, i32 %.sroa.04.0.i) #6
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit: ; preds = %bb.n, %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre-phi22, i64 4
  %i.bi = add nuw nsw i32 %i.e, 1
  store atomic i32 %i.bi, ptr %i.bh release, align 4
  br label %bb.q

bb.p:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.bj = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE16pushBackSlowPathERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit
  %.0 = phi i32 [ 1, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit ], [ %i.bj, %bb.p ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE16pushBackSlowPathERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !51
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 5 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = add i32 %i.e, 1                          ; 9 uses
  %i.g = load i32, ptr %i.c, align 4
  %i.h = and i32 %i.g, 16777212
  %i.i = add nsw i32 %i.h, -8                     ; 3 uses
  %i.j = lshr exact i32 %i.i, 2
  %.not.i.i = icmp ugt i32 %i.f, %i.j
  br i1 %.not.i.i, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6resizeERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.n = icmp ult i32 %i.k, %i.f
  br i1 %i.n, label %bb.c, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = zext i32 %i.k to i64                     ; 2 uses
  %.idx88.i.i = shl nuw nsw i64 %i.o, 2
  %i.p = zext nneg i32 %i.f to i64
  %.idx89.i.i = shl nuw nsw i64 %i.p, 2           ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx89.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx88.i.i ; 3 uses
  %3 = add nsw i64 %.idx89.i.i, -4
  %4 = shl nuw nsw i64 %i.o, 2
  %5 = sub nsw i64 %3, %4                         ; 2 uses
  %6 = lshr exact i64 %5, 2
  %i.s = add nuw nsw i64 %6, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  br i1 %min.iters.check, label %.lr.ph.i65.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.s, 9223372036854775800      ; 3 uses
  %i.t = shl i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %i.r, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.w, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit.i.i, label %.lr.ph.i65.i.i.preheader

.lr.ph.i65.i.i.preheader:                         ; preds = %bb.c, %middle.block
  %.01320.i66.i.i.ph = phi ptr [ %i.r, %bb.c ], [ %i.u, %middle.block ]
  br label %.lr.ph.i65.i.i

.lr.ph.i65.i.i:                                   ; preds = %.lr.ph.i65.i.i.preheader, %.lr.ph.i65.i.i
  %.01320.i66.i.i = phi ptr [ %i.y, %.lr.ph.i65.i.i ], [ %.01320.i66.i.i.ph, %.lr.ph.i65.i.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i66.i.i, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %.01320.i66.i.i, i64 4 ; 2 uses
  %.not.i67.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i67.i.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit.i.i, label %.lr.ph.i65.i.i, !llvm.loop !108

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit.i.i: ; preds = %.lr.ph.i65.i.i, %middle.block, %bb.b
  %i.z = load atomic i32, ptr %i.d monotonic, align 4
  %i.aa = icmp ult i32 %i.f, %i.z
  br i1 %i.aa, label %bb.d, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6resizeERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj.exit.thread

bb.d:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit.i.i
  %i.ab = zext nneg i32 %i.f to i64
  %.idx91.i.i = shl nuw nsw i64 %i.ab, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx91.i.i ; 2 uses
  %i.ad = load atomic i32, ptr %i.d monotonic, align 4
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.ah = and i64 %i.ae, 1125899902648320
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = icmp ne ptr %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.al = load i8, ptr %i.ak, align 1, !range !55
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i.i.i.i = select i1 %i.aj, i1 %i.am, i1 false, !prof !56
  br i1 %or.cond.i.i.i.i, label %bb.e, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6resizeERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj.exit.thread, !prof !56

bb.e:                                             ; preds = %bb.d
  %i.an = sub i32 %i.ad, %i.f
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.m, ptr noundef nonnull %i.ac, i32 noundef %i.an) #6
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6resizeERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj.exit.thread

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6resizeERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj.exit.thread: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit.i.i, %bb.d, %bb.e
  store atomic i32 %i.f, ptr %i.d release, align 4
  br label %bb.f

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6resizeERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj.exit: ; preds = %bb.a
  %i.ao = icmp ult i32 %i.i, 2054140
  %i.ap = lshr exact i32 %i.i, 1
  %.sroa.speculated.i.i = tail call i32 @llvm.umax.i32(i32 %i.ap, i32 %i.f)
  %.0.i.i = select i1 %i.ao, i32 %.sroa.speculated.i.i, i32 1027070
  %i.aq = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE18reallocateToLargerERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjjj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.0.i.i, i32 noundef 0, i32 noundef 0, i32 noundef %i.f)
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.t, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6resizeERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj.exit.thread, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6resizeERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj.exit
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !51 ; 9 uses
  %i.as = ashr i64 %.sroa.0.0.copyload.i.i.i, 47
  switch i64 %i.as, label %bb.n [
    i64 -14, label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
    i64 -12, label %bb.g
    i64 -11, label %bb.h
    i64 -10, label %bb.i
    i64 -9, label %bb.j
    i64 -6, label %bb.k
    i64 -5, label %bb.k
    i64 -4, label %bb.l
    i64 -3, label %bb.l
    i64 -2, label %bb.m
    i64 -1, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.h:                                             ; preds = %bb.f
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.i:                                             ; preds = %bb.f
  %i.at = trunc i64 %.sroa.0.0.copyload.i.i.i to i1
  %i.au = select i1 %i.at, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.j:                                             ; preds = %bb.f
  %i.av = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.aw = shl i32 %i.av, 3
  %i.ax = or disjoint i32 %i.aw, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.k:                                             ; preds = %bb.f, %bb.f
  %i.ay = ptrtoint ptr %1 to i64
  %i.az = sub i64 %.sroa.0.0.copyload.i.i.i, %i.ay
  %i.ba = trunc i64 %i.az to i32
  %i.bb = or i32 %i.ba, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.l:                                             ; preds = %bb.f, %bb.f
  %i.bc = ptrtoint ptr %1 to i64
  %i.bd = sub i64 %.sroa.0.0.copyload.i.i.i, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = or i32 %i.be, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.m:                                             ; preds = %bb.f, %bb.f
  %i.bg = ptrtoint ptr %1 to i64
  %i.bh = sub i64 %.sroa.0.0.copyload.i.i.i, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.n:                                             ; preds = %bb.f
  %i.bj = bitcast i64 %.sroa.0.0.copyload.i.i.i to double
  %i.bk = fptosi double %i.bj to i32
  %i.bl = shl i32 %i.bk, 3                        ; 2 uses
  %i.bm = ashr exact i32 %i.bl, 3
  %i.bn = sitofp i32 %i.bm to double
  %i.bo = bitcast double %i.bn to i64
  %i.bp = icmp eq i64 %.sroa.0.0.copyload.i.i.i, %i.bo
  br i1 %i.bp, label %bb.o, label %bb.p, !prof !60

bb.o:                                             ; preds = %bb.n
  %i.bq = or disjoint i32 %i.bl, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.p:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !8  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !14
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.bt, %i.bv
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.q, label %bb.r, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.bx = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.bw, i32 noundef 16) #6
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.r:                                             ; preds = %bb.p
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !8
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.r, %bb.q
  %i.by = phi ptr [ %i.bx, %bb.q ], [ %i.bs, %bb.r ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.bz, align 8, !tbaa !103
  store i32 402653200, ptr %i.by, align 8, !tbaa !15
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %1 to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = or i32 %i.cd, 3
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.o, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %.sroa.04.0.i = phi i32 [ 7, %bb.f ], [ %i.bi, %bb.m ], [ 14, %bb.g ], [ 15, %bb.h ], [ %i.au, %bb.i ], [ %i.ax, %bb.j ], [ %i.bb, %bb.k ], [ %i.bf, %bb.l ], [ %i.bq, %bb.o ], [ %i.ce, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 2 uses
  %i.cf = load ptr, ptr %0, align 8, !tbaa !57
  %.sroa.0.0.copyload.i.i10 = load i64, ptr %i.cf, align 8, !tbaa !51
  %i.cg = and i64 %.sroa.0.0.copyload.i.i10, 281474976710655
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = zext i32 %i.e to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cj ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !54
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = and i64 %i.cn, 1125899902648320
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = icmp eq ptr %i.cm, %i.cp
  br i1 %i.cq, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit, label %bb.s, !prof !60

bb.s:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.cr, ptr noundef nonnull align 4 dereferenceable(4) %i.ck, i32 %.sroa.04.0.i) #6
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit, %bb.s
  store i32 %.sroa.04.0.i, ptr %i.ck, align 4, !tbaa !109
  br label %bb.t

bb.t:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6resizeERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj.exit, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit
  %.0 = phi i32 [ 1, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit ], [ 0, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6resizeERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj.exit ]
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE:bb.a
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.f, align 4, !tbaa !3 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = and i64 %i.i, -4194304
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = icmp ne ptr %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.n = load i8, ptr %i.m, align 1, !range !55
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i = select i1 %i.l, i1 %i.o, i1 false, !prof !56
  br i1 %or.cond.i.i, label %bb.b, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE23unreachableWriteBarrierERNS0_7HadesGCE.exit, !prof !56

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112) %i.p, i32 %.sroa.0.0.copyload) #6
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE23unreachableWriteBarrierERNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE23unreachableWriteBarrierERNS0_7HadesGCE.exit: ; preds = %bb.a, %bb.b
  store atomic i32 %i.d, ptr %i.a monotonic, align 4
  ret i32 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE14ensureCapacityERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !51
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 16777212
  %i.f = add nsw i32 %i.e, -8
  %i.g = lshr exact i32 %i.f, 2
  %.not = icmp ugt i32 %2, %i.g
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  %i.j = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE18reallocateToLargerERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjjj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE18reallocateToLargerERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjjj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i32 %2, 1027070
  br i1 %i.a, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i32 %2, 2
  %i.c = add nuw nsw i32 %i.b, 12
  %i.d = and i32 %i.c, 8388600                    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  %i.g = zext nneg i32 %i.d to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.h, %i.j
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.l = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.k, i32 noundef %i.d) #6
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread

bb.d:                                             ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !8
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread: ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.f, %bb.d ] ; 3 uses
  store i64 0, ptr %i.m, align 4
  %i.n = or disjoint i32 %i.d, 251658240
  store i32 %i.n, ptr %i.m, align 4, !tbaa !15
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = or i64 %i.o, -281474976710656
  br label %bb.e

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit: ; preds = %bb.a
  %i.q = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2)
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.e, !prof !50

bb.e:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit
  %.sroa.3.0.i53 = phi i64 [ %i.p, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread ], [ -1, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 192 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75
  %i.y = icmp ult ptr %i.v, %i.x
  br i1 %i.y, label %bb.f, label %bb.g, !prof !60

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !66
  store i64 %.sroa.3.0.i53, ptr %i.v, align 8, !tbaa !51
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.t, i64 %.sroa.3.0.i53) #6 ; 2 uses
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %i.aa, align 8, !tbaa !51
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.3.0.i53, %bb.f ], [ %.sroa.0.0.copyload.i.i.pre, %bb.g ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !57
  %.sroa.0.0.copyload.i.i36 = load i64, ptr %i.ad, align 8, !tbaa !51
  %i.ae = and i64 %.sroa.0.0.copyload.i.i36, 281474976710655
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4
  %i.ai = sub i32 %i.ah, %3
  %i.aj = sub i32 %5, %4
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.ai) ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = zext i32 %3 to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 5 uses
  %i.ao = zext i32 %4 to i64                      ; 2 uses
  %.idx54 = shl nuw nsw i64 %i.ao, 2              ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx54 ; 5 uses
  %i.aq = zext i32 %.sroa.speculated to i64       ; 2 uses
  %.idx = shl nuw nsw i64 %i.aq, 2                ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !54
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = and i64 %i.at, 1125899902648320
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = icmp eq ptr %i.as, %i.av
  br i1 %i.aw, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_copyEPS3_S4_S4_RNS0_7HadesGCE.exit, label %bb.h, !prof !60

bb.h:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC32constructorWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ax, ptr noundef nonnull %i.ap, i32 noundef %.sroa.speculated) #6
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_copyEPS3_S4_S4_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_copyEPS3_S4_S4_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EENS0_11HermesValueE.exit, %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull align 4 %i.am, i64 %.idx, i1 false)
  %.not1421.i = icmp eq i32 %4, 0
  br i1 %.not1421.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_copyEPS3_S4_S4_RNS0_7HadesGCE.exit
  %i.ay = add nsw i64 %.idx54, -4                 ; 2 uses
  %i.az = lshr exact i64 %i.ay, 2
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ba, 9223372036854775800     ; 3 uses
  %i.bb = shl i64 %n.vec, 2
  %i.bc = getelementptr i8, ptr %i.an, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.be, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i.preheader74

.lr.ph.i.preheader74:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.01320.i.ph = phi ptr [ %i.an, %.lr.ph.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader74, %.lr.ph.i
  %.01320.i = phi ptr [ %i.bg, %.lr.ph.i ], [ %.01320.i.ph, %.lr.ph.i.preheader74 ] ; 2 uses
  store i32 7, ptr %.01320.i, align 4, !tbaa !3
  %i.bg = getelementptr inbounds nuw i8, ptr %.01320.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bg, %i.ap
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i, !llvm.loop !112

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_copyEPS3_S4_S4_RNS0_7HadesGCE.exit
  %i.bh = add i32 %.sroa.speculated, %4
  %i.bi = icmp ult i32 %i.bh, %5
  br i1 %i.bi, label %bb.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit41

bb.i:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit
  %i.bj = zext i32 %5 to i64
  %.idx56 = shl nuw nsw i64 %i.bj, 2              ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx56
  %i.bl = add nuw nsw i64 %.idx, %.idx54
  %.not1421.i37 = icmp samesign eq i64 %i.bl, %.idx56
  br i1 %.not1421.i37, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit41, label %.lr.ph.i38.preheader

.lr.ph.i38.preheader:                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx ; 3 uses
  %i.bn = add nuw nsw i64 %i.aq, %i.ao
  %6 = add nsw i64 %.idx56, -4
  %7 = shl nuw nsw i64 %i.bn, 2
  %8 = sub nsw i64 %6, %7                         ; 2 uses
  %9 = lshr exact i64 %8, 2
  %i.bo = add nuw nsw i64 %9, 1                   ; 2 uses
  %min.iters.check63 = icmp ult i64 %8, 28
  br i1 %min.iters.check63, label %.lr.ph.i38.preheader73, label %vector.ph64

vector.ph64:                                      ; preds = %.lr.ph.i38.preheader
  %n.vec65 = and i64 %i.bo, 9223372036854775800   ; 3 uses
  %i.bp = shl i64 %n.vec65, 2
  %i.bq = getelementptr i8, ptr %i.bm, i64 %i.bp
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next69, %vector.body66 ] ; 2 uses
  %i.br = shl i64 %index67, 2
  %next.gep68 = getelementptr i8, ptr %i.bm, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep68, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.bs, align 4, !tbaa !3
  %index.next69 = add nuw i64 %index67, 8         ; 2 uses
  %i.bt = icmp eq i64 %index.next69, %n.vec65
  br i1 %i.bt, label %middle.block70, label %vector.body66, !llvm.loop !113

middle.block70:                                   ; preds = %vector.body66
  %cmp.n71 = icmp eq i64 %i.bo, %n.vec65
  br i1 %cmp.n71, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit41, label %.lr.ph.i38.preheader73

.lr.ph.i38.preheader73:                           ; preds = %.lr.ph.i38.preheader, %middle.block70
  %.01320.i39.ph = phi ptr [ %i.bm, %.lr.ph.i38.preheader ], [ %i.bq, %middle.block70 ]
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38.preheader73, %.lr.ph.i38
  %.01320.i39 = phi ptr [ %i.bu, %.lr.ph.i38 ], [ %.01320.i39.ph, %.lr.ph.i38.preheader73 ] ; 2 uses
  store i32 7, ptr %.01320.i39, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.01320.i39, i64 4 ; 2 uses
  %.not.i40 = icmp eq ptr %i.bu, %i.bk
  br i1 %.not.i40, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit41, label %.lr.ph.i38, !llvm.loop !114

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit41: ; preds = %.lr.ph.i38, %middle.block70, %bb.i, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store atomic i32 %5, ptr %i.bv release, align 4
  %.sroa.0.0.copyload.i.i42 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !51
  %i.bw = or i64 %.sroa.0.0.copyload.i.i42, -281474976710656
  %i.bx = load ptr, ptr %0, align 8, !tbaa !78
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit41
  %.0 = phi i32 [ 1, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit41 ], [ 0, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6resizeERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !51
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 16777212
  %i.f = add nsw i32 %i.e, -8                     ; 3 uses
  %i.g = lshr exact i32 %i.f, 2
  %.not.i = icmp ugt i32 %2, %i.g
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  %i.i = load atomic i32, ptr %i.h monotonic, align 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.l = icmp ult i32 %i.i, %2
  br i1 %i.l, label %bb.c, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = zext i32 %i.i to i64                     ; 2 uses
  %.idx88.i = shl nuw nsw i64 %i.m, 2
  %i.n = zext nneg i32 %2 to i64
  %.idx89.i = shl nuw nsw i64 %i.n, 2             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx89.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx88.i ; 3 uses
  %3 = add nsw i64 %.idx89.i, -4
  %4 = shl nuw nsw i64 %i.m, 2
  %5 = sub nsw i64 %3, %4                         ; 2 uses
  %6 = lshr exact i64 %5, 2
  %i.q = add nuw nsw i64 %6, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  br i1 %min.iters.check, label %.lr.ph.i65.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.q, 9223372036854775800      ; 3 uses
  %i.r = shl i64 %n.vec, 2
  %i.s = getelementptr i8, ptr %i.p, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.u, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit.i, label %.lr.ph.i65.i.preheader

.lr.ph.i65.i.preheader:                           ; preds = %bb.c, %middle.block
  %.01320.i66.i.ph = phi ptr [ %i.p, %bb.c ], [ %i.s, %middle.block ]
  br label %.lr.ph.i65.i

.lr.ph.i65.i:                                     ; preds = %.lr.ph.i65.i.preheader, %.lr.ph.i65.i
  %.01320.i66.i = phi ptr [ %i.w, %.lr.ph.i65.i ], [ %.01320.i66.i.ph, %.lr.ph.i65.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i66.i, align 4, !tbaa !3
  %i.w = getelementptr inbounds nuw i8, ptr %.01320.i66.i, i64 4 ; 2 uses
  %.not.i67.i = icmp eq ptr %i.w, %i.o
  br i1 %.not.i67.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit.i, label %.lr.ph.i65.i, !llvm.loop !116

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit.i: ; preds = %.lr.ph.i65.i, %middle.block, %bb.b
  %i.x = load atomic i32, ptr %i.h monotonic, align 4
  %i.y = icmp ult i32 %2, %i.x
  br i1 %i.y, label %bb.d, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit.i

bb.d:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit.i
  %i.z = zext nneg i32 %2 to i64
  %.idx91.i = shl nuw nsw i64 %i.z, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx91.i ; 2 uses
  %i.ab = load atomic i32, ptr %i.h monotonic, align 4
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.af = and i64 %i.ac, 1125899902648320
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = icmp ne ptr %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.aj = load i8, ptr %i.ai, align 1, !range !55
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond.i.i.i = select i1 %i.ah, i1 %i.ak, i1 false, !prof !56
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit.i, !prof !56

bb.e:                                             ; preds = %bb.d
  %i.al = sub i32 %i.ab, %2
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.k, ptr noundef nonnull %i.aa, i32 noundef %i.al) #6
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit.i: ; preds = %bb.e, %bb.d, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit.i
  store atomic i32 %2, ptr %i.h release, align 4
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE5shiftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjj.exit

bb.f:                                             ; preds = %bb.a
  %i.am = icmp ult i32 %i.f, 2054140
  %i.an = lshr exact i32 %i.f, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.an, i32 %2)
  %.0.i = select i1 %i.am, i32 %.sroa.speculated.i, i32 1027070
  %i.ao = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE18reallocateToLargerERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjjj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.0.i, i32 noundef 0, i32 noundef 0, i32 noundef %2)
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE5shiftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjj.exit

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE5shiftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjj.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit.i, %bb.f
  %.052.i = phi i32 [ 1, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit.i ], [ %i.ao, %bb.f ]
  ret i32 %.052.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE5shiftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !51
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 16777212
  %i.f = add nsw i32 %i.e, -8                     ; 3 uses
  %i.g = lshr exact i32 %i.f, 2
  %.not = icmp ugt i32 %4, %i.g
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  %i.j = sub i32 %i.i, %2
  %i.k = sub i32 %4, %3
  %.sroa.speculated72 = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.j) ; 6 uses
  %i.l = icmp ugt i32 %2, %3
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.n = zext i32 %2 to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = zext i32 %.sroa.speculated72 to i64
  %.idx86 = shl nuw nsw i64 %i.p, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx86
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 856
  %.not9.i = icmp eq i32 %.sroa.speculated72, 0
  br i1 %.not9.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = zext i32 %3 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1632
  br label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %.lr.ph.i
  %.011.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.aa, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ] ; 2 uses
  %.0810.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.ab, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ] ; 4 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.011.i, align 4, !tbaa !3 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.w = ptrtoint ptr %.0810.i to i64
  %i.x = and i64 %i.w, -4194304
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = icmp eq ptr %i.v, %i.y
  br i1 %i.z, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, label %bb.e, !prof !60

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %.0810.i, i32 %.sroa.0.0.copyload.i) #6
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.e, %bb.d
  store i32 %.sroa.0.0.copyload.i, ptr %.0810.i, align 4, !tbaa !109
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4
  %.not.i = icmp eq ptr %i.aa, %i.q
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit, label %bb.d, !llvm.loop !117

bb.f:                                             ; preds = %bb.b
  %i.ac = icmp ult i32 %2, %3
  br i1 %i.ac, label %bb.g, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ae = zext i32 %2 to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 856
  %.not7.i = icmp eq i32 %.sroa.speculated72, 0
  br i1 %.not7.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit.thread, label %.lr.ph.i58

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit.thread: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ai = zext i32 %3 to i64
  %.idx87102 = shl nuw nsw i64 %i.ai, 2           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx87102
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 856
  br label %.lr.ph.i62

.lr.ph.i58:                                       ; preds = %bb.g
  %i.al = zext i32 %.sroa.speculated72 to i64     ; 2 uses
  %.idx = shl nuw nsw i64 %i.al, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx
  %i.an = zext i32 %3 to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1632
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i60, %.lr.ph.i58
  %.09.i = phi ptr [ %i.am, %.lr.ph.i58 ], [ %i.as, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i60 ]
  %.068.i = phi ptr [ %i.ap, %.lr.ph.i58 ], [ %i.ar, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i60 ]
  %i.ar = getelementptr inbounds i8, ptr %.068.i, i64 -4 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %.09.i, i64 -4 ; 3 uses
  %.sroa.0.0.copyload.i59 = load i32, ptr %i.as, align 4, !tbaa !3 ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !54
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = and i64 %i.au, -4194304
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = icmp eq ptr %i.at, %i.aw
  br i1 %i.ax, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i60, label %bb.i, !prof !60

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, i32 %.sroa.0.0.copyload.i59) #6
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i60

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i60: ; preds = %bb.i, %bb.h
  store i32 %.sroa.0.0.copyload.i59, ptr %i.ar, align 4, !tbaa !109
  %.not.i61 = icmp eq ptr %i.af, %i.as
  br i1 %.not.i61, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit, label %bb.h, !llvm.loop !118

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i60, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %bb.c, %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.az = zext i32 %3 to i64
  %.idx87 = shl nuw nsw i64 %i.az, 2              ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx87 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  %.not1421.i = icmp eq i32 %3, 0
  br i1 %.not1421.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit.thread, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit
  %i.bc = phi ptr [ %i.ak, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit.thread ], [ %i.bb, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit ] ; 2 uses
  %i.bd = phi ptr [ %i.aj, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit.thread ], [ %i.ba, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit ] ; 2 uses
  %.idx87104 = phi i64 [ %.idx87102, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit.thread ], [ %.idx87, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit ]
  %i.be = phi ptr [ %i.ah, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit.thread ], [ %i.ay, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8489
  br label %bb.j

bb.j:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i, %.lr.ph.i62
  %.01320.i = phi ptr [ %i.be, %.lr.ph.i62 ], [ %i.bo, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i ] ; 4 uses
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !54
  %i.bi = ptrtoint ptr %.01320.i to i64
  %i.bj = and i64 %i.bi, -4194304
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = icmp ne ptr %i.bh, %i.bk
  %i.bm = load i8, ptr %i.bg, align 1, !range !55
  %i.bn = trunc nuw i8 %i.bm to i1
  %or.cond.i.i.i = select i1 %i.bl, i1 %i.bn, i1 false, !prof !56
  br i1 %or.cond.i.i.i, label %bb.k, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i, !prof !56

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %.01320.i, align 4, !tbaa !3
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112) %i.bc, i32 %.sroa.0.0.copyload.i.i.i) #6
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i: ; preds = %bb.k, %bb.j
  store i32 7, ptr %.01320.i, align 4, !tbaa !109
  %i.bo = getelementptr inbounds nuw i8, ptr %.01320.i, i64 4 ; 2 uses
  %.not.i63 = icmp eq ptr %i.bo, %i.bd
  br i1 %.not.i63, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %bb.j, !llvm.loop !119

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit
  %i.bp = phi ptr [ %i.bb, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit ], [ %i.bc, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i ]
  %i.bq = phi ptr [ %i.ba, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit ], [ %i.bd, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i ] ; 2 uses
  %.idx87105 = phi i64 [ %.idx87, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit ], [ %.idx87104, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i ]
  %i.br = phi ptr [ %i.ay, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyIPS3_S5_EET0_T_S7_S6_RNS0_7HadesGCE.exit ], [ %i.be, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i ] ; 3 uses
  %i.bs = add i32 %.sroa.speculated72, %3
  %i.bt = icmp ult i32 %i.bs, %4
  br i1 %i.bt, label %bb.l, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit

bb.l:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit
  %i.bu = zext i32 %.sroa.speculated72 to i64     ; 2 uses
  %.idx88 = shl nuw nsw i64 %i.bu, 2              ; 2 uses
  %i.bv = zext nneg i32 %4 to i64
  %.idx89 = shl nuw nsw i64 %i.bv, 2              ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx89
  %i.bx = add nuw nsw i64 %.idx88, %.idx87105
  %.not1421.i64 = icmp samesign eq i64 %i.bx, %.idx89
  br i1 %.not1421.i64, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i65.preheader

.lr.ph.i65.preheader:                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx88 ; 3 uses
  %i.bz = ptrtoaddr ptr %i.br to i64
  %i.ca = ptrtoaddr ptr %i.bq to i64
  %5 = add i64 %.idx89, %i.bz
  %i.cb = add i64 %5, -4
  %6 = shl nuw nsw i64 %i.bu, 2
  %i.cc = add i64 %6, %i.ca
  %7 = sub i64 %i.cb, %i.cc                       ; 2 uses
  %i.cd = lshr i64 %7, 2
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 28
  br i1 %min.iters.check, label %.lr.ph.i65.preheader108, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i65.preheader
  %n.vec = and i64 %i.ce, 9223372036854775800     ; 3 uses
  %i.cf = shl i64 %n.vec, 2
  %i.cg = getelementptr i8, ptr %i.by, i64 %i.cf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.ci, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ce, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i65.preheader108

.lr.ph.i65.preheader108:                          ; preds = %.lr.ph.i65.preheader, %middle.block
  %.01320.i66.ph = phi ptr [ %i.by, %.lr.ph.i65.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %.lr.ph.i65.preheader108, %.lr.ph.i65
  %.01320.i66 = phi ptr [ %i.ck, %.lr.ph.i65 ], [ %.01320.i66.ph, %.lr.ph.i65.preheader108 ] ; 2 uses
  store i32 7, ptr %.01320.i66, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %.01320.i66, i64 4 ; 2 uses
  %.not.i67 = icmp eq ptr %i.ck, %i.bw
  br i1 %.not.i67, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i65, !llvm.loop !121

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit: ; preds = %.lr.ph.i65, %middle.block, %bb.l, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit
  %i.cl = load atomic i32, ptr %i.h monotonic, align 4
  %i.cm = icmp ult i32 %4, %i.cl
  br i1 %i.cm, label %bb.m, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit

bb.m:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit
  %i.cn = zext nneg i32 %4 to i64
  %.idx91 = shl nuw nsw i64 %i.cn, 2
  %i.co = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx91 ; 2 uses
  %i.cp = load atomic i32, ptr %i.h monotonic, align 4
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !54
  %i.ct = and i64 %i.cq, 1125899902648320
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = icmp ne ptr %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.cx = load i8, ptr %i.cw, align 1, !range !55
  %i.cy = trunc nuw i8 %i.cx to i1
  %or.cond.i.i = select i1 %i.cv, i1 %i.cy, i1 false, !prof !56
  br i1 %or.cond.i.i, label %bb.n, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit, !prof !56

bb.n:                                             ; preds = %bb.m
  %i.cz = sub i32 %i.cp, %4
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.bp, ptr noundef nonnull %i.co, i32 noundef %i.cz) #6
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit: ; preds = %bb.n, %bb.m, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit
  store atomic i32 %4, ptr %i.h release, align 4
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  %i.da = icmp ult i32 %i.f, 2054140
  %i.db = lshr exact i32 %i.f, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.db, i32 %4)
  %.0 = select i1 %i.da, i32 %.sroa.speculated, i32 1027070
  %i.dc = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE18reallocateToLargerERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjjj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.0, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit
  %.052 = phi i32 [ 1, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit ], [ %i.dc, %bb.o ]
  ret i32 %.052
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE10resizeLeftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !51
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = sub i32 %2, %i.e
  %i.g = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE5shiftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 0, i32 noundef %i.f, i32 noundef %2)
  ret i32 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7HadesGCEj(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8112) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 4 uses
  %i.c = icmp ugt i32 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = zext i32 %i.b to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = zext i32 %2 to i64                       ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %3 = shl nuw nsw i64 %i.g, 2
  %i.i = add nsw i64 %3, -4
  %4 = shl nuw nsw i64 %i.e, 2
  %5 = sub nsw i64 %i.i, %4                       ; 2 uses
  %6 = lshr exact i64 %5, 2
  %i.j = add nuw nsw i64 %6, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.j, 9223372036854775800      ; 3 uses
  %i.k = shl i64 %n.vec, 2
  %i.l = getelementptr i8, ptr %i.f, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.n, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b, %middle.block
  %.01320.i.ph = phi ptr [ %i.f, %bb.b ], [ %i.l, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01320.i = phi ptr [ %i.p, %.lr.ph.i ], [ %.01320.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i, align 4, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %.01320.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.h
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i, !llvm.loop !123

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ult i32 %2, %i.b
  br i1 %i.q, label %bb.d, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = zext i32 %2 to i64
  %.idx18 = shl nuw nsw i64 %i.s, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx18 ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.x = and i64 %i.u, -4194304
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = icmp ne ptr %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 7633
  %i.ab = load i8, ptr %i.aa, align 1, !range !55
  %i.ac = trunc nuw i8 %i.ab to i1
  %or.cond.i.i = select i1 %i.z, i1 %i.ac, i1 false, !prof !56
  br i1 %or.cond.i.i, label %bb.e, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, !prof !56

bb.e:                                             ; preds = %bb.d
  %i.ad = sub i32 %i.b, %2
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %1, ptr noundef nonnull %i.t, i32 noundef %i.ad) #6
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit: ; preds = %.lr.ph.i, %middle.block, %bb.e, %bb.d, %bb.c
  store atomic i32 %2, ptr %i.a release, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm21ArrayStorageBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) initializes((216, 224)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE2vtE, ptr %i.a, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZN6hermes2vm8Metadata7Builder8addArrayEPKcNS1_9ArrayData9ArrayTypeEPKvPKSt6atomicIjEm(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.4, i8 noundef zeroext 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 8) #6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm26ArrayStorageSmallBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) initializes((216, 224)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE2vtE, ptr %i.a, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZN6hermes2vm8Metadata7Builder8addArrayEPKcNS1_9ArrayData9ArrayTypeEPKvPKSt6atomicIjEm(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.4, i8 noundef zeroext 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 4) #6
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm8Metadata7Builder8addArrayEPKcNS1_9ArrayData9ArrayTypeEPKvPKSt6atomicIjEm(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7HadesGC14allocLongLivedEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC19pauseBackgroundTaskEv(ptr dead_on_unwind writable sret(%"class.std::lock_guard") align 8, ptr noundef nonnull align 8 dereferenceable(8112)) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

declare void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112), i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC32constructorWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112), i32) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC32constructorWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!9, !11, i64 16}
!9 = !{!"_ZTSN6hermes2vm18AlignedHeapSegmentE", !10, i64 0, !11, i64 16, !11, i64 24}
!10 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !11, i64 0, !13, i64 8}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !12, i64 0}
!14 = !{!9, !11, i64 24}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0, !19, i64 8}
!18 = !{!"p1 _ZTSN6hermes2vm12CrashManagerE", !12, i64 0}
!19 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0}
!20 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !6, i64 0}
!23 = !{!24, !26}
!24 = distinct !{!24, !25, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!25 = distinct !{!25, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!26 = distinct !{!26, !27, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!27 = distinct !{!27, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!28 = !{!29, !30, i64 8}
!29 = !{!"_ZTSN6hermes2vm11TwineChar16E", !5, i64 0, !30, i64 8, !5, i64 16, !30, i64 24, !31, i64 32, !31, i64 40}
!30 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !5, i64 0}
!31 = !{!"long", !5, i64 0}
!32 = !{!29, !30, i64 24}
!33 = !{!29, !31, i64 32}
!34 = !{!29, !31, i64 40}
!35 = !{!36, !38}
!36 = distinct !{!36, !37, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!37 = distinct !{!37, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!38 = distinct !{!38, !39, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!39 = distinct !{!39, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!40 = !{!41, !43}
!41 = distinct !{!41, !42, !"_ZNK6hermes2vm11TwineChar166concatERKS1_: argument 0"}
!42 = distinct !{!42, !"_ZNK6hermes2vm11TwineChar166concatERKS1_"}
!43 = distinct !{!43, !44, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_: argument 0"}
!44 = distinct !{!44, !"_ZN6hermes2vmplERKNS0_11TwineChar16ES3_"}
!45 = !{!46, !47, i64 0}
!46 = !{!"_ZTSSt10lock_guardISt15recursive_mutexE", !47, i64 0}
!47 = !{!"p1 _ZTSSt15recursive_mutex", !12, i64 0}
!48 = !{}
!49 = !{i64 8}
!50 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!51 = !{!31, !31, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!10, !11, i64 0}
!55 = !{i8 0, i8 2}
!56 = !{!"branch_weights", i32 1, i32 4001}
!57 = !{!58, !59, i64 0}
!58 = !{!"_ZTSN6hermes2vm10HandleBaseE", !59, i64 0}
end_hunk_1
