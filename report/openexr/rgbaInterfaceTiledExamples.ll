Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/rgbaInterfaceTiledExamples?download=true
inline.NumInlined: 69
inline.NumDeleted: 19
begin_hunk_0_@_Z18writeTiledRgbaRIP2PKciiii:bb.a
          to label %_ZN7Imf_3_47Array2DINS_4RgbaEEC2Ell.exit unwind label %bb.f

_ZN7Imf_3_47Array2DINS_4RgbaEEC2Ell.exit:         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 12
  br label %bb.b

bb.b:                                             ; preds = %_ZN7Imf_3_47Array2DINS_4RgbaEEC2Ell.exit, %bb.i
  %.033 = phi i32 [ %i.v, %bb.i ], [ 0, %_ZN7Imf_3_47Array2DINS_4RgbaEEC2Ell.exit ] ; 7 uses
  %i.n = invoke noundef i32 @_ZNK7Imf_3_419TiledRgbaOutputFile10numYLevelsEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i32 %.033, %i.n
  br i1 %i.o, label %.preheader47, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN7Imf_3_47Array2DINS_4RgbaEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.p) #9
  br label %_ZN7Imf_3_47Array2DINS_4RgbaEED2Ev.exit

_ZN7Imf_3_47Array2DINS_4RgbaEED2Ev.exit:          ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @_ZN7Imf_3_419TiledRgbaOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret void

bb.f:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7Imf_3_47Array2DINS_4RgbaEED2Ev.exit45

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.preheader47:                                     ; preds = %bb.c, %bb.l
  %.032 = phi i32 [ %i.z, %bb.l ], [ 0, %bb.c ]   ; 7 uses
  %i.t = invoke noundef i32 @_ZNK7Imf_3_419TiledRgbaOutputFile10numXLevelsEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.preheader47
  %i.u = icmp slt i32 %.032, %i.t
  br i1 %i.u, label %.preheader46, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = add nuw nsw i32 %.033, 1
  br label %bb.b, !llvm.loop !33

bb.j:                                             ; preds = %.preheader47
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.preheader46:                                     ; preds = %bb.h, %bb.o
  %.031 = phi i32 [ %i.ad, %bb.o ], [ 0, %bb.h ]  ; 4 uses
  %i.x = invoke noundef i32 @_ZNK7Imf_3_419TiledRgbaOutputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %.033)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.preheader46
  %i.y = icmp slt i32 %.031, %i.x
  br i1 %i.y, label %.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = add nuw nsw i32 %.032, 1
  br label %.preheader47, !llvm.loop !34

bb.m:                                             ; preds = %.preheader46
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.preheader:                                       ; preds = %bb.k, %bb.w
  %.0 = phi i32 [ %i.ay, %bb.w ], [ 0, %bb.k ]    ; 4 uses
  %i.ab = invoke noundef i32 @_ZNK7Imf_3_419TiledRgbaOutputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %.032)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %.preheader
  %i.ac = icmp slt i32 %.0, %i.ab
  br i1 %i.ac, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = add nuw nsw i32 %.031, 1
  br label %.preheader46, !llvm.loop !35

