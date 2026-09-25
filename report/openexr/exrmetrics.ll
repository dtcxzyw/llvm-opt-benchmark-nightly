Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/exrmetrics?download=true
inline.NumInlined: 1356
inline.NumDeleted: 606
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z12readScanLineRN7Imf_3_49InputPartERNS_11FrameBufferERSt6vectorIdSaIdEE:bb.a
  %i.h = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #27
  %i.i = sub nsw i64 %i.h, %i.a
  %i.j = sitofp i64 %i.i to double
  %i.k = fdiv double %i.j, 1.000000e+09           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store double %i.k, ptr %i.m, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.p, ptr %i.l, align 8, !tbaa !53
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %2, align 8, !tbaa !57     ; 4 uses
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.d, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #30 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  store double %i.k, ptr %i.ac, align 8, !tbaa !56
  %i.ad = icmp sgt i64 %i.t, 0
  br i1 %i.ad, label %bb.e, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %i.q, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ah) #29
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ab, ptr %2, align 8, !tbaa !57
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.ai, ptr %i.n, align 8, !tbaa !54
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.b, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #6

declare void @_ZN7Imf_3_49InputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN7Imf_3_49InputPart10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13writeScanLineRN7Imf_3_410OutputPartERNS_11FrameBufferEPSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_410OutputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  tail call void @_ZN7Imf_3_410OutputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.g = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #27
  %reass.sub = sub i32 %i.f, %i.d
  %i.h = add i32 %reass.sub, 1
  tail call void @_ZN7Imf_3_410OutputPart11writePixelsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.h)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #27
  %i.j = sub nsw i64 %i.i, %i.g
  %i.k = sitofp i64 %i.j to double
  %i.l = fdiv double %i.k, 1.000000e+09           ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double %i.l, ptr %i.n, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.q, ptr %i.m, align 8, !tbaa !53
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %2, align 8, !tbaa !57     ; 4 uses
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #30 ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.u ; 2 uses
  store double %i.l, ptr %i.ad, align 8, !tbaa !56
  %i.ae = icmp sgt i64 %i.u, 0
  br i1 %i.ae, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %i.r, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ai) #29
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ac, ptr %2, align 8, !tbaa !57
  store ptr %i.af, ptr %i.m, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.aj, ptr %i.o, align 8, !tbaa !54
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.c, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_410OutputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN7Imf_3_410OutputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN7Imf_3_410OutputPart11writePixelsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9initTiledRSt6vectorIS_IS_IcSaIcEESaIS1_EESaIS3_EERS_IN7Imf_3_411FrameBufferESaIS8_EERNS7_14TiledInputPartERKNS7_6HeaderE(ptr dead_on_unwind noalias writable sret(%struct.partSizeData) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(49) %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Imf_3_4::TileDescription", align 4 ; 6 uses
  %6 = alloca %"class.Imath_3_2::Box", align 4    ; 7 uses
  %7 = alloca %"struct.Imf_3_4::Slice", align 8   ; 4 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_414TiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
  %i.c = tail call ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b) ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
  %i.e = tail call ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.d)
  %.not5.i = icmp eq ptr %i.c, %i.e
  br i1 %.not5.i, label %_Z12channelCountRKN7Imf_3_46HeaderE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi i32 [ %i.f, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.03.06.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.c, %bb.a ]
  %i.f = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %i.g = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.06.i) #28 ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
  %i.i = tail call ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.h)
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %_Z12channelCountRKN7Imf_3_46HeaderE.exit.loopexit, label %.lr.ph.i, !llvm.loop !0

_Z12channelCountRKN7Imf_3_46HeaderE.exit.loopexit: ; preds = %.lr.ph.i
  %8 = zext nneg i32 %i.f to i64
  br label %_Z12channelCountRKN7Imf_3_46HeaderE.exit

