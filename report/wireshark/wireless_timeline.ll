Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/wireless_timeline?download=true
inline.NumInlined: 817
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16WirelessTimeline23captureFileReadFinishedEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN7QStringD2Ev.exit69

bb.w:                                             ; preds = %_ZN7QStringD2Ev.exit49
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bg = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i62, label %_ZN7QStringD2Ev.exit65, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63:    ; preds = %bb.w
  %i.bh = atomicrmw add ptr %i.bg, i32 -1 acq_rel, align 4
  %.not.i.i64 = icmp eq i32 %i.bh, 1
  br i1 %.not.i.i64, label %bb.x, label %_ZN7QStringD2Ev.exit65

bb.x:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63
  %i.bi = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bi, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN7QStringD2Ev.exit65

_ZN7QStringD2Ev.exit65:                           ; preds = %bb.w, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.bj = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i66, label %_ZN7QStringD2Ev.exit69, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67:    ; preds = %_ZN7QStringD2Ev.exit65
  %i.bk = atomicrmw add ptr %i.bj, i32 -1 acq_rel, align 4
  %.not.i.i68 = icmp eq i32 %i.bk, 1
  br i1 %.not.i.i68, label %bb.y, label %_ZN7QStringD2Ev.exit69

bb.y:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67
  %i.bl = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bl, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN7QStringD2Ev.exit69

_ZN7QStringD2Ev.exit69:                           ; preds = %bb.y, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67, %_ZN7QStringD2Ev.exit65, %_ZN7QStringD2Ev.exit61
  %.pn = phi { ptr, i32 } [ %i.bb, %_ZN7QStringD2Ev.exit61 ], [ %i.bf, %_ZN7QStringD2Ev.exit65 ], [ %i.bf, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67 ], [ %i.bf, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.z

.critedge:                                        ; preds = %bb.c, %.preheader
  %i.bm = load ptr, ptr %i.c, align 8
  %i.bn = tail call noundef ptr @g_hash_table_lookup(ptr noundef %i.bm, ptr noundef nonnull inttoptr (i64 1 to ptr))
  %i.bo = getelementptr i8, ptr %0, i64 864       ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @cfile, i64 72), align 8
  %i.bq = load ptr, ptr %i.c, align 8
  %i.br = zext i32 %i.bp to i64
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = tail call noundef ptr @g_hash_table_lookup(ptr noundef %i.bq, ptr noundef %i.bs) ; 2 uses
  %i.bu = getelementptr i8, ptr %0, i64 872
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = load ptr, ptr %i.bo, align 8
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr i8, ptr %0, i64 840
  store i64 %i.bx, ptr %i.by, align 8
  %i.bz = getelementptr i8, ptr %i.bt, i64 24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr i8, ptr %0, i64 848
  store i64 %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr i8, ptr %0, i64 40
  store double 0.000000e+00, ptr %i.cc, align 8
  tail call void @_ZN7QWidget4showEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  tail call void @_ZN16WirelessTimeline20selectedFrameChangedE5QListIiE(ptr noundef align 8 dereferenceable_or_null(896) %0, ptr nonnull align 8 poison)
  tail call void @_ZN7QWidget6updateEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZN7QStringD2Ev.exit32, %_ZN7QStringD2Ev.exit57, %bb.a, %bb.b, %.critedge
  ret void

