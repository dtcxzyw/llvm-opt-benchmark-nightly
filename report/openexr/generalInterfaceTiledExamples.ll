Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/generalInterfaceTiledExamples?download=true
inline.NumInlined: 67
inline.NumDeleted: 47
begin_hunk_0_@_Z11writeTiled1PKcRN7Imf_3_47Array2DI2GZEEiiii:bb.a
bb.m:                                             ; preds = %bb.l
  invoke void @_ZN7Imf_3_411FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(50) %14)
          to label %bb.n unwind label %bb.z

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  invoke void @_ZN7Imf_3_415TiledOutputFile14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(25) %11, ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.r = invoke noundef i32 @_ZNK7Imf_3_415TiledOutputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(25) %11, i32 noundef 0)
          to label %bb.p unwind label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.s = invoke noundef i32 @_ZNK7Imf_3_415TiledOutputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(25) %11, i32 noundef 0)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.t = add nsw i32 %i.r, -1
  %i.u = add nsw i32 %i.s, -1
  invoke void @_ZN7Imf_3_415TiledOutputFile10writeTilesEiiiii(ptr noundef nonnull align 8 dereferenceable(25) %11, i32 noundef 0, i32 noundef %i.t, i32 noundef 0, i32 noundef %i.u, i32 noundef 0)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !25
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.v)
          to label %_ZN7Imf_3_411FrameBufferD2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #12
  unreachable

_ZN7Imf_3_411FrameBufferD2Ev.exit:                ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @_ZN7Imf_3_415TiledOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret void

bb.t:                                             ; preds = %bb.d, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.u:                                             ; preds = %bb.c, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.ad

bb.v:                                             ; preds = %bb.f, %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.ad

bb.w:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.ad

bb.x:                                             ; preds = %bb.i, %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.y:                                             ; preds = %bb.k, %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %bb.ab

bb.z:                                             ; preds = %bb.m, %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.ab

bb.aa:                                            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.af, %bb.aa ], [ %i.ae, %bb.z ], [ %i.ad, %bb.y ]
  call void @_ZN7Imf_3_411FrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @_ZN7Imf_3_415TiledOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %11) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %i.ac, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.w, %bb.v, %bb.u, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ac ], [ %i.ab, %bb.w ], [ %i.aa, %bb.v ], [ %i.y, %bb.t ], [ %i.z, %bb.u ]
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN7Imf_3_46HeaderC1EiifRKN9Imath_3_24Vec2IfEEfNS_9LineOrderENS_11CompressionE(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, i32 noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN7Imf_3_411ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 4 dereferenceable(13)) local_unnamed_addr #2

declare void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13), i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #2

declare void @_ZN7Imf_3_46Header18setTileDescriptionERKNS_15TileDescriptionE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_ZN7Imf_3_417globalThreadCountEv() local_unnamed_addr #2

declare void @_ZN7Imf_3_415TiledOutputFileC1EPKcRKNS_6HeaderEi(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) unnamed_addr #2

declare void @_ZN7Imf_3_411FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(50)) local_unnamed_addr #2

declare void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50), i32 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, double noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