_Z12channelCountRKN7Imf_3_46HeaderE.exit:         ; preds = %_Z12channelCountRKN7Imf_3_46HeaderE.exit.loopexit, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %8, %_Z12channelCountRKN7Imf_3_46HeaderE.exit.loopexit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.j = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_414TiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.k = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !164
  %i.l = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_414TiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.m = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.l) ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !166
  switch i32 %i.v, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %_Z12channelCountRKN7Imf_3_46HeaderE.exit, %_Z12channelCountRKN7Imf_3_46HeaderE.exit
  %i.w = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart9numLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.g

bb.c:                                             ; preds = %_Z12channelCountRKN7Imf_3_46HeaderE.exit
  %i.x = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.y = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.z = mul nsw i32 %i.y, %i.x
  br label %bb.g

bb.d:                                             ; preds = %_Z12channelCountRKN7Imf_3_46HeaderE.exit
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.7)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aa) #27
  br label %_ZN12partSizeDataD2Ev.exit

bb.g:                                             ; preds = %bb.c, %bb.b
  %.076 = phi i32 [ %i.w, %bb.b ], [ %i.z, %bb.c ]
  %i.ac = sext i32 %.076 to i64                   ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !63 ; 3 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !64    ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 24                ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %i.ac
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = sub nuw nsw i64 %i.ac, %i.aj
  tail call void @_ZNSt6vectorIS_IS_IcSaIcEESaIS1_EESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.al)
  br label %_ZNSt6vectorIS_IS_IcSaIcEESaIS1_EESaIS3_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.g
  %i.am = icmp ugt i64 %i.aj, %i.ac
  br i1 %i.am, label %bb.j, label %_ZNSt6vectorIS_IS_IcSaIcEESaIS1_EESaIS3_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ac ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.an
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IS_IcSaIcEESaIS1_EESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %_ZSt8_DestroyISt6vectorIS0_IcSaIcEESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.be, %_ZSt8_DestroyISt6vectorIS0_IcSaIcEESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.an, %bb.j ] ; 5 uses
  %i.ao = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !35 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.aq
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.ao, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ar = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #29
  br label %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.aq
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ay = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.ao, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_IcSaIcEESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !65
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #29
  br label %_ZSt8_DestroyISt6vectorIS0_IcSaIcEESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIS0_IcSaIcEESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.l, %_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, %i.ae
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_IcSaIcEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIS0_IcSaIcEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIS0_IcSaIcEESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.an, ptr %i.ad, align 8, !tbaa !63
  br label %_ZNSt6vectorIS_IS_IcSaIcEESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_IS_IcSaIcEESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPSt6vectorIS0_IcSaIcEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !68 ; 3 uses
  %i.bh = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = sdiv exact i64 %i.bk, 48                ; 3 uses
  %i.bm = icmp ult i64 %i.bl, %i.ac
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorIS_IS_IcSaIcEESaIS1_EESaIS3_EE6resizeEm.exit
  %i.bn = sub nuw nsw i64 %i.ac, %i.bl
  tail call void @_ZNSt6vectorIN7Imf_3_411FrameBufferESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bn)
  br label %_ZNSt6vectorIN7Imf_3_411FrameBufferESaIS1_EE6resizeEm.exit

bb.n:                                             ; preds = %_ZNSt6vectorIS_IS_IcSaIcEESaIS1_EESaIS3_EE6resizeEm.exit
  %i.bo = icmp ugt i64 %i.bl, %i.ac
  br i1 %i.bo, label %bb.o, label %_ZNSt6vectorIN7Imf_3_411FrameBufferESaIS1_EE6resizeEm.exit

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %i.ac ; 3 uses
  %.not.i.i78 = icmp eq ptr %i.bg, %i.bp
  br i1 %.not.i.i78, label %_ZNSt6vectorIN7Imf_3_411FrameBufferESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i79

.lr.ph.i.i.i.i79:                                 ; preds = %bb.o, %_ZSt8_DestroyIN7Imf_3_411FrameBufferEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i80 = phi ptr [ %i.bu, %_ZSt8_DestroyIN7Imf_3_411FrameBufferEEvPT_.exit.i.i.i.i ], [ %i.bp, %bb.o ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i80, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !74
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i80, ptr noundef %i.br)
          to label %_ZSt8_DestroyIN7Imf_3_411FrameBufferEEvPT_.exit.i.i.i.i unwind label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i79
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  tail call void @__clang_call_terminate(ptr %i.bt) #31
  unreachable