bb.z:                                             ; preds = %_ZN7QStringD2Ev.exit44, %_ZN7QStringD2Ev.exit69
  %.pn23 = phi { ptr, i32 } [ %.pn, %_ZN7QStringD2Ev.exit69 ], [ %.pn20, %_ZN7QStringD2Ev.exit44 ]
  resume { ptr, i32 } %.pn23
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_size(ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: null_pointer_is_valid
declare void @_ZN15MainApplication10pushStatusENS_10StatusInfoERK7QStringS3_(ptr noundef align 8 dereferenceable_or_null(168), i32 noundef, ptr noundef align 8 dereferenceable(24), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget4showEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16WirelessTimeline14appInitializedEv(ptr noundef align 8 dereferenceable_or_null(896) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %1 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %i.c = load ptr, ptr @mainApp, align 8
  %i.d = tail call noundef ptr @_ZN15MainApplication10mainWindowEv(ptr noundef align 8 dereferenceable_or_null(168) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 ptrtoint (ptr @_ZN10MainWindow14framesSelectedE5QListIiE to i64), ptr %i.a, align 8, !noalias !11
  %.fca.1.gep14.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep14.i, align 8, !noalias !11
  store i64 ptrtoint (ptr @_ZN16WirelessTimeline20selectedFrameChangedE5QListIiE to i64), ptr %i.b, align 8, !noalias !11
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !noalias !11
  %i.e = tail call noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #19, !noalias !11 ; 5 uses
  store i32 1, ptr %i.e, align 4, !noalias !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM16WirelessTimelineFv5QListIiEENS_4ListIJS3_EEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.f, align 8, !noalias !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 ptrtoint (ptr @_ZN16WirelessTimeline20selectedFrameChangedE5QListIiE to i64), ptr %i.g, align 8, !noalias !11
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !noalias !11
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %1, ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %i.e, i32 noundef 0, ptr noundef null, ptr noundef @_ZN10MainWindow16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %1) #18
  %i.h = call ptr @register_tap_listener(ptr noundef @.str.2, ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef @_ZN16WirelessTimeline18tap_timeline_resetEPv, ptr noundef @_ZN16WirelessTimeline19tap_timeline_packetEPvP12_packet_infoP12epan_dissectPKvj, ptr noundef null, ptr noundef null) ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8
  call void (ptr, ...) @report_failure(ptr noundef @.str.3, ptr noundef %i.i)
  %i.j = call ptr @g_string_free(ptr noundef nonnull %i.h, i32 noundef 1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZN15MainApplication10mainWindowEv(ptr noundef align 8 dereferenceable_or_null(168)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN10MainWindow14framesSelectedE5QListIiE(ptr noundef align 8 dereferenceable_or_null(392), ptr noundef align 8) #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare ptr @register_tap_listener(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16WirelessTimeline18tap_timeline_resetEPv(ptr noundef %0) #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 888        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_hash_table_destroy(ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN7QWidget4hideEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
  %i.c = tail call ptr @g_hash_table_new(ptr noundef @g_direct_hash, ptr noundef @g_direct_equal)
  store ptr %i.c, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef i32 @_ZN16WirelessTimeline19tap_timeline_packetEPvP12_packet_infoP12epan_dissectPKvj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, i32 %4) #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 888
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i32 %i.d to i64
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call i32 @g_hash_table_insert(ptr noundef %i.b, ptr noundef %i.f, ptr noundef %3) ; 0 uses
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare void @report_failure(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define void @_ZN16WirelessTimeline11resizeEventEP12QResizeEvent(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN16WirelessTimeline8positionEmf(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(896) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %.not = icmp eq i64 %1, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = uitofp i64 %1 to double
  %i.b = getelementptr i8, ptr %0, i64 840
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = uitofp i64 %i.c to double
  %i.e = fsub nnan double %i.a, %i.d
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 20
  %i.i = getelementptr i8, ptr %i.g, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %i.k = load i32, ptr %i.h, align 4
  %i.l = add i32 %i.j, 1
  %i.m = sub i32 %i.l, %i.k
  %i.n = sitofp i32 %i.m to double
  %i.o = fmul double %i.e, %i.n
  %i.p = fpext float %2 to double
  %i.q = fmul double %i.o, %i.p
  %i.r = getelementptr i8, ptr %0, i64 848
  %i.s = load i64, ptr %i.r, align 8
  %i.t = sub i64 %i.s, %i.c
  %i.u = uitofp i64 %i.t to double
  %i.v = fdiv double %i.q, %i.u
  %i.w = fptosi double %i.v to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.w, %bb.b ], [ -100, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16WirelessTimelineC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(896) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %"class.std::function.149", align 8 ; 11 uses
  %3 = alloca %"class.QMetaObject::Connection", align 8 ; 4 uses
  tail call void @_ZN7QWidgetC2EPS_6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %1, i32 0)
  store ptr getelementptr inbounds nuw inrange(-16, 416) (i8, ptr @_ZTV16WirelessTimeline, i64 16), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV16WirelessTimeline, i64 448), ptr %i.b, align 8
  invoke void @_ZN7QWidget9setHiddenEb(ptr noundef align 8 dereferenceable_or_null(40) %0, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40
  store double 1.000000e+00, ptr %i.c, align 8
  invoke void @_ZN7QWidget14setFixedHeightEi(ptr noundef align 8 dereferenceable_or_null(40) %0, i32 noundef 64)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 856
  store i32 1, ptr %i.d, align 8
  invoke void @_ZN7QWidget12setAttributeEN2Qt15WidgetAttributeEb(ptr noundef align 8 dereferenceable_or_null(40) %0, i32 noundef 2, i1 noundef zeroext true)
          to label %_ZN7QWidget16setMouseTrackingEb.exit unwind label %bb.n

_ZN7QWidget16setMouseTrackingEb.exit:             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 48
  %i.f = getelementptr i8, ptr %0, i64 840
  %i.g = getelementptr i8, ptr %0, i64 864
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = invoke ptr @g_hash_table_new(ptr noundef @g_direct_hash, ptr noundef @g_direct_equal)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %_ZN7QWidget16setMouseTrackingEb.exit
  %i.i = getelementptr i8, ptr %0, i64 888
  store ptr %i.h, ptr %i.i, align 8
  %i.j = load ptr, ptr @mainApp, align 8          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.k = getelementptr i8, ptr %i.j, i64 48
  %i.l = load i8, ptr %i.k, align 8, !range !14, !noundef !7
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.p, align 8
  %i.q = ptrtoint ptr %0 to i64
  store i64 %i.q, ptr %2, align 8
  store ptr @"_ZNSt17_Function_handlerIFvvEZN16WirelessTimelineC1EP7QWidgetE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.o, align 8
  store ptr @"_ZNSt17_Function_handlerIFvvEZN16WirelessTimelineC1EP7QWidgetE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.n, align 8
  invoke void @_ZN15MainApplication23whenInitializedDispatchEPK7QObjectSt8functionIFvvEE(ptr noundef align 8 dereferenceable_or_null(168) %i.j, ptr noundef %0, ptr noundef nonnull align 8 %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(32) %2, ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(32) %2, i32 noundef 3)
          to label %bb.m unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #20
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i7.i = icmp eq ptr %i.w, null
  br i1 %.not.i7.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(32) %2, ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(32) %2, i32 noundef 3)
          to label %.body unwind label %bb.k      ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #20
  unreachable

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 ptrtoint (ptr @_ZN15MainApplication14appInitializedEv to i64), ptr %i.a, align 8, !noalias !15
  %.fca.1.gep.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep.i.i, align 8, !noalias !15
  %i.aa = invoke noalias noundef dereferenceable_or_null(24) ptr @_Znwm(i64 noundef 24) #19
          to label %.noexc unwind label %bb.n     ; 4 uses

.noexc:                                           ; preds = %bb.l
  store i32 1, ptr %i.aa, align 4, !noalias !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @"_ZN9QtPrivate18QFunctorSlotObjectIZN16WirelessTimelineC1EP7QWidgetE3$_0Li0ENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb", ptr %i.ab, align 8, !noalias !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %0, ptr %i.ac, align 8, !noalias !15
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %3, ptr noundef align 8 dereferenceable_or_null(168) %i.j, ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef null, ptr noundef %i.aa, i32 noundef 0, ptr noundef null, ptr noundef @_ZN15MainApplication16staticMetaObjectE)
          to label %.noexc5 unwind label %bb.n

.noexc5:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %3) #18
  br label %bb.m

bb.m:                                             ; preds = %.noexc5, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void

bb.n:                                             ; preds = %bb.a, %bb.b, %_ZN7QWidget16setMouseTrackingEb.exit, %bb.c, %.noexc, %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.ad, %bb.n ], [ %i.v, %bb.j ]
  call void @_ZN7QWidgetD2Ev(ptr noundef align 8 dead_on_return(40) dereferenceable_or_null(40) %0) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidgetC2EPS_6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef, i32) unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget9setHiddenEb(ptr noundef align 8 dereferenceable_or_null(40), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget14setFixedHeightEi(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_hash(ptr noundef) #9

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_equal(ptr noundef, ptr noundef) #9

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN7QWidgetD2Ev(ptr noundef align 8 dead_on_return(40) dereferenceable_or_null(40)) unnamed_addr #6

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN16WirelessTimelineD2Ev(ptr noundef align 8 dead_on_return(896) dereferenceable_or_null(896) initializes((0, 8), (16, 24)) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 416) (i8, ptr @_ZTV16WirelessTimeline, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV16WirelessTimeline, i64 448), ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 888
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @g_hash_table_destroy(ptr noundef nonnull %i.c)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN7QWidgetD2Ev(ptr noundef align 8 dead_on_return(40) dereferenceable_or_null(40) %0) #18
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #20
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZThn16_N16WirelessTimelineD1Ev(ptr noundef %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN16WirelessTimelineD1Ev(ptr noundef align 8 dead_on_return(896) dereferenceable_or_null(896) %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN16WirelessTimelineD0Ev(ptr noundef align 8 dereferenceable_or_null(896) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN16WirelessTimelineD1Ev(ptr noundef align 8 dead_on_return(896) dereferenceable_or_null(896) %0) #18
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 896) #21
  ret void
}

; Function Attrs: nobuiltin nounwind null_pointer_is_valid
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZThn16_N16WirelessTimelineD0Ev(ptr noundef %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN16WirelessTimelineD1Ev(ptr noundef align 8 dead_on_return(896) dereferenceable_or_null(896) %i.a) #18, !inline_history !16
  tail call void @_ZdlPvm(ptr noundef align 8 dereferenceable_or_null(896) %i.a, i64 noundef 896) #21, !inline_history !16
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16WirelessTimeline13setPacketListEP10PacketList(ptr noundef align 8 dereferenceable_or_null(896) initializes((64, 72)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 64
  store ptr %1, ptr %i.c, align 8
  %i.d = tail call noundef ptr @_ZNK17QAbstractItemView5modelEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  %i.e = tail call noundef ptr @_ZNK11QMetaObject4castEPK7QObject(ptr noundef align 8 dereferenceable_or_null(56) @_ZN15PacketListModel16staticMetaObjectE, ptr noundef %i.d) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 ptrtoint (ptr @_ZN15PacketListModel22bgColorizationProgressEii to i64), ptr %i.a, align 8, !noalias !19
  %.fca.1.gep12.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep12.i, align 8, !noalias !19
  store i64 ptrtoint (ptr @_ZN16WirelessTimeline22bgColorizationProgressEii to i64), ptr %i.b, align 8, !noalias !19
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !noalias !19
  %i.f = tail call noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #19, !noalias !19 ; 5 uses
  store i32 1, ptr %i.f, align 4, !noalias !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM16WirelessTimelineFviiENS_4ListIJiiEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.g, align 8, !noalias !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 ptrtoint (ptr @_ZN16WirelessTimeline22bgColorizationProgressEii to i64), ptr %i.h, align 8, !noalias !19
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !noalias !19
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %i.f, i32 noundef 0, ptr noundef null, ptr noundef @_ZN15PacketListModel16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %2) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK17QAbstractItemView5modelEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN15PacketListModel22bgColorizationProgressEii(ptr noundef align 8 dereferenceable_or_null(236), i32 noundef, i32 noundef) #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16WirelessTimeline22bgColorizationProgressEii(ptr noundef align 8 dereferenceable_or_null(896) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %3 = alloca %class.QRect, align 4               ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 65536
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 888        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = zext i32 %1 to i64
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = tail call noundef ptr @g_hash_table_lookup(ptr noundef %i.g, ptr noundef %i.i)
  %i.k = add i32 %2, -1
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = zext i32 %i.k to i64
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call noundef ptr @g_hash_table_lookup(ptr noundef %i.l, ptr noundef %i.n)
  %i.p = getelementptr i8, ptr %i.j, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.q, -1
  %.pre.pre = load ptr, ptr %i.a, align 8         ; 6 uses
  br i1 %.not.i, label %_ZN16WirelessTimeline8positionEmf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = uitofp i64 %i.q to double
  %i.s = getelementptr i8, ptr %0, i64 840
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = uitofp i64 %i.t to double
  %i.v = fsub nnan double %i.r, %i.u
  %i.w = getelementptr i8, ptr %.pre.pre, i64 20
  %i.x = getelementptr i8, ptr %.pre.pre, i64 28
  %i.y = load i32, ptr %i.x, align 4
  %i.z = load i32, ptr %i.w, align 4
  %i.aa = add i32 %i.y, 1
  %i.ab = sub i32 %i.aa, %i.z
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fmul double %i.v, %i.ac
  %i.ae = getelementptr i8, ptr %0, i64 848
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = sub i64 %i.af, %i.t
  %i.ah = uitofp i64 %i.ag to double
  %i.ai = fdiv double %i.ad, %i.ah
  %i.aj = fptosi double %i.ai to i32
  br label %_ZN16WirelessTimeline8positionEmf.exit

_ZN16WirelessTimeline8positionEmf.exit:           ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.aj, %bb.c ], [ -100, %bb.b ]
  %i.ak = getelementptr i8, ptr %i.o, i64 24
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %.not.i7 = icmp eq i64 %i.al, -1
  br i1 %.not.i7, label %_ZN16WirelessTimeline8positionEmf.exit9, label %bb.d

bb.d:                                             ; preds = %_ZN16WirelessTimeline8positionEmf.exit
  %i.am = uitofp i64 %i.al to double
  %i.an = getelementptr i8, ptr %0, i64 840
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = uitofp i64 %i.ao to double
  %i.aq = fsub nnan double %i.am, %i.ap
  %i.ar = getelementptr i8, ptr %.pre.pre, i64 20
  %i.as = getelementptr i8, ptr %.pre.pre, i64 28
  %i.at = load i32, ptr %i.as, align 4
  %i.au = load i32, ptr %i.ar, align 4
  %i.av = add i32 %i.at, 1
  %i.aw = sub i32 %i.av, %i.au
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = fmul double %i.aq, %i.ax
  %i.az = getelementptr i8, ptr %0, i64 848
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = sub i64 %i.ba, %i.ao
  %i.bc = uitofp i64 %i.bb to double
  %i.bd = fdiv double %i.ay, %i.bc
  %i.be = fptosi double %i.bd to i32
  br label %_ZN16WirelessTimeline8positionEmf.exit9

_ZN16WirelessTimeline8positionEmf.exit9:          ; preds = %_ZN16WirelessTimeline8positionEmf.exit, %bb.d
  %.0.i8 = phi i32 [ %i.be, %bb.d ], [ -100, %_ZN16WirelessTimeline8positionEmf.exit ]
  %i.bf = getelementptr i8, ptr %.pre.pre, i64 32
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = getelementptr i8, ptr %.pre.pre, i64 24
  %i.bi = load i32, ptr %i.bh, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i32 %.0.i, ptr %3, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.0.i8, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bm = sub i32 %i.bg, %i.bi
  store i32 %i.bm, ptr %i.bl, align 4
  call void @_ZN7QWidget6updateERK5QRect(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN16WirelessTimeline8positionEmf.exit9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16WirelessTimeline9doToolTipEP10wlan_radio6QPointi(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(896) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QString, align 16            ; 5 uses
  %5 = alloca %class.QString, align 16            ; 5 uses
  %6 = alloca %class.QPoint, align 8              ; 3 uses
  %7 = alloca %class.QString, align 8             ; 9 uses
  %8 = alloca %class.QString, align 8             ; 9 uses
  %9 = alloca %class.QString, align 8             ; 11 uses
  %10 = alloca %class.QString, align 16           ; 10 uses
  %11 = alloca %class.QRect, align 16             ; 5 uses
  %12 = alloca %class.QString, align 8            ; 9 uses
  %13 = alloca %class.QString, align 8            ; 9 uses
  %14 = alloca %class.QString, align 8            ; 9 uses
  %15 = alloca %class.QString, align 8            ; 11 uses
  %16 = alloca %class.QString, align 16           ; 10 uses
  %17 = alloca %class.QRect, align 16             ; 5 uses
  store i64 %2, ptr %6, align 8
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %.not.i = icmp eq i64 %i.b, -1
  br i1 %.not.i, label %_ZN16WirelessTimeline8positionEmf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = uitofp i64 %i.b to double
  %i.d = getelementptr i8, ptr %0, i64 840
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = uitofp i64 %i.e to double
  %i.g = fsub nnan double %i.c, %i.f
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 20
  %i.k = getelementptr i8, ptr %i.i, i64 28
  %i.l = load i32, ptr %i.k, align 4
  %i.m = load i32, ptr %i.j, align 4
  %i.n = add i32 %i.l, 1
  %i.o = sub i32 %i.n, %i.m
  %i.p = sitofp i32 %i.o to double
  %i.q = fmul double %i.g, %i.p
  %i.r = getelementptr i8, ptr %0, i64 848
  %i.s = load i64, ptr %i.r, align 8
  %i.t = sub i64 %i.s, %i.e
  %i.u = uitofp i64 %i.t to double
  %i.v = fdiv double %i.q, %i.u
  %i.w = fptosi double %i.v to i32
  br label %_ZN16WirelessTimeline8positionEmf.exit

_ZN16WirelessTimeline8positionEmf.exit:           ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.w, %bb.b ], [ -100, %bb.a ]
  %i.x = icmp slt i32 %3, %.0.i
  br i1 %i.x, label %bb.c, label %bb.s

bb.c:                                             ; preds = %_ZN16WirelessTimeline8positionEmf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store ptr null, ptr %9, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.4, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 24, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %1, i64 32
  %i.ab = load i64, ptr %i.aa, align 8
  invoke void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %8, ptr noundef nonnull align 8 dereferenceable_or_null(24) %9, i64 noundef %i.ab, i32 noundef 0, i32 noundef 10, i16 32)
          to label %_ZNK7QString3argElii5QChar.exit unwind label %bb.k

_ZNK7QString3argElii5QChar.exit:                  ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, i64 2, ptr @.str.5)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZNK7QString3argElii5QChar.exit
  %i.ac = load <2 x ptr>, ptr %5, align 16
  store <2 x ptr> %i.ac, ptr %10, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.af = load i64, ptr %i.ae, align 16
  store i64 %i.af, ptr %i.ad, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 0, i16 32)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 -1>, ptr %11, align 16
  invoke void @_ZN8QToolTip8showTextERK6QPointRK7QStringP7QWidgetRK5QRecti(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef -1)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.ag = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.f
  %i.ah = atomicrmw add ptr %i.ag, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.ah, 1
  br i1 %.not.i.i, label %bb.g, label %_ZN7QStringD2Ev.exit

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.ai = load ptr, ptr %7, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ai, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.f, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.g
  %i.aj = load ptr, ptr %10, align 16             ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i25, label %_ZN7QStringD2Ev.exit28, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26:    ; preds = %_ZN7QStringD2Ev.exit
  %i.ak = atomicrmw add ptr %i.aj, i32 -1 acq_rel, align 4
  %.not.i.i27 = icmp eq i32 %i.ak, 1
  br i1 %.not.i.i27, label %bb.h, label %_ZN7QStringD2Ev.exit28

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26
  %i.al = load ptr, ptr %10, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.al, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN7QStringD2Ev.exit28

_ZN7QStringD2Ev.exit28:                           ; preds = %_ZN7QStringD2Ev.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i26, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.am = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i29, label %_ZN7QStringD2Ev.exit32, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i30

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i30:    ; preds = %_ZN7QStringD2Ev.exit28
  %i.an = atomicrmw add ptr %i.am, i32 -1 acq_rel, align 4
  %.not.i.i31 = icmp eq i32 %i.an, 1
  br i1 %.not.i.i31, label %bb.i, label %_ZN7QStringD2Ev.exit32

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i30
  %i.ao = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ao, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN7QStringD2Ev.exit32

_ZN7QStringD2Ev.exit32:                           ; preds = %_ZN7QStringD2Ev.exit28, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i30, %bb.i
  %i.ap = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i33, label %_ZN17QArrayDataPointerIDsED2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i34

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i34:    ; preds = %_ZN7QStringD2Ev.exit32
  %i.aq = atomicrmw add ptr %i.ap, i32 -1 acq_rel, align 4
  %.not.i.i35 = icmp eq i32 %i.aq, 1
  br i1 %.not.i.i35, label %bb.j, label %_ZN17QArrayDataPointerIDsED2Ev.exit

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i34
  %i.ar = load ptr, ptr %9, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ar, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit

_ZN17QArrayDataPointerIDsED2Ev.exit:              ; preds = %bb.j, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i34, %_ZN7QStringD2Ev.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.al

bb.k:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit50

bb.l:                                             ; preds = %_ZNK7QString3argElii5QChar.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit46

bb.m:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit42

bb.n:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.aw = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i39, label %_ZN7QStringD2Ev.exit42, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i40

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i40:    ; preds = %bb.n
  %i.ax = atomicrmw add ptr %i.aw, i32 -1 acq_rel, align 4
  %.not.i.i41 = icmp eq i32 %i.ax, 1
  br i1 %.not.i.i41, label %bb.o, label %_ZN7QStringD2Ev.exit42

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i40
  %i.ay = load ptr, ptr %7, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ay, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN7QStringD2Ev.exit42

_ZN7QStringD2Ev.exit42:                           ; preds = %bb.o, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i40, %bb.n, %bb.m
  %.pn20 = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.av, %bb.n ], [ %i.av, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i40 ], [ %i.av, %bb.o ] ; 3 uses
  %i.az = load ptr, ptr %10, align 16             ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i43, label %_ZN7QStringD2Ev.exit46, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44:    ; preds = %_ZN7QStringD2Ev.exit42
  %i.ba = atomicrmw add ptr %i.az, i32 -1 acq_rel, align 4
  %.not.i.i45 = icmp eq i32 %i.ba, 1
  br i1 %.not.i.i45, label %bb.p, label %_ZN7QStringD2Ev.exit46

bb.p:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44
  %i.bb = load ptr, ptr %10, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bb, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN7QStringD2Ev.exit46

_ZN7QStringD2Ev.exit46:                           ; preds = %bb.p, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44, %_ZN7QStringD2Ev.exit42, %bb.l
  %.pn20.pn = phi { ptr, i32 } [ %i.at, %bb.l ], [ %.pn20, %_ZN7QStringD2Ev.exit42 ], [ %.pn20, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44 ], [ %.pn20, %bb.p ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.bc = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i47, label %_ZN7QStringD2Ev.exit50, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i48

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i48:    ; preds = %_ZN7QStringD2Ev.exit46
  %i.bd = atomicrmw add ptr %i.bc, i32 -1 acq_rel, align 4
  %.not.i.i49 = icmp eq i32 %i.bd, 1
  br i1 %.not.i.i49, label %bb.q, label %_ZN7QStringD2Ev.exit50

bb.q:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i48
  %i.be = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.be, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN7QStringD2Ev.exit50

_ZN7QStringD2Ev.exit50:                           ; preds = %bb.q, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i48, %_ZN7QStringD2Ev.exit46, %bb.k
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.as, %bb.k ], [ %.pn20.pn, %_ZN7QStringD2Ev.exit46 ], [ %.pn20.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i48 ], [ %.pn20.pn, %bb.q ]
  %i.bf = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i51, label %_ZN17QArrayDataPointerIDsED2Ev.exit58, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i52

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i52:    ; preds = %_ZN7QStringD2Ev.exit50
  %i.bg = atomicrmw add ptr %i.bf, i32 -1 acq_rel, align 4
  %.not.i.i53 = icmp eq i32 %i.bg, 1
  br i1 %.not.i.i53, label %bb.r, label %_ZN17QArrayDataPointerIDsED2Ev.exit58

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i52
  %i.bh = load ptr, ptr %9, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bh, i64 noundef 2, i64 noundef 8) #18
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit58

end_hunk_0
begin_hunk_1_@_ZN16WirelessTimeline10paintEventEP11QPaintEvent:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store <6 x float> splat (float 1.000000e+00), ptr %i.s, align 16
  store <6 x float> splat (float 1.000000e+00), ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store <6 x float> splat (float 1.000000e+00), ptr %i.u, align 16
  store <6 x float> splat (float 1.000000e+00), ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store <6 x float> splat (float 1.000000e+00), ptr %i.w, align 16
  store <6 x float> splat (float 1.000000e+00), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store <6 x float> splat (float 1.000000e+00), ptr %i.y, align 16
  store <6 x float> splat (float 1.000000e+00), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  store <6 x float> splat (float 1.000000e+00), ptr %i.aa, align 16
  store <6 x float> splat (float 1.000000e+00), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store <6 x float> splat (float 1.000000e+00), ptr %i.ac, align 16
  store <6 x float> splat (float 1.000000e+00), ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  store <6 x float> splat (float 1.000000e+00), ptr %i.ae, align 16
  store <6 x float> splat (float 1.000000e+00), ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  store <6 x float> splat (float 1.000000e+00), ptr %i.ag, align 16
  store <6 x float> splat (float 1.000000e+00), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  store <6 x float> splat (float 1.000000e+00), ptr %i.ai, align 16
  store <6 x float> splat (float 1.000000e+00), ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store <6 x float> splat (float 1.000000e+00), ptr %i.ak, align 16
  store <6 x float> splat (float 1.000000e+00), ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  store <6 x float> splat (float 1.000000e+00), ptr %i.am, align 16
  store <6 x float> splat (float 1.000000e+00), ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 744
  store <6 x float> splat (float 1.000000e+00), ptr %i.ao, align 16
  store <6 x float> splat (float 1.000000e+00), ptr %i.ap, align 8
  %i.aq = sitofp i32 %i.g to double
  %i.ar = fmul nnan double %i.aq, f0x3EF0000000000000
  %i.as = fptrunc double %i.ar to float           ; 6 uses
  %i.at = sitofp i32 %i.i to float
  %i.au = fmul float %i.as, %i.at
  %i.av = fptosi float %i.au to i32               ; 2 uses
  %i.aw = sitofp i32 %i.k to float
  %i.ax = fmul float %i.as, %i.aw
  %i.ay = fptosi float %i.ax to i32
  %i.az = getelementptr i8, ptr %0, i64 32        ; 7 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 20
  %i.bc = getelementptr i8, ptr %i.ba, i64 28
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = load i32, ptr %i.bb, align 4
  %i.bf = add i32 %i.bd, 1
  %i.bg = sub i32 %i.bf, %i.be                    ; 2 uses
  %i.bh = sitofp i32 %i.bg to double
  %i.bi = getelementptr i8, ptr %0, i64 848       ; 5 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %0, i64 840       ; 7 uses
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = sub i64 %i.bj, %i.bl
  %i.bn = uitofp i64 %i.bm to double
  %i.bo = fdiv double %i.bh, %i.bn
  %i.bp = fpext float %i.as to double             ; 5 uses
  %i.bq = fmul double %i.bo, %i.bp                ; 5 uses
  %i.br = invoke noundef align 8 dereferenceable(12) ptr @_ZNK7QWidget7paletteEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
          to label %bb.c unwind label %bb.ae

bb.c:                                             ; preds = %vector.ph
  %i.bs = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef align 8 dereferenceable_or_null(12) %i.br, i32 noundef 4, i32 noundef 10)
          to label %bb.d unwind label %bb.ae

