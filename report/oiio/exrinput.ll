inline.NumInlined: 5390
inline.NumDeleted: 1762
begin_hunk_0_@_ZNK11OpenImageIO4v3_112OpenEXRInput8PartInfo14compute_mipresEiRNS0_9ImageSpecE:bb.a
  %i.ad = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ac, <2 x i32> splat (i32 1)) ; 2 uses
  %i.ae = add nsw i32 %.050, -2                   ; 2 uses
  %.not.1 = icmp eq i32 %i.ae, 0
  br i1 %.not.1, label %.loopexit, label %.lr.ph.split, !llvm.loop !338

bb.c:                                             ; preds = %bb.b
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !132
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.52, i32 noundef 1006, ptr noundef nonnull @__FUNCTION__._ZNK11OpenImageIO4v3_112OpenEXRInput8PartInfo14compute_mipresEiRNS0_9ImageSpecE, ptr noundef nonnull @.str.142, i32 noundef %i.b) #41 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %.preheader, %bb.b, %bb.c
  %i.ah = phi <2 x i32> [ %i.e, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %.preheader ], [ %i.v, %.lr.ph.split.us ], [ %.lcssa.unr, %.lr.ph.split.us.prol.loopexit ], [ %.lcssa61.unr, %.lr.ph.split.prol.loopexit ], [ %i.ad, %.lr.ph.split ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  store <2 x i32> %i.ah, ptr %i.ai, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !223 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.am = load i32, ptr %i.al, align 4, !tbaa !224 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ap = load <2 x i32>, ptr %i.an, align 8, !tbaa !3 ; 3 uses
  %i.aq = load <2 x i32>, ptr %i.ao, align 8, !tbaa !3
  store i32 %i.ak, ptr %2, align 8, !tbaa !339
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.am, ptr %i.ar, align 4, !tbaa !340
  %i.as = icmp eq i32 %1, 0
  br i1 %i.as, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.at = sub <2 x i32> %i.aq, %i.ap
  %i.au = add <2 x i32> %i.at, splat (i32 1)
  %i.av = extractelement <2 x i32> %i.ap, i64 0
  %i.aw = extractelement <2 x i32> %i.ap, i64 1
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %.sink56 = phi i32 [ %i.av, %bb.d ], [ %i.ak, %.loopexit ]
  %.sink = phi i32 [ %i.aw, %bb.d ], [ %i.am, %.loopexit ]
  %i.ax = phi <2 x i32> [ %i.au, %bb.d ], [ %i.ah, %.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sink56, ptr %i.ay, align 8, !tbaa !341
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %.sink, ptr %i.az, align 4, !tbaa !342
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  store <2 x i32> %i.ax, ptr %i.ba, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !259, !range !127, !noundef !128
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bf = extractelement <2 x i32> %i.ah, i64 0   ; 2 uses
  store i32 %i.bf, ptr %i.ba, align 4, !tbaa !343
  store i32 %i.bf, ptr %i.be, align 8, !tbaa !344
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.270", align 16 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37, !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37, !noalias !345
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !351
  store i32 %i.b, ptr %4, align 16, !tbaa !15, !alias.scope !348, !noalias !345
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !3, !noalias !351
  store i32 %i.d, ptr %i.c, align 16, !tbaa !15, !alias.scope !348, !noalias !345
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %1, i64 %i.a, i64 17, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37, !noalias !345
  %i.e = load ptr, ptr %6, align 8, !tbaa !13
  store ptr %i.e, ptr %5, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16
  store i64 %i.h, ptr %i.f, align 8, !tbaa !89
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %6, align 8, !tbaa !13     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8, !tbaa !15
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret void

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %6, align 8, !tbaa !13     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.r = load i64, ptr %i.p, align 8, !tbaa !15
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_118OpenEXRInputStream5seekgEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 noundef %1)
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 72) #37 ; 3 uses
  invoke void @_ZN7Iex_3_35IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull @.str.161)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN7Iex_3_35IoExcE, ptr nonnull @_ZN7Iex_3_35IoExcD1Ev) #36
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #37
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  ret void
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFileC1ERNS_7IStreamEi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput10check_openERKNS0_9ImageSpecENS0_3ROIEm(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(160), ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_112OpenEXRInput4specEii(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageSpec") align 8 %0, ptr noundef nonnull align 8 dereferenceable(352) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_19ImageSpecC1ENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 256) #37
  %i.a = icmp sgt i32 %2, -1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.c = load i32, ptr %i.b, align 4
  %.not = icmp slt i32 %2, %i.c
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.e = zext nneg i32 %2 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !171
  %i.g = getelementptr inbounds nuw [272 x i8], ptr %i.f, i64 %i.e ; 9 uses
  %i.h = load atomic i8, ptr %i.g seq_cst, align 1, !range !127, !noundef !128
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEEC2ES4_.exit unwind label %bb.f

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEEC2ES4_.exit: ; preds = %bb.c
  %i.j = load atomic i8, ptr %i.g seq_cst, align 1, !range !127, !noundef !128
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEEC2ES4_.exit
  %i.l = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112OpenEXRInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(352) %1, i32 noundef %2, i32 noundef %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.l, label %bb.i, label %6

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #39
  unreachable

bb.i:                                             ; preds = %bb.e, %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEEC2ES4_.exit
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #39
  unreachable

6:                                                ; preds = %bb.e
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %.critedge unwind label %bb.k

bb.k:                                             ; preds = %6
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #39
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.b
  %i.s = icmp slt i32 %3, 0
  br i1 %i.s, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %i.u = load i32, ptr %i.t, align 4, !tbaa !211
  %.not25 = icmp slt i32 %3, %i.u
  br i1 %.not25, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.v, i64 72, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.y = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.noexc unwind label %bb.o     ; 0 uses

.noexc:                                           ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.ab = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.noexc30 unwind label %bb.o   ; 0 uses

.noexc30:                                         ; preds = %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ac, ptr noundef nonnull align 8 dereferenceable(9) %i.ad, i64 9, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ag = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_.exit unwind label %bb.o ; 0 uses

_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_.exit:     ; preds = %.noexc30
  tail call void @_ZNK11OpenImageIO4v3_112OpenEXRInput8PartInfo14compute_mipresEiRNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(272) %i.g, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(160) %0)
  br label %.critedge

bb.o:                                             ; preds = %.noexc30, %.noexc, %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %bb.f, %bb.g, %bb.o
  %.pn26 = phi { ptr, i32 } [ %i.ah, %bb.o ], [ %i.m, %bb.f ], [ %i.n, %bb.g ]
  tail call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) #37
  resume { ptr, i32 } %.pn26

