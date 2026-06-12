inline.NumInlined: 1716
inline.NumDeleted: 772
begin_hunk_0_@_ZN11OpenImageIO4v3_13pvt21append_tiff_dir_entryERSt6vectorI12TIFFDirEntrySaIS3_EERS2_IcSaIcEEi12TIFFDataTypemNS0_4spanIKSt4byteLm18446744073709551615EEEmmNS0_6endianE:bb.a
  store ptr %i.cv, ptr %i.bz, align 8, !tbaa !131
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %i.cs, i64 %i.cq
  store ptr %i.cw, ptr %i.ce, align 8, !tbaa !129
  br label %_ZNSt6vectorI12TIFFDirEntrySaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI12TIFFDirEntrySaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI12TIFFDirEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_111decode_exifENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_9ImageSpecE(ptr nofree noundef readonly captures(none) dead_on_return %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12
  %i.d = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111decode_exifENS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecE(ptr %i.a, i64 %i.c, ptr noundef nonnull align 8 dereferenceable(160) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_111decode_exifENS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecE(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(160) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::set", align 8          ; 12 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = icmp ugt i64 %1, 5
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !53
  %i.c = icmp eq i8 %i.b, 69
  br i1 %i.c, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !53
  %i.f = icmp eq i8 %i.e, 120
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !53
  %i.i = icmp eq i8 %i.h, 105
  br i1 %i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !53
  %i.l = icmp eq i8 %i.k, 102
  br i1 %i.l, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i8, ptr %i.m, align 1, !tbaa !53
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !53
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = add i64 %1, -6
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0102.0 = phi ptr [ %i.t, %bb.h ], [ %0, %bb.g ], [ %0, %bb.f ], [ %0, %bb.e ], [ %0, %bb.d ], [ %0, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ] ; 5 uses
  %.sroa.12.0 = phi i64 [ %i.s, %bb.h ], [ %1, %bb.g ], [ %1, %bb.f ], [ %1, %bb.e ], [ %1, %bb.d ], [ %1, %bb.c ], [ %1, %bb.b ], [ %1, %bb.a ] ; 6 uses
  %i.u = load i64, ptr %.sroa.0102.0, align 4     ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.u to i16 ; 2 uses
  switch i16 %.sroa.0.0.extract.trunc, label %bb.aj [
    i16 19789, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit
    i16 18761, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit
  ]

_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit: ; preds = %bb.i, %bb.i
  %.sroa.5120.0.extract.shift = lshr i64 %i.u, 32
  %.sroa.5120.0.extract.trunc = trunc nuw i64 %.sroa.5120.0.extract.shift to i32 ; 2 uses
  %i.v = icmp ne i16 %.sroa.0.0.extract.trunc, 18761 ; 5 uses
  %i.w = tail call i32 @llvm.bswap.i32(i32 %.sroa.5120.0.extract.trunc)
  %spec.select = select i1 %i.v, i32 %i.w, i32 %.sroa.5120.0.extract.trunc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.x, align 8, !tbaa !88
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.y, align 8, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.x, ptr %i.z, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !95
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ab, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ac = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.n, !prof !15

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit
  %i.ae = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !83
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr @.str.128, ptr %3, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4, ptr %i.af, align 8, !tbaa !12
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %3, ptr nonnull @_ZN11OpenImageIO4v3_1L14exif_tag_tableE, i64 114)
          to label %bb.l unwind label %bb.m, !inline_history !83

bb.l:                                             ; preds = %bb.k
  %i.ag = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32, !inline_history !83 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !83
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !83
  br label %.body

bb.n:                                             ; preds = %bb.l, %bb.j, %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ai = zext i32 %spec.select to i64            ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 2                ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, %.sroa.12.0
  br i1 %i.ak, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit, label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i

_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i: ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0102.0, i64 %i.ai ; 2 uses
  %i.am = load i16, ptr %i.al, align 1            ; 2 uses
  %i.an = call i16 @llvm.bswap.i16(i16 %i.am)
  %spec.select.i = select i1 %i.v, i16 %i.an, i16 %i.am ; 2 uses
  %i.ao = zext i16 %spec.select.i to i64          ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 12
  %i.aq = add nuw nsw i64 %i.ap, %i.aj
  %.not23.i = icmp ugt i64 %i.aq, %.sroa.12.0
  br i1 %.not23.i, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i
  %.not.i45 = icmp eq i16 %spec.select.i, 0
  br i1 %.not.i45, label %.loopexit119, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.preheader.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  br label %bb.o

bb.o:                                             ; preds = %.noexc, %.lr.ph.i46
  %indvars.iv.i47 = phi i64 [ 0, %.lr.ph.i46 ], [ %indvars.iv.next.i48, %.noexc ] ; 2 uses
  %i.as = mul nuw nsw i64 %indvars.iv.i47, 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  invoke fastcc void @_ZN11OpenImageIO4v3_1L13read_exif_tagERNS0_9ImageSpecEPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbiRSt3setImSt4lessImESaImEERKNS0_3pvt6TagMapE(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull %i.at, ptr nonnull %.sroa.0102.0, i64 %.sroa.12.0, i1 noundef zeroext %i.v, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T)
          to label %.noexc unwind label %bb.p, !inline_history !97

.noexc:                                           ; preds = %bb.o
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, %i.ao
  br i1 %exitcond.not.i49, label %.loopexit119, label %bb.o, !llvm.loop !98

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit119:                                     ; preds = %.noexc, %.preheader.i
  store ptr @.str.70, ptr %5, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 15, ptr %i.av, align 8, !tbaa !12
  %i.aw = invoke noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %5, i64 256, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.v       ; 2 uses

bb.q:                                             ; preds = %.loopexit119
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  store ptr @.str.162, ptr %6, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 10, ptr %i.ax, align 8, !tbaa !12
  %i.ay = invoke noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %6, i64 256, i1 noundef zeroext false)
          to label %bb.s unwind label %bb.v       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %.not41 = icmp eq ptr %i.ay, null
  br i1 %.not41, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.035 = phi ptr [ %i.aw, %bb.q ], [ %i.ay, %bb.s ] ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.az, align 8 ; 3 uses
  %i.ba = and i64 %.sroa.0.0.copyload.i, -4294901761
  %or.cond = icmp eq i64 %i.ba, 262
  br i1 %or.cond, label %bb.u, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %.035, i64 38
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !133, !range !137, !noundef !138
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %.035, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = select i1 %i.bd, ptr %i.bf, ptr %i.be
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  br label %bb.y

bb.v:                                             ; preds = %bb.r, %.loopexit119
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.t
  %i.bj = and i64 %.sroa.0.0.copyload.i, -4294901761
  %or.cond117 = icmp eq i64 %i.bj, 263
  br i1 %or.cond117, label %bb.w, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit54.thread

bb.w:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %.035, i64 38
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !133, !range !137, !noundef !138
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %.035, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = select i1 %i.bm, ptr %i.bo, ptr %i.bn
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  br label %bb.y

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit54.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.br = and i64 %.sroa.0.0.copyload.i, -4294901761
  %or.cond118 = icmp eq i64 %i.br, 260
  br i1 %or.cond118, label %bb.x, label %.thread

bb.x:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit54.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %.035, i64 38
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !133, !range !137, !noundef !138
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %.035, i64 16 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = select i1 %i.bu, ptr %i.bw, ptr %i.bv
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !99
  %i.bz = zext i16 %i.by to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.u
  %.034 = phi i32 [ %i.bh, %bb.u ], [ %i.bq, %bb.w ], [ %i.bz, %bb.x ]
  %.not42 = icmp eq i32 %.034, 65535
  br i1 %.not42, label %bb.aa, label %.thread

.thread:                                          ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit54.thread, %bb.y
  store ptr @.str.163, ptr %7, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 17, ptr %i.ca, align 8, !tbaa !12
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %7)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %.thread
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.y, %.thread, %bb.s
  store ptr @.str.164, ptr %8, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 20, ptr %i.cc, align 8, !tbaa !12
  %i.cd = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %8, i32 noundef 0)
          to label %bb.ab unwind label %.loopexit.split-lp ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.ac, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit

