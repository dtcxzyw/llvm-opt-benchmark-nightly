inline.NumInlined: 989
inline.NumDeleted: 456
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK31ProtocolHierarchyTreeWidgetItem7colDataEi:bb.a
bb.n:                                             ; preds = %bb.a
  %i.x = getelementptr i8, ptr %1, i64 136
  %i.y = load i32, ptr %i.x, align 8
  tail call void @_ZN8QVariantC1Ej(ptr noundef align 8 dereferenceable_or_null(32) %0, i32 noundef %i.y)
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  %i.z = getelementptr i8, ptr %1, i64 168
  %i.aa = load double, ptr %i.z, align 8
  tail call void @_ZN8QVariantC1Ed(ptr noundef align 8 dereferenceable_or_null(32) %0, double noundef %i.aa)
  br label %bb.r

bb.p:                                             ; preds = %bb.a
  %i.ab = getelementptr i8, ptr %1, i64 124
  %i.ac = load i32, ptr %i.ab, align 4
  tail call void @_ZN8QVariantC1Ej(ptr noundef align 8 dereferenceable_or_null(32) %0, i32 noundef %i.ac)
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(32) %0, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %i.ad, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZN7QStringD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListI8QVariantED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI8QVariantED2Ev.exit, label %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i

_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i: ; preds = %bb.a
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN17QArrayDataPointerI8QVariantED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.idx.i.i = shl i64 %i.f, 5                     ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %.idx.i.i
  %.not4.i.i.i.i.i = icmp eq i64 %.idx.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  tail call void @_ZN8QVariantD1Ev(ptr noundef align 8 dead_on_return(32) dereferenceable_or_null(32) %.05.i.i.i.i.i) #23
  %i.h = getelementptr i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !38

_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %i.i = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.i, i64 noundef 32, i64 noundef 8) #23
  br label %_ZN17QArrayDataPointerI8QVariantED2Ev.exit

_ZN17QArrayDataPointerI8QVariantED2Ev.exit:       ; preds = %bb.a, %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QTextStreamC1EP7QString6QFlagsIN13QIODeviceBase12OpenModeFlagEE(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef, i32) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN23QTreeWidgetItemIteratorC1EP11QTreeWidget6QFlagsINS_12IteratorFlagEE(ptr noundef align 8 dereferenceable_or_null(20), ptr noundef, i32) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QVariantC1ERKS_(ptr noundef align 8 dereferenceable_or_null(32), ptr noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK8QVariant8toStringEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate17QForeachContainerI5QListI8QVariantEED2Ev(ptr noundef align 8 dead_on_return(44) dereferenceable_or_null(44) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZN5QListI8QVariantED2Ev.exit, label %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i.i

_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i.i: ; preds = %bb.a
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.b, 1
  br i1 %.not.i.i, label %bb.b, label %_ZN5QListI8QVariantED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i.i
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.idx.i.i.i = shl i64 %i.f, 5                   ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  tail call void @_ZN8QVariantD1Ev(ptr noundef align 8 dead_on_return(32) dereferenceable_or_null(32) %.05.i.i.i.i.i.i) #23
  %i.h = getelementptr i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !38

_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %i.i = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.i, i64 noundef 32, i64 noundef 8) #23
  br label %_ZN5QListI8QVariantED2Ev.exit

_ZN5QListI8QVariantED2Ev.exit:                    ; preds = %bb.a, %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i.i, %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(20) ptr @_ZN23QTreeWidgetItemIteratorppEv(ptr noundef align 8 dereferenceable_or_null(20)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListI7QStringED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI7QStringED2Ev.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i:  ; preds = %bb.a
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN17QArrayDataPointerI7QStringED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.idx.i.i = mul i64 %i.f, 24                    ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %.idx.i.i
  %.not4.i.i.i.i.i = icmp eq i64 %.idx.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i, align 8    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i.i.i, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.j, i64 noundef 2, i64 noundef 8) #23
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i:       ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.k = getelementptr i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !40

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i, %bb.b
  %i.l = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 24, i64 noundef 8) #23
  br label %_ZN17QArrayDataPointerI7QStringED2Ev.exit