bb.d:                                             ; preds = %bb.c
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i32 0, ptr %4, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = add i32 %i.bg, -1
  store i32 %i.bx, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 63, ptr %i.by, align 4
  invoke void @_ZN8QPainter8fillRectERK5QRectRK6QColor(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(14) %i.bu)
          to label %bb.e unwind label %bb.ae

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.bz = getelementptr i8, ptr %0, i64 64        ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i32 0, ptr %7, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.cb, align 4
  %i.cc = load ptr, ptr %i.ca, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 496
  %i.ce = load ptr, ptr %i.cd, align 8
  invoke void %i.ce(ptr dead_on_unwind nonnull writable sret(%class.QModelIndex) align 8 %6, ptr noundef align 8 dereferenceable_or_null(40) %i.ca, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.cf = load i32, ptr %6, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.cg = load ptr, ptr %i.bz, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.ch = invoke noundef ptr @_ZNK19QAbstractScrollArea8viewportEv(ptr noundef align 8 dereferenceable_or_null(40) %i.cg)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr i8, ptr %i.ch, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = getelementptr i8, ptr %i.cj, i64 24
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = add i32 %i.cl, 1
  %i.cp = sub i32 %i.co, %i.cn
  store i32 0, ptr %9, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.cp, ptr %i.cq, align 4
  %i.cr = load ptr, ptr %i.cg, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 496
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr dead_on_unwind nonnull writable sret(%class.QModelIndex) align 8 %8, ptr noundef align 8 dereferenceable_or_null(40) %i.cg, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.cu = load i32, ptr %8, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.cv = load ptr, ptr %i.bz, align 8
  %i.cw = invoke noundef ptr @_ZNK10PacketList14getFDataForRowEi(ptr noundef align 8 dereferenceable_or_null(448) %i.cv, i32 noundef %i.cf)
          to label %bb.i unwind label %bb.ae      ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.cx = load ptr, ptr %i.bz, align 8
  %i.cy = invoke noundef ptr @_ZNK10PacketList14getFDataForRowEi(ptr noundef align 8 dereferenceable_or_null(448) %i.cx, i32 noundef %i.cu)
          to label %bb.j unwind label %bb.ae      ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.cz = icmp ne ptr %i.cw, null
  %i.da = icmp ne ptr %i.cy, null
  %or.cond = and i1 %i.cz, %i.da
  br i1 %or.cond, label %bb.n, label %bb.bn

bb.k:                                             ; preds = %bb.b, %bb.a
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.l:                                             ; preds = %bb.e
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bq

bb.m:                                             ; preds = %bb.g, %bb.f
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.bq

bb.n:                                             ; preds = %bb.j
  %i.de = icmp eq i32 %i.cf, -1
  br i1 %i.de, label %_ZN16WirelessTimeline8positionEmf.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = load i32, ptr %i.cw, align 8
  %i.dg = getelementptr i8, ptr %0, i64 888
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = zext i32 %i.df to i64
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = invoke noundef ptr @g_hash_table_lookup(ptr noundef %i.dh, ptr noundef %i.dj)
          to label %_ZN16WirelessTimeline14get_wlan_radioEj.exit unwind label %bb.ae

_ZN16WirelessTimeline14get_wlan_radioEj.exit:     ; preds = %bb.o
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  %i.dm = load i64, ptr %i.dl, align 8            ; 2 uses
  %.not.i = icmp eq i64 %i.dm, -1
  br i1 %.not.i, label %_ZN16WirelessTimeline8positionEmf.exit, label %bb.p

bb.p:                                             ; preds = %_ZN16WirelessTimeline14get_wlan_radioEj.exit
  %i.dn = uitofp i64 %i.dm to double
  %i.do = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.dp = uitofp i64 %i.do to double
  %i.dq = fsub nnan double %i.dn, %i.dp
  %i.dr = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 20
  %i.dt = getelementptr i8, ptr %i.dr, i64 28
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = load i32, ptr %i.ds, align 4
  %i.dw = add i32 %i.du, 1
  %i.dx = sub i32 %i.dw, %i.dv
  %i.dy = sitofp i32 %i.dx to double
  %i.dz = fmul double %i.dq, %i.dy
  %i.ea = fmul double %i.dz, %i.bp
  %i.eb = load i64, ptr %i.bi, align 8
  %i.ec = sub i64 %i.eb, %i.do
  %i.ed = uitofp i64 %i.ec to double
  %i.ee = fdiv double %i.ea, %i.ed
  %i.ef = fptosi double %i.ee to i32
  br label %_ZN16WirelessTimeline8positionEmf.exit

_ZN16WirelessTimeline8positionEmf.exit:           ; preds = %bb.p, %_ZN16WirelessTimeline14get_wlan_radioEj.exit, %bb.n
  %i.eg = phi i32 [ 0, %bb.n ], [ %i.ef, %bb.p ], [ -100, %_ZN16WirelessTimeline14get_wlan_radioEj.exit ] ; 2 uses
  %i.eh = icmp eq i32 %i.cu, -1
  br i1 %i.eh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN16WirelessTimeline8positionEmf.exit
  %i.ei = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 20
  %i.ek = getelementptr i8, ptr %i.ei, i64 28
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = load i32, ptr %i.ej, align 4
  %i.en = add i32 %i.el, 1
  %i.eo = sub i32 %i.en, %i.em
  br label %_ZN16WirelessTimeline8positionEmf.exit207

bb.r:                                             ; preds = %_ZN16WirelessTimeline8positionEmf.exit
  %i.ep = load i32, ptr %i.cy, align 8
  %i.eq = getelementptr i8, ptr %0, i64 888
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = zext i32 %i.ep to i64
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = invoke noundef ptr @g_hash_table_lookup(ptr noundef %i.er, ptr noundef %i.et)
          to label %_ZN16WirelessTimeline14get_wlan_radioEj.exit204 unwind label %bb.ae

_ZN16WirelessTimeline14get_wlan_radioEj.exit204:  ; preds = %bb.r
  %i.ev = getelementptr i8, ptr %i.eu, i64 24
  %i.ew = load i64, ptr %i.ev, align 8            ; 2 uses
  %.not.i205 = icmp eq i64 %i.ew, -1
  br i1 %.not.i205, label %_ZN16WirelessTimeline8positionEmf.exit207, label %bb.s

bb.s:                                             ; preds = %_ZN16WirelessTimeline14get_wlan_radioEj.exit204
  %i.ex = uitofp i64 %i.ew to double
  %i.ey = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.ez = uitofp i64 %i.ey to double
  %i.fa = fsub nnan double %i.ex, %i.ez
  %i.fb = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 20
  %i.fd = getelementptr i8, ptr %i.fb, i64 28
  %i.fe = load i32, ptr %i.fd, align 4
  %i.ff = load i32, ptr %i.fc, align 4
  %i.fg = add i32 %i.fe, 1
  %i.fh = sub i32 %i.fg, %i.ff
  %i.fi = sitofp i32 %i.fh to double
  %i.fj = fmul double %i.fa, %i.fi
  %i.fk = fmul double %i.fj, %i.bp
  %i.fl = load i64, ptr %i.bi, align 8
  %i.fm = sub i64 %i.fl, %i.ey
  %i.fn = uitofp i64 %i.fm to double
  %i.fo = fdiv double %i.fk, %i.fn
  %i.fp = fptosi double %i.fo to i32
  br label %_ZN16WirelessTimeline8positionEmf.exit207

_ZN16WirelessTimeline8positionEmf.exit207:        ; preds = %bb.s, %_ZN16WirelessTimeline14get_wlan_radioEj.exit204, %bb.q
  %i.fq = phi i32 [ %i.eo, %bb.q ], [ %i.fp, %bb.s ], [ -100, %_ZN16WirelessTimeline14get_wlan_radioEj.exit204 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %reass.sub = sub i32 %i.fq, %i.eg
  %i.fr = add i32 %reass.sub, 1
  %i.fs = insertelement <2 x i32> poison, i32 %i.eg, i64 0
  %i.ft = insertelement <2 x i32> %i.fs, i32 %i.fr, i64 1
  %i.fu = sitofp <2 x i32> %i.ft to <2 x float>
  %i.fv = insertelement <2 x float> poison, float %i.as, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fx = fdiv <2 x float> %i.fu, %i.fw
  %i.fy = fpext <2 x float> %i.fx to <2 x double> ; 2 uses
  %i.fz = extractelement <2 x double> %i.fy, i64 0
  store double %i.fz, ptr %10, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double 0.000000e+00, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gc = extractelement <2 x double> %i.fy, i64 1
  store double %i.gc, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 24
  store double 6.400000e+01, ptr %i.gd, align 8
  %i.ge = invoke noundef align 8 dereferenceable(12) ptr @_ZNK7QWidget7paletteEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %_ZN16WirelessTimeline8positionEmf.exit207
  %i.gf = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef align 8 dereferenceable_or_null(12) %i.ge, i32 noundef 4, i32 noundef 9)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = getelementptr i8, ptr %i.gg, i64 8
  invoke void @_ZN8QPainter8fillRectERK6QRectFRK6QColor(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef align 4 dereferenceable(14) %i.gh)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.gi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cfile, i64 360), align 8 ; 2 uses
  %.not = icmp eq ptr %i.gi, null
  br i1 %.not, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gj = load i32, ptr %i.gi, align 8
  %i.gk = getelementptr i8, ptr %0, i64 888
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = zext i32 %i.gj to i64
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = invoke noundef ptr @g_hash_table_lookup(ptr noundef %i.gl, ptr noundef %i.gn)
          to label %_ZN16WirelessTimeline14get_wlan_radioEj.exit209 unwind label %bb.ae ; 3 uses