bb.ac:                                            ; preds = %bb.ab
  store ptr @.str.7, ptr %10, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.cf, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %9, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11)
          to label %bb.ad unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  store ptr @.str.165, ptr %12, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 5, ptr %i.cg, align 8, !tbaa !12
  %i.ch = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %12)
          to label %bb.ae unwind label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ch, label %bb.af, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit75.thread

bb.af:                                            ; preds = %bb.ae
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_13pvt22canon_maker_tagmap_refEv()
          to label %bb.ag unwind label %.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %i.cj = zext nneg i32 %i.cd to i64              ; 2 uses
  %i.ck = add nuw nsw i64 %i.cj, 2                ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, %.sroa.12.0
  br i1 %i.cl, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit, label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i63

_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i63: ; preds = %bb.ag
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0102.0, i64 %i.cj ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 1            ; 2 uses
  %i.co = call i16 @llvm.bswap.i16(i16 %i.cn)
  %spec.select.i64 = select i1 %i.v, i16 %i.co, i16 %i.cn ; 2 uses
  %i.cp = zext i16 %spec.select.i64 to i64        ; 2 uses
  %i.cq = mul nuw nsw i64 %i.cp, 12
  %i.cr = add nuw nsw i64 %i.cq, %i.ck
  %.not23.i65 = icmp ugt i64 %i.cr, %.sroa.12.0
  br i1 %.not23.i65, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit, label %.preheader.i66