_ZN17QArrayDataPointerI7QStringED2Ev.exit:        ; preds = %bb.a, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZN15QGuiApplication9clipboardEv() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QClipboard7setTextERK7QStringNS_4ModeE(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QTextStream7readAllEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(16)) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN23QTreeWidgetItemIteratorD1Ev(ptr noundef align 8 dead_on_return(20) dereferenceable_or_null(20)) unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN11QTextStreamD1Ev(ptr noundef align 8 dead_on_return(16) dereferenceable_or_null(16)) unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEPKc(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN23ProtocolHierarchyDialog32on_actionCopyProtoList_triggeredEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(256) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QString, align 8             ; 9 uses
  %2 = alloca %class.QTextStream, align 8         ; 9 uses
  %3 = alloca %class.QSetIterator, align 8        ; 10 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZN11QTextStreamC1EP7QString6QFlagsIN13QIODeviceBase12OpenModeFlagEE(ptr noundef nonnull align 8 dereferenceable_or_null(16) %2, ptr noundef nonnull %1, i32 16)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  store ptr %i.b, ptr %3, align 8
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  %.not.i.i.i.i = icmp eq i32 %i.c, -1
  br i1 %.not.i.i.i.i, label %_ZN4QSetI7QStringEC2ERKS1_.exit.thread.i, label %_ZN4QSetI7QStringEC2ERKS1_.exit.i

_ZN4QSetI7QStringEC2ERKS1_.exit.i:                ; preds = %bb.c
  %i.d = atomicrmw add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %3, align 8, !noalias !71 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %.not.i.i2.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i2.i, label %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread.preheader, label %_ZN4QSetI7QStringEC2ERKS1_.exit.thread.i

_ZN4QSetI7QStringEC2ERKS1_.exit.thread.i:         ; preds = %bb.c, %_ZN4QSetI7QStringEC2ERKS1_.exit.i
  %.pr8.i = phi ptr [ %.pr.pre.i, %_ZN4QSetI7QStringEC2ERKS1_.exit.i ], [ %i.b, %bb.c ] ; 4 uses
  %i.e = getelementptr i8, ptr %.pr8.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !71 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noalias !71
  %.not.i.i.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZN12QSetIteratorI7QStringEC2ERK4QSetIS0_E.exit.a

bb.d:                                             ; preds = %_ZN4QSetI7QStringEC2ERKS1_.exit.thread.i
  %i.h = getelementptr i8, ptr %.pr8.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noalias !71 ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread.preheader, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.k = add nuw i64 %i.m, 1                      ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.i
  br i1 %i.l, label %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread.preheader, label %.lr.ph, !llvm.loop !74

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.m = phi i64 [ %i.k, %bb.e ], [ 1, %bb.d ]    ; 4 uses
  %i.n = lshr i64 %i.m, 7
  %i.o = getelementptr [144 x i8], ptr %i.f, i64 %i.n
  %i.p = and i64 %i.m, 127
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !71
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_ZN12QSetIteratorI7QStringEC2ERK4QSetIS0_E.exit.a, !llvm.loop !74

_ZN12QSetIteratorI7QStringEC2ERK4QSetIS0_E.exit.a: ; preds = %.lr.ph, %_ZN4QSetI7QStringEC2ERKS1_.exit.thread.i
  %.sroa.4.0.i.i.i.ph = phi i64 [ 0, %_ZN4QSetI7QStringEC2ERKS1_.exit.thread.i ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %.pr8.i, ptr %i.s, align 8, !alias.scope !71
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i64 %.sroa.4.0.i.i.i.ph, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !71
  br label %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread

_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread.preheader: ; preds = %bb.e, %bb.d, %bb.b, %_ZN4QSetI7QStringEC2ERKS1_.exit.i
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %._crit_edge

thread-pre-split:                                 ; preds = %.loopexit
  %.pr = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.t = icmp ne ptr %.pr, null
  %i.u = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.v = icmp ne i64 %i.u, 0
  %or.cond = select i1 %i.t, i1 true, i1 %i.v
  br i1 %or.cond, label %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread, label %._crit_edge

_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread: ; preds = %_ZN12QSetIteratorI7QStringEC2ERK4QSetIS0_E.exit.a, %thread-pre-split
  %.sroa.4.0.copyload.i33 = phi i64 [ %i.u, %thread-pre-split ], [ %.sroa.4.0.i.i.i.ph, %_ZN12QSetIteratorI7QStringEC2ERK4QSetIS0_E.exit.a ]
  %.sroa.0.0.copyload.i31 = phi ptr [ %.pr, %thread-pre-split ], [ %.pr8.i, %_ZN12QSetIteratorI7QStringEC2ERK4QSetIS0_E.exit.a ]
  %.028 = phi i1 [ false, %thread-pre-split ], [ true, %_ZN12QSetIteratorI7QStringEC2ERK4QSetIS0_E.exit.a ]
  br i1 %.028, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread
  %i.w = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef nonnull align 8 dereferenceable_or_null(16) %2, i8 noundef signext 44)
          to label %._crit_edge29 unwind label %.loopexit26 ; 0 uses

._crit_edge29:                                    ; preds = %bb.f
  %.sroa.0.0.copyload.i.pre = load ptr, ptr %i.s, align 8
  %.sroa.4.0.copyload.i.pre = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit26:                                      ; preds = %bb.f, %.loopexit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.h:                                             ; preds = %._crit_edge29, %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread
  %.sroa.4.0.copyload.i = phi i64 [ %.sroa.4.0.copyload.i.pre, %._crit_edge29 ], [ %.sroa.4.0.copyload.i33, %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread ] ; 3 uses
  %.sroa.0.0.copyload.i = phi ptr [ %.sroa.0.0.copyload.i.pre, %._crit_edge29 ], [ %.sroa.0.0.copyload.i31, %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread ] ; 2 uses
  %i.y = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.z = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 32 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.aa = phi i64 [ %i.ab, %bb.k ], [ %.sroa.4.0.copyload.i, %bb.h ]
  %i.ab = add i64 %i.aa, 1                        ; 5 uses
  store i64 %i.ab, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !75
  %i.ac = load i64, ptr %i.y, align 8, !noalias !75
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(16) %i.s, i8 0, i64 16, i1 false), !noalias !75
  %.pre.i = load ptr, ptr %i.z, align 8
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.z, align 8, !noalias !75 ; 2 uses
  %i.af = lshr i64 %i.ab, 7
  %i.ag = getelementptr [144 x i8], ptr %i.ae, i64 %i.af
  %i.ah = and i64 %i.ab, 127
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !75
  %.not.i.i.i.i.i11 = icmp eq i8 %i.aj, -1
  br i1 %.not.i.i.i.i.i11, label %bb.i, label %.loopexit, !llvm.loop !74

