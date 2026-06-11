inline.NumInlined: 816
inline.NumDeleted: 466
begin_hunk_0_@_ZN11OpenImageIO4v3_111parse_paramENS0_17basic_string_viewIcSt11char_traitsIcEEES4_RNS0_9ImageSpecE:bb.a
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = ptrtoint ptr %.sroa.1185.0180 to i64
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit72.sink.split

.thread100:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, %._crit_edge115.thread
  %.sroa.080.0182 = phi ptr [ %.sroa.080.0181, %._crit_edge115.thread ], [ %i.ca, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ]
  %.sroa.1185.0178 = phi ptr [ %.sroa.1185.0180, %._crit_edge115.thread ], [ %i.cb, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ]
  %i.cp = ptrtoint ptr %.sroa.1185.0178 to i64
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit65.sink.split

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit57
  %sext44 = shl i64 %narrow.i143, 32              ; 3 uses
  %i.cq = ashr exact i64 %sext44, 32              ; 2 uses
  %i.cr = icmp ugt i64 %i.cq, 1152921504606846975
  br i1 %i.cr, label %.noexc67, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc67:                                         ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #23
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.o
  %.not.i.i.i.i66 = icmp eq i64 %sext44, 0
  br i1 %.not.i.i.i.i66, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit.thread, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit.sink.split: ; preds = %bb.k, %bb.i
  store i64 269, ptr %6, align 8
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit.sink.split, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %narrow.i143203221228 = phi i64 [ %narrow.i143, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ 1, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit.sink.split ]
  %i.cs = phi i32 [ %i.bt, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ 1, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit.sink.split ]
  %sext44222226 = phi i64 [ %sext44, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ 4294967296, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit.sink.split ]
  %i.ct = phi i64 [ %i.cq, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ 1, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit.sink.split ]
  %i.cu = ashr exact i64 %sext44222226, 29        ; 2 uses
  %i.cv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #24 ; 4 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ct
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cv, i8 0, i64 %i.cu, i1 false), !tbaa !103
  %i.cx = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cy = icmp sgt i32 %i.cs, 0
  br i1 %i.cy, label %.lr.ph111, label %_ZNSt6vectorIfSaIfEED2Ev.exit65.sink.split

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit.thread: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.cz = icmp sgt i32 %i.bt, 0
  br i1 %i.cz, label %.lr.ph111, label %_ZNSt6vectorIfSaIfEED2Ev.exit65

.lr.ph111:                                        ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit.thread, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit
  %narrow.i143203221227 = phi i64 [ %narrow.i143, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit.thread ], [ %narrow.i143203221228, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit ]
  %.sink.i195 = phi i64 [ 0, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit.thread ], [ %i.cx, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit ] ; 3 uses
  %.sroa.074.0192 = phi ptr [ null, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit.thread ], [ %i.cv, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EEC2EmRKS3_.exit ] ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count120 = and i64 %narrow.i143203221227, 2147483647
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph111, %bb.r
  %indvars.iv117 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next118, %bb.r ] ; 2 uses
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
  %i.as = select i1 %i.aq, i64 2305843009213693951, i64 %i.ar ; 3 uses
  %.not.i.i.i.us = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i.i.us)
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
  %8 = load ptr, ptr %i.p, align 8, !tbaa !106
  %i.ba = load ptr, ptr %5, align 8, !tbaa !109
  %i.bb = ptrtoint ptr %8 to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp eq i64 %i.bd, 16
  %i.bf = icmp ne ptr %i.b, %i.c
  %or.cond = and i1 %i.bf, %i.be
  br i1 %or.cond, label %bb.m, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

bb.h:                                             ; preds = %bb.q, %bb.n, %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %.02038 = phi i64 [ %i.cb, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ 0, %.lr.ph ] ; 5 uses
  %9 = load ptr, ptr %5, align 8, !tbaa !109
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.02038 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !66
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.bi, ptr %4, align 8, !tbaa !66
  store i64 %i.bk, ptr %i.w, align 8, !tbaa !68
  %i.bl = invoke noundef float @_ZN11OpenImageIO4v3_17Strutil4stofENS0_17basic_string_viewIcSt11char_traitsIcEEEPm(ptr noundef nonnull dead_on_return %4, ptr noundef null)
          to label %bb.i unwind label %.loopexit.split ; 0 uses

