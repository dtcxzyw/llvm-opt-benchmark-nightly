Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfRgbaFile?download=true
inline.NumInlined: 465
inline.NumDeleted: 190
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7Imf_3_412_GLOBAL__N_114insertChannelsERNS_6HeaderENS_12RgbaChannelsE:bb.a
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13) %7, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN7Imf_3_411ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.7, ptr noundef nonnull align 4 dereferenceable(13) %7)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.am

bb.y:                                             ; preds = %bb.w, %bb.t
  %i.p = and i32 %1, 4
  %.not12 = icmp eq i32 %i.p, 0
  br i1 %.not12, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13) %8, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN7Imf_3_411ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(13) %8)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.am

bb.ad:                                            ; preds = %bb.y, %bb.ab, %bb.g, %bb.l
  %i.r = and i32 %1, 8
  %.not15 = icmp eq i32 %i.r, 0
  br i1 %.not15, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13) %9, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN7Imf_3_411ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 4 dereferenceable(13) %9)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.am

bb.ai:                                            ; preds = %bb.ag, %bb.ad
  %i.t = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.u = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_7ChannelEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZN7Imf_3_411ChannelListaSERKS0_.exit unwind label %bb.al ; 0 uses

_ZN7Imf_3_411ChannelListaSERKS0_.exit:            ; preds = %bb.aj
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !53
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_7ChannelEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.v)
          to label %_ZN7Imf_3_411ChannelListD2Ev.exit unwind label %bb.ak

bb.ak:                                            ; preds = %_ZN7Imf_3_411ChannelListaSERKS0_.exit
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #27
  unreachable

_ZN7Imf_3_411ChannelListD2Ev.exit:                ; preds = %_ZN7Imf_3_411ChannelListaSERKS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ac, %bb.x, %bb.s, %bb.n, %bb.m, %bb.f
  %.pn = phi { ptr, i32 } [ %i.y, %bb.al ], [ %i.s, %bb.ah ], [ %i.k, %bb.n ], [ %i.j, %bb.m ], [ %i.h, %bb.f ], [ %i.q, %bb.ac ], [ %i.o, %bb.x ], [ %i.m, %bb.s ]
  call void @_ZN7Imf_3_411ChannelListD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare void @_ZN7Imf_3_410OutputFileC1EPKcRKNS_6HeaderEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_414RgbaOutputFileC2ERNS_7OStreamERKNS_6HeaderENS_12RgbaChannelsEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Imf_3_4::Header", align 8   ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7Imf_3_414RgbaOutputFileE, i64 16), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN7Imf_3_46HeaderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull align 8 dereferenceable(49) %2)
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_114insertChannelsERNS_6HeaderENS_12RgbaChannelsE(ptr noundef nonnull align 8 dereferenceable(49) %5, i32 noundef %3)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %bb.c unwind label %bb.h       ; 3 uses

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7Imf_3_410OutputFileC1ERNS_7OStreamERKNS_6HeaderEi(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(49) %5, i32 noundef %4)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  store ptr %i.c, ptr %i.a, align 8, !tbaa !66
  %i.d = and i32 %3, 48
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = invoke noalias noundef nonnull dereferenceable(352) ptr @_Znwm(i64 noundef 352) #25
          to label %bb.f unwind label %bb.h       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !66
  invoke void @_ZN7Imf_3_414RgbaOutputFile5ToYcaC2ERNS_10OutputFileENS_12RgbaChannelsE(ptr noundef nonnull align 8 dereferenceable(352) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef %3)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  store ptr %i.e, ptr %i.b, align 8, !tbaa !67
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #26
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 352) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.d
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.i, %bb.j ], [ %i.g, %bb.h ], [ %i.h, %bb.i ]
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn
}