bb.p:                                             ; preds = %.preheader
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  invoke void @_ZNK7Imf_3_419TiledRgbaOutputFile17dataWindowForTileEiiii(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Box") align 4 %8, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %.0, i32 noundef %.031, i32 noundef %.032, i32 noundef %.033)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.af = invoke noundef i32 @_ZNK7Imf_3_419TiledRgbaOutputFile10levelWidthEi(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %.032)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.ag = invoke noundef i32 @_ZNK7Imf_3_419TiledRgbaOutputFile11levelHeightEi(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %.033)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ah = load i32, ptr %8, align 4, !tbaa !20
  %i.ai = load i32, ptr %i.k, align 4, !tbaa !23
  %i.aj = add nsw i32 %i.ai, 1
  %i.ak = load i32, ptr %i.l, align 4, !tbaa !24
  %i.al = load i32, ptr %i.m, align 4, !tbaa !25
  %i.am = add nsw i32 %i.al, 1
  invoke void @_Z10drawImage5RN7Imf_3_47Array2DINS_4RgbaEEEiiiiiiii(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %i.af, i32 noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.aj, i32 noundef %i.ak, i32 noundef %i.am, i32 noundef %.032, i32 noundef %.033)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.an = load i32, ptr %i.l, align 4, !tbaa !24
  %i.ao = sub nsw i32 0, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !16
  %i.as = mul nsw i64 %i.ar, %i.ap
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = load i32, ptr %8, align 4, !tbaa !20
  %i.av = sub nsw i32 0, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.aw
  invoke void @_ZN7Imf_3_419TiledRgbaOutputFile14setFrameBufferEPKNS_4RgbaEmm(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %i.ax, i64 noundef 1, i64 noundef %i.c)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN7Imf_3_419TiledRgbaOutputFile9writeTileEiiii(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %.0, i32 noundef %.031, i32 noundef %.032, i32 noundef %.033)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  %i.ay = add nuw nsw i32 %.0, 1
  br label %.preheader, !llvm.loop !36

bb.x:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %bb.y

bb.y:                                             ; preds = %bb.j, %bb.p, %bb.x, %bb.m, %bb.g
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.w, %bb.j ], [ %i.aa, %bb.m ], [ %i.az, %bb.x ], [ %i.ae, %bb.p ] ; 2 uses
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZN7Imf_3_47Array2DINS_4RgbaEED2Ev.exit45, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.ba) #9
  br label %_ZN7Imf_3_47Array2DINS_4RgbaEED2Ev.exit45

_ZN7Imf_3_47Array2DINS_4RgbaEED2Ev.exit45:        ; preds = %bb.z, %bb.y, %bb.f
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.f ], [ %.pn.pn.pn.pn, %bb.y ], [ %.pn.pn.pn.pn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @_ZN7Imf_3_419TiledRgbaOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @_ZNK7Imf_3_419TiledRgbaOutputFile17dataWindowForTileEiiii(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Box") align 4, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7Imf_3_419TiledRgbaOutputFile9writeTileEiiii(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z14readTiledRgba1PKcRN7Imf_3_47Array2DINS1_4RgbaEEERiS6_(ptr noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Imf_3_4::TiledRgbaInputFile", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = tail call noundef i32 @_ZN7Imf_3_417globalThreadCountEv()
  call void @_ZN7Imf_3_418TiledRgbaInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %0, i32 noundef %i.a)
  %i.b = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_418TiledRgbaInputFile10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.b unwind label %bb.i       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !37   ; 2 uses
  %i.d = sub i32 0, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !38
  %reass.sub = sub i32 %i.h, %i.c
  %i.k = add i32 %reass.sub, 1
  store i32 %i.k, ptr %2, align 4, !tbaa !39
  %i.l = sub nsw i32 %i.j, %i.f
  %i.m = add nsw i32 %i.l, 1                      ; 2 uses
  store i32 %i.m, ptr %3, align 4, !tbaa !39
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = load i32, ptr %2, align 4, !tbaa !39
  %i.p = sext i32 %i.o to i64                     ; 3 uses
  %i.q = mul nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = icmp ugt i64 %i.q, 2305843009213693951
  %i.s = shl nuw i64 %i.q, 3
  %i.t = select i1 %i.r, i64 -1, i64 %i.s
  %i.u = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #8
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.w) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  store i64 %i.n, ptr %1, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.p, ptr %i.y, align 8, !tbaa !16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !17
  %i.z = sub nsw i32 0, %i.f
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul nsw i64 %i.p, %i.aa
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ab
  %i.ad = sext i32 %i.d to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad
  %5 = load i32, ptr %2, align 4, !tbaa !39
  %6 = sext i32 %5 to i64
  invoke void @_ZN7Imf_3_418TiledRgbaInputFile14setFrameBufferEPNS_4RgbaEmm(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull %i.ae, i64 noundef 1, i64 noundef %6)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.af = invoke noundef i32 @_ZNK7Imf_3_418TiledRgbaInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef 0)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ag = invoke noundef i32 @_ZNK7Imf_3_418TiledRgbaInputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef 0)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ah = add nsw i32 %i.af, -1
  %i.ai = add nsw i32 %i.ag, -1
  invoke void @_ZN7Imf_3_418TiledRgbaInputFile9readTilesEiiiii(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef 0, i32 noundef %i.ah, i32 noundef 0, i32 noundef %i.ai, i32 noundef 0)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @_ZN7Imf_3_418TiledRgbaInputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret void