_ZN16WirelessTimeline14get_wlan_radioEj.exit209:  ; preds = %bb.w
  %.not180 = icmp eq ptr %i.go, null
  br i1 %.not180, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %_ZN16WirelessTimeline14get_wlan_radioEj.exit209
  %i.gp = getelementptr i8, ptr %i.go, i64 16
  %i.gq = load i64, ptr %i.gp, align 8            ; 2 uses
  %.not.i210 = icmp eq i64 %i.gq, -1
  br i1 %.not.i210, label %_ZN16WirelessTimeline8positionEmf.exit212, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gr = uitofp i64 %i.gq to double
  %i.gs = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.gt = uitofp i64 %i.gs to double
  %i.gu = fsub nnan double %i.gr, %i.gt
  %i.gv = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 20
  %i.gx = getelementptr i8, ptr %i.gv, i64 28
  %i.gy = load i32, ptr %i.gx, align 4
  %i.gz = load i32, ptr %i.gw, align 4
  %i.ha = add i32 %i.gy, 1
  %i.hb = sub i32 %i.ha, %i.gz
  %i.hc = sitofp i32 %i.hb to double
  %i.hd = fmul double %i.gu, %i.hc
  %i.he = fmul double %i.hd, %i.bp
  %i.hf = load i64, ptr %i.bi, align 8
  %i.hg = sub i64 %i.hf, %i.gs
  %i.hh = uitofp i64 %i.hg to double
  %i.hi = fdiv double %i.he, %i.hh
  %i.hj = fptosi double %i.hi to i32
  br label %_ZN16WirelessTimeline8positionEmf.exit212