_ZSt8_DestroyIN7Imf_3_411FrameBufferEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i79
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i80, i64 48 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.bu, %i.bg
  br i1 %.not.i.i.i.i81, label %_ZSt8_DestroyIPN7Imf_3_411FrameBufferES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i79, !llvm.loop !3

_ZSt8_DestroyIPN7Imf_3_411FrameBufferES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN7Imf_3_411FrameBufferEEvPT_.exit.i.i.i.i
  store ptr %i.bp, ptr %i.bf, align 8, !tbaa !68
  br label %_ZNSt6vectorIN7Imf_3_411FrameBufferESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN7Imf_3_411FrameBufferESaIS1_EE6resizeEm.exit: ; preds = %bb.m, %bb.n, %bb.o, %_ZSt8_DestroyIPN7Imf_3_411FrameBufferES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.bv = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.preheader.lr.ph, label %._crit_edge129

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIN7Imf_3_411FrameBufferESaIS1_EE6resizeEm.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge119
  %.064128 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cn, %._crit_edge119 ] ; 4 uses
  %.065127 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge119 ] ; 2 uses
  %.066126 = phi i64 [ 0, %.preheader.lr.ph ], [ %.167.lcssa, %._crit_edge119 ] ; 2 uses
  %.068125 = phi i64 [ 0, %.preheader.lr.ph ], [ %.169.lcssa, %._crit_edge119 ] ; 2 uses
  %.071124 = phi i32 [ 0, %.preheader.lr.ph ], [ %.172.lcssa, %._crit_edge119 ] ; 2 uses
  %i.ca = call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph118, label %._crit_edge119

._crit_edge129.loopexit:                          ; preds = %._crit_edge119
  %i.cc = mul i64 %.167.lcssa, %.169.lcssa
  %i.cd = sext i32 %.1.lcssa to i64
  br label %._crit_edge129

._crit_edge129:                                   ; preds = %._crit_edge129.loopexit, %_ZNSt6vectorIN7Imf_3_411FrameBufferESaIS1_EE6resizeEm.exit
  %.068.lcssa = phi i64 [ 0, %_ZNSt6vectorIN7Imf_3_411FrameBufferESaIS1_EE6resizeEm.exit ], [ %i.cc, %._crit_edge129.loopexit ]
  %.066.lcssa = phi i64 [ 0, %_ZNSt6vectorIN7Imf_3_411FrameBufferESaIS1_EE6resizeEm.exit ], [ %.167.lcssa, %._crit_edge129.loopexit ]
  %.065.lcssa = phi i64 [ 0, %_ZNSt6vectorIN7Imf_3_411FrameBufferESaIS1_EE6resizeEm.exit ], [ %i.cd, %._crit_edge129.loopexit ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.cf, i8 0, i64 18, i1 false)
  store i32 12, ptr %i.ce, align 4, !tbaa !42
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !21
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.ci, align 8, !tbaa !27
  store i8 0, ptr %i.ch, align 8, !tbaa !26
  store i64 %.068.lcssa, ptr %0, align 8, !tbaa !43
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.066.lcssa, ptr %i.cj, align 8, !tbaa !44
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.065.lcssa, ptr %i.ck, align 8, !tbaa !167
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.cl, align 1, !tbaa !75
  %i.cm = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_414TiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ah unwind label %bb.al

._crit_edge119:                                   ; preds = %bb.ag, %.preheader
  %.172.lcssa = phi i32 [ %.071124, %.preheader ], [ %.273, %bb.ag ]
  %.169.lcssa = phi i64 [ %.068125, %.preheader ], [ %.3, %bb.ag ] ; 2 uses
  %.167.lcssa = phi i64 [ %.066126, %.preheader ], [ %.2, %bb.ag ] ; 3 uses
  %.1.lcssa = phi i32 [ %.065127, %.preheader ], [ %i.ht, %bb.ag ] ; 2 uses
  %i.cn = add nuw nsw i32 %.064128, 1             ; 2 uses
  %i.co = call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %.preheader, label %._crit_edge129.loopexit, !llvm.loop !156