.preheader.i66:                                   ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i63
  %.not.i67 = icmp eq i16 %spec.select.i64, 0
  br i1 %.not.i67, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit75.thread, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.preheader.i66
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc74, %.lr.ph.i68
  %indvars.iv.i70 = phi i64 [ 0, %.lr.ph.i68 ], [ %indvars.iv.next.i71, %.noexc74 ] ; 2 uses
  %i.ct = mul nuw nsw i64 %indvars.iv.i70, 12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  invoke fastcc void @_ZN11OpenImageIO4v3_1L13read_exif_tagERNS0_9ImageSpecEPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbiRSt3setImSt4lessImESaImEERKNS0_3pvt6TagMapE(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull %i.cu, ptr nonnull %.sroa.0102.0, i64 %.sroa.12.0, i1 noundef zeroext %i.v, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ci)
          to label %.noexc74 unwind label %.loopexit, !inline_history !97

.noexc74:                                         ; preds = %bb.ah
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %indvars.iv.next.i71, %i.cp
  br i1 %exitcond.not.i72, label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit75.thread, label %bb.ah, !llvm.loop !98

.loopexit:                                        ; preds = %bb.ah
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.aa, %bb.ac, %bb.ad, %bb.af, %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit75.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit75.thread: ; preds = %.noexc74, %.preheader.i66, %bb.ae
  store ptr @.str.164, ptr %13, align 8, !tbaa !7
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 20, ptr %i.cv, align 8, !tbaa !12
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec15erase_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %13, i64 256, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit unwind label %.loopexit.split-lp

_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit: ; preds = %bb.ag, %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i63, %bb.n, %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i, %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit75.thread, %bb.ab
  %.1 = phi i1 [ true, %bb.ab ], [ false, %bb.n ], [ true, %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit75.thread ], [ false, %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i ], [ false, %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit.i63 ], [ false, %bb.ag ]
  %i.cw = load ptr, ptr %i.y, align 8, !tbaa !93
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.cw)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #34
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit:             ; preds = %_ZN11OpenImageIO4v3_13pvt10decode_ifdENS0_4spanIKhLm18446744073709551615EEEmRNS0_9ImageSpecERKNS1_6TagMapERSt3setImSt4lessImESaImEEbi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.aj

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.p, %bb.m, %bb.v, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.v ], [ %i.ah, %bb.m ], [ %i.cb, %bb.z ], [ %i.au, %bb.p ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn

bb.aj:                                            ; preds = %bb.i, %_ZNSt3setImSt4lessImESaImEED2Ev.exit
  %.2 = phi i1 [ %.1, %_ZNSt3setImSt4lessImESaImEED2Ev.exit ], [ false, %bb.i ]
  ret i1 %.2
}

