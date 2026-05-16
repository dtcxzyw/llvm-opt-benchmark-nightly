inline.NumInlined: 294
inline.NumDeleted: 193
begin_hunk_0_@_ZN2v88internal15SyntheticModule15SetExportStrictEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEENS4_INS0_6ObjectEEE:bb.a
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit13, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #4
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit13

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit13: ; preds = %bb.a, %bb.b
  %.0.i12 = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i12 to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i12, align 8
  %i.n = add i64 %i.d, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = tail call i64 @_ZN2v88internal19ObjectHashTableBaseINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE6LookupENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr %2) #4 ; 3 uses
  %i.q = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.g, align 8
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit13
  %i.t = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #4
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit13, %bb.c
  %.0.i = phi ptr [ %i.t, %bb.c ], [ %i.q, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit13 ] ; 2 uses
  %i.u = ptrtoint ptr %.0.i to i64
  %i.v = add i64 %i.u, 8
  %i.w = inttoptr i64 %i.v to ptr
  store ptr %i.w, ptr %i.e, align 8
  store i64 %i.p, ptr %.0.i, align 8
  %i.x = trunc i64 %i.p to i1
  br i1 %i.x, label %_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit.thread, !prof !7

_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.y = add nsw i64 %i.p, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %i.ab = add i64 %i.aa, 11
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i16, ptr %i.ac monotonic, align 2
  %i.ae = icmp eq i16 %i.ad, 261
  br i1 %i.ae, label %bb.d, label %_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit.thread, !prof !8

_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  unreachable

bb.d:                                             ; preds = %_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit
  %i.af = tail call i16 @_ZN2v88internal15SyntheticModule9SetExportEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEENS4_INS0_6ObjectEEE(ptr noundef nonnull %0, ptr nonnull %1, ptr %2, ptr %3) ; 2 uses
  %i.ag = trunc i16 %i.af to i1
  br i1 %i.ag, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v812api_internal17FromJustIsNothingEv() #4
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %bb.d, %bb.e
  %.not = icmp samesign ult i16 %i.af, 256
  br i1 %.not, label %bb.f, label %bb.g, !prof !5

bb.f:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #5
  unreachable

bb.g:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  ret void
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal15SyntheticModule13ResolveExportEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEES7_NS0_15MessageLocationEb(ptr noundef %0, ptr readonly captures(none) %1, ptr %2, ptr %3, ptr noundef byval(%"class.v8::internal::MessageLocation") align 8 %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca [2 x %"class.v8::internal::DirectHandle.2"], align 8 ; 5 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call i64 @_ZN2v88internal19ObjectHashTableBaseINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE6LookupENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr %3) #4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #4
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.m, %bb.b ], [ %i.i, %bb.a ] ; 3 uses
  %i.n = ptrtoint ptr %.0.i to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8
  store i64 %i.g, ptr %.0.i, align 8
  %i.q = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 10624
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp ne i64 %i.g, %i.u
  %i.w = trunc i64 %i.g to i1
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.x = add nsw i64 %i.g, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2
  %i.ad = icmp ne i16 %i.ac, 261                  ; 2 uses
  %brmerge.not = and i1 %5, %i.ad
  %.0.i.mux = select i1 %i.ad, ptr null, ptr %.0.i
  br i1 %brmerge.not, label %bb.c, label %bb.d

_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  br i1 %5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  store ptr %2, ptr %6, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.ae, align 8
  %i.af = call ptr @_ZN2v88internal7Factory14NewSyntaxErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 419, ptr nonnull %6, i64 2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  %i.ag = call i64 @_ZN2v88internal7Isolate7ThrowAtENS0_12DirectHandleINS0_8JSObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr %i.af, ptr noundef nonnull %4) #4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.c
  %.sroa.024.0 = phi ptr [ null, %bb.c ], [ %.0.i.mux, %_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit ], [ null, %_ZN2v88internal6IsCellENS0_6TaggedINS0_6ObjectEEE.exit.thread ]
  ret ptr %.sroa.024.0
}

