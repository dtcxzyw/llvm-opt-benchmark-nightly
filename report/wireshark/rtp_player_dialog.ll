inline.NumInlined: 3582
inline.NumDeleted: 1232
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN15RtpPlayerDialog23invertAudioMutingOnItemEP15QTreeWidgetItem:bb.a
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, -4                         ; 3 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.h, ptr %2, align 8
  store ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIP14RtpAudioStreamE8metaTypeE, ptr %3, align 8
  %i.i = icmp eq i64 %i.g, ptrtoint (ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIP14RtpAudioStreamE8metaTypeE to i64)
  br i1 %i.i, label %_Zeq9QMetaTypeS_.exit.thread.i.i, label %bb.c

_Zeq9QMetaTypeS_.exit.thread.i.i:                 ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_Zeq9QMetaTypeS_.exit.thread10.i.i, label %bb.d

_Zeq9QMetaTypeS_.exit.thread10.i.i:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.h, i64 12
  %i.k = load atomic i32, ptr %i.j monotonic, align 4 ; 2 uses
  %.not6.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.not.i.i.i.i, label %bb.e, label %_ZNK9QMetaType2idEi.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.l = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %2)
          to label %_ZNK9QMetaType2idEi.exit.i.i.i unwind label %bb.j

_ZNK9QMetaType2idEi.exit.i.i.i:                   ; preds = %bb.e, %bb.d
  %.1.i.i.i.i = phi i32 [ %i.k, %bb.d ], [ %i.l, %bb.e ]
  %i.m = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIP14RtpAudioStreamE8metaTypeE, i64 12) monotonic, align 4 ; 2 uses
  %.not6.not.i7.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not6.not.i7.i.i.i, label %bb.f, label %_Zeq9QMetaTypeS_.exit.i.i

bb.f:                                             ; preds = %_ZNK9QMetaType2idEi.exit.i.i.i
  %i.n = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %3)
          to label %_Zeq9QMetaTypeS_.exit.i.i unwind label %bb.j