declare void @_ZN7Imf_3_415TiledOutputFile14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN7Imf_3_415TiledOutputFile10writeTilesEiiiii(ptr noundef nonnull align 8 dereferenceable(25), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK7Imf_3_415TiledOutputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(25), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK7Imf_3_415TiledOutputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(25), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7Imf_3_411FrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #12
  unreachable

_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7Imf_3_415TiledOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10readTiled1PKcRN7Imf_3_47Array2DI2GZEERiS6_(ptr noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Imf_3_4::TiledInputFile", align 8 ; 12 uses
  %5 = alloca %"class.Imf_3_4::FrameBuffer", align 8 ; 13 uses
  %6 = alloca %"struct.Imf_3_4::Slice", align 8   ; 5 uses
  %7 = alloca %"struct.Imf_3_4::Slice", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = tail call noundef i32 @_ZN7Imf_3_417globalThreadCountEv()
  call void @_ZN7Imf_3_414TiledInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %0, i32 noundef %i.a)
  %i.b = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_414TiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
          to label %bb.c unwind label %bb.aa      ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32   ; 2 uses
  %i.e = sub i32 0, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !34   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !34
  %reass.sub = sub i32 %i.i, %i.d
  %i.l = add i32 %reass.sub, 1
  store i32 %i.l, ptr %2, align 4, !tbaa !35
  %i.m = sub nsw i32 %i.k, %i.g
  %i.n = add nsw i32 %i.m, 1                      ; 2 uses
  store i32 %i.n, ptr %3, align 4, !tbaa !35
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = load i32, ptr %2, align 4, !tbaa !35
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = mul nsw i64 %i.q, %i.o                   ; 2 uses
  %i.s = icmp ugt i64 %i.r, 2305843009213693951
  %i.t = shl nuw i64 %i.r, 3
  %i.u = select i1 %i.s, i64 -1, i64 %i.t
  %i.v = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #13
          to label %.noexc unwind label %bb.ab    ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.x) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  store i64 %i.o, ptr %1, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.z, align 8, !tbaa !37
  store ptr %i.v, ptr %i.w, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.ae, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.af = sub nsw i32 0, %i.g
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = mul nsw i64 %i.q, %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ah
  %i.aj = sext i32 %i.e to i64                    ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aj
  %8 = load i32, ptr %2, align 4, !tbaa !35
  %9 = sext i32 %8 to i64
  %i.al = shl nsw i64 %9, 3
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %6, i32 noundef 1, ptr noundef nonnull %i.ak, i64 noundef 8, i64 noundef %i.al, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.ac

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7Imf_3_411FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(50) %6)
          to label %bb.g unwind label %bb.ac

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.an = load i64, ptr %i.z, align 8, !tbaa !37
  %i.ao = mul nsw i64 %i.an, %i.ag
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aj
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %2, align 4, !tbaa !35
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 3
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %7, i32 noundef 2, ptr noundef nonnull %i.ar, i64 noundef 8, i64 noundef %i.au, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.ad

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7Imf_3_411FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(50) %7)
          to label %bb.i unwind label %bb.ad

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  invoke void @_ZN7Imf_3_414TiledInputFile14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.j unwind label %bb.ae

bb.j:                                             ; preds = %bb.i
  %i.av = invoke noundef i32 @_ZNK7Imf_3_414TiledInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0)
          to label %bb.k unwind label %bb.ae

bb.k:                                             ; preds = %bb.j
  %i.aw = invoke noundef i32 @_ZNK7Imf_3_414TiledInputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0)
          to label %bb.l unwind label %bb.ae

bb.l:                                             ; preds = %bb.k
  %i.ax = add nsw i32 %i.av, -1
  %i.ay = add nsw i32 %i.aw, -1
  invoke void @_ZN7Imf_3_414TiledInputFile9readTilesEiiiii(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i32 noundef %i.ax, i32 noundef 0, i32 noundef %i.ay, i32 noundef 0)
          to label %bb.m unwind label %bb.ae

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.ab, align 8, !tbaa !25
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.az)
          to label %_ZN7Imf_3_411FrameBufferD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #12
  unreachable

_ZN7Imf_3_411FrameBufferD2Ev.exit:                ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !38 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN7Imf_3_414TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN7Imf_3_411FrameBufferD2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.be, align 8, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !43
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #11, !inline_history !46
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !44
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #11, !inline_history !46
  br label %_ZNSt12__shared_ptrIN7Imf_3_414TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.bh, %bb.r ], [ %i.br, %bb.s ]
  %i.bs = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bs, label %bb.t, label %_ZNSt12__shared_ptrIN7Imf_3_414TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !48

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #11
  br label %_ZNSt12__shared_ptrIN7Imf_3_414TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7Imf_3_414TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p, %_ZN7Imf_3_411FrameBufferD2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !38 ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i1.i, label %_ZN7Imf_3_414TiledInputFileD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN7Imf_3_414TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bv, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !43
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !44
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #11, !inline_history !49
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !44
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #11, !inline_history !49
  br label %_ZN7Imf_3_414TiledInputFileD2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i = phi i32 [ %i.by, %bb.x ], [ %i.ci, %bb.y ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.z, label %_ZN7Imf_3_414TiledInputFileD2Ev.exit, !prof !48

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #11
  br label %_ZN7Imf_3_414TiledInputFileD2Ev.exit

_ZN7Imf_3_414TiledInputFileD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN7Imf_3_414TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void

bb.aa:                                            ; preds = %bb.b, %bb.a
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ab:                                            ; preds = %bb.c
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ac:                                            ; preds = %bb.f, %bb.e
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.af

bb.ad:                                            ; preds = %bb.h, %bb.g
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.af

bb.ae:                                            ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.co, %bb.ae ], [ %i.cn, %bb.ad ], [ %i.cm, %bb.ac ]
  call void @_ZN7Imf_3_411FrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %bb.af, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.aa ], [ %.pn, %bb.af ], [ %i.cl, %bb.ab ]
  call void @_ZN7Imf_3_414TiledInputFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  resume { ptr, i32 } %.pn.pn.pn
end_hunk_0