declare noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return) local_unnamed_addr #6

declare noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #6

declare void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_13pvt22canon_maker_tagmap_refEv() local_unnamed_addr #6

declare void @_ZN11OpenImageIO4v3_19ImageSpec15erase_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #34
  unreachable

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_111encode_exifERKNS0_9ImageSpecERSt6vectorIcSaIcEENS0_6endianE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i16, align 2                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i16, align 2                      ; 5 uses
  %3 = alloca %struct.TIFFHeader, align 8         ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::vector.42", align 8    ; 13 uses
  %7 = alloca %"class.std::vector.42", align 8    ; 16 uses
  %8 = alloca %"class.std::vector.42", align 8    ; 12 uses
  %9 = alloca %"class.std::vector.42", align 8    ; 19 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %18 = alloca %"class.OpenImageIO::v3_1::span.38", align 8 ; 3 uses
  %19 = alloca %"class.OpenImageIO::v3_1::span.38", align 8 ; 3 uses
  %20 = alloca %"class.OpenImageIO::v3_1::span.38", align 8 ; 3 uses
  %21 = alloca %"class.OpenImageIO::v3_1::span.38", align 8 ; 3 uses
  %22 = alloca %"class.OpenImageIO::v3_1::span.38", align 8 ; 2 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %23 = alloca %"class.OpenImageIO::v3_1::span.38", align 8 ; 3 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %24 = alloca %"class.OpenImageIO::v3_1::span.38", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.k = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.b, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, !prof !15

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E11rehash_implEm:bb.a
  %i.bv = extractelement <8 x i1> %i.bt, i64 1
  br i1 %i.bv, label %pred.store.if36, label %pred.store.continue37

pred.store.if36:                                  ; preds = %pred.store.continue
  store i16 -1, ptr %next.gep29, align 8, !tbaa !16
  br label %pred.store.continue37

pred.store.continue37:                            ; preds = %pred.store.if36, %pred.store.continue
  %i.bw = extractelement <8 x i1> %i.bt, i64 2
  br i1 %i.bw, label %pred.store.if38, label %pred.store.continue39

pred.store.if38:                                  ; preds = %pred.store.continue37
  store i16 -1, ptr %next.gep30, align 8, !tbaa !16
  br label %pred.store.continue39

pred.store.continue39:                            ; preds = %pred.store.if38, %pred.store.continue37
  %i.bx = extractelement <8 x i1> %i.bt, i64 3
  br i1 %i.bx, label %pred.store.if40, label %pred.store.continue41

pred.store.if40:                                  ; preds = %pred.store.continue39
  store i16 -1, ptr %next.gep31, align 8, !tbaa !16
  br label %pred.store.continue41

pred.store.continue41:                            ; preds = %pred.store.if40, %pred.store.continue39
  %i.by = extractelement <8 x i1> %i.bt, i64 4
  br i1 %i.by, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %pred.store.continue41
  store i16 -1, ptr %next.gep32, align 8, !tbaa !16
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %pred.store.continue41
  %i.bz = extractelement <8 x i1> %i.bt, i64 5
  br i1 %i.bz, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  store i16 -1, ptr %next.gep33, align 8, !tbaa !16
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.ca = extractelement <8 x i1> %i.bt, i64 6
  br i1 %i.ca, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  store i16 -1, ptr %next.gep34, align 8, !tbaa !16
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.cb = extractelement <8 x i1> %i.bt, i64 7
  br i1 %i.cb, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  store i16 -1, ptr %next.gep35, align 8, !tbaa !16
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %pred.store.continue49
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i.preheader50