_Zeq9QMetaTypeS_.exit.i.i:                        ; preds = %bb.f, %_ZNK9QMetaType2idEi.exit.i.i.i
  %.1.i8.i.i.i = phi i32 [ %i.m, %_ZNK9QMetaType2idEi.exit.i.i.i ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.1.i.i.i.i, %.1.i8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_Zeq9QMetaTypeS_.exit.i.i, %_Zeq9QMetaTypeS_.exit.thread.i.i
  %i.p = load ptr, ptr %4, align 8
  br label %_ZNK8QVariant5valueIP14RtpAudioStreamEET_v.exit

bb.h:                                             ; preds = %_Zeq9QMetaTypeS_.exit.i.i, %_Zeq9QMetaTypeS_.exit.thread10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8
  %i.q = invoke ptr @_ZNK8QVariant8metaTypeEv(ptr noundef nonnull align 8 dereferenceable(32) dereferenceable_or_null(32) %4)
          to label %.noexc11 unwind label %bb.j

.noexc11:                                         ; preds = %bb.h
  %i.r = load i64, ptr %i.e, align 8
  %i.s = and i64 %i.r, 1
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i, label %_ZNK8QVariant9constDataEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc11
  %i.t = load ptr, ptr %4, align 8                ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr i8, ptr %i.t, i64 %i.w
  br label %_ZNK8QVariant9constDataEv.exit.i.i

_ZNK8QVariant9constDataEv.exit.i.i:               ; preds = %bb.i, %.noexc11
  %i.y = phi ptr [ %i.x, %bb.i ], [ %4, %.noexc11 ]
  %i.z = invoke noundef zeroext i1 @_ZN9QMetaType7convertES_PKvS_Pv(ptr %i.q, ptr noundef %i.y, ptr nonnull @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIP14RtpAudioStreamE8metaTypeE, ptr noundef nonnull %i.a)
          to label %.noexc12 unwind label %bb.j   ; 0 uses

.noexc12:                                         ; preds = %_ZNK8QVariant9constDataEv.exit.i.i
  %i.aa = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNK8QVariant5valueIP14RtpAudioStreamEET_v.exit

_ZNK8QVariant5valueIP14RtpAudioStreamEET_v.exit:  ; preds = %.noexc12, %bb.g
  %.0.i.i = phi ptr [ %i.p, %bb.g ], [ %i.aa, %.noexc12 ] ; 2 uses
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.not9 = icmp eq ptr %.0.i.i, null
  br i1 %.not9, label %bb.n, label %bb.k

bb.j:                                             ; preds = %_ZNK8QVariant9constDataEv.exit.i.i, %bb.h, %bb.f, %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.ab

bb.k:                                             ; preds = %_ZNK8QVariant5valueIP14RtpAudioStreamEET_v.exit
  %i.ac = call i64 @_ZN14RtpAudioStream15getAudioRoutingEv(ptr noundef nonnull align 8 dereferenceable_or_null(7696) %.0.i.i)
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN12AudioRoutingC1Eb23audio_routing_channel_t(ptr noundef nonnull align 4 dereferenceable_or_null(8) %5, i1 noundef zeroext false, i32 noundef 0)
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  call void @_ZN12AudioRoutingC1Eb23audio_routing_channel_t(ptr noundef nonnull align 4 dereferenceable_or_null(8) %6, i1 noundef zeroext true, i32 noundef 0)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.l
  %.sink16 = phi ptr [ %5, %bb.l ], [ %6, %bb.m ]
  %i.ae = load i64, ptr %.sink16, align 4
  call void @_ZN15RtpPlayerDialog24changeAudioRoutingOnItemEP15QTreeWidgetItem12AudioRouting(ptr noundef align 8 dereferenceable_or_null(472) %0, ptr noundef nonnull %1, i64 %i.ae)
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %_ZNK8QVariant5valueIP14RtpAudioStreamEET_v.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15RtpPlayerDialog32on_actionAudioRoutingP_triggeredEv(ptr noundef align 8 dereferenceable_or_null(472) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.AudioRouting, align 8        ; 2 uses
  call void @_ZN12AudioRoutingC1Eb23audio_routing_channel_t(ptr noundef nonnull align 4 dereferenceable_or_null(8) %1, i1 noundef zeroext false, i32 noundef 1)
  %i.a = load i64, ptr %1, align 8
  call void @_ZN15RtpPlayerDialog18changeAudioRoutingE12AudioRouting(ptr noundef align 8 dereferenceable_or_null(472) %0, i64 %i.a)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15RtpPlayerDialog32on_actionAudioRoutingL_triggeredEv(ptr noundef align 8 dereferenceable_or_null(472) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.AudioRouting, align 8        ; 2 uses
  call void @_ZN12AudioRoutingC1Eb23audio_routing_channel_t(ptr noundef nonnull align 4 dereferenceable_or_null(8) %1, i1 noundef zeroext false, i32 noundef 2)
  %i.a = load i64, ptr %1, align 8
  call void @_ZN15RtpPlayerDialog18changeAudioRoutingE12AudioRouting(ptr noundef align 8 dereferenceable_or_null(472) %0, i64 %i.a)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15RtpPlayerDialog33on_actionAudioRoutingLR_triggeredEv(ptr noundef align 8 dereferenceable_or_null(472) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.AudioRouting, align 8        ; 2 uses
  call void @_ZN12AudioRoutingC1Eb23audio_routing_channel_t(ptr noundef nonnull align 4 dereferenceable_or_null(8) %1, i1 noundef zeroext false, i32 noundef 4)
  %i.a = load i64, ptr %1, align 8
  call void @_ZN15RtpPlayerDialog18changeAudioRoutingE12AudioRouting(ptr noundef align 8 dereferenceable_or_null(472) %0, i64 %i.a)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15RtpPlayerDialog32on_actionAudioRoutingR_triggeredEv(ptr noundef align 8 dereferenceable_or_null(472) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.AudioRouting, align 8        ; 2 uses
  call void @_ZN12AudioRoutingC1Eb23audio_routing_channel_t(ptr noundef nonnull align 4 dereferenceable_or_null(8) %1, i1 noundef zeroext false, i32 noundef 3)
  %i.a = load i64, ptr %1, align 8
  call void @_ZN15RtpPlayerDialog18changeAudioRoutingE12AudioRouting(ptr noundef align 8 dereferenceable_or_null(472) %0, i64 %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZN14RtpAudioStream13nearestPacketEdb(ptr noundef align 8 dereferenceable_or_null(7696), double noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZNK9QComboBox11currentTextEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN9QComboBox5clearEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZNK12QAudioDevice6isNullEv(ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK12QAudioDevice17minimumSampleRateEv(ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK12QAudioDevice17maximumSampleRateEv(ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZNK4QSetIiE6valuesEv(ptr dead_on_unwind noalias writable sret(%class.QList.125) align 8 %0, ptr noundef align 8 dereferenceable_or_null(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNK4QSetIiE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8
  br label %_ZNK4QSetIiE4sizeEv.exit

_ZNK4QSetIiE4sizeEv.exit:                         ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5QListIiE7reserveEx(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.e)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZNK4QSetIiE4sizeEv.exit
  %i.f = load ptr, ptr %1, align 8, !noalias !159 ; 5 uses
  %.not.i.i5 = icmp eq ptr %i.f, null
  br i1 %.not.i.i5, label %_ZNK4QSetIiE10constBeginEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !159 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !159
  %.not.i.i.i.i = icmp eq i8 %i.i, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !159 ; 2 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_ZNK4QSetIiE10constBeginEv.exit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.m = add i64 %i.o, 1                          ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.k
  br i1 %i.n, label %_ZNK4QSetIiE10constBeginEv.exit, label %.lr.ph, !llvm.loop !162

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %i.o = phi i64 [ %i.m, %bb.f ], [ 1, %bb.e ]    ; 4 uses
  %i.p = lshr i64 %i.o, 7
  %i.q = getelementptr [144 x i8], ptr %i.h, i64 %i.p
  %i.r = and i64 %i.o, 127
  %i.s = getelementptr i8, ptr %i.q, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !noalias !159
  %.not.i.i.i.i.i = icmp eq i8 %i.t, -1
  br i1 %.not.i.i.i.i.i, label %bb.f, label %._ZNK4QSetIiE10constBeginEv.exit.loopexit_crit_edge, !llvm.loop !162

._ZNK4QSetIiE10constBeginEv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZNK4QSetIiE10constBeginEv.exit, !llvm.loop !162

_ZNK4QSetIiE10constBeginEv.exit:                  ; preds = %bb.f, %bb.e, %._ZNK4QSetIiE10constBeginEv.exit.loopexit_crit_edge, %bb.c
  %.sroa.0.0.i.i = phi ptr [ null, %bb.c ], [ %i.f, %._ZNK4QSetIiE10constBeginEv.exit.loopexit_crit_edge ], [ null, %bb.e ], [ null, %bb.f ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.c ], [ %i.o, %._ZNK4QSetIiE10constBeginEv.exit.loopexit_crit_edge ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %2 = icmp ne ptr %.sroa.0.0.i.i, null
  %3 = icmp ne i64 %.sroa.4.0.i.i, 0
  %or.cond14 = or i1 %2, %3
  br i1 %or.cond14, label %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread.lr.ph, label %._crit_edge

_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread.lr.ph: ; preds = %bb.d, %_ZNK4QSetIiE10constBeginEv.exit
  %.sroa.4.0.i.i25 = phi i64 [ %.sroa.4.0.i.i, %_ZNK4QSetIiE10constBeginEv.exit ], [ 0, %bb.d ]
  %.sroa.0.0.i.i24 = phi ptr [ %.sroa.0.0.i.i, %_ZNK4QSetIiE10constBeginEv.exit ], [ %i.f, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread

_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread: ; preds = %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread.lr.ph, %_ZN4QSetIiE14const_iteratorppEv.exit
  %.sroa.8.016 = phi i64 [ %.sroa.4.0.i.i25, %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread.lr.ph ], [ %.sroa.8.1, %_ZN4QSetIiE14const_iteratorppEv.exit ] ; 3 uses
  %.sroa.09.015 = phi ptr [ %.sroa.0.0.i.i24, %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread.lr.ph ], [ %.sroa.09.1, %_ZN4QSetIiE14const_iteratorppEv.exit ] ; 3 uses
  %i.v = getelementptr i8, ptr %.sroa.09.015, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.sroa.8.016, 7
  %i.y = getelementptr [144 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = and i64 %.sroa.8.016, 127
  %i.aa = getelementptr i8, ptr %i.y, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ag, ptr %i.a, align 4
  %i.ah = load i64, ptr %i.u, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIiE7emplaceIJRiEEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread
  %i.ai = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc
  %i.aj = load atomic i32, ptr %i.ai monotonic, align 4
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i, label %bb.g

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = getelementptr i8, ptr %.sroa.09.015, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = add i64 %.sroa.8.016, 1                 ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.am
  br i1 %i.ao, label %_ZN4QSetIiE14const_iteratorppEv.exit, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %bb.g
  %i.ap = load ptr, ptr %i.v, align 8
  br label %.lr.ph32

bb.h:                                             ; preds = %.lr.ph32
  %i.aq = add i64 %i.as, 1                        ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.am
  br i1 %i.ar, label %_ZN4QSetIiE14const_iteratorppEv.exit, label %.lr.ph32, !llvm.loop !162

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %bb.h
  %i.as = phi i64 [ %i.aq, %bb.h ], [ %i.an, %.lr.ph32.preheader ] ; 4 uses
  %i.at = lshr i64 %i.as, 7
  %i.au = getelementptr [144 x i8], ptr %i.ap, i64 %i.at
  %i.av = and i64 %i.as, 127
  %i.aw = getelementptr i8, ptr %i.au, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %.not.i.i.i.i8 = icmp eq i8 %i.ax, -1
  br i1 %.not.i.i.i.i8, label %bb.h, label %._ZN4QSetIiE14const_iteratorppEv.exit_crit_edge35, !llvm.loop !162

._ZN4QSetIiE14const_iteratorppEv.exit_crit_edge35: ; preds = %.lr.ph32
  br label %_ZN4QSetIiE14const_iteratorppEv.exit, !llvm.loop !162

_ZN4QSetIiE14const_iteratorppEv.exit:             ; preds = %bb.h, %._ZN4QSetIiE14const_iteratorppEv.exit_crit_edge35, %bb.g
  %.sroa.09.1 = phi ptr [ %.sroa.09.015, %._ZN4QSetIiE14const_iteratorppEv.exit_crit_edge35 ], [ null, %bb.g ], [ null, %bb.h ] ; 2 uses
  %.sroa.8.1 = phi i64 [ %i.as, %._ZN4QSetIiE14const_iteratorppEv.exit_crit_edge35 ], [ 0, %bb.g ], [ 0, %bb.h ] ; 2 uses
  %i.ay = icmp ne ptr %.sroa.09.1, null
  %i.az = icmp ne i64 %.sroa.8.1, 0
  %or.cond = or i1 %i.ay, %i.az
  br i1 %or.cond, label %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread, label %._crit_edge, !llvm.loop !163

bb.i:                                             ; preds = %_ZNK4QSetIiE4sizeEv.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN4QSetIiE14const_iteratorppEv.exit, %_ZNK4QSetIiE10constBeginEv.exit
  ret void

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.j ], [ %i.ba, %bb.i ]
  call void @_ZN5QListIiED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN4QSetIiED2Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5QHashIi15QHashDummyValueED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZN5QHashIi15QHashDummyValueED2Ev.exit, label %_ZN9QtPrivate8RefCount5derefEv.exit.i

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.b
  %i.d = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not3.i = icmp eq i32 %i.d, 1
  br i1 %.not3.i, label %bb.c, label %_ZN5QHashIi15QHashDummyValueED2Ev.exit

bb.c:                                             ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN5QHashIi15QHashDummyValueED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN12QHashPrivate4DataINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.idx.i.i = mul i64 %i.k, 144                   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.e
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.n = phi ptr [ %i.o, %_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i ], [ %i.m, %.preheader.preheader.i.i ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -144 ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 -16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #28
  br label %_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i

_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i: ; preds = %bb.f, %.preheader.i.i
  %i.r = icmp eq ptr %i.o, %i.h
  br i1 %i.r, label %.loopexit.i.i, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i, %bb.e
  %i.s = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef %i.j, i64 noundef %i.s) #28
  br label %_ZN12QHashPrivate4DataINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i

_ZN12QHashPrivate4DataINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i: ; preds = %.loopexit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef 40) #28
  br label %_ZN5QHashIi15QHashDummyValueED2Ev.exit

_ZN5QHashIi15QHashDummyValueED2Ev.exit:           ; preds = %bb.a, %bb.b, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %bb.c, %_ZN12QHashPrivate4DataINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15RtpPlayerDialog42on_outputDeviceComboBox_currentTextChangedERK7QString(ptr noundef align 8 dereferenceable_or_null(472) %0, ptr nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QMetaType, align 8           ; 6 uses
  %3 = alloca %class.QMetaType, align 8           ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %class.QAudioDevice, align 8        ; 7 uses
  %5 = alloca %class.QVariant, align 8            ; 11 uses
  %6 = alloca %class.AudioRouting, align 8        ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 436        ; 4 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %bb.b, label %_ZN15RtpPlayerDialog6lockUIEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 312
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN15RtpPlayerDialog21on_stopButton_clickedEv(ptr noundef align 8 dereferenceable_or_null(472) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN7QWidget10setEnabledEb(ptr noundef align 8 dereferenceable_or_null(472) %0, i1 noundef zeroext false)
  br label %_ZN15RtpPlayerDialog6lockUIEv.exit

_ZN15RtpPlayerDialog6lockUIEv.exit:               ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN15RtpPlayerDialog20getCurrentDeviceInfoEv(ptr dead_on_unwind nonnull writable sret(%class.QAudioDevice) align 8 %4, ptr noundef readonly align 8 dereferenceable_or_null(472) %0)
  %i.i = invoke noundef i32 @_ZNK12QAudioDevice19maximumChannelCountEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %4)
          to label %_ZN15RtpPlayerDialog17isStereoAvailableEv.exit unwind label %bb.e

common.resume:                                    ; preds = %bb.r, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.bi, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %_ZN15RtpPlayerDialog6lockUIEv.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12QAudioDeviceD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume

_ZN15RtpPlayerDialog17isStereoAvailableEv.exit:   ; preds = %_ZN15RtpPlayerDialog6lockUIEv.exit
  %i.k = icmp sgt i32 %i.i, 1
  call void @_ZN12QAudioDeviceD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.l = getelementptr i8, ptr %0, i64 288        ; 2 uses
  %i.m = zext i1 %i.k to i8
  store i8 %i.m, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 320
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef i32 @_ZNK11QTreeWidget17topLevelItemCountEv(ptr noundef align 8 dereferenceable_or_null(40) %i.q)
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN15RtpPlayerDialog17isStereoAvailableEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %bb.t, %_ZN15RtpPlayerDialog17isStereoAvailableEv.exit
  %i.u = getelementptr i8, ptr %0, i64 352
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %0, i64 320        ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZN15RtpPlayerDialog19cleanupMarkerStreamEv.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  call void @_ZN10QAudioSink4stopEv(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.w)
  %i.x = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.x) #25, !inline_history !86
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.v, align 8
  br label %_ZN15RtpPlayerDialog19cleanupMarkerStreamEv.exit

_ZN15RtpPlayerDialog19cleanupMarkerStreamEv.exit: ; preds = %._crit_edge, %bb.h
  call void @_ZN15RtpPlayerDialog17fillAudioRateMenuEv(ptr noundef align 8 dereferenceable_or_null(472) %0)
  call void @_ZN15RtpPlayerDialog13rescanPacketsEb(ptr noundef align 8 dereferenceable_or_null(472) %0, i1 noundef zeroext false)
  %i.ac = load i32, ptr %i.b, align 4
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.b, align 4
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %_ZN15RtpPlayerDialog8unlockUIEv.exit

bb.i:                                             ; preds = %_ZN15RtpPlayerDialog19cleanupMarkerStreamEv.exit
  call void @_ZN7QWidget10setEnabledEb(ptr noundef align 8 dereferenceable_or_null(472) %0, i1 noundef zeroext true)
  br label %_ZN15RtpPlayerDialog8unlockUIEv.exit

_ZN15RtpPlayerDialog8unlockUIEv.exit:             ; preds = %_ZN15RtpPlayerDialog19cleanupMarkerStreamEv.exit, %bb.i
  ret void

bb.j:                                             ; preds = %.lr.ph, %bb.t
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.bn, %bb.t ] ; 2 uses
  %i.af = load ptr, ptr %i.n, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 320
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef ptr @_ZNK11QTreeWidget12topLevelItemEi(ptr noundef align 8 dereferenceable_or_null(40) %i.ah, i32 noundef %.013) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %5, ptr noundef align 8 dereferenceable_or_null(92) %i.ai, i32 noundef 1, i32 noundef 256)
  %i.am = load i64, ptr %i.t, align 8
  %i.an = and i64 %i.am, -4                       ; 3 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.ao, ptr %2, align 8
end_hunk_0