declare i64 @_ZN2v88internal7Isolate7ThrowAtENS0_12DirectHandleINS0_8JSObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal15SyntheticModule18PrepareInstantiateEPNS0_7IsolateENS0_12DirectHandleIS1_EENS_5LocalINS_7ContextEEE(ptr noundef %0, ptr readonly captures(none) %1, ptr readnone captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #4
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  %i.k = ptrtoint ptr %.0.i to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i, align 8
  %i.n = load i64, ptr %1, align 8
  %i.o = add i64 %i.n, 63
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.u = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #4
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.c
  %.0.i.i = phi ptr [ %i.u, %bb.c ], [ %i.r, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ] ; 3 uses
  %i.v = ptrtoint ptr %.0.i.i to i64
  %i.w = add i64 %i.v, 8
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.e, align 8
  store i64 %i.q, ptr %.0.i.i, align 8
  %i.y = add i64 %i.q, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %3 = load i32, ptr %i.aa, align 4               ; 2 uses
  %i.ab = icmp sgt i32 %3, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 656
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.i

._crit_edge:                                      ; preds = %bb.l, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.047.0.lcssa = phi ptr [ %.0.i, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.bk, %bb.l ]
  %i.ad = load i64, ptr %1, align 8               ; 4 uses
  %i.ae = load i64, ptr %.sroa.047.0.lcssa, align 8 ; 5 uses
  %i.af = add i64 %i.ad, 7                        ; 3 uses
  %i.ag = inttoptr i64 %i.af to ptr
  store atomic volatile i64 %i.ae, ptr %i.ag monotonic, align 8
  %i.ah = trunc i64 %i.ae to i1
  br i1 %i.ah, label %bb.d, label %_ZN2v88internal21TorqueGeneratedModuleINS0_6ModuleENS0_10HeapObjectEE11set_exportsENS0_6TaggedINS0_15ObjectHashTableEEENS0_16WriteBarrierModeE.exit

bb.d:                                             ; preds = %._crit_edge
  %i.ai = and i64 %i.ad, -262144
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.aj, align 262144       ; 2 uses
  %i.al = and i64 %i.ak, 32
  %.not.i.i.i = icmp eq i64 %i.al, 0
  %i.am = and i64 %i.ak, 25
  %.not38.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not38.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.an = and i64 %i.ae, -262144
  %i.ao = inttoptr i64 %i.an to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.ao, align 262144
  %i.ap = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not39.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ad, i64 noundef %i.af, i64 %i.ae) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br i1 %.not.i.i.i, label %_ZN2v88internal21TorqueGeneratedModuleINS0_6ModuleENS0_10HeapObjectEE11set_exportsENS0_6TaggedINS0_15ObjectHashTableEEENS0_16WriteBarrierModeE.exit, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ad, i64 %i.af, i64 %i.ae) #4
  br label %_ZN2v88internal21TorqueGeneratedModuleINS0_6ModuleENS0_10HeapObjectEE11set_exportsENS0_6TaggedINS0_15ObjectHashTableEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal21TorqueGeneratedModuleINS0_6ModuleENS0_10HeapObjectEE11set_exportsENS0_6TaggedINS0_15ObjectHashTableEEENS0_16WriteBarrierModeE.exit: ; preds = %._crit_edge, %bb.g, %bb.h
  ret i1 true

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.sroa.047.072 = phi ptr [ %.0.i, %.lr.ph ], [ %i.bk, %bb.l ] ; 2 uses
  %i.aq = tail call ptr @_ZN2v88internal7Factory7NewCellEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #4
  %i.ar = load i64, ptr %.0.i.i, align 8
  %i.as = add i64 %i.ar, -1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = load atomic volatile i64, ptr %i.av monotonic, align 8
  %i.ax = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ay = load ptr, ptr %i.g, align 8
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.j, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.ba = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #4
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i25 = phi ptr [ %i.ba, %bb.j ], [ %i.ax, %bb.i ] ; 4 uses
  %i.bb = ptrtoint ptr %.0.i.i25 to i64
  %i.bc = add i64 %i.bb, 8
  %i.bd = inttoptr i64 %i.bc to ptr
  store ptr %i.bd, ptr %i.e, align 8
  store i64 %i.aw, ptr %.0.i.i25, align 8
  %i.be = load i64, ptr %.sroa.047.072, align 8
  %i.bf = add i64 %i.be, -1
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = tail call i64 @_ZN2v88internal19ObjectHashTableBaseINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE6LookupENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.bg, ptr nonnull %.0.i.i25) #4
  %i.bi = load i64, ptr %i.ac, align 8
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.l, label %bb.k, !prof !6

bb.k:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #5
  unreachable

bb.l:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bk = tail call ptr @_ZN2v88internal19ObjectHashTableBaseINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE3PutENS0_6HandleIS2_EENS0_12DirectHandleINS0_6ObjectEEES9_(ptr nonnull %.sroa.047.072, ptr nonnull %.0.i.i25, ptr %i.aq) #4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !9
}