.loopexit:                                        ; preds = %bb.k, %bb.j
  %i.ak = phi ptr [ %.pre.i, %bb.j ], [ %i.ae, %bb.k ]
  %i.al = lshr i64 %.sroa.4.0.copyload.i, 7
  %i.am = getelementptr [144 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = and i64 %.sroa.4.0.copyload.i, 127
  %i.ao = getelementptr i8, ptr %i.am, i64 128
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %i.am, i64 %i.an
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr [24 x i8], ptr %i.ap, i64 %i.as
  %i.au = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(16) %2, ptr noundef align 8 dereferenceable(24) %i.at)
          to label %thread-pre-split unwind label %.loopexit26, !llvm.loop !78 ; 0 uses

._crit_edge:                                      ; preds = %thread-pre-split, %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread.preheader
  %i.av = invoke noundef ptr @_ZN15QGuiApplication9clipboardEv()
          to label %bb.l unwind label %.loopexit.split-lp

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN11QTextStream7readAllEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, ptr noundef nonnull align 8 dereferenceable_or_null(16) %2)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN10QClipboard7setTextERK7QStringNS_4ModeE(ptr noundef align 8 dereferenceable_or_null(16) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 0)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i12, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.n
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.ax, 1
  br i1 %.not.i.i, label %bb.o, label %_ZN7QStringD2Ev.exit

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.ay = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ay, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN5QHashI7QString15QHashDummyValueED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN11QTextStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable_or_null(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.az = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i13, label %_ZN7QStringD2Ev.exit16, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i14

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i14:    ; preds = %_ZN7QStringD2Ev.exit
  %i.ba = atomicrmw sub ptr %i.az, i32 1 acq_rel, align 4
  %.not.i.i15 = icmp eq i32 %i.ba, 1
  br i1 %.not.i.i15, label %bb.p, label %_ZN7QStringD2Ev.exit16

bb.p:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i14
  %i.bb = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bb, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit16

_ZN7QStringD2Ev.exit16:                           ; preds = %_ZN7QStringD2Ev.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i14, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.q:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit20

bb.r:                                             ; preds = %bb.m
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.be = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i17, label %_ZN7QStringD2Ev.exit20, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18:    ; preds = %bb.r
  %i.bf = atomicrmw sub ptr %i.be, i32 1 acq_rel, align 4
  %.not.i.i19 = icmp eq i32 %i.bf, 1
  br i1 %.not.i.i19, label %bb.s, label %_ZN7QStringD2Ev.exit20

bb.s:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18
  %i.bg = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bg, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit20

_ZN7QStringD2Ev.exit20:                           ; preds = %bb.s, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18, %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.q ], [ %i.bd, %bb.r ], [ %i.bd, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18 ], [ %i.bd, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.t

bb.t:                                             ; preds = %.loopexit26, %.loopexit.split-lp, %_ZN7QStringD2Ev.exit20
  %.pn8 = phi { ptr, i32 } [ %.pn, %_ZN7QStringD2Ev.exit20 ], [ %lpad.loopexit, %.loopexit26 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5QHashI7QString15QHashDummyValueED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN11QTextStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable_or_null(16) %2) #23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.g
  %.pn8.pn = phi { ptr, i32 } [ %.pn8, %bb.t ], [ %i.x, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.bh = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i21, label %_ZN7QStringD2Ev.exit24, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i22

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i22:    ; preds = %bb.u
  %i.bi = atomicrmw sub ptr %i.bh, i32 1 acq_rel, align 4
  %.not.i.i23 = icmp eq i32 %i.bi, 1
  br i1 %.not.i.i23, label %bb.v, label %_ZN7QStringD2Ev.exit24

bb.v:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i22
  %i.bj = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bj, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit24

_ZN7QStringD2Ev.exit24:                           ; preds = %bb.u, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i22, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn8.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN23ProtocolHierarchyDialog32on_actionDisableProtos_triggeredEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(256) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QString, align 8             ; 9 uses
  %2 = alloca %class.QByteArray, align 8          ; 9 uses
  %3 = alloca %class.QSetIterator, align 8        ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %class.QString, align 16            ; 13 uses
  %6 = alloca %class.QString, align 16            ; 14 uses
  %7 = alloca %class.QString, align 8             ; 9 uses
  tail call void @proto_disable_all()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  store ptr %i.b, ptr %3, align 8
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread.lr.ph, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  %.not.i.i.i.i = icmp eq i32 %i.c, -1
  br i1 %.not.i.i.i.i, label %_ZN4QSetI7QStringEC2ERKS1_.exit.thread.i, label %_ZN4QSetI7QStringEC2ERKS1_.exit.i

_ZN4QSetI7QStringEC2ERKS1_.exit.i:                ; preds = %bb.b
  %i.d = atomicrmw add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %3, align 8, !noalias !79 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %.not.i.i2.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i2.i, label %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread.lr.ph, label %_ZN4QSetI7QStringEC2ERKS1_.exit.thread.i

_ZN4QSetI7QStringEC2ERKS1_.exit.thread.i:         ; preds = %bb.b, %_ZN4QSetI7QStringEC2ERKS1_.exit.i
  %.pr8.i = phi ptr [ %.pr.pre.i, %_ZN4QSetI7QStringEC2ERKS1_.exit.i ], [ %i.b, %bb.b ] ; 4 uses
  %i.e = getelementptr i8, ptr %.pr8.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !79 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noalias !79
  %.not.i.i.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZN12QSetIteratorI7QStringEC2ERK4QSetIS0_E.exit.a

bb.c:                                             ; preds = %_ZN4QSetI7QStringEC2ERKS1_.exit.thread.i
  %i.h = getelementptr i8, ptr %.pr8.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noalias !79 ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread.lr.ph, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.k = add nuw i64 %i.m, 1                      ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.i
  br i1 %i.l, label %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread.lr.ph, label %.lr.ph, !llvm.loop !74

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.m = phi i64 [ %i.k, %bb.d ], [ 1, %bb.c ]    ; 4 uses
  %i.n = lshr i64 %i.m, 7
  %i.o = getelementptr [144 x i8], ptr %i.f, i64 %i.n
  %i.p = and i64 %i.m, 127
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !79
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZN12QSetIteratorI7QStringEC2ERK4QSetIS0_E.exit.a, !llvm.loop !74

_ZN12QSetIteratorI7QStringEC2ERK4QSetIS0_E.exit.a: ; preds = %.lr.ph, %_ZN4QSetI7QStringEC2ERKS1_.exit.thread.i
  %.sroa.4.0.i.i.i.ph = phi i64 [ 0, %_ZN4QSetI7QStringEC2ERKS1_.exit.thread.i ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %.pr8.i, ptr %i.s, align 8, !alias.scope !79
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 %.sroa.4.0.i.i.i.ph, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !79
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread

_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread.lr.ph: ; preds = %bb.d, %bb.c, %bb.a, %_ZN4QSetI7QStringEC2ERKS1_.exit.i
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %._crit_edge

_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread: ; preds = %_ZN12QSetIteratorI7QStringEC2ERK4QSetIS0_E.exit.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.4.0.copyload.i = phi i64 [ %.sroa.4.0.i.i.i.ph, %_ZN12QSetIteratorI7QStringEC2ERK4QSetIS0_E.exit.a ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.t = phi ptr [ %.pr8.i, %_ZN12QSetIteratorI7QStringEC2ERK4QSetIS0_E.exit.a ], [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %i.v = getelementptr i8, ptr %i.t, i64 32       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread
  %i.w = phi i64 [ %i.x, %bb.g ], [ %.sroa.4.0.copyload.i, %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread ]
  %i.x = add i64 %i.w, 1                          ; 5 uses
  store i64 %i.x, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !82
  %i.y = load i64, ptr %i.u, align 8, !noalias !82
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(16) %i.s, i8 0, i64 16, i1 false), !noalias !82
  %.pre.i = load ptr, ptr %i.v, align 8
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.v, align 8, !noalias !82 ; 2 uses
  %i.ab = lshr i64 %i.x, 7
  %i.ac = getelementptr [144 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = and i64 %i.x, 127
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !82
  %.not.i.i.i.i.i14 = icmp eq i8 %i.af, -1
  br i1 %.not.i.i.i.i.i14, label %bb.e, label %.loopexit, !llvm.loop !74

.loopexit:                                        ; preds = %bb.g, %bb.f
  %i.ag = phi ptr [ %.pre.i, %bb.f ], [ %i.aa, %bb.g ]
  %i.ah = lshr i64 %.sroa.4.0.copyload.i, 7
  %i.ai = getelementptr [144 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = and i64 %.sroa.4.0.copyload.i, 127
  %i.ak = getelementptr i8, ptr %i.ai, i64 128
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr i8, ptr %i.ai, i64 %i.aj
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr [24 x i8], ptr %i.al, i64 %i.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !85
  invoke void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %2, ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.ap)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.loopexit
  invoke void @_ZNK10QByteArray11toStdStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable_or_null(24) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.noexc
  %i.aq = load ptr, ptr %2, align 8, !noalias !85 ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i15, label %bb.l, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i.i:     ; preds = %bb.h
  %i.ar = atomicrmw sub ptr %i.aq, i32 1 acq_rel, align 4
  %.not.i.i.i16 = icmp eq i32 %i.ar, 1
  br i1 %.not.i.i.i16, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i.i
  %i.as = load ptr, ptr %2, align 8, !noalias !85
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.as, i64 noundef 1, i64 noundef 8) #23
  br label %bb.l

bb.j:                                             ; preds = %.noexc
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %2, align 8, !noalias !85 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i2.i, label %_ZN10QByteArrayD2Ev.exit5.i, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i3.i:    ; preds = %bb.j
  %i.av = atomicrmw sub ptr %i.au, i32 1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.av, 1
  br i1 %.not.i.i4.i, label %bb.k, label %_ZN10QByteArrayD2Ev.exit5.i

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i3.i
  %i.aw = load ptr, ptr %2, align 8, !noalias !85
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aw, i64 noundef 1, i64 noundef 8) #23
  br label %_ZN10QByteArrayD2Ev.exit5.i

_ZN10QByteArrayD2Ev.exit5.i:                      ; preds = %bb.k, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i3.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !85
  br label %.body

bb.l:                                             ; preds = %bb.i, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !85
  %i.ax = load ptr, ptr %4, align 8
  %i.ay = invoke zeroext i1 @proto_enable_proto_by_name(ptr noundef %i.ax)
          to label %bb.m unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %4, align 8               ; 2 uses
  %i.ba = icmp eq ptr %i.az, %8
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bb = load i64, ptr %8, align 8
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.pr = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.bd = icmp ne ptr %.pr, null
  %i.be = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.bf = icmp ne i64 %i.be, 0
  %or.cond = select i1 %i.bd, i1 true, i1 %i.bf
  br i1 %or.cond, label %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread, label %._crit_edge, !llvm.loop !88

bb.n:                                             ; preds = %bb.q, %._crit_edge
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.o:                                             ; preds = %.loopexit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %4, align 8               ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %8
  br i1 %i.bk, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.p
  %i.bl = load i64, ptr %8, align 8
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #24
  br label %.body

.body:                                            ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.o, %_ZN10QByteArrayD2Ev.exit5.i
  %.pn11 = phi { ptr, i32 } [ %i.at, %_ZN10QByteArrayD2Ev.exit5.i ], [ %i.bh, %bb.o ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.bi, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.am

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK12QSetIteratorI7QStringE7hasNextEv.exit.thread.lr.ph
  %i.bn = getelementptr i8, ptr %0, i64 160
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = invoke zeroext i1 @enabled_protos_unsaved_changes()
          to label %bb.q unwind label %bb.n

bb.q:                                             ; preds = %._crit_edge
  invoke void @_ZN7QAction10setEnabledEb(ptr noundef align 8 dereferenceable_or_null(16) %i.bo, i1 noundef zeroext %i.bp)
          to label %bb.r unwind label %bb.n

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN23ProtocolHierarchyDialog16staticMetaObjectE, ptr noundef nonnull @.str.26, ptr noundef null, i32 noundef -1)
          to label %_ZN23ProtocolHierarchyDialog2trEPKcS1_i.exit unwind label %bb.ag

_ZN23ProtocolHierarchyDialog2trEPKcS1_i.exit:     ; preds = %bb.r
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, i64 10, ptr nonnull @.str.16)
          to label %.noexc21 unwind label %bb.ah

.noexc21:                                         ; preds = %_ZN23ProtocolHierarchyDialog2trEPKcS1_i.exit
  %i.bq = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZplPKcRK7QString.exit unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %.noexc21
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bs = load ptr, ptr %6, align 16              ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i49, label %.body22, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i50

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i50:    ; preds = %bb.s
  %i.bt = atomicrmw sub ptr %i.bs, i32 1 acq_rel, align 4
  %.not.i.i51 = icmp eq i32 %i.bt, 1
  br i1 %.not.i.i51, label %bb.t, label %.body22

bb.t:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i50
  %i.bu = load ptr, ptr %6, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bu, i64 noundef 2, i64 noundef 8) #23
  br label %.body22

_ZplPKcRK7QString.exit:                           ; preds = %.noexc21
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.bv = load <2 x ptr>, ptr %6, align 16, !noalias !89
  %i.bw = load ptr, ptr %6, align 16, !noalias !89 ; 2 uses
  store <2 x ptr> %i.bv, ptr %5, align 16, !alias.scope !89
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bz = load i64, ptr %i.by, align 16, !noalias !89
  store i64 %i.bz, ptr %i.bx, align 16, !alias.scope !89
  %.not.i.i.i.i24 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i24, label %_ZN7QStringC2ERKS_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZplPKcRK7QString.exit
  %i.ca = atomicrmw add ptr %i.bw, i32 1 acq_rel, align 4, !noalias !89 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit.i

_ZN7QStringC2ERKS_.exit.i:                        ; preds = %bb.u, %_ZplPKcRK7QString.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !89
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %1, i64 12, ptr nonnull @.str.19)
          to label %bb.v unwind label %bb.x, !noalias !89