_ZN16WirelessTimeline8positionEmf.exit212:        ; preds = %bb.y, %bb.x
  %.0.i211 = phi i32 [ %i.hj, %bb.y ], [ -100, %bb.x ] ; 2 uses
  %i.hk = getelementptr i8, ptr %i.go, i64 24
  %i.hl = load i64, ptr %i.hk, align 8            ; 2 uses
  %.not.i213 = icmp eq i64 %i.hl, -1
  br i1 %.not.i213, label %_ZN16WirelessTimeline8positionEmf.exit215, label %bb.z

bb.z:                                             ; preds = %_ZN16WirelessTimeline8positionEmf.exit212
  %i.hm = uitofp i64 %i.hl to double
  %i.hn = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.ho = uitofp i64 %i.hn to double
  %i.hp = fsub nnan double %i.hm, %i.ho
  %i.hq = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 20
  %i.hs = getelementptr i8, ptr %i.hq, i64 28
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = load i32, ptr %i.hr, align 4
  %i.hv = add i32 %i.ht, 1
  %i.hw = sub i32 %i.hv, %i.hu
  %i.hx = sitofp i32 %i.hw to double
  %i.hy = fmul double %i.hp, %i.hx
  %i.hz = fmul double %i.hy, %i.bp
  %i.ia = load i64, ptr %i.bi, align 8
  %i.ib = sub i64 %i.ia, %i.hn
  %i.ic = uitofp i64 %i.ib to double
  %i.id = fdiv double %i.hz, %i.ic
  %i.ie = fptosi double %i.id to i32
  br label %_ZN16WirelessTimeline8positionEmf.exit215

