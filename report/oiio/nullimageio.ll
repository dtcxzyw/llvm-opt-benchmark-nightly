inline.NumInlined: 816
inline.NumDeleted: 466
begin_hunk_0_@_ZN11OpenImageIO4v3_111parse_paramENS0_17basic_string_viewIcSt11char_traitsIcEEES4_RNS0_9ImageSpecE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.dc = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12parse_stringERNS0_17basic_string_viewIcSt11char_traitsIcEEES6_bNS1_13QuoteBehaviorE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %11, i1 noundef zeroext true, i32 noundef 0) #19 ; 0 uses
  %i.dd = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10parse_charERNS0_17basic_string_viewIcSt11char_traitsIcEEEcbb(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef signext 44, i1 noundef zeroext true, i1 noundef zeroext true) #19 ; 0 uses
  %i.de = load ptr, ptr %11, align 8, !tbaa !66
  %i.df = load i64, ptr %i.da, align 8, !tbaa !68 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.074.0192, i64 %indvars.iv117
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.not.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.de, ptr %3, align 8, !tbaa !66
  store i64 %i.df, ptr %i.db, align 8, !tbaa !68
  %i.dh = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %3)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.di = phi ptr [ null, %bb.p ], [ %i.dh, %bb.q ]
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %._crit_edge112, label %bb.p, !llvm.loop !105

._crit_edge112:                                   ; preds = %bb.r
  %i.dj = load ptr, ptr %0, align 8, !tbaa !66
  store ptr %i.dj, ptr %12, align 8, !tbaa !66
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dl = load i64, ptr %i.e, align 8, !tbaa !68
  store i64 %i.dl, ptr %i.dk, align 8, !tbaa !68
  %.sroa.0.0.copyload = load i64, ptr %6, align 8
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %12, i64 %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.074.0192)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit65.sink.split unwind label %.thread104

.thread104:                                       ; preds = %._crit_edge112
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit72.sink.split

bb.s:                                             ; preds = %bb.q
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %.not.i.i.i71 = icmp eq ptr %.sroa.074.0192, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit72, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit72.sink.split

_ZNSt6vectorIfSaIfEED2Ev.exit65.sink.split:       ; preds = %._crit_edge112, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit, %.thread100
  %.sroa.074.0193.sink231 = phi ptr [ %.sroa.080.0182, %.thread100 ], [ %i.cv, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit ], [ %.sroa.074.0192, %._crit_edge112 ] ; 2 uses
  %.sink.i196.sink = phi i64 [ %i.cp, %.thread100 ], [ %i.cx, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit ], [ %.sink.i195, %._crit_edge112 ]
  %i.do = ptrtoint ptr %.sroa.074.0193.sink231 to i64
  %i.dp = sub i64 %.sink.i196.sink, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0193.sink231, i64 noundef %i.dp) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit65

_ZNSt6vectorIfSaIfEED2Ev.exit65:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit65.sink.split, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit.thread, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit72.sink.split: ; preds = %bb.s, %.thread104, %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.sroa.074.0192.sink234 = phi ptr [ %.sroa.088.0168, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %.sroa.080.0181, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %.sroa.074.0192, %.thread104 ], [ %.sroa.074.0192, %bb.s ] ; 2 uses
  %.sink.i195.sink = phi i64 [ %i.bn, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.co, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %.sink.i195, %.thread104 ], [ %.sink.i195, %bb.s ]
  %.pn49.pn.ph = phi { ptr, i32 } [ %i.bm, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.cn, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %i.dm, %.thread104 ], [ %i.dn, %bb.s ]
  %i.dq = ptrtoint ptr %.sroa.074.0192.sink234 to i64
  %i.dr = sub i64 %.sink.i195.sink, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0192.sink234, i64 noundef %i.dr) #20
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit72

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit72: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit72.sink.split, %bb.s
  %.pn49.pn = phi { ptr, i32 } [ %i.dn, %bb.s ], [ %.pn49.pn.ph, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit72.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %.pn49.pn
}