.lr.ph118:                                        ; preds = %.preheader, %bb.ag
  %.063117 = phi i32 [ %i.hu, %bb.ag ], [ 0, %.preheader ] ; 4 uses
  %.1116 = phi i32 [ %i.ht, %bb.ag ], [ %.065127, %.preheader ]
  %.167115 = phi i64 [ %.2, %bb.ag ], [ %.066126, %.preheader ] ; 2 uses
  %.169114 = phi i64 [ %.3, %bb.ag ], [ %.068125, %.preheader ]
  %.172113 = phi i32 [ %.273, %bb.ag ], [ %.071124, %.preheader ] ; 3 uses
  %i.cq = load i32, ptr %i.u, align 4, !tbaa !166
  %i.cr = icmp eq i32 %i.cq, 2
  %i.cs = icmp eq i32 %.064128, %.063117
  %or.cond = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond, label %bb.q, label %bb.ag

bb.q:                                             ; preds = %.lr.ph118
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @_ZN7Imf_3_418dataWindowForLevelERKNS_15TileDescriptionEiiiiii(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Box") align 4 %6, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.n, i32 noundef %i.r, i32 noundef %i.p, i32 noundef %i.t, i32 noundef %.064128, i32 noundef %.063117)
  %i.ct = load i32, ptr %i.bx, align 4, !tbaa !169
  %i.cu = add nsw i32 %i.ct, 1
  %i.cv = load i32, ptr %6, align 4, !tbaa !170   ; 2 uses
  %i.cw = sub i32 %i.cu, %i.cv
  %i.cx = sext i32 %i.cw to i64                   ; 3 uses
  %i.cy = load i32, ptr %i.by, align 4, !tbaa !171
  %i.cz = add nsw i32 %i.cy, 1
  %i.da = load i32, ptr %i.bz, align 4, !tbaa !172 ; 2 uses
  %i.db = sub i32 %i.cz, %i.da
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %i.dc, %i.cx                ; 2 uses
  %i.de = sext i32 %i.da to i64
  %i.df = mul nsw i64 %i.de, %i.cx
  %i.dg = sext i32 %i.cv to i64
  %i.dh = add nsw i64 %i.df, %i.dg
  %i.di = sext i32 %.172113 to i64                ; 4 uses
  %i.dj = load ptr, ptr %1, align 8, !tbaa !64
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %i.di ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !34 ; 7 uses
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !35 ; 6 uses
  %i.do = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.dp = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.dq = sub i64 %i.do, %i.dp                    ; 2 uses
  %i.dr = sdiv exact i64 %i.dq, 24                ; 7 uses
  %i.ds = icmp ult i64 %i.dr, %.0.lcssa.i
  br i1 %i.ds, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dt = sub nuw nsw i64 %.0.lcssa.i, %i.dr      ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !65
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.do
  %i.dy = sdiv exact i64 %i.dx, 24                ; 2 uses
  %9 = icmp ult i64 %i.dr, 384307168202282326
  call void @llvm.assume(i1 %9)
  %i.dz = sub nuw nsw i64 384307168202282325, %i.dr
  %i.ea = icmp ule i64 %i.dy, %i.dz
  call void @llvm.assume(i1 %i.ea)
  %.not28.i = icmp ult i64 %i.dy, %i.dt
  br i1 %.not28.i, label %_ZNKSt6vectorIS_IcSaIcEESaIS1_EE12_M_check_lenEmPKc.exit.i, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.r
  %i.eb = mul nuw nsw i64 %i.dt, 24               ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.dm, i8 0, i64 %i.eb, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.dm, i64 %i.eb
  store ptr %scevgep.i.i.i.i, ptr %i.dl, align 8, !tbaa !34
  br label %_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEm.exit

_ZNKSt6vectorIS_IcSaIcEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.r
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dr, i64 %i.dt)
  %i.ec = add nuw nsw i64 %.sroa.speculated.i.i, %i.dr
  %i.ed = call i64 @llvm.umin.i64(i64 %i.ec, i64 384307168202282325) ; 2 uses
  %i.ee = mul nuw nsw i64 %i.ed, 24
  %i.ef = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #30 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dq ; 2 uses
  %i.eh = mul nuw nsw i64 %i.dt, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eg, i8 0, i64 %i.eh, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.dn, %i.dm
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i89