bb.i:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bm = load ptr, ptr %5, align 8, !tbaa !109
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.02038 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !68 ; 2 uses
  %.not23 = icmp eq i64 %i.bp, 0
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
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.br = load ptr, ptr %0, align 8, !tbaa !95
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 2
  %i.bw = icmp ugt i64 %i.bv, %.02038
  br i1 %i.bw, label %bb.k, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.k:                                             ; preds = %bb.j
  %i.bx = load ptr, ptr %i.bn, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.bx, ptr %3, align 8, !tbaa !66
  store i64 %i.bp, ptr %i.y, align 8, !tbaa !68
  %i.by = invoke noundef float @_ZN11OpenImageIO4v3_17Strutil4stofENS0_17basic_string_viewIcSt11char_traitsIcEEEPm(ptr noundef nonnull dead_on_return %3, ptr noundef null)
          to label %bb.l unwind label %.loopexit.split

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bz = load ptr, ptr %0, align 8, !tbaa !95
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.02038
  store float %i.by, ptr %i.ca, align 4, !tbaa !96
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %bb.i, %bb.l, %bb.j
  %i.cb = add nuw i64 %.02038, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !110

bb.m:                                             ; preds = %._crit_edge
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !92  ; 5 uses
  %i.cd = load ptr, ptr %0, align 8, !tbaa !95    ; 6 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64               ; 4 uses
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2                 ; 2 uses
  %i.ci = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ci, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cj = sub nuw nsw i64 1, %i.ch
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.cj)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge unwind label %bb.h

._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge:    ; preds = %bb.n
  %.pre = load ptr, ptr %0, align 8, !tbaa !95    ; 2 uses
  %.pre43 = load ptr, ptr %i.a, align 8, !tbaa !92
  %.pre44.a = ptrtoint ptr %.pre to i64
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.o:                                             ; preds = %bb.m
  %i.ck = icmp ugt i64 %i.ch, 1
  br i1 %i.ck, label %bb.p, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cc, %i.cl
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.p
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !92
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.p, %bb.o
  %.pre-phi = phi i64 [ %.pre44.a, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge ], [ %i.cf, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ], [ %i.cf, %bb.p ], [ %i.cf, %bb.o ]
  %i.cm = phi ptr [ %.pre43, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge ], [ %i.cl, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ], [ %i.cc, %bb.p ], [ %i.cc, %bb.o ] ; 3 uses
  %i.cn = phi ptr [ %.pre, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge ], [ %i.cd, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ], [ %i.cd, %bb.p ], [ %i.cd, %bb.o ] ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.co, %.pre-phi
  %i.cq = ashr exact i64 %i.cp, 2                 ; 3 uses
  %i.cr = icmp ugt i64 %i.g, %i.cq
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.cs = sub nuw nsw i64 %i.g, %i.cq
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.cm, i64 noundef %i.cs, ptr noundef nonnull align 4 dereferenceable(4) %i.cn)
          to label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit unwind label %bb.h

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ct = icmp ult i64 %i.g, %i.cq
  br i1 %i.ct, label %bb.s, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

bb.s:                                             ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.f ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.cm, %i.cu
  br i1 %.not.i.i29, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i30

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i30:      ; preds = %bb.s
  store ptr %i.cu, ptr %i.a, align 8, !tbaa !92
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit:            ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i30, %bb.s, %bb.r, %bb.q, %._crit_edge
  %i.cv = load i64, ptr %i.j, align 8, !tbaa !68
  %i.cw = load ptr, ptr %i.p, align 8
  %i.cx = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !111
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #20
  br label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit, %bb.t
  %.pre-phi46 = phi i64 [ %i.db, %bb.t ], [ 0, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit ]
  %.not = icmp eq i64 %i.cv, 0
  %i.dd = ptrtoint ptr %i.cw to i64
  %i.de = sub i64 %i.dd, %.pre-phi46
  %i.df = lshr exact i64 %i.de, 4
  %i.dg = trunc i64 %i.df to i32
  %i.dh = select i1 %.not, i32 0, i32 %i.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i32 %i.dh

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.split.us, %.loopexit.split, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.h ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  %i.di = load ptr, ptr %5, align 8, !tbaa !109   ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit34, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !111
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dn) #20
  br label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit34

_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit34: ; preds = %.loopexit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !54     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !112
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !55
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #24 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !16
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #20
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
end_hunk_0