declare noundef i64 @_ZN11OpenImageIO4v3_18TypeDesc10fromstringENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_17Strutil15skip_whitespaceERNS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil9parse_intERNS0_17basic_string_viewIcSt11char_traitsIcEEERib(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10parse_charERNS0_17basic_string_viewIcSt11char_traitsIcEEEcbb(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil11parse_floatERNS0_17basic_string_viewIcSt11char_traitsIcEEERfb(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12parse_stringERNS0_17basic_string_viewIcSt11char_traitsIcEEES6_bNS1_13QuoteBehaviorE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpec21default_channel_namesEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpec10set_formatENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160), i64) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_18TypeDescC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef dead_on_return) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN11OpenImageIO4v3_17Strutil24extract_from_list_stringIfSaIfEEEiRSt6vectorIT_T0_ENS0_17basic_string_viewIcSt11char_traitsIcEEESC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 9 uses
  %5 = alloca %"class.std::vector.54", align 8    ; 15 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !95     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %1, align 8, !tbaa !66
  store ptr %i.h, ptr %6, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !68
  store i64 %i.k, ptr %i.i, align 8, !tbaa !68
  %i.l = load ptr, ptr %2, align 8, !tbaa !66
  store ptr %i.l, ptr %7, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !68
  store i64 %i.o, ptr %i.m, align 8, !tbaa !68
  invoke void @_ZN11OpenImageIO4v3_17Strutil5splitENS0_17basic_string_viewIcSt11char_traitsIcEEERSt6vectorIS5_SaIS5_EES5_i(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull dead_on_return %7, i32 noundef -1)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !106  ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !109    ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4                   ; 2 uses
  %.not39 = icmp eq ptr %i.q, %i.r
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.x = icmp eq ptr %i.b, %i.c
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.fr = freeze i1 %i.x
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.us
  %.02038.us = phi i64 [ %i.az, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !109
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.02038.us ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.ac, ptr %4, align 8, !tbaa !66
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !68
  %i.af = invoke noundef float @_ZN11OpenImageIO4v3_17Strutil4stofENS0_17basic_string_viewIcSt11char_traitsIcEEEPm(ptr noundef nonnull dead_on_return %4, ptr noundef null)
          to label %bb.c unwind label %.loopexit.split.us ; 2 uses

bb.c:                                             ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !92  ; 4 uses
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !98
  %.not.i.us = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %i.af, ptr %i.ag, align 4, !tbaa !96
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !92
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.us

bb.e:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %0, align 8, !tbaa !95    ; 4 uses
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 6 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775804
  br i1 %i.an, label %.split.us, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.e
  %i.ao = ashr exact i64 %i.am, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i.us, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 2305843009213693951)
  %i.as = select i1 %i.aq, i64 2305843009213693951, i64 %i.ar ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 2
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #24
          to label %.noexc25.us unwind label %.loopexit.split.us ; 4 uses

.noexc25.us:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.us
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.am ; 2 uses
  store float %i.af, ptr %i.av, align 4, !tbaa !96
  %i.aw = icmp sgt i64 %i.am, 0
  br i1 %i.aw, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.us

bb.f:                                             ; preds = %.noexc25.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.au, ptr align 4 %i.aj, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.us

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.us: ; preds = %bb.f, %.noexc25.us
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %.not.i17.i.i.us = icmp eq ptr %i.aj, null
  br i1 %.not.i17.i.i.us, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.us, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.am) #20
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.us

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.us: ; preds = %bb.g, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.us
  store ptr %i.au, ptr %0, align 8, !tbaa !95
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !92
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as
  store ptr %i.ay, ptr %i.z, align 8, !tbaa !98
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.us

_ZNSt6vectorIfSaIfEE9push_backERKf.exit.us:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.us, %bb.d
  %i.az = add nuw i64 %.02038.us, 1               ; 2 uses
  %exitcond42.not = icmp eq i64 %i.az, %i.v
  br i1 %exitcond42.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !110

.loopexit.split.us:                               ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.us, %.lr.ph.split.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.us, %bb.b
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !106
  %i.bb = load ptr, ptr %5, align 8, !tbaa !109
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp eq i64 %i.be, 16
  %i.bg = icmp ne ptr %i.b, %i.c
  %or.cond = and i1 %i.bg, %i.bf
  br i1 %or.cond, label %bb.m, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

bb.h:                                             ; preds = %bb.q, %bb.n, %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %.02038 = phi i64 [ %i.cd, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ 0, %.lr.ph ] ; 5 uses
  %i.bi = load ptr, ptr %5, align 8, !tbaa !109
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %.02038 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !66
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.bk, ptr %4, align 8, !tbaa !66
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !68
  %i.bn = invoke noundef float @_ZN11OpenImageIO4v3_17Strutil4stofENS0_17basic_string_viewIcSt11char_traitsIcEEEPm(ptr noundef nonnull dead_on_return %4, ptr noundef null)
          to label %bb.i unwind label %.loopexit.split ; 0 uses

bb.i:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bo = load ptr, ptr %5, align 8, !tbaa !109
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.02038 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !68 ; 2 uses
  %.not23 = icmp eq i64 %i.br, 0
  br i1 %.not23, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, label %bb.j

.split.us:                                        ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split.us
  unreachable