.lr.ph.i.i.i.i.preheader50:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader50, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cf, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i ], [ %.05.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader50 ] ; 3 uses
  %i.cd = load i16, ptr %.05.i.i.i.i, align 8, !tbaa !16
  %i.ce = icmp eq i16 %i.cd, -1
  br i1 %i.ce, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  store i16 -1, ptr %.05.i.i.i.i, align 8, !tbaa !16
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cf, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !200

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i, %middle.block, %._crit_edge
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i
  %i.cg = ptrtoint ptr %i.t to i64
  %i.ch = ptrtoint ptr %i.l to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ci) #31
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.015.019 = phi ptr [ %i.g, %.lr.ph ], [ %i.dd, %bb.j ] ; 4 uses
  %i.cj = load i16, ptr %.sroa.015.019, align 8, !tbaa !16
  %i.ck = icmp eq i16 %i.cj, -1
  br i1 %i.ck, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 8 ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !3
  %i.cn = sext i32 %i.cm to i64
  %i.co = load i64, ptr %2, align 8, !tbaa !70
  %i.cp = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.011.i = phi i16 [ 0, %bb.e ], [ %i.db, %bb.i ] ; 4 uses
  %.pn = phi i64 [ %i.cn, %bb.e ], [ %i.dc, %bb.i ]
  %.0.i = and i64 %.pn, %i.co                     ; 2 uses
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %.0.i ; 5 uses
  %i.cs = load i16, ptr %i.cr, align 8, !tbaa !16 ; 3 uses
  %i.ct = icmp sgt i16 %.011.i, %i.cs
  br i1 %i.ct, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.cu = icmp eq i16 %i.cs, -1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  br i1 %i.cu, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOS8_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cw = load i32, ptr %i.cl, align 8, !tbaa !3
  %i.cx = load i32, ptr %i.cv, align 8, !tbaa !3
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !3
  store i32 %i.cw, ptr %i.cv, align 8, !tbaa !3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !60
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !60
  store ptr %i.da, ptr %i.cq, align 8, !tbaa !60
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !60
  store i16 %.011.i, ptr %i.cr, align 8, !tbaa !99
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.1.i = phi i16 [ %i.cs, %bb.h ], [ %.011.i, %bb.f ]
  %i.db = add i16 %.1.i, 1
  %i.dc = add i64 %.0.i, 1
  br label %bb.f, !llvm.loop !201

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOS8_.exit: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false)
  store i16 %.011.i, ptr %i.cr, align 8, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOS8_.exit, %bb.d
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.dd, %i.i
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #21

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E11insert_implIS8_JRKSt21piecewise_construct_tSt5tupleIJRKS8_EESW_IJEEEEES2_INSR_14robin_iteratorILb0EEEbERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"struct.std::pair.17", align 8     ; 11 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54
  %i.f = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.c, i64 noundef %i.e, i64 noundef 3339675911)
          to label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E8hash_keyIS8_EEmRKT_.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #34
  unreachable

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E8hash_keyIS8_EEmRKT_.exit: ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38   ; 2 uses
  %.057 = and i64 %i.f, %i.i                      ; 3 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %i.k, i64 %.057 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i16, ptr %i.m, align 4, !tbaa !34
  %.not58 = icmp slt i16 %i.n, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E8hash_keyIS8_EEmRKT_.exit
  %i.o = load i64, ptr %i.d, align 8, !tbaa !54   ; 3 uses
  %6 = load ptr, ptr %1, align 8
  %i.p = icmp eq i64 %i.o, 0
  br label %bb.c

