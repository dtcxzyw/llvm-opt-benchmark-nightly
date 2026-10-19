Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/info_proxy_model?download=true
inline.NumInlined: 328
inline.NumDeleted: 185
begin_hunk_0_@_ZN17QArrayDataPointerI7QStringE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE:bb.a
_ZNK17QArrayDataPointerI7QStringE22constAllocatedCapacityEv.exit.thread: ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = load i64, ptr %i.b, align 8              ; 2 uses
  %.sroa.speculated45 = tail call i64 @llvm.smax.i64(i64 %i.h, i64 %i.g)
  %i.i = add i64 %.sroa.speculated45, %2
  %i.j = icmp eq i32 %3, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = add i64 %i.m, 23
  %i.o = and i64 %i.n, -8
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.p, %i.o                       ; 2 uses
  br i1 %i.j, label %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit.i, label %bb.b

_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit.i: ; preds = %_ZNK17QArrayDataPointerI7QStringE22constAllocatedCapacityEv.exit.thread
  %.neg4.i.neg = sdiv exact i64 %i.q, 24
  %.neg3.i.neg = sub i64 %i.h, %i.g
  %.neg50 = add i64 %.neg3.i.neg, %.neg4.i.neg
  br label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.thread

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE22constAllocatedCapacityEv.exit.thread
  %.neg = sdiv exact i64 %i.q, -24
  br label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.thread

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.thread: ; preds = %bb.b, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit.i
  %.ph.neg = phi i64 [ %.neg, %bb.b ], [ %.neg50, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit.i ]
  %i.r = add i64 %i.i, %.ph.neg                   ; 2 uses
  %i.s = getelementptr i8, ptr %i.c, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 1
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %_ZNK17QArrayDataPointerI7QStringE22constAllocatedCapacityEv.exit31, label %bb.c

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.thread
  %spec.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.r, i64 %i.g)
  br label %_ZNK17QArrayDataPointerI7QStringE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerI7QStringE22constAllocatedCapacityEv.exit31: ; preds = %bb.c, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.thread, %_ZNK17QArrayDataPointerI7QStringE22constAllocatedCapacityEv.exit
  %i.v = phi i64 [ %i.e, %_ZNK17QArrayDataPointerI7QStringE22constAllocatedCapacityEv.exit ], [ %spec.select.i.i, %bb.c ], [ %i.r, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.thread ] ; 2 uses
  %i.w = phi i64 [ 0, %_ZNK17QArrayDataPointerI7QStringE22constAllocatedCapacityEv.exit ], [ %i.g, %bb.c ], [ %i.g, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.thread ]
  %i.x = icmp sle i64 %i.v, %i.w
  %i.y = zext i1 %i.x to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.z = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8, i64 noundef %i.v, i32 noundef %i.y) #14 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.z, i64 8) ]
  %i.aa = load ptr, ptr %i.a, align 8             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not = icmp ne ptr %i.aa, null
  %i.ab = icmp ne ptr %i.z, null
  %i.ac = and i1 %i.ab, %.not
  br i1 %i.ac, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE22constAllocatedCapacityEv.exit31
  %i.ad = icmp eq i32 %3, 1
  br i1 %i.ad, label %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %1, align 8               ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZNK17QArrayDataPointerI7QStringE5flagsEv.exit, label %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33.thread

_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33.thread: ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = add i64 %i.ai, 23
  %i.ak = and i64 %i.aj, -8
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.al, %i.ak
  %i.an = getelementptr i8, ptr %i.z, i64 %i.am
  br label %bb.f

_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33: ; preds = %bb.d
  %i.ao = getelementptr i8, ptr %i.aa, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = load i64, ptr %i.b, align 8
  %i.ar = add i64 %2, %i.aq
  %i.as = sub i64 %i.ap, %i.ar
  %i.at = sdiv i64 %i.as, 2
  %i.au = call noundef i64 @llvm.smax.i64(i64 %i.at, i64 0)
  %.pr.pre = load ptr, ptr %1, align 8            ; 2 uses
  %i.av = getelementptr [24 x i8], ptr %i.z, i64 %i.au
  %i.aw = getelementptr [24 x i8], ptr %i.av, i64 %2 ; 2 uses
  %.not.i34 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i34, label %_ZNK17QArrayDataPointerI7QStringE5flagsEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33.thread, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33
  %i.ax = phi ptr [ %i.an, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33.thread ], [ %i.aw, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33 ]
  %.pr62 = phi ptr [ %i.ae, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33.thread ], [ %.pr.pre, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33 ]
  %i.ay = getelementptr i8, ptr %.pr62, i64 4
  %i.az = load i32, ptr %i.ay, align 4
  br label %_ZNK17QArrayDataPointerI7QStringE5flagsEv.exit