_ZN16WirelessTimeline8positionEmf.exit215:        ; preds = %bb.z, %_ZN16WirelessTimeline8positionEmf.exit212
  %.0.i214 = phi i32 [ %i.ie, %bb.z ], [ -100, %_ZN16WirelessTimeline8positionEmf.exit212 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %reass.sub290 = sub i32 %.0.i214, %.0.i211
  %i.if = add i32 %reass.sub290, 1
  %i.ig = insertelement <2 x i32> poison, i32 %.0.i211, i64 0
  %i.ih = insertelement <2 x i32> %i.ig, i32 %i.if, i64 1
  %i.ii = sitofp <2 x i32> %i.ih to <2 x float>
  %i.ij = fdiv <2 x float> %i.ii, %i.fw
  %i.ik = fpext <2 x float> %i.ij to <2 x double> ; 2 uses
  %i.il = extractelement <2 x double> %i.ik, i64 0
  store double %i.il, ptr %11, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double 0.000000e+00, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.io = extractelement <2 x double> %i.ik, i64 1
  store double %i.io, ptr %i.in, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %11, i64 24
  store double 6.400000e+01, ptr %i.ip, align 8
  %i.iq = invoke noundef align 8 dereferenceable(12) ptr @_ZNK7QWidget7paletteEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %_ZN16WirelessTimeline8positionEmf.exit215
  %i.ir = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef align 8 dereferenceable_or_null(12) %i.iq, i32 noundef 4, i32 noundef 12)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = getelementptr i8, ptr %i.is, i64 8
  invoke void @_ZN8QPainter8fillRectERK6QRectFRK6QColor(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef align 4 dereferenceable(14) %i.it)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.ag