.lr.ph.i.i.i.i89:                                 ; preds = %_ZNKSt6vectorIS_IcSaIcEESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i89
  %.012.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i89 ], [ %i.ef, %_ZNKSt6vectorIS_IcSaIcEESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.em, %.lr.ph.i.i.i.i89 ], [ %i.dn, %_ZNKSt6vectorIS_IcSaIcEESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.ei = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !76, !alias.scope !174, !noalias !173
  store <2 x ptr> %i.ei, ptr %.012.i.i.i.i, align 8, !tbaa !76, !alias.scope !173, !noalias !174
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !38, !alias.scope !174, !noalias !173
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !38, !alias.scope !173, !noalias !174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !174, !noalias !173
  %i.em = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i90 = icmp eq ptr %i.em, %i.dm
  br i1 %.not.i.i.i.i90, label %_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i89, !llvm.loop !4

_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i89, %_ZNKSt6vectorIS_IcSaIcEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.not.i36.i = icmp eq ptr %i.dn, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.eo = load ptr, ptr %i.du, align 8, !tbaa !65
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = sub i64 %i.ep, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.eq) #29
  br label %_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.s, %_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ef, ptr %i.dk, align 8, !tbaa !35
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %i.dt
  store ptr %i.er, ptr %i.dl, align 8, !tbaa !34
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %i.ed
  store ptr %i.es, ptr %i.du, align 8, !tbaa !65
  br label %_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEm.exit

bb.t:                                             ; preds = %bb.q
  %i.et = icmp ugt i64 %i.dr, %.0.lcssa.i
  br i1 %i.et, label %bb.u, label %_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEm.exit

bb.u:                                             ; preds = %bb.t
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %.0.lcssa.i ; 3 uses
  %.not.i.i82 = icmp eq ptr %i.dm, %i.eu
  br i1 %.not.i.i82, label %_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i83