_ZNK17QArrayDataPointerI7QStringE5flagsEv.exit:   ; preds = %bb.e, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33, %bb.f
  %i.ba = phi ptr [ %i.ax, %bb.f ], [ %i.aw, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33 ], [ %i.z, %bb.e ]
  %.sroa.0.0.i = phi i32 [ %i.az, %bb.f ], [ 0, %_ZNK17QArrayDataPointerI7QStringE16freeSpaceAtBeginEv.exit33 ], [ 0, %bb.e ]
  %i.bb = getelementptr i8, ptr %i.aa, i64 4
  store i32 %.sroa.0.0.i, ptr %i.bb, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZNK17QArrayDataPointerI7QStringE22constAllocatedCapacityEv.exit31, %_ZNK17QArrayDataPointerI7QStringE5flagsEv.exit
  %.sink = phi ptr [ %i.ba, %_ZNK17QArrayDataPointerI7QStringE5flagsEv.exit ], [ %i.z, %_ZNK17QArrayDataPointerI7QStringE22constAllocatedCapacityEv.exit31 ]
  store ptr %i.aa, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bd, align 8
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare void @_Z9qBadAllocv() local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid
declare { ptr, ptr } @_ZN10QArrayData19reallocateUnalignedEPS_PvxxNS_16AllocationOptionE(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_Z13qvariant_castI5QFontET_RK8QVariant(ptr dead_on_unwind noalias writable sret(%class.QFont) align 8 %0, ptr noundef align 8 dereferenceable(32) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QMetaType, align 8           ; 6 uses
  %3 = alloca %class.QMetaType, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, -4                         ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.d, ptr %2, align 8
  store ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI5QFontE8metaTypeE, ptr %3, align 8
  %i.e = icmp eq i64 %i.c, ptrtoint (ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI5QFontE8metaTypeE to i64)
  br i1 %i.e, label %_Zeq9QMetaTypeS_.exit.thread, label %bb.b

_Zeq9QMetaTypeS_.exit.thread:                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_Zeq9QMetaTypeS_.exit.thread11, label %bb.c

_Zeq9QMetaTypeS_.exit.thread11:                   ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.d, i64 12
  %i.g = load atomic i32, ptr %i.f monotonic, align 4 ; 2 uses
  %.not6.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not6.not.i.i, label %bb.d, label %_ZNK9QMetaType2idEi.exit.i

bb.d:                                             ; preds = %bb.c
  %i.h = call noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %2)
  br label %_ZNK9QMetaType2idEi.exit.i

_ZNK9QMetaType2idEi.exit.i:                       ; preds = %bb.d, %bb.c
  %.1.i.i = phi i32 [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI5QFontE8metaTypeE, i64 12) monotonic, align 4 ; 2 uses
  %.not6.not.i7.i = icmp eq i32 %i.i, 0
  br i1 %.not6.not.i7.i, label %bb.e, label %_Zeq9QMetaTypeS_.exit

bb.e:                                             ; preds = %_ZNK9QMetaType2idEi.exit.i
  %i.j = call noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %3)
  br label %_Zeq9QMetaTypeS_.exit

_Zeq9QMetaTypeS_.exit:                            ; preds = %_ZNK9QMetaType2idEi.exit.i, %bb.e
  %.1.i8.i = phi i32 [ %i.j, %bb.e ], [ %i.i, %_ZNK9QMetaType2idEi.exit.i ]
  %i.k = icmp eq i32 %.1.i.i, %.1.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_Zeq9QMetaTypeS_.exit.thread, %_Zeq9QMetaTypeS_.exit
  call void @_ZN5QFontC1ERKS_(ptr noundef align 8 dereferenceable_or_null(12) %0, ptr noundef align 8 dereferenceable(12) %1)
  br label %bb.k