bb.i:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %i.aj, %bb.i ]
  call void @_ZN7Imf_3_418TiledRgbaInputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  resume { ptr, i32 } %.pn
}

declare void @_ZN7Imf_3_418TiledRgbaInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) unnamed_addr #2

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_418TiledRgbaInputFile10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare void @_ZN7Imf_3_418TiledRgbaInputFile14setFrameBufferEPNS_4RgbaEmm(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN7Imf_3_418TiledRgbaInputFile9readTilesEiiiii(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK7Imf_3_418TiledRgbaInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK7Imf_3_418TiledRgbaInputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7Imf_3_418TiledRgbaInputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_Z26rgbaInterfaceTiledExamplesv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %0 = alloca %"class.Imf_3_4::Array2D", align 8  ; 8 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 19) ; 0 uses
  %i.d = load ptr, ptr @_ZSt4cout, align 8, !tbaa !40
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #10
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load i8, ptr %i.j, align 8, !tbaa !58
  %.not.i1.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 67
  %i.m = load i8, ptr %i.l, align 1, !tbaa !64
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.i)
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef signext i8 %i.p(ptr noundef nonnull align 8 dereferenceable(570) %i.i, i8 noundef signext 10), !inline_history !65
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.m, %bb.c ], [ %i.q, %bb.d ]
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 600, ptr %i.a, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 47) ; 0 uses
  %i.u = load ptr, ptr @_ZSt4cout, align 8, !tbaa !40
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 240
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42   ; 6 uses
  %.not.i.i.i12 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i12, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i13

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  tail call void @_ZSt16__throw_bad_castv() #10
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i13: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !58
  %.not.i1.i.i14 = icmp eq i8 %i.ab, 0
  br i1 %.not.i1.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !64
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit16

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i13
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.z)
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef signext i8 %i.ag(ptr noundef nonnull align 8 dereferenceable(570) %i.z, i8 noundef signext 10), !inline_history !65
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit16

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit16: ; preds = %bb.f, %bb.g
  %.0.i.i.i15 = phi i8 [ %i.ad, %bb.f ], [ %i.ah, %bb.g ]
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i15)
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #7
  store i64 400, ptr %0, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 600, ptr %i.ak, align 8, !tbaa !16
  %i.al = tail call noalias noundef nonnull dereferenceable(1920000) ptr @_Znam(i64 noundef 1920000) #8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !17
  invoke void @_Z10drawImage3RN7Imf_3_47Array2DINS_4RgbaEEEiiiiiiii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 600, i32 noundef 400, i32 noundef 0, i32 noundef 600, i32 noundef 0, i32 noundef 400, i32 noundef 0, i32 noundef 0)
          to label %bb.h unwind label %bb.ac

bb.h:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17
  invoke void @_Z18writeTiledRgbaONE1PKcPKN7Imf_3_44RgbaEiiii(ptr noundef nonnull @.str.2, ptr noundef %i.an, i32 noundef 600, i32 noundef 400, i32 noundef 100, i32 noundef 75)
          to label %bb.i unwind label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ac ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %i.ap = load ptr, ptr @_ZSt4cout, align 8, !tbaa !40
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 240
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42 ; 6 uses
  %.not.i.i.i17 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i17, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !58
  %.not.i1.i.i19 = icmp eq i8 %i.aw, 0
  br i1 %.not.i1.i.i19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 67
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !64
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.au)
          to label %.noexc21 unwind label %bb.ac

.noexc21:                                         ; preds = %bb.k
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef signext i8 %i.bb(ptr noundef nonnull align 8 dereferenceable(570) %i.au, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.ac, !inline_history !66

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc21, %bb.j
  %.0.i.i.i20 = phi i8 [ %i.ay, %bb.j ], [ %i.bc, %.noexc21 ]
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i20)
          to label %.noexc23 unwind label %bb.ac

.noexc23:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.ac ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc23
  invoke void @_Z18writeTiledRgbaONE2PKciiii(ptr noundef nonnull @.str.4, i32 noundef 600, i32 noundef 400, i32 noundef 100, i32 noundef 75)
          to label %bb.l unwind label %bb.ac

end_hunk_0