declare ptr @_ZN2v88internal7Factory7NewCellEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare ptr @_ZN2v88internal19ObjectHashTableBaseINS0_15ObjectHashTableENS0_20ObjectHashTableShapeEE3PutENS0_6HandleIS2_EENS0_12DirectHandleINS0_6ObjectEEES9_(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal15SyntheticModule17FinishInstantiateEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef readnone captures(none) %0, ptr readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %2, align 8
  call void @_ZN2v88internal6Module9SetStatusENS1_6StatusE(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  ret i1 true
}

declare void @_ZN2v88internal6Module9SetStatusENS1_6StatusE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal15SyntheticModule8EvaluateEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %2, align 8
  call void @_ZN2v88internal6Module9SetStatusENS1_6StatusE(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 71
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 7
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i26 = load i64, ptr %i.j, align 8
  %i.k = add i64 %.sroa.0.0.copyload.i.i26, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = add i64 %i.m, 31
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.b, label %_ZN2v88internal7Isolate14native_contextEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.v = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #4
  br label %_ZN2v88internal7Isolate14native_contextEv.exit

_ZN2v88internal7Isolate14native_contextEv.exit:   ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.v, %bb.b ], [ %i.r, %bb.a ] ; 3 uses
  %i.w = ptrtoint ptr %.0.i.i to i64
  %i.x = add i64 %i.w, 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.q, align 8
  store i64 %i.p, ptr %.0.i.i, align 8
  %i.z = call ptr %i.i(ptr nonnull %.0.i.i, ptr nonnull %1) #4 ; 3 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.aa = load i64, ptr %1, align 8
  store i64 %i.aa, ptr %3, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i27 = load i64, ptr %i.ab, align 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ad = load i64, ptr %i.ac, align 8
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i27, %i.ad
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal7Isolate9exceptionEv.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #5
  unreachable

_ZN2v88internal7Isolate9exceptionEv.exit:         ; preds = %bb.c
  call void @_ZN2v88internal6Module11RecordErrorEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %0, i64 %.sroa.0.0.copyload.i.i27) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %_ZN2v88internal21TorqueGeneratedModuleINS0_6ModuleENS0_10HeapObjectEE24set_top_level_capabilityENS0_6TaggedINS0_5UnionIJNS0_9JSPromiseENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit

bb.e:                                             ; preds = %_ZN2v88internal7Isolate14native_contextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.ae = load i64, ptr %1, align 8
  store i64 %i.ae, ptr %4, align 8
  call void @_ZN2v88internal6Module9SetStatusENS1_6StatusE(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 6) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  %i.af = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.e
  %i.ah = add nsw i64 %i.af, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp eq i16 %i.am, 2115
  br i1 %i.an, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, label %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.e, %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ao = call ptr @_ZN2v88internal7Factory12NewJSPromiseEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.aq = call ptr @_ZN2v88internal9JSPromise7ResolveENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEE(ptr %i.ao, ptr nonnull %i.ap) #4
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.f, label %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit.thread._ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit_crit_edge, !prof !5

_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit.thread._ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit_crit_edge: ; preds = %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %.pre = load i64, ptr %i.ao, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit

bb.f:                                             ; preds = %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit.thread
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #5
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit: ; preds = %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit.thread._ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit_crit_edge, %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit
  %i.as = phi i64 [ %i.af, %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.pre, %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit.thread._ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit_crit_edge ] ; 5 uses
  %i.at = load i64, ptr %1, align 8               ; 4 uses
  %i.au = add i64 %i.at, 47                       ; 3 uses
  %i.av = inttoptr i64 %i.au to ptr
  store atomic volatile i64 %i.as, ptr %i.av monotonic, align 8
  %i.aw = trunc i64 %i.as to i1
  br i1 %i.aw, label %bb.g, label %_ZN2v88internal21TorqueGeneratedModuleINS0_6ModuleENS0_10HeapObjectEE24set_top_level_capabilityENS0_6TaggedINS0_5UnionIJNS0_9JSPromiseENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit

bb.g:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit
  %i.ax = and i64 %i.at, -262144
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load i64, ptr %i.ay, align 262144       ; 2 uses
  %i.ba = and i64 %i.az, 32
  %.not.i.i.i = icmp eq i64 %i.ba, 0
  %i.bb = and i64 %i.az, 25
  %.not38.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not38.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bc = and i64 %i.as, -262144
  %i.bd = inttoptr i64 %i.bc to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.bd, align 262144
  %i.be = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not39.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.at, i64 noundef %i.au, i64 %i.as) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i, label %_ZN2v88internal21TorqueGeneratedModuleINS0_6ModuleENS0_10HeapObjectEE24set_top_level_capabilityENS0_6TaggedINS0_5UnionIJNS0_9JSPromiseENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.at, i64 %i.au, i64 %i.as) #4
  br label %_ZN2v88internal21TorqueGeneratedModuleINS0_6ModuleENS0_10HeapObjectEE24set_top_level_capabilityENS0_6TaggedINS0_5UnionIJNS0_9JSPromiseENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal21TorqueGeneratedModuleINS0_6ModuleENS0_10HeapObjectEE24set_top_level_capabilityENS0_6TaggedINS0_5UnionIJNS0_9JSPromiseENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.k, %bb.j, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, %_ZN2v88internal7Isolate9exceptionEv.exit
  ret ptr %i.z
}

declare void @_ZN2v88internal6Module11RecordErrorEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory12NewJSPromiseEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare ptr @_ZN2v88internal9JSPromise7ResolveENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEE(ptr, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory17NewReferenceErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

declare void @_ZN2v812api_internal17FromJustIsNothingEv() local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory14NewSyntaxErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
end_hunk_0