.lr.ph.i.i.i.i83:                                 ; preds = %bb.u, %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i84 = phi ptr [ %i.fb, %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i.i ], [ %i.eu, %bb.u ] ; 3 uses
  %i.ev = load ptr, ptr %.05.i.i.i.i84, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i.i85 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i.i.i.i.i85, label %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i83
  %i.ew = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i84, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !38
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.fa) #29
  br label %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i83
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i84, i64 24 ; 2 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.fb, %i.dm
  br i1 %.not.i.i.i.i86, label %_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i83, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_.exit.i.i.i.i
  store ptr %i.eu, ptr %i.dl, align 8, !tbaa !34
  br label %_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEm.exit:    ; preds = %_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RSaIT1_E.exit.i, %bb.t, %bb.u, %_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.fc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %4)
  %i.fd = call ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fc) ; 2 uses
  %i.fe = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %4)
  %i.ff = call ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fe)
  %.not109 = icmp eq ptr %i.fd, %i.ff
  br i1 %.not109, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit, %_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEm.exit
  %.270.lcssa = phi i64 [ 0, %_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEm.exit ], [ %i.hm, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ]
  %i.fg = add i64 %i.dd, %.167115
  %i.fh = add nsw i32 %.172113, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.ag

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEm.exit, %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ], [ 0, %_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEm.exit ] ; 3 uses
  %.270111 = phi i64 [ %i.hm, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ], [ 0, %_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEm.exit ]
  %.sroa.094.0110 = phi ptr [ %i.hn, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ], [ %i.fd, %_ZNSt6vectorIS_IcSaIcEESaIS1_EE6resizeEm.exit ] ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.094.0110, i64 288 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !47
  %i.fk = call noundef i32 @_ZN7Imf_3_413pixelTypeSizeENS_9PixelTypeE(i32 noundef %i.fj)
  %i.fl = load ptr, ptr %1, align 8, !tbaa !64
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.fl, i64 %i.di
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !35
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %indvars.iv ; 4 uses
  %i.fp = sext i32 %i.fk to i64                   ; 5 uses
  %i.fq = mul i64 %i.dd, %i.fp                    ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 4 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !48 ; 6 uses
  %i.ft = load ptr, ptr %i.fo, align 8, !tbaa !37 ; 6 uses
  %i.fu = ptrtoint ptr %i.fs to i64               ; 2 uses
  %i.fv = ptrtoint ptr %i.ft to i64               ; 2 uses
  %i.fw = sub i64 %i.fu, %i.fv                    ; 9 uses
  %i.fx = icmp ugt i64 %i.fq, %i.fw
  br i1 %i.fx, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %.lr.ph
  %i.fy = sub nuw i64 %i.fq, %i.fw                ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 3 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !38
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = sub i64 %i.gb, %i.fu                    ; 2 uses
  %i.gd = icmp sgt i64 %i.fw, -1
  call void @llvm.assume(i1 %i.gd)
  %i.ge = xor i64 %i.fw, 9223372036854775807      ; 2 uses
  %i.gf = icmp ule i64 %i.gc, %i.ge
  call void @llvm.assume(i1 %i.gf)
  %.not28.i92 = icmp ult i64 %i.gc, %i.fy
  br i1 %.not28.i92, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.fs, align 1, !tbaa !26
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fs, i64 1 ; 2 uses
  %i.gh = add nsw i64 %i.fy, -1                   ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gj = getelementptr i8, ptr %i.fs, i64 %i.fy
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gg, i8 0, i64 %i.gh, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi ptr [ %i.gj, %bb.y ], [ %i.gg, %bb.x ]
  store ptr %.0.i.i.i.i, ptr %i.fr, align 8, !tbaa !48
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.z:                                             ; preds = %bb.w
  %i.gk = icmp ult i64 %i.ge, %i.fy
  br i1 %i.gk, label %bb.aa, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.z
  %.sroa.speculated.i.i93 = call i64 @llvm.umax.i64(i64 %i.fw, i64 %i.fy)
  %i.gl = add nuw i64 %.sroa.speculated.i.i93, %i.fw
  %i.gm = call i64 @llvm.umin.i64(i64 %i.gl, i64 9223372036854775807) ; 2 uses
  %i.gn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #30 ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.fw ; 2 uses
  store i8 0, ptr %i.go, align 1, !tbaa !26
  %i.gp = add nsw i64 %i.fy, -1                   ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gr, i8 0, i64 %i.gp, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.ab, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.fs, %i.ft
  br i1 %.not35.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gn, ptr align 1 %i.ft, i64 %i.fw, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i: ; preds = %bb.ac, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.ft, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  %i.gs = load ptr, ptr %i.fz, align 8, !tbaa !38
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = sub i64 %i.gt, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.gu) #29
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i: ; preds = %bb.ad, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  store ptr %i.gn, ptr %i.fo, align 8, !tbaa !37
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.fq
  store ptr %i.gv, ptr %i.fr, align 8, !tbaa !48
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gm
  store ptr %i.gw, ptr %i.fz, align 8, !tbaa !38
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.ae:                                            ; preds = %.lr.ph
  %i.gx = icmp ult i64 %i.fq, %i.fw
  br i1 %i.gx, label %bb.af, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.af:                                            ; preds = %bb.ae
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fq ; 2 uses
  %.not.i.i87 = icmp eq ptr %i.fs, %i.gy
  br i1 %.not.i.i87, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.af
  store ptr %i.gy, ptr %i.fr, align 8, !tbaa !48
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, %bb.ae, %bb.af, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.gz = load ptr, ptr %2, align 8, !tbaa !69
  %i.ha = getelementptr inbounds nuw [48 x i8], ptr %i.gz, i64 %i.di
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.094.0110, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.hc = load i32, ptr %i.fi, align 4, !tbaa !47
  %i.hd = load ptr, ptr %1, align 8, !tbaa !64
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.hd, i64 %i.di
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !35
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %indvars.iv
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !37
  %i.hi = mul i64 %i.dh, %i.fp
  %i.hj = sub i64 0, %i.hi
  %i.hk = getelementptr inbounds i8, ptr %i.hh, i64 %i.hj
  %i.hl = mul nsw i64 %i.fp, %i.cx
  call void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %7, i32 noundef %i.hc, ptr noundef %i.hk, i64 noundef %i.fp, i64 noundef %i.hl, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @_ZN7Imf_3_411FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %i.ha, ptr noundef nonnull %i.hb, ptr noundef nonnull align 8 dereferenceable(50) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.hm = add nsw i64 %.270111, %i.fp             ; 2 uses
  %i.hn = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.094.0110) #28 ; 2 uses
  %i.ho = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %4)
  %i.hp = call ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ho)
  %.not = icmp eq ptr %i.hn, %i.hp
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !160