.preheader:                                       ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread46, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E8hash_keyIS8_EEmRKT_.exit
  %.034.lcssa = phi i16 [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E8hash_keyIS8_EEmRKT_.exit ], [ %i.z, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread46 ] ; 2 uses
  %.0.lcssa = phi i64 [ %.057, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E8hash_keyIS8_EEmRKT_.exit ], [ %.0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread46 ]
  %i.q = tail call noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %.034.lcssa)
  br i1 %i.q, label %.lr.ph69, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread46
  %i.r = phi ptr [ %i.l, %.lr.ph ], [ %i.aa, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread46 ] ; 4 uses
  %.060 = phi i64 [ %.057, %.lr.ph ], [ %.0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread46 ]
  %.03459 = phi i16 [ 0, %.lr.ph ], [ %i.z, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread46 ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !54
  %i.v = icmp eq i64 %i.u, %i.o
  br i1 %i.v, label %bb.d, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread46

bb.d:                                             ; preds = %bb.c
  br i1 %i.p, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit: ; preds = %bb.d
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !51
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.w, ptr %6, i64 %i.o)
  %i.x = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.x, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread46

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread46: ; preds = %bb.c, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit
  %i.y = add i64 %.060, 1
  %i.z = add i16 %.03459, 1                       ; 3 uses
  %.0 = and i64 %i.y, %i.i                        ; 3 uses
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.k, i64 %.0 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !34
  %.not = icmp sgt i16 %i.z, %i.ac
  br i1 %.not, label %.preheader, label %bb.c, !llvm.loop !202

.loopexit:                                        ; preds = %.lr.ph66, %.lr.ph69
  %.236.lcssa = phi i16 [ 0, %.lr.ph69 ], [ %i.ak, %.lr.ph66 ] ; 2 uses
  %.2.lcssa = phi i64 [ %.262, %.lr.ph69 ], [ %.2, %.lr.ph66 ]
  %i.ad = tail call noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %.236.lcssa)
  br i1 %i.ad, label %.lr.ph69, label %._crit_edge, !llvm.loop !203

.lr.ph69:                                         ; preds = %.preheader, %.loopexit
  %i.ae = load i64, ptr %0, align 8, !tbaa !70    ; 2 uses
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !38  ; 2 uses
  %.262 = and i64 %i.f, %i.ae                     ; 3 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.af, i64 %.262
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !34
  %.not3763 = icmp slt i16 %i.ai, 0
  br i1 %.not3763, label %.loopexit, label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph69, %.lr.ph66
  %.265 = phi i64 [ %.2, %.lr.ph66 ], [ %.262, %.lr.ph69 ]
  %.23664 = phi i16 [ %i.ak, %.lr.ph66 ], [ 0, %.lr.ph69 ]
  %i.aj = add i64 %.265, 1
  %i.ak = add i16 %.23664, 1                      ; 3 uses
  %.2 = and i64 %i.aj, %i.ae                      ; 3 uses
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.af, i64 %.2
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i16, ptr %i.am, align 4, !tbaa !34
  %.not37 = icmp sgt i16 %i.ak, %i.an
  br i1 %.not37, label %.loopexit, label %.lr.ph66, !llvm.loop !204

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %.135.lcssa = phi i16 [ %.034.lcssa, %.preheader ], [ %.236.lcssa, %.loopexit ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %.preheader ], [ %.2.lcssa, %.loopexit ] ; 3 uses
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %i.ao, i64 %.1.lcssa ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !34
  %i.as = icmp eq i16 %i.ar, -1
  %i.at = trunc i64 %i.f to i32                   ; 2 uses
  br i1 %i.as, label %bb.e, label %bb.h