bb.v:                                             ; preds = %_ZN7QStringC2ERKS_.exit.i
  %i.cb = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN7QStringpLERKS_.exit.i unwind label %bb.y ; 0 uses

_ZN7QStringpLERKS_.exit.i:                        ; preds = %bb.v
  %i.cc = load ptr, ptr %1, align 8, !noalias !89 ; 2 uses
  %.not.i.i.i5.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i5.i, label %bb.ab, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %_ZN7QStringpLERKS_.exit.i
  %i.cd = atomicrmw sub ptr %i.cc, i32 1 acq_rel, align 4
  %.not.i.i.i25 = icmp eq i32 %i.cd, 1
  br i1 %.not.i.i.i25, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.ce = load ptr, ptr %1, align 8, !noalias !89
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ce, i64 noundef 2, i64 noundef 8) #23
  br label %bb.ab

bb.x:                                             ; preds = %_ZN7QStringC2ERKS_.exit.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit9.i

bb.y:                                             ; preds = %bb.v
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ch = load ptr, ptr %1, align 8, !noalias !89 ; 2 uses
  %.not.i.i.i6.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i6.i, label %_ZN7QStringD2Ev.exit9.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7.i:   ; preds = %bb.y
  %i.ci = atomicrmw sub ptr %i.ch, i32 1 acq_rel, align 4
  %.not.i.i8.i = icmp eq i32 %i.ci, 1
  br i1 %.not.i.i8.i, label %bb.z, label %_ZN7QStringD2Ev.exit9.i