bb.g:                                             ; preds = %_Zeq9QMetaTypeS_.exit.thread11, %_Zeq9QMetaTypeS_.exit
  call void @_ZN5QFontC1Ev(ptr noundef align 8 dereferenceable_or_null(12) %0)
  %i.l = invoke ptr @_ZNK8QVariant8metaTypeEv(ptr noundef align 8 dereferenceable_or_null(32) %1)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.m = load i64, ptr %i.a, align 8
  %i.n = and i64 %i.m, 1
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %_ZNK8QVariant9constDataEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr i8, ptr %i.o, i64 %i.r
  br label %_ZNK8QVariant9constDataEv.exit

_ZNK8QVariant9constDataEv.exit:                   ; preds = %bb.i, %bb.h
  %i.t = phi ptr [ %i.s, %bb.i ], [ %1, %bb.h ]
  %i.u = invoke noundef zeroext i1 @_ZN9QMetaType7convertES_PKvS_Pv(ptr %i.l, ptr noundef %i.t, ptr nonnull @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI5QFontE8metaTypeE, ptr noundef %0)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %_ZNK8QVariant9constDataEv.exit, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QFontD1Ev(ptr noundef align 8 dead_on_return(12) dereferenceable_or_null(12) %0) #14
  resume { ptr, i32 } %i.v