bb.e:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.av = load i64, ptr %3, align 8, !tbaa !65
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 3 uses
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !48
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !51 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.ba, ptr %i.b, align 8, !tbaa !50
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.e
  %i.bc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bc, ptr %i.au, align 8, !tbaa !51
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !50
  store i64 %i.bd, ptr %i.ax, align 8, !tbaa !53
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.e
  %i.be = phi ptr [ %i.bc, %.noexc.i.i.i.i ], [ %i.ax, %bb.e ] ; 2 uses
  switch i64 %i.ba, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE25set_value_of_empty_bucketIJRKSt21piecewise_construct_tSt5tupleIJRKS8_EESK_IJEEEEEvsjDpOT_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !53
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !53
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE25set_value_of_empty_bucketIJRKSt21piecewise_construct_tSt5tupleIJRKS8_EESK_IJEEEEEvsjDpOT_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE25set_value_of_empty_bucketIJRKSt21piecewise_construct_tSt5tupleIJRKS8_EESK_IJEEEEEvsjDpOT_.exit

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE25set_value_of_empty_bucketIJRKSt21piecewise_construct_tSt5tupleIJRKS8_EESK_IJEEEEEvsjDpOT_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.f, %bb.g
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !54
  %i.bi = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store ptr null, ptr %i.bk, align 8, !tbaa !78
  store i32 %i.at, ptr %i.ap, align 8, !tbaa !205
  store i16 %.135.lcssa, ptr %i.aq, align 4, !tbaa !34
  br label %bb.k

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.bl = load i64, ptr %3, align 8, !tbaa !65
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.bn, ptr %5, align 8, !tbaa !48
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !51 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !50
  %i.br = icmp ugt i64 %i.bq, 15
  br i1 %i.br, label %.noexc.i.i.i.i40, label %._crit_edge.i.i.i.i.i39

.noexc.i.i.i.i40:                                 ; preds = %bb.h
  %i.bs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bs, ptr %5, align 8, !tbaa !51
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !50
  store i64 %i.bt, ptr %i.bn, align 8, !tbaa !53
  br label %._crit_edge.i.i.i.i.i39

._crit_edge.i.i.i.i.i39:                          ; preds = %.noexc.i.i.i.i40, %bb.h
  %i.bu = phi ptr [ %i.bs, %.noexc.i.i.i.i40 ], [ %i.bn, %bb.h ] ; 2 uses
  switch i64 %i.bq, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESG_IJDpT0_EE.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i39
  %i.bv = load i8, ptr %i.bo, align 1, !tbaa !53
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !53
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESG_IJDpT0_EE.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %i.bo, i64 %i.bq, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESG_IJDpT0_EE.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESG_IJDpT0_EE.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.i39
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !54
  %i.by = load ptr, ptr %5, align 8, !tbaa !51
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  store i8 0, ptr %i.bz, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr null, ptr %i.ca, align 8, !tbaa !78
  call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E17insert_value_implEmsjRSE_(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %.1.lcssa, i16 noundef signext %.135.lcssa, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(40) %5)
  %i.cb = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bn
  br i1 %i.cc, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJRKS8_EESW_IJEEEEEvmsjDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESG_IJDpT0_EE.exit.i
  %i.cd = load i64, ptr %i.bn, align 8, !tbaa !53
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #31
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJRKS8_EESW_IJEEEEEvmsjDpOT_.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJRKS8_EESW_IJEEEEEvmsjDpOT_.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEEC2IJRKS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESG_IJDpT0_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.k

bb.k:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJRKS8_EESW_IJEEEEEvmsjDpOT_.exit, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE25set_value_of_empty_bucketIJRKSt21piecewise_construct_tSt5tupleIJRKS8_EESK_IJEEEEEvsjDpOT_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !189
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !189
  %i.ci = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %.1.lcssa
  br label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread: ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit, %bb.d, %bb.k
  %.pn50 = phi ptr [ %i.cj, %bb.k ], [ %i.r, %bb.d ], [ %i.r, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit ]
  %.pn48 = phi i8 [ 1, %bb.k ], [ 0, %bb.d ], [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i8 } poison, ptr %.pn50, 0
  %.pn = insertvalue { ptr, i8 } %.fca.0.insert.i.pn, i8 %.pn48, 1
  ret { ptr, i8 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !45, !range !137, !noundef !138
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp sgt i16 %1, 8192
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !189  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47
  %.not = icmp ult i64 %i.f, %i.h
end_hunk_1