bb.z:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7.i
  %i.cj = load ptr, ptr %1, align 8, !noalias !89
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cj, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit9.i

_ZN7QStringD2Ev.exit9.i:                          ; preds = %bb.z, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7.i, %bb.y, %bb.x
  %.pn.i = phi { ptr, i32 } [ %i.cf, %bb.x ], [ %i.cg, %bb.y ], [ %i.cg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7.i ], [ %i.cg, %bb.z ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !89
  %i.ck = load ptr, ptr %5, align 16              ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i53, label %.body26, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54:    ; preds = %_ZN7QStringD2Ev.exit9.i
  %i.cl = atomicrmw sub ptr %i.ck, i32 1 acq_rel, align 4
  %.not.i.i55 = icmp eq i32 %i.cl, 1
  br i1 %.not.i.i55, label %bb.aa, label %.body26

bb.aa:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54
  %i.cm = load ptr, ptr %5, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cm, i64 noundef 2, i64 noundef 8) #23
  br label %.body26

bb.ab:                                            ; preds = %bb.w, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %_ZN7QStringpLERKS_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !89
  %i.cn = load ptr, ptr %6, align 16              ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i28, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.ab
  %i.co = atomicrmw sub ptr %i.cn, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.co, 1
  br i1 %.not.i.i, label %bb.ac, label %_ZN7QStringD2Ev.exit