.loopexit.split:                                  ; preds = %.lr.ph.split, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.bt = load ptr, ptr %0, align 8, !tbaa !95
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  %i.by = icmp ugt i64 %i.bx, %.02038
  br i1 %i.by, label %bb.k, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = load ptr, ptr %i.bp, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.bz, ptr %3, align 8, !tbaa !66
  store i64 %i.br, ptr %i.y, align 8, !tbaa !68
  %i.ca = invoke noundef float @_ZN11OpenImageIO4v3_17Strutil4stofENS0_17basic_string_viewIcSt11char_traitsIcEEEPm(ptr noundef nonnull dead_on_return %3, ptr noundef null)
          to label %bb.l unwind label %.loopexit.split

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cb = load ptr, ptr %0, align 8, !tbaa !95
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.02038
  store float %i.ca, ptr %i.cc, align 4, !tbaa !96
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %bb.i, %bb.l, %bb.j
  %i.cd = add nuw i64 %.02038, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cd, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !110

bb.m:                                             ; preds = %._crit_edge
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !92  ; 5 uses
  %i.cf = load ptr, ptr %0, align 8, !tbaa !95    ; 6 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64               ; 4 uses
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 2                 ; 2 uses
  %i.ck = icmp eq ptr %i.ce, %i.cf
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cl = sub nuw nsw i64 1, %i.cj
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.cl)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge unwind label %bb.h

._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge:    ; preds = %bb.n
  %.pre = load ptr, ptr %0, align 8, !tbaa !95    ; 2 uses
  %.pre43.a = load ptr, ptr %i.a, align 8, !tbaa !92
  %.pre44 = ptrtoint ptr %.pre to i64
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.o:                                             ; preds = %bb.m
  %i.cm = icmp ugt i64 %i.cj, 1
  br i1 %i.cm, label %bb.p, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ce, %i.cn
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.p
  store ptr %i.cn, ptr %i.a, align 8, !tbaa !92
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.p, %bb.o
  %.pre-phi = phi i64 [ %.pre44, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge ], [ %i.ch, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ch, %bb.p ], [ %i.ch, %bb.o ]
  %i.co = phi ptr [ %.pre43.a, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge ], [ %i.cn, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ce, %bb.p ], [ %i.ce, %bb.o ] ; 3 uses
  %i.cp = phi ptr [ %.pre, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge ], [ %i.cf, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ], [ %i.cf, %bb.p ], [ %i.cf, %bb.o ] ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cq, %.pre-phi
  %i.cs = ashr exact i64 %i.cr, 2                 ; 3 uses
  %i.ct = icmp ugt i64 %i.g, %i.cs
  br i1 %i.ct, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.cu = sub nuw nsw i64 %i.g, %i.cs
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.co, i64 noundef %i.cu, ptr noundef nonnull align 4 dereferenceable(4) %i.cp)
          to label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit unwind label %bb.h

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.cv = icmp ult i64 %i.g, %i.cs
  br i1 %i.cv, label %bb.s, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.f ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.co, %i.cw
  br i1 %.not.i.i29, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i30

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i30:      ; preds = %bb.s
  store ptr %i.cw, ptr %i.a, align 8, !tbaa !92
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit:            ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i30, %bb.s, %bb.r, %bb.q, %._crit_edge
  %i.cx = load i64, ptr %i.j, align 8, !tbaa !68
  %i.cy = load ptr, ptr %i.p, align 8
  %i.cz = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i32.a = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i32.a, label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !111
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.de = sub i64 %i.dc, %i.dd
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf:bb.a

bb.g:                                             ; preds = %bb.f
  %i.s = load float, ptr %i.o, align 4, !tbaa !96
  store float %i.s, ptr %i.d, align 4, !tbaa !96
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !92
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !128

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load float, ptr %1, align 4, !tbaa !96
  store float %i.ac, ptr %i.ab, align 4, !tbaa !96
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec130, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat132 = shufflevector <4 x float> %broadcast.splatinsert131, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 2
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <4 x float> %broadcast.splat132, ptr %next.gep135, align 4, !tbaa !96
  store <4 x float> %broadcast.splat132, ptr %i.ak, align 4, !tbaa !96
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !152

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.07.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i, align 4, !tbaa !96
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !153

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !96
  store <4 x float> %broadcast.splat, ptr %i.ay, align 4, !tbaa !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !96
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !155