bb.ad:                                            ; preds = %bb.t, %bb.u, %_ZN16WirelessTimeline8positionEmf.exit207
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.bq

bb.ae:                                            ; preds = %bb.w, %bb.r, %bb.o, %bb.d, %bb.c, %vector.ph, %bb.h, %bb.i
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.af:                                            ; preds = %bb.aa, %bb.ab, %_ZN16WirelessTimeline8positionEmf.exit215
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.bq

bb.ag:                                            ; preds = %_ZN16WirelessTimeline14get_wlan_radioEj.exit209, %bb.ac, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZN14QGraphicsSceneC1EP7QObject(ptr noundef nonnull align 8 dereferenceable_or_null(16) %12, ptr noundef null)
          to label %bb.ah unwind label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.ix = load i64, ptr %i.bk, align 8
  %i.iy = uitofp i64 %i.ix to double
  %i.iz = sitofp i32 %i.av to double
  %i.ja = fdiv double %i.iz, %i.bq
  %i.jb = fadd double %i.ja, %i.iy
  %i.jc = fadd double %i.jb, -4.000000e+04
  %i.jd = fptoui double %i.jc to i64              ; 4 uses
  %i.je = load i32, ptr getelementptr inbounds nuw (i8, ptr @cfile, i64 72), align 8 ; 5 uses
  switch i32 %i.je, label %bb.ai [
    i32 0, label %.lr.ph
    i32 1, label %_ZN16WirelessTimeline15find_packet_tsfEm.exit
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.jf = add i32 %i.je, -1                       ; 2 uses
  %i.jg = getelementptr i8, ptr %0, i64 888       ; 3 uses
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = invoke noundef ptr @g_hash_table_lookup(ptr noundef %i.jh, ptr noundef nonnull inttoptr (i64 1 to ptr))
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.ai
  %i.jj = getelementptr i8, ptr %i.ji, i64 24
  %i.jk = load i64, ptr %i.jj, align 8
  %i.jl = load ptr, ptr %i.jg, align 8
  %i.jm = zext i32 %i.jf to i64
  %i.jn = inttoptr i64 %i.jm to ptr
  %i.jo = invoke noundef ptr @g_hash_table_lookup(ptr noundef %i.jl, ptr noundef %i.jn)
          to label %.noexc218 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc218:                                        ; preds = %.noexc
  %i.jp = getelementptr i8, ptr %i.jo, i64 24
  %i.jq = load i64, ptr %i.jp, align 8            ; 2 uses
  %.not52.i = icmp ugt i64 %i.jq, %i.jd
  br i1 %.not52.i, label %.lr.ph.i, label %_ZN16WirelessTimeline15find_packet_tsfEm.exit

._crit_edge.loopexit.i:                           ; preds = %.noexc219
  %i.jr = add nuw i32 %..026.i, 1
  br label %_ZN16WirelessTimeline15find_packet_tsfEm.exit

.lr.ph.i:                                         ; preds = %.noexc218, %.noexc219
  %.02256.i = phi i64 [ %..022.i, %.noexc219 ], [ %i.jq, %.noexc218 ]
  %.02355.i = phi i64 [ %.023..i, %.noexc219 ], [ %i.jk, %.noexc218 ] ; 2 uses
  %.02654.i = phi i32 [ %..026.i, %.noexc219 ], [ %i.jf, %.noexc218 ] ; 2 uses
  %.02953.i = phi i32 [ %.029..i, %.noexc219 ], [ 1, %.noexc218 ] ; 5 uses
  %i.js = icmp ugt i64 %.02355.i, %i.jd
  br i1 %i.js, label %_ZN16WirelessTimeline15find_packet_tsfEm.exit, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i
  %i.jt = add i32 %.02953.i, %.02654.i
  %i.ju = lshr i32 %i.jt, 1                       ; 4 uses
  %.not42.i = icmp eq i32 %i.ju, %.02953.i
  br i1 %.not42.i, label %.thread.i, label %bb.ak

.thread.i:                                        ; preds = %bb.aj
  %i.jv = add nuw i32 %.02953.i, 1
  br label %_ZN16WirelessTimeline15find_packet_tsfEm.exit

bb.ak:                                            ; preds = %bb.aj
  %i.jw = load ptr, ptr %i.jg, align 8
  %i.jx = zext nneg i32 %i.ju to i64
  %i.jy = inttoptr i64 %i.jx to ptr
  %i.jz = invoke noundef ptr @g_hash_table_lookup(ptr noundef %i.jw, ptr noundef %i.jy)
          to label %.noexc219 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc219:                                        ; preds = %bb.ak
  %i.ka = getelementptr i8, ptr %i.jz, i64 24
  %i.kb = load i64, ptr %i.ka, align 8            ; 3 uses
  %.not41.i = icmp ugt i64 %i.kb, %i.jd           ; 4 uses
  %.029..i = select i1 %.not41.i, i32 %.02953.i, i32 %i.ju
  %..026.i = select i1 %.not41.i, i32 %i.ju, i32 %.02654.i ; 2 uses
  %.023..i = select i1 %.not41.i, i64 %.02355.i, i64 %i.kb
  %..022.i = select i1 %.not41.i, i64 %i.kb, i64 %.02256.i ; 2 uses
  %.not.i217 = icmp ugt i64 %..022.i, %i.jd
  br i1 %.not.i217, label %.lr.ph.i, label %._crit_edge.loopexit.i

_ZN16WirelessTimeline15find_packet_tsfEm.exit:    ; preds = %.lr.ph.i, %bb.ah, %.noexc218, %._crit_edge.loopexit.i, %.thread.i
  %.3.i = phi i32 [ %i.je, %bb.ah ], [ %i.je, %.noexc218 ], [ %i.jr, %._crit_edge.loopexit.i ], [ %i.jv, %.thread.i ], [ %.02953.i, %.lr.ph.i ] ; 2 uses
  %i.kc = load i32, ptr getelementptr inbounds nuw (i8, ptr @cfile, i64 72), align 8
  %.not182285 = icmp ugt i32 %.3.i, %i.kc
  br i1 %.not182285, label %_ZL14accumulate_rgbPA3_fiiffff.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah, %_ZN16WirelessTimeline15find_packet_tsfEm.exit
  %.3.i321 = phi i32 [ %.3.i, %_ZN16WirelessTimeline15find_packet_tsfEm.exit ], [ %i.je, %bb.ah ]
  %i.kd = getelementptr i8, ptr %0, i64 888
  %i.ke = sitofp i32 %i.ay to float
  %i.kf = sitofp i32 %i.av to float
  %i.kg = getelementptr i8, ptr %0, i64 856       ; 2 uses
  %i.kh = fcmp ult double %i.bq, 1.000000e-02
  %i.ki = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.kk = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.kl = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.km = getelementptr inbounds nuw i8, ptr %15, i64 6
  %i.kn = getelementptr inbounds nuw i8, ptr %15, i64 10
  %i.ko = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ku = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.kv = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph, %.loopexit
  %.0142288 = phi i32 [ -1, %.lr.ph ], [ %.5.ph, %.loopexit ] ; 7 uses
  %.0144286 = phi i32 [ %.3.i321, %.lr.ph ], [ %i.xx, %.loopexit ] ; 4 uses
  %i.kw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cfile, i64 264), align 8
  %i.kx = invoke ptr @frame_data_sequence_find(ptr noundef %i.kw, i32 noundef %.0144286)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.am:                                            ; preds = %bb.al
  %i.ky = load i32, ptr %i.kx, align 8
  %i.kz = load ptr, ptr %i.kd, align 8
  %i.la = zext i32 %i.ky to i64
  %i.lb = inttoptr i64 %i.la to ptr
  %i.lc = invoke noundef ptr @g_hash_table_lookup(ptr noundef %i.kz, ptr noundef %i.lb)
          to label %_ZN16WirelessTimeline14get_wlan_radioEj.exit221 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

_ZN16WirelessTimeline14get_wlan_radioEj.exit221:  ; preds = %bb.am
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %.loopexit, label %bb.ao

bb.an:                                            ; preds = %bb.ag
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ao:                                            ; preds = %_ZN16WirelessTimeline14get_wlan_radioEj.exit221
  %i.lf = load ptr, ptr %i.lc, align 8            ; 2 uses
  %.not183 = icmp eq ptr %i.lf, null
  %i.lg = getelementptr i8, ptr %i.lf, i64 24
  %i.lh = getelementptr i8, ptr %i.lc, i64 42
end_hunk_1