.critedge:                                        ; preds = %_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_.exit, %6, %bb.a, %bb.l, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_112OpenEXRInput15spec_dimensionsEii(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageSpec") align 8 %0, ptr noundef nonnull align 8 dereferenceable(352) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_19ImageSpecC1ENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 256) #37
  %i.a = icmp sgt i32 %2, -1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.c = load i32, ptr %i.b, align 4
  %.not = icmp slt i32 %2, %i.c
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.e = zext nneg i32 %2 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !171
  %i.g = getelementptr inbounds nuw [272 x i8], ptr %i.f, i64 %i.e ; 11 uses
  %i.h = load atomic i8, ptr %i.g seq_cst, align 1, !range !127, !noundef !128
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEEC2ES4_.exit unwind label %bb.d

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEEC2ES4_.exit: ; preds = %bb.c
  %i.j = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112OpenEXRInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(352) %1, i32 noundef %2, i32 noundef %3)
          to label %bb.g unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit

bb.e:                                             ; preds = %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEEC2ES4_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #39
  unreachable

bb.g:                                             ; preds = %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEEC2ES4_.exit
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit30 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #39
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit30: ; preds = %bb.g
  %i.q = icmp sgt i32 %3, -1
  %or.cond29.not = and i1 %i.q, %i.j
  br i1 %or.cond29.not, label %bb.j, label %.critedge

bb.i:                                             ; preds = %bb.b
  %.old = icmp slt i32 %3, 0
  br i1 %.old, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit30, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %i.s = load i32, ptr %i.r, align 4, !tbaa !211
  %.not24 = icmp slt i32 %3, %i.s
  br i1 %.not24, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load <4 x i32>, ptr %i.t, align 8, !tbaa !3
  store <4 x i32> %i.u, ptr %0, align 8, !tbaa !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load <4 x i32>, ptr %i.v, align 8, !tbaa !3
  store <4 x i32> %i.x, ptr %i.w, align 8, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load <4 x i32>, ptr %i.y, align 8, !tbaa !3
  store <4 x i32> %i.aa, ptr %i.z, align 8, !tbaa !3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load <4 x i32>, ptr %i.ab, align 8, !tbaa !3
  store <4 x i32> %i.ad, ptr %i.ac, align 8, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load i64, ptr %i.ae, align 8
  store i64 %i.ag, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load <2 x i32>, ptr %i.ak, align 8, !tbaa !3
  store <2 x i32> %i.am, ptr %i.al, align 8, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !352, !range !127, !noundef !128
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %i.ao, ptr %i.ap, align 8, !tbaa !352
  tail call void @_ZNK11OpenImageIO4v3_112OpenEXRInput8PartInfo14compute_mipresEiRNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(272) %i.g, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(160) %0)
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %bb.d, %bb.e, %bb.m
  %.pn25 = phi { ptr, i32 } [ %i.aq, %bb.m ], [ %i.k, %bb.d ], [ %i.l, %bb.e ]
  tail call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) #37
  resume { ptr, i32 } %.pn25

.critedge:                                        ; preds = %bb.l, %bb.a, %bb.i, %bb.j, %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit30
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_112OpenEXRInput20read_native_scanlineEiiiiPv(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #1 align 2 {
bb.a:
  %i.a = add nsw i32 %3, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !353
  %i.d = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_112OpenEXRInput21read_native_scanlinesEiiiiiiiPv(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.a, i32 noundef %4, i32 noundef 0, i32 noundef %i.c, ptr noundef %5)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_112OpenEXRInput21read_native_scanlinesEiiiiiiiPv(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 8 uses
  %10 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::FrameBuffer", align 8 ; 12 uses
  %11 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %12 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::Slice", align 8 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::allocator", align 1   ; 4 uses
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.a = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112OpenEXRInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 noundef %1, i32 noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.d, label %bb.ba

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.d:                                             ; preds = %bb.b
  %i.c = add nsw i32 %6, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %7)
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.f) ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = sext i32 %i.i to i64
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !171
  %i.l = getelementptr inbounds nuw [272 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %i.m = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEiib(ptr noundef nonnull align 8 dereferenceable(160) %i.d, i32 noundef %6, i32 noundef %.1.i, i1 noundef zeroext true) #37 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !354
  %i.p = sext i32 %i.o to i64
  %i.q = mul i64 %i.m, %i.p                       ; 4 uses
  %i.r = load i32, ptr %i.d, align 8, !tbaa !355
  %i.s = sext i32 %i.r to i64
  %i.t = mul i64 %i.m, %i.s
  %i.u = sub i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %8, i64 %i.u
  %i.w = sext i32 %3 to i64                       ; 3 uses
  %i.x = mul i64 %i.q, %i.w
  %i.y = sub i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 185
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !193, !range !127, !noundef !128
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !192
  %i.af = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ae)
          to label %bb.f unwind label %bb.i       ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !223
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !224
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
end_hunk_0