_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !92
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !128

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !92
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load float, ptr %1, align 4, !tbaa !96
  store float %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !96
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !92
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec116, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert117 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat118 = shufflevector <4 x float> %broadcast.splatinsert117, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bm = shl i64 %index120, 2
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep121, i64 16
  store <4 x float> %broadcast.splat118, ptr %next.gep121, align 4, !tbaa !96
  store <4 x float> %broadcast.splat118, ptr %i.bn, align 4, !tbaa !96
  %index.next122 = add nuw i64 %index120, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bo, label %middle.block123, label %vector.body119, !llvm.loop !156

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bj, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.07.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i72, align 4, !tbaa !96
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !157

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !95    ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #23
  unreachable

bb.s:                                             ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %4 = add nsw i64 %.sroa.speculated.i, %i.bt     ; 2 uses
  %5 = icmp ult i64 %4, %i.bt
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 2305843009213693951)
  %7 = select i1 %5, i64 2305843009213693951, i64 %6 ; 2 uses
  %8 = ptrtoint ptr %1 to i64                     ; 2 uses
  %9 = sub i64 %8, %i.br                          ; 4 uses
  %10 = shl nuw nsw i64 %7, 2
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #24 ; 5 uses
  %i.bw = getelementptr inbounds i8, ptr %11, i64 %9 ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i.i.i.i75
  %i.by = load float, ptr %3, align 4, !tbaa !96  ; 2 uses
  %i.bz = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.ca = lshr exact i64 %i.bz, 2
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.bz, 28
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.s
  %n.vec144 = and i64 %i.cb, 9223372036854775800  ; 3 uses
  %i.cc = shl i64 %n.vec144, 2
  %i.cd = getelementptr i8, ptr %i.bw, i64 %i.cc
  %broadcast.splatinsert145 = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat146 = shufflevector <4 x float> %broadcast.splatinsert145, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.ce = shl i64 %index148, 2
  %next.gep149 = getelementptr i8, ptr %i.bw, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x float> %broadcast.splat146, ptr %next.gep149, align 4, !tbaa !96
  store <4 x float> %broadcast.splat146, ptr %i.cf, align 4, !tbaa !96
  %index.next150 = add nuw i64 %index148, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cg, label %middle.block151, label %vector.body147, !llvm.loop !158

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.cb, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.s, %middle.block151
  %.07.i.i.i.i.i.i.i77.ph = phi ptr [ %i.bw, %bb.s ], [ %i.cd, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store float %i.by, ptr %.07.i.i.i.i.i.i.i77, align 4, !tbaa !96
  %i.ch = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.ch, %i.bx
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !159

_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.ci = icmp sgt i64 %9, 4
  br i1 %i.ci, label %bb.t, label %bb.u, !prof !128

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %11, ptr align 4 %i.bq, i64 %9, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cj = icmp eq i64 %9, 4
  br i1 %i.cj, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.ck = load float, ptr %i.bq, align 4, !tbaa !96
  store float %i.ck, ptr %11, align 4, !tbaa !96
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.v, %bb.u, %bb.t
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %2 ; 3 uses
  %i.cm = sub i64 %i.f, %8                        ; 4 uses
  %i.cn = icmp sgt i64 %i.cm, 4
  br i1 %i.cn, label %bb.w, label %bb.x, !prof !128

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %1, i64 %i.cm, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.co = icmp eq i64 %i.cm, 4
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cp = load float, ptr %1, align 4, !tbaa !96
  store float %i.cp, ptr %i.cl, align 4, !tbaa !96
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.cq = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.cr) #20
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit: ; preds = %bb.z, %bb.aa
  store ptr %11, ptr %0, align 8, !tbaa !95
  store ptr %i.cq, ptr %i.c, align 8, !tbaa !92
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %7
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !98
  br label %_ZSt4fillIPffEvT_S1_RKT0_.exit