declare void @_ZN7Imf_3_410OutputFileC1ERNS_7OStreamERKNS_6HeaderEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_414RgbaOutputFileC2EPKcRKN9Imath_3_23BoxINS3_4Vec2IiEEEES9_NS_12RgbaChannelsEfNS5_IfEEfNS_9LineOrderENS_11CompressionEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %4, float noundef %5, ptr noundef nonnull align 4 dead_on_return %6, float noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.Imf_3_4::Header", align 8  ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7Imf_3_414RgbaOutputFileE, i64 16), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load <2 x i32>, ptr %i.c, align 4
  %i.e = load <2 x i32>, ptr %3, align 4
  %i.f = icmp slt <2 x i32> %i.d, %i.e
  %12 = freeze <2 x i1> %i.f
  %13 = bitcast <2 x i1> %12 to i2
  %.not17 = icmp eq i2 %13, 0
  %i.g = select i1 %.not17, ptr %3, ptr %2
  call void @_ZN7Imf_3_46HeaderC1ERKN9Imath_3_23BoxINS1_4Vec2IiEEEES7_fRKNS3_IfEEfNS_9LineOrderENS_11CompressionE(ptr noundef nonnull align 8 dereferenceable(49) %11, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.g, float noundef %5, ptr noundef nonnull align 4 dereferenceable(8) %6, float noundef %7, i32 noundef %8, i32 noundef %9)
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_114insertChannelsERNS_6HeaderENS_12RgbaChannelsE(ptr noundef nonnull align 8 dereferenceable(49) %11, i32 noundef %4)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %bb.c unwind label %bb.h       ; 3 uses

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7Imf_3_410OutputFileC1EPKcRKNS_6HeaderEi(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %11, i32 noundef %10)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %i.a, align 8, !tbaa !66
  %i.i = and i32 %4, 48
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noalias noundef nonnull dereferenceable(352) ptr @_Znwm(i64 noundef 352) #25
          to label %bb.f unwind label %bb.h       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !66
  invoke void @_ZN7Imf_3_414RgbaOutputFile5ToYcaC2ERNS_10OutputFileENS_12RgbaChannelsE(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i32 noundef %4)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  store ptr %i.j, ptr %i.b, align 8, !tbaa !67
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 16) #26
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 352) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.d
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  ret void

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.l, %bb.h ], [ %i.m, %bb.i ]
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  resume { ptr, i32 } %.pn
}

declare void @_ZN7Imf_3_46HeaderC1ERKN9Imath_3_23BoxINS1_4Vec2IiEEEES7_fRKNS3_IfEEfNS_9LineOrderENS_11CompressionE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_414RgbaOutputFileC2EPKciiNS_12RgbaChannelsEfN9Imath_3_24Vec2IfEEfNS_9LineOrderENS_11CompressionEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, ptr noundef nonnull align 4 dead_on_return %6, float noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.Imf_3_4::Header", align 8  ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7Imf_3_414RgbaOutputFileE, i64 16), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @_ZN7Imf_3_46HeaderC1EiifRKN9Imath_3_24Vec2IfEEfNS_9LineOrderENS_11CompressionE(ptr noundef nonnull align 8 dereferenceable(49) %11, i32 noundef %2, i32 noundef %3, float noundef %5, ptr noundef nonnull align 4 dereferenceable(8) %6, float noundef %7, i32 noundef %8, i32 noundef %9)
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_114insertChannelsERNS_6HeaderENS_12RgbaChannelsE(ptr noundef nonnull align 8 dereferenceable(49) %11, i32 noundef %4)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %bb.c unwind label %bb.h       ; 3 uses

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7Imf_3_410OutputFileC1EPKcRKNS_6HeaderEi(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %11, i32 noundef %10)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  store ptr %i.c, ptr %i.a, align 8, !tbaa !66
  %i.d = and i32 %4, 48
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = invoke noalias noundef nonnull dereferenceable(352) ptr @_Znwm(i64 noundef 352) #25
          to label %bb.f unwind label %bb.h       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !66
  invoke void @_ZN7Imf_3_414RgbaOutputFile5ToYcaC2ERNS_10OutputFileENS_12RgbaChannelsE(ptr noundef nonnull align 8 dereferenceable(352) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef %4)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  store ptr %i.e, ptr %i.b, align 8, !tbaa !67
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #26
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 352) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.d
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  ret void

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.i, %bb.j ], [ %i.g, %bb.h ], [ %i.h, %bb.i ]
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  resume { ptr, i32 } %.pn
}

declare void @_ZN7Imf_3_46HeaderC1EiifRKN9Imath_3_24Vec2IfEEfNS_9LineOrderENS_11CompressionE(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, i32 noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7Imf_3_414RgbaOutputFileD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7Imf_3_414RgbaOutputFileE, i64 16), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN7Imf_3_414RgbaOutputFile5ToYcaD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #26
  br label %_ZN7Imf_3_414RgbaOutputFile5ToYcaD2Ev.exit

_ZN7Imf_3_414RgbaOutputFile5ToYcaD2Ev.exit:       ; preds = %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 352) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZN7Imf_3_414RgbaOutputFile5ToYcaD2Ev.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7Imf_3_414RgbaOutputFileD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN7Imf_3_414RgbaOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_414RgbaOutputFile14setFrameBufferEPKNS_4RgbaEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Imf_3_4::FrameBuffer", align 8 ; 15 uses
  %5 = alloca %"struct.Imf_3_4::Slice", align 8   ; 5 uses
  %6 = alloca %"struct.Imf_3_4::Slice", align 8   ; 5 uses
  %7 = alloca %"struct.Imf_3_4::Slice", align 8   ; 5 uses
  %8 = alloca %"struct.Imf_3_4::Slice", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_0