bb.ag:                                            ; preds = %.lr.ph118, %._crit_edge
  %.273 = phi i32 [ %i.fh, %._crit_edge ], [ %.172113, %.lr.ph118 ] ; 2 uses
  %.3 = phi i64 [ %.270.lcssa, %._crit_edge ], [ %.169114, %.lr.ph118 ] ; 2 uses
  %.2 = phi i64 [ %i.fg, %._crit_edge ], [ %.167115, %.lr.ph118 ] ; 2 uses
  %i.hq = call noundef i32 @_ZNK7Imf_3_414TiledInputPart9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.064128)
  %i.hr = call noundef i32 @_ZNK7Imf_3_414TiledInputPart9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.063117)
  %i.hs = mul nsw i32 %i.hr, %i.hq
  %i.ht = add nsw i32 %i.hs, %.1116               ; 2 uses
  %i.hu = add nuw nsw i32 %.063117, 1             ; 2 uses
  %i.hv = call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.hw = icmp slt i32 %i.hu, %i.hv
  br i1 %i.hw, label %.lr.ph118, label %._crit_edge119, !llvm.loop !161

bb.ah:                                            ; preds = %._crit_edge129
  %i.hx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7Imf_3_46Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.cm)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %i.hx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.al

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ai
  %i.hy = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_414TiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.hz = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7Imf_3_46Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.hy)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !49
  store i32 %i.ia, ptr %i.ce, align 4, !tbaa !42
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.0.lcssa.i, ptr %i.ib, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.al:                                            ; preds = %bb.ai, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.ah, %._crit_edge129
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = load ptr, ptr %i.cg, align 8, !tbaa !25 ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.ch
  br i1 %i.ie, label %_ZN12partSizeDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.al
  %i.if = load i64, ptr %i.ch, align 8, !tbaa !26
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #29
  br label %_ZN12partSizeDataD2Ev.exit

_ZN12partSizeDataD2Ev.exit:                       ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ic, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_414TiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