_ZSt4fillIPffEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !15, i64 8}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !15, i64 8, !5, i64 16}
!15 = !{!"long", !5, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !4, i64 216}
!18 = !{!"_ZTSN11OpenImageIO4v3_19NullInputE", !19, i64 0, !14, i64 184, !4, i64 216, !4, i64 220, !32, i64 224, !48, i64 232, !20, i64 256}
!19 = !{!"_ZTSN11OpenImageIO4v3_110ImageInputE", !20, i64 8, !39, i64 168}
!20 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !21, i64 64, !22, i64 72, !27, i64 96, !4, i64 120, !4, i64 124, !32, i64 128, !33, i64 136}
!21 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!22 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !23, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !12, i64 0}
!27 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!32 = !{!"bool", !5, i64 0}
!33 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !34, i64 0}
!34 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !35, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!38 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !12, i64 0}
!39 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !40, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_ELb1ELb1EE", !41, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !42, i64 0}
!42 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !43, i64 0}
!43 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !44, i64 0, !46, i64 8}
!44 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_110ImageInput4ImplEEEE", !45, i64 0}
!45 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_110ImageInput4ImplEELb0EE", !12, i64 0}
!46 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_110ImageInput4ImplELb0EE", !47, i64 0}
!47 = !{!"p1 _ZTSN11OpenImageIO4v3_110ImageInput4ImplE", !12, i64 0}
!48 = !{!"_ZTSSt6vectorIhSaIhEE", !49, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!52 = !{!18, !4, i64 220}
!53 = !{!18, !32, i64 224}
!54 = !{!51, !11, i64 0}
!55 = !{!51, !11, i64 8}
!56 = !{!57, !59, i64 0}
!57 = !{!"_ZTSSt15_Rb_tree_header", !58, i64 0, !15, i64 32}
!58 = !{!"_ZTSSt18_Rb_tree_node_base", !59, i64 0, !60, i64 8, !60, i64 16, !60, i64 24}
!59 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!60 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!61 = !{!57, !60, i64 8}
!62 = !{!57, !60, i64 16}
!63 = !{!57, !60, i64 24}
!64 = !{!57, !15, i64 32}
!65 = !{!14, !11, i64 0}
!66 = !{!67, !11, i64 0}
!67 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !11, i64 0, !15, i64 8}
!68 = !{!67, !15, i64 8}
!69 = !{!37, !38, i64 0}
!70 = !{!37, !38, i64 8}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!37, !38, i64 16}
!74 = !{!30, !31, i64 0}
!75 = !{!30, !31, i64 8}
!76 = distinct !{!76, !72}
!77 = !{!30, !31, i64 16}
!78 = !{!25, !26, i64 0}
!79 = !{!25, !26, i64 16}
!80 = !{!18, !4, i64 268}
!81 = !{!18, !4, i64 272}
!82 = !{!18, !4, i64 276}
!83 = !{!18, !4, i64 292}
!84 = !{!18, !4, i64 296}
!85 = !{!18, !4, i64 300}
!86 = !{!18, !4, i64 316}
!87 = !{!21, !5, i64 0}
!88 = !{!19, !4, i64 56}
!89 = !{!18, !4, i64 304}
!90 = !{!18, !4, i64 308}
!91 = !{!18, !4, i64 312}
!92 = !{!93, !94, i64 8}
!93 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!94 = !{!"p1 float", !12, i64 0}
!95 = !{!93, !94, i64 0}
!96 = !{!97, !97, i64 0}
!97 = !{!"float", !5, i64 0}
!98 = !{!93, !94, i64 16}
!99 = !{!21, !4, i64 4}
!100 = !{!21, !5, i64 1}
!101 = distinct !{!101, !72}
!102 = distinct !{!102, !72}
!103 = !{!104, !11, i64 0}
!104 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !11, i64 0}
!105 = distinct !{!105, !72}
!106 = !{!107, !108, i64 8}
!107 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE17_Vector_impl_dataE", !108, i64 0, !108, i64 8, !108, i64 16}
!108 = !{!"p1 _ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !12, i64 0}
!109 = !{!107, !108, i64 0}
!110 = distinct !{!110, !72}
!111 = !{!107, !108, i64 16}
!112 = !{!51, !11, i64 16}
!113 = !{i8 0, i8 2}
!114 = !{!19, !4, i64 20}
!115 = !{!19, !4, i64 24}
!116 = !{!19, !4, i64 28}
!117 = !{!19, !4, i64 44}
!118 = !{!19, !4, i64 48}
!119 = !{!19, !4, i64 52}
!120 = distinct !{!120, !72}
!121 = distinct !{!121, !72}
!122 = distinct !{!122, !72}
!123 = !{!58, !60, i64 24}
!124 = !{!58, !60, i64 16}
!125 = distinct !{!125, !72}
!126 = !{!25, !26, i64 8}
!127 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!128 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!129 = distinct !{!129, !72, !130, !131}
!130 = !{!"llvm.loop.isvectorized", i32 1}
!131 = !{!"llvm.loop.unroll.runtime.disable"}
!132 = distinct !{!132, !72, !130}
!133 = distinct !{!133, !72}
!134 = !{!31, !31, i64 0}
!135 = distinct !{!135, !72}
!136 = distinct !{!136, !72}
!137 = !{!15, !15, i64 0}
!138 = distinct !{!138, !72}
!139 = distinct !{!139, !72}
!140 = distinct !{!140, !72}
!141 = !{!38, !38, i64 0}
!142 = distinct !{!142, !72}
!143 = distinct !{!143, !72}
!144 = !{!11, !11, i64 0}
end_hunk_1