bb.ac:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.cp = load ptr, ptr %6, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cp, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.ab, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.ac
  %i.cq = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i29, label %_ZN7QStringD2Ev.exit32, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i30

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i30:    ; preds = %_ZN7QStringD2Ev.exit
  %i.cr = atomicrmw sub ptr %i.cq, i32 1 acq_rel, align 4
  %.not.i.i31 = icmp eq i32 %i.cr, 1
  br i1 %.not.i.i31, label %bb.ad, label %_ZN7QStringD2Ev.exit32

bb.ad:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i30
  %i.cs = load ptr, ptr %7, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cs, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit32

_ZN7QStringD2Ev.exit32:                           ; preds = %_ZN7QStringD2Ev.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i30, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ct = getelementptr i8, ptr %0, i64 144
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr i8, ptr %i.cu, i64 56
  %i.cw = load ptr, ptr %i.cv, align 8
  invoke void @_ZN6QLabel7setTextERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ae unwind label %bb.ak

bb.ae:                                            ; preds = %_ZN7QStringD2Ev.exit32
  %i.cx = load ptr, ptr %5, align 16              ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i33, label %_ZN7QStringD2Ev.exit36, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i34

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i34:    ; preds = %bb.ae
  %i.cy = atomicrmw sub ptr %i.cx, i32 1 acq_rel, align 4
  %.not.i.i35 = icmp eq i32 %i.cy, 1
  br i1 %.not.i.i35, label %bb.af, label %_ZN7QStringD2Ev.exit36

bb.af:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i34
  %i.cz = load ptr, ptr %5, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cz, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit36

_ZN7QStringD2Ev.exit36:                           ; preds = %bb.ae, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i34, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN5QHashI7QString15QHashDummyValueED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.ag:                                            ; preds = %bb.r
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit44

bb.ah:                                            ; preds = %_ZN23ProtocolHierarchyDialog2trEPKcS1_i.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body22

.body26:                                          ; preds = %bb.aa, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54, %_ZN7QStringD2Ev.exit9.i
  %i.dc = load ptr, ptr %6, align 16              ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i37, label %.body22, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i38

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i38:    ; preds = %.body26
  %i.dd = atomicrmw sub ptr %i.dc, i32 1 acq_rel, align 4
  %.not.i.i39 = icmp eq i32 %i.dd, 1
end_hunk_0