bb.k:                                             ; preds = %_ZNK8QVariant9constDataEv.exit, %bb.f
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN5QFontC1ERKS_(ptr noundef align 8 dereferenceable_or_null(12), ptr noundef align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN5QFontC1Ev(ptr noundef align 8 dereferenceable_or_null(12)) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN9QMetaType7convertES_PKvS_Pv(ptr, ptr noundef, ptr, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @_ZNK8QVariant8metaTypeEv(ptr noundef align 8 dereferenceable_or_null(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef ptr @_ZN9QtPrivate17MetaObjectForTypeI5QFontvE18metaObjectFunctionEPKNS_18QMetaTypeInterfaceE(ptr noundef %0) #2 comdat align 2 {
bb.a:
  ret ptr @_ZN5QFont16staticMetaObjectE
}

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr hidden void @_ZZN9QtPrivate16QMetaTypeForTypeI5QFontE13getDefaultCtrEvENUlPKNS_18QMetaTypeInterfaceEPvE_8__invokeES5_S6_(ptr noundef %0, ptr noundef %1) #11 comdat align 2 {
bb.a:
  tail call void @_ZN5QFontC1Ev(ptr noundef align 8 dereferenceable_or_null(12) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr hidden void @_ZZN9QtPrivate16QMetaTypeForTypeI5QFontE10getCopyCtrEvENUlPKNS_18QMetaTypeInterfaceEPvPKvE_8__invokeES5_S6_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11 comdat align 2 {
bb.a:
  tail call void @_ZN5QFontC1ERKS_(ptr noundef align 8 dereferenceable_or_null(12) %1, ptr noundef align 8 dereferenceable(12) %2)
  ret void
}

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr hidden void @_ZZN9QtPrivate16QMetaTypeForTypeI5QFontE10getMoveCtrEvENUlPKNS_18QMetaTypeInterfaceEPvS6_E_8__invokeES5_S6_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11 comdat align 2 {
bb.a:
  tail call void @_ZN5QFontC1ERKS_(ptr noundef align 8 dereferenceable_or_null(12) %1, ptr noundef align 8 dereferenceable(12) %2)
  ret void
}

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr hidden void @_ZZN9QtPrivate16QMetaTypeForTypeI5QFontE7getDtorEvENUlPKNS_18QMetaTypeInterfaceEPvE_8__invokeES5_S6_(ptr noundef %0, ptr noundef %1) #11 comdat align 2 {
bb.a:
  tail call void @_ZN5QFontD1Ev(ptr noundef align 8 dead_on_return(12) dereferenceable_or_null(12) %1) #14
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZN9QtPrivate24QEqualityOperatorForTypeI5QFontLb1EE6equalsEPKNS_18QMetaTypeInterfaceEPKvS7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5QFonteqERKS_(ptr noundef align 8 dereferenceable_or_null(12) %1, ptr noundef align 8 dereferenceable(12) %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZN9QtPrivate24QLessThanOperatorForTypeI5QFontLb1EE8lessThanEPKNS_18QMetaTypeInterfaceEPKvS7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5QFontltERKS_(ptr noundef align 8 dereferenceable_or_null(12) %1, ptr noundef align 8 dereferenceable(12) %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate27QDebugStreamOperatorForTypeI5QFontLb1EE11debugStreamEPKNS_18QMetaTypeInterfaceER6QDebugPKv(ptr noundef %0, ptr noundef align 8 dereferenceable(8) %1, ptr noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QDebug, align 8              ; 2 uses
  %4 = alloca %class.QDebug, align 8              ; 4 uses
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 40       ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8
  invoke void @_Zls6QDebugRK5QFont(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %3, ptr noundef nonnull align 8 %4, ptr noundef align 8 dereferenceable(12) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %3) #14
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #14
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #14
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate26QDataStreamOperatorForTypeI5QFontLb1EE13dataStreamOutEPKNS_18QMetaTypeInterfaceER11QDataStreamPKv(ptr noundef %0, ptr noundef align 8 dereferenceable(32) %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef align 8 dereferenceable(32) ptr @_ZlsR11QDataStreamRK5QFont(ptr noundef align 8 dereferenceable(32) %1, ptr noundef align 8 dereferenceable(12) %2) ; 0 uses
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate26QDataStreamOperatorForTypeI5QFontLb1EE12dataStreamInEPKNS_18QMetaTypeInterfaceER11QDataStreamPv(ptr noundef %0, ptr noundef align 8 dereferenceable(32) %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef align 8 dereferenceable(32) ptr @_ZrsR11QDataStreamR5QFont(ptr noundef align 8 dereferenceable(32) %1, ptr noundef align 8 dereferenceable(12) %2) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZNK5QFonteqERKS_(ptr noundef align 8 dereferenceable_or_null(12), ptr noundef align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZNK5QFontltERKS_(ptr noundef align 8 dereferenceable_or_null(12), ptr noundef align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_Zls6QDebugRK5QFont(ptr dead_on_unwind writable sret(%class.QDebug) align 8, ptr noundef align 8, ptr noundef align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN6QDebugD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(32) ptr @_ZlsR11QDataStreamRK5QFont(ptr noundef align 8 dereferenceable(32), ptr noundef align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(32) ptr @_ZrsR11QDataStreamR5QFont(ptr noundef align 8 dereferenceable(32), ptr noundef align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate12QPodArrayOpsIiE7emplaceIJRiEEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %1, ptr noundef align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit:   ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit
  %i.d = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %1, %i.e
  br i1 %i.f, label %_ZNK17QArrayDataPointerIiE14freeSpaceAtEndEv.exit, label %bb.d

_ZNK17QArrayDataPointerIiE14freeSpaceAtEndEv.exit: ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.a to i64
  %i.l = add i64 %i.k, 23
  %i.m = and i64 %i.l, -8
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.n, %i.m
  %i.p = ashr exact i64 %i.o, 2
  %i.q = add i64 %i.p, %1
  %.not = icmp eq i64 %i.h, %i.q
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIiE14freeSpaceAtEndEv.exit
  %i.r = getelementptr [4 x i8], ptr %i.j, i64 %1
  %i.s = load i32, ptr %2, align 4
  store i32 %i.s, ptr %i.r, align 4
  %i.t = load i64, ptr %i.d, align 8
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.d, align 8
  br label %bb.i

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerIiE14freeSpaceAtEndEv.exit, %bb.b
  %i.v = icmp eq i64 %1, 0
  br i1 %i.v, label %_ZNK17QArrayDataPointerIiE16freeSpaceAtBeginEv.exit, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread

_ZNK17QArrayDataPointerIiE16freeSpaceAtBeginEv.exit: ; preds = %bb.d
  %i.w = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = ptrtoint ptr %i.a to i64
  %i.z = add i64 %i.y, 23
  %i.aa = and i64 %i.z, -8
  %i.ab = ptrtoint ptr %i.x to i64
  %.not13 = icmp eq i64 %i.aa, %i.ab
  br i1 %.not13, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerIiE16freeSpaceAtBeginEv.exit
  %i.ac = getelementptr i8, ptr %i.x, i64 -4
  %i.ad = load i32, ptr %2, align 4
  store i32 %i.ad, ptr %i.ac, align 4
  %i.ae = load ptr, ptr %i.w, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  store ptr %i.af, ptr %i.w, align 8
  %i.ag = load i64, ptr %i.d, align 8
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.d, align 8
  br label %bb.i
end_hunk_0