declare noundef i32 @_ZNK7Imf_3_414TiledInputPart9numLevelsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef i32 @_ZNK7Imf_3_414TiledInputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef i32 @_ZNK7Imf_3_414TiledInputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare void @_ZN7Imf_3_418dataWindowForLevelERKNS_15TileDescriptionEiiiiii(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Box") align 4, ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK7Imf_3_414TiledInputPart9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK7Imf_3_414TiledInputPart9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9readTiledRN7Imf_3_414TiledInputPartERSt6vectorINS_11FrameBufferESaIS3_EERS2_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_414TiledInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !60
  %i.c = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #27
  %i.d = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader.lr.ph, label %._crit_edge32

.preheader.lr.ph:                                 ; preds = %bb.a
  %.sroa.3.0.copyload.fr = freeze i32 %.sroa.3.0.copyload
  %i.f = icmp eq i32 %.sroa.3.0.copyload.fr, 2
  br i1 %i.f, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.split.us.us
  %.031.us = phi i32 [ %.1.lcssa.us, %._crit_edge.split.us.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.02529.us = phi i32 [ %i.t, %._crit_edge.split.us.us ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.g = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %._crit_edge.split.us.us

.lr.ph.us.preheader:                              ; preds = %.preheader.us
  %i.i = sext i32 %.031.us to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %indvars.iv = phi i64 [ %i.i, %.lr.ph.us.preheader ], [ %indvars.iv.next, %.lr.ph.us ] ; 2 uses
  %.02427.us.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %i.p, %.lr.ph.us ] ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %indvars.iv
  tail call void @_ZN7Imf_3_414TiledInputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.k)
  %i.l = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02529.us)
  %i.m = add nsw i32 %i.l, -1
  %i.n = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02427.us.us)
  %i.o = add nsw i32 %i.n, -1
  tail call void @_ZN7Imf_3_414TiledInputPart9readTilesEiiiiii(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, i32 noundef %i.m, i32 noundef 0, i32 noundef %i.o, i32 noundef %.02529.us, i32 noundef %.02427.us.us)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.p = add nuw nsw i32 %.02427.us.us, 1         ; 2 uses
  %i.q = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %.lr.ph.us, label %._crit_edge.split.us.us.loopexit, !llvm.loop !175

._crit_edge.split.us.us.loopexit:                 ; preds = %.lr.ph.us
  %i.s = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.loopexit, %.preheader.us
  %.1.lcssa.us = phi i32 [ %.031.us, %.preheader.us ], [ %i.s, %._crit_edge.split.us.us.loopexit ]
  %i.t = add nuw nsw i32 %.02529.us, 1            ; 2 uses
  %i.u = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %.preheader.us, label %._crit_edge32, !llvm.loop !176

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge.split
  %.031 = phi i32 [ %.1.lcssa, %._crit_edge.split ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.02529 = phi i32 [ %i.ba, %._crit_edge.split ], [ 0, %.preheader.lr.ph ] ; 6 uses
  %i.w = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge.split

._crit_edge32:                                    ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %bb.a
  %i.y = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #27
  %i.z = sub nsw i64 %i.y, %i.c
  %i.aa = sitofp i64 %i.z to double
  %i.ab = fdiv double %i.aa, 1.000000e+09         ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !53 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge32
  store double %i.ab, ptr %i.ad, align 8, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !53
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.c:                                             ; preds = %._crit_edge32
  %i.ah = load ptr, ptr %2, align 8, !tbaa !57    ; 4 uses
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 5 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.d, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #30 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ak ; 2 uses
  store double %i.ab, ptr %i.at, align 8, !tbaa !56
  %i.au = icmp sgt i64 %i.ak, 0
  br i1 %i.au, label %bb.e, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.ah, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !54
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ay) #29
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.as, ptr %2, align 8, !tbaa !57
  store ptr %i.av, ptr %i.ac, align 8, !tbaa !53
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.az, ptr %i.ae, align 8, !tbaa !54
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.b, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  ret void

._crit_edge.split:                                ; preds = %bb.h, %.preheader
  %.1.lcssa = phi i32 [ %.031, %.preheader ], [ %.2, %bb.h ]
  %i.ba = add nuw nsw i32 %.02529, 1              ; 2 uses
  %i.bb = tail call noundef i32 @_ZNK7Imf_3_414TiledInputPart10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %.preheader, label %._crit_edge32, !llvm.loop !176

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.128 = phi i32 [ %.2, %bb.h ], [ %.031, %.preheader ] ; 3 uses
  %.02427 = phi i32 [ %i.bm, %bb.h ], [ 0, %.preheader ] ; 2 uses
  %i.bd = icmp eq i32 %.02529, %.02427
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.be = sext i32 %.128 to i64
end_hunk_0
