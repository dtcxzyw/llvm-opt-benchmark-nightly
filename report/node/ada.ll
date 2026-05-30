inline.NumInlined: 8298
inline.NumDeleted: 1222
begin_hunk_0_@_ZN3ada11serializers4ipv4B5cxx11Em:bb.a
bb.o:                                             ; preds = %._crit_edge.i.i.i16, %._crit_edge.i.i.thread.i25
  %.0.lcssa.i.i79.i17 = phi i8 [ %i.az, %._crit_edge.i.i.thread.i25 ], [ %i.aq, %._crit_edge.i.i.i16 ]
  %i.bp = or disjoint i8 %.0.lcssa.i.i79.i17, 48
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.sink90.i19 = phi i8 [ 48, %bb.l ], [ %i.bo, %bb.n ], [ %i.bp, %bb.o ]
  %.sink89.i20 = phi i64 [ 1, %bb.l ], [ %i.av, %bb.n ], [ %i.av, %bb.o ]
  store i8 %.sink90.i19, ptr %.ptr, align 1
  %.add30 = add nuw nsw i64 %.sink89.i20, %.pn29.add ; 2 uses
  %.pn29.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.add30
  %.pn29.add.1 = add nuw nsw i64 %.add30, 1       ; 2 uses
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.pn29.add.1 ; 4 uses
  store i8 46, ptr %.pn29.ptr, align 1
  %i.bq = lshr i64 %1, 8                          ; 2 uses
  %i.br = trunc i64 %i.bq to i8                   ; 8 uses
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = icmp ult i8 %i.br, 10
  %i.bu = icmp ult i8 %i.br, 100
  %i.bv = select i1 %i.bu, i64 2, i64 3
  %i.bw = select i1 %i.bt, i64 1, i64 %i.bv       ; 2 uses
  %i.bx = icmp ugt i8 %i.br, 99
  br i1 %i.bx, label %._crit_edge.i.i.thread.i25.1, label %._crit_edge.i.i.i16.1

._crit_edge.i.i.i16.1:                            ; preds = %bb.q
  %i.by = icmp samesign ugt i8 %i.br, 9
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i16.1
  %i.bz = shl nuw nsw i64 %i.bq, 1
  %i.ca = and i64 %i.bz, 254
  %i.cb = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.ptr.1, i64 1
  store i8 %i.cd, ptr %i.ce, align 1
  %i.cf = load i8, ptr %i.cb, align 2
  br label %bb.t

._crit_edge.i.i.thread.i25.1:                     ; preds = %bb.q
  %i.cg = urem i8 %i.br, 100
  %i.ch = shl nuw i8 %i.cg, 1
  %i.ci = udiv i8 %i.br, 100
  %i.cj = zext i8 %i.ch to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr i8, ptr %.ptr.1, i64 2
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = load i8, ptr %i.ck, align 2
  %i.cp = getelementptr i8, ptr %.ptr.1, i64 1
  store i8 %i.co, ptr %i.cp, align 1
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.thread.i25.1, %._crit_edge.i.i.i16.1
  %.0.lcssa.i.i79.i17.1 = phi i8 [ %i.ci, %._crit_edge.i.i.thread.i25.1 ], [ %i.br, %._crit_edge.i.i.i16.1 ]
  %i.cq = or disjoint i8 %.0.lcssa.i.i79.i17.1, 48
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %.sink90.i19.1 = phi i8 [ 48, %bb.p ], [ %i.cf, %bb.r ], [ %i.cq, %bb.s ]
  %.sink89.i20.1 = phi i64 [ 1, %bb.p ], [ %i.bw, %bb.r ], [ %i.bw, %bb.s ]
  store i8 %.sink90.i19.1, ptr %.ptr.1, align 1
  %.add30.1 = add nuw nsw i64 %.sink89.i20.1, %.pn29.add.1 ; 2 uses
  %.pn29.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.add30.1
  %.pn29.add.2 = add nuw nsw i64 %.add30.1, 1     ; 2 uses
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 %.pn29.add.2 ; 4 uses
  store i8 46, ptr %.pn29.ptr.1, align 1
  %i.cr = trunc i64 %1 to i8                      ; 8 uses
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit26.2, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = icmp ult i8 %i.cr, 10
  %i.cu = icmp ult i8 %i.cr, 100
  %i.cv = select i1 %i.cu, i64 2, i64 3
  %i.cw = select i1 %i.ct, i64 1, i64 %i.cv       ; 2 uses
  %i.cx = icmp ugt i8 %i.cr, 99
  br i1 %i.cx, label %._crit_edge.i.i.thread.i25.2, label %._crit_edge.i.i.i16.2

._crit_edge.i.i.i16.2:                            ; preds = %bb.u
  %i.cy = icmp samesign ugt i8 %i.cr, 9
  br i1 %i.cy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i16.2
  %i.cz = shl i64 %1, 1
  %i.da = and i64 %i.cz, 254
  %i.db = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %.ptr.2, i64 1
  store i8 %i.dd, ptr %i.de, align 1
  %i.df = load i8, ptr %i.db, align 2
  br label %_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit26.2

._crit_edge.i.i.thread.i25.2:                     ; preds = %bb.u
  %i.dg = urem i8 %i.cr, 100
  %i.dh = shl nuw i8 %i.dg, 1
  %i.di = udiv i8 %i.cr, 100
  %i.dj = zext i8 %i.dh to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = getelementptr i8, ptr %.ptr.2, i64 2
  store i8 %i.dm, ptr %i.dn, align 1
  %i.do = load i8, ptr %i.dk, align 2
  %i.dp = getelementptr i8, ptr %.ptr.2, i64 1
  store i8 %i.do, ptr %i.dp, align 1
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i.thread.i25.2, %._crit_edge.i.i.i16.2
  %.0.lcssa.i.i79.i17.2 = phi i8 [ %i.di, %._crit_edge.i.i.thread.i25.2 ], [ %i.cr, %._crit_edge.i.i.i16.2 ]
  %i.dq = or disjoint i8 %.0.lcssa.i.i79.i17.2, 48
  br label %_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit26.2

_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit26.2: ; preds = %bb.t, %bb.v, %bb.w
  %.sink90.i19.2 = phi i8 [ 48, %bb.t ], [ %i.df, %bb.v ], [ %i.dq, %bb.w ]
  %.sink89.i20.2 = phi i64 [ 1, %bb.t ], [ %i.cw, %bb.v ], [ %i.cw, %bb.w ]
  store i8 %.sink90.i19.2, ptr %.ptr.2, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sink89.i20.2
  %.pn29.ptr.2 = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.pn29.add.2
  %i.ds = load ptr, ptr %0, align 8               ; 3 uses
  %i.dt = ptrtoint ptr %.pn29.ptr.2 to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 6 uses
  %i.dw = load i64, ptr %i.a, align 8             ; 7 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  br i1 %i.dx, label %bb.e, label %bb.k
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN3ada5parseINS_3urlEEEN2tl8expectedIT_NS_6errorsEEESt17basic_string_viewIcSt11char_traitsIcEEPKS4_(ptr dead_on_unwind noalias writable sret(%"class.tl::expected") align 8 %0, i64 %1, ptr %2, ptr noundef %3) local_unnamed_addr #4 comdat {
bb.a:
  %4 = alloca %"struct.ada::url", align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.ada::url") align 8 %4, i64 %1, ptr %2, ptr noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZN3ada3urlC2EOS0_(ptr noundef nonnull align 8 dereferenceable(273) %0, ptr noundef nonnull align 8 dereferenceable(272) %4) #31, !inline_history !80
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 %.sink, ptr %i.d, align 8
  call void @_ZN3ada3urlD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_(ptr dead_on_unwind noalias writable sret(%"struct.ada::url") align 8 %0, i64 %1, ptr %2, ptr noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 6 uses
  %5 = alloca %"class.std::basic_string_view.2", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %7 = alloca %"class.std::basic_string_view.2", align 8 ; 10 uses
  %8 = alloca %"class.std::basic_string_view.2", align 8 ; 10 uses
  %9 = alloca %"class.std::basic_string_view.2", align 8 ; 10 uses
  %10 = alloca %"class.std::basic_string_view.2", align 8 ; 10 uses
  %11 = alloca %"class.std::basic_string_view.2", align 8 ; 10 uses
  %12 = alloca %"class.std::basic_string_view.2", align 8 ; 10 uses
  %13 = alloca %"class.std::basic_string_view.2", align 8 ; 11 uses
  %14 = alloca %"class.std::basic_string_view.2", align 8 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 10 uses
  %16 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %17 = alloca %"class.std::basic_string_view.2", align 8 ; 12 uses
  %18 = alloca %"class.std::basic_string_view.2", align 8 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 10 uses
  %20 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %21 = alloca %"class.std::basic_string_view.2", align 8 ; 12 uses
  %22 = alloca %"class.std::basic_string_view.2", align 8 ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 10 uses
  %24 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 11 uses
  %26 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 12 uses
  %28 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %31 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %32 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %35 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %36 = alloca %"class.std::basic_string_view.2", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.b, i8 0, i64 264, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 23 uses
  store i8 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  store i8 0, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 18 uses
  store i8 1, ptr %i.f, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada3urlE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  store ptr %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store i8 0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  store i8 0, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 13 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i8 0, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 72 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 35 uses
  store ptr %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 42 uses
  store i8 0, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8
  store i8 0, ptr %i.u, align 8
  %i.v = icmp ugt i64 %1, 4294967295
  br i1 %i.v, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.w = phi i8 [ 0, %bb.b ], [ 1, %bb.a ]        ; 2 uses
  %i.x = icmp ne ptr %3, null                     ; 4 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load i8, ptr %i.y, align 8, !range !73, !noundef !74
  %i.aa = and i8 %i.w, %i.z                       ; 2 uses
  store i8 %i.aa, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi i8 [ %i.aa, %bb.d ], [ %i.w, %bb.c ]
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %.critedge346

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #31
  %i.ad = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  store ptr %i.ad, ptr %27, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 7 uses
  store i64 0, ptr %i.ae, align 8
  store i8 0, ptr %i.ad, align 8
  %i.af = icmp ult i64 %1, 16
  br i1 %i.af, label %bb.g, label %.preheader1996.preheader

.preheader1996.preheader:                         ; preds = %bb.f
  %i.ag = add i64 %1, -16                         ; 2 uses
  %i.ah = lshr i64 %i.ag, 4                       ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %.preheader1996.epil.preheader, label %.preheader1996.preheader.new

.preheader1996.preheader.new:                     ; preds = %.preheader1996.preheader
  %unroll_iter = and i64 %i.ai, 2305843009213693950
  br label %.preheader1996

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not6.not.i.i = icmp samesign eq i64 %1, 0
  br i1 %.not6.not.i.i, label %_ZN3ada7helpers10prune_hashERSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.i

_ZN3ada7unicode18is_tabs_or_newlineEc.exit:       ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 1 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.al, %i.ak
  br i1 %.not.not.i.i, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %.lr.ph.i.i, !llvm.loop !48

.lr.ph.i.i:                                       ; preds = %bb.g, %_ZN3ada7unicode18is_tabs_or_newlineEc.exit
  %.057.i.i = phi ptr [ %i.al, %_ZN3ada7unicode18is_tabs_or_newlineEc.exit ], [ %2, %bb.g ] ; 2 uses
  %i.am = load i8, ptr %.057.i.i, align 1
  switch i8 %i.am, label %_ZN3ada7unicode18is_tabs_or_newlineEc.exit [
    i8 13, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1600
    i8 10, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1600
    i8 9, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1600
  ]

.preheader1996:                                   ; preds = %.preheader1996, %.preheader1996.preheader.new
  %.013.i2177 = phi i64 [ 0, %.preheader1996.preheader.new ], [ %i.bg, %.preheader1996 ] ; 3 uses
  %.014.i2176 = phi <2 x i64> [ zeroinitializer, %.preheader1996.preheader.new ], [ %i.bf, %.preheader1996 ]
  %niter = phi i64 [ 0, %.preheader1996.preheader.new ], [ %niter.next.1, %.preheader1996 ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.013.i2177
  %i.ao = load <16 x i8>, ptr %i.an, align 1      ; 2 uses
  %i.ap = icmp eq <16 x i8> %i.ao, splat (i8 10)
  %i.aq = and <16 x i8> %i.ao, splat (i8 -5)
  %i.ar = icmp eq <16 x i8> %i.aq, splat (i8 9)
  %i.as = or <16 x i1> %i.ap, %i.ar
  %i.at = sext <16 x i1> %i.as to <16 x i8>
  %i.au = bitcast <16 x i8> %i.at to <2 x i64>
  %i.av = or <2 x i64> %.014.i2176, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %.013.i2177
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load <16 x i8>, ptr %i.ax, align 1      ; 2 uses
  %i.az = icmp eq <16 x i8> %i.ay, splat (i8 10)
  %i.ba = and <16 x i8> %i.ay, splat (i8 -5)
  %i.bb = icmp eq <16 x i8> %i.ba, splat (i8 9)
  %i.bc = or <16 x i1> %i.az, %i.bb
  %i.bd = sext <16 x i1> %i.bc to <16 x i8>
  %i.be = bitcast <16 x i8> %i.bd to <2 x i64>
  %i.bf = or <2 x i64> %i.av, %i.be               ; 3 uses
  %i.bg = add nuw i64 %.013.i2177, 32             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %.preheader1996, !llvm.loop !81

.unr-lcssa:                                       ; preds = %.preheader1996
  %i.bh = and i64 %i.ag, 16
  %lcmp.mod.not.not = icmp eq i64 %i.bh, 0
  br i1 %lcmp.mod.not.not, label %.preheader1996.epil.preheader, label %bb.h

.preheader1996.epil.preheader:                    ; preds = %.unr-lcssa, %.preheader1996.preheader
  %.013.i2177.epil.init = phi i64 [ 0, %.preheader1996.preheader ], [ %i.bg, %.unr-lcssa ]
  %.014.i2176.epil.init = phi <2 x i64> [ zeroinitializer, %.preheader1996.preheader ], [ %i.bf, %.unr-lcssa ]
  %lcmp.mod3627 = trunc i64 %i.ai to i1
  call void @llvm.assume(i1 %lcmp.mod3627)
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %.013.i2177.epil.init
  %i.bj = load <16 x i8>, ptr %i.bi, align 1      ; 2 uses
  %i.bk = icmp eq <16 x i8> %i.bj, splat (i8 10)
  %i.bl = and <16 x i8> %i.bj, splat (i8 -5)
  %i.bm = icmp eq <16 x i8> %i.bl, splat (i8 9)
  %i.bn = or <16 x i1> %i.bk, %i.bm
  %i.bo = sext <16 x i1> %i.bn to <16 x i8>
  %i.bp = bitcast <16 x i8> %i.bo to <2 x i64>
  %i.bq = or <2 x i64> %.014.i2176.epil.init, %i.bp
  br label %bb.h

bb.h:                                             ; preds = %.unr-lcssa, %.preheader1996.epil.preheader
  %.lcssa3625 = phi <2 x i64> [ %i.bf, %.unr-lcssa ], [ %i.bq, %.preheader1996.epil.preheader ] ; 2 uses
  %i.br = and i64 %1, 15
  %.not2818 = icmp eq i64 %i.br, 0
  br i1 %.not2818, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -16
  %i.bu = load <16 x i8>, ptr %i.bt, align 1      ; 2 uses
  %i.bv = icmp eq <16 x i8> %i.bu, splat (i8 10)
  %i.bw = and <16 x i8> %i.bu, splat (i8 -5)
  %i.bx = icmp eq <16 x i8> %i.bw, splat (i8 9)
  %i.by = or <16 x i1> %i.bv, %i.bx
  %i.bz = sext <16 x i1> %i.by to <16 x i8>
  %i.ca = bitcast <16 x i8> %i.bz to <2 x i64>
  %i.cb = or <2 x i64> %.lcssa3625, %i.ca
  br label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.h, %bb.i
  %.1.i = phi <2 x i64> [ %i.cb, %bb.i ], [ %.lcssa3625, %bb.h ]
  %i.cc = bitcast <2 x i64> %.1.i to <16 x i8>
  %i.cd = icmp slt <16 x i8> %i.cc, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16
  %.not1889 = icmp eq i16 %i.ce, 0
  br i1 %.not1889, label %.lr.ph.i.preheader, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1600, !prof !82

_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1600: ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %27, i64 noundef 0, i64 noundef 0, ptr noundef %2, i64 noundef %1) ; 0 uses
  %i.cg = load i64, ptr %i.ae, align 8            ; 6 uses
  %i.ch = load ptr, ptr %27, align 8              ; 7 uses
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg ; 8 uses
  %i.ck = ptrtoint ptr %i.cj to i64               ; 3 uses
  %i.cl = ashr i64 %i.cg, 2                       ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1600
  %i.cn = and i64 %i.cg, -4
  %scevgep = getelementptr i8, ptr %i.ch, i64 %i.cn
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.m
  %.052.i.i.i.i = phi i64 [ %i.cw, %bb.m ], [ %i.cl, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.cv, %bb.m ], [ %i.ch, %.lr.ph.i.i.i.i.preheader ] ; 11 uses
  %i.co = load i8, ptr %.sroa.032.051.i.i.i.i, align 1
  switch i8 %i.co, label %bb.j [
    i8 13, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i
    i8 10, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i
    i8 9, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i
  ]

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 1
end_hunk_0
begin_hunk_1_@_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %i.bdm = load i64, ptr %i.gq, align 8, !noalias !108 ; 3 uses
  %i.bdn = icmp ult i64 %i.bdm, 16
  call void @llvm.assume(i1 %i.bdn)
  %i.bdo = add nuw nsw i64 %i.bdm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gr, ptr noundef nonnull align 8 dereferenceable(1) %i.gp, i64 %i.bdo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i845: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bdk, ptr %32, align 8, !alias.scope !108
  %i.bdp = load i64, ptr %i.gp, align 8, !noalias !108
  store i64 %i.bdp, ptr %i.gr, align 8, !alias.scope !108
  %.pre.i = load i64, ptr %i.gq, align 8, !noalias !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848: ; preds = %bb.ln, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i845
  %i.bdq = phi ptr [ %i.gr, %bb.ln ], [ %i.bdk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i845 ]
  %i.bdr = phi i64 [ %i.bdm, %bb.ln ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i845 ] ; 2 uses
  store i64 %i.bdr, ptr %i.gs, align 8, !alias.scope !108
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #31
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %34, i64 %i.bdr, ptr %i.bdq, ptr noundef nonnull @_ZN3ada14character_setsL25C0_CONTROL_PERCENT_ENCODEE)
  %i.bds = load ptr, ptr %34, align 8
  %i.bdt = load i64, ptr %i.gt, align 8
  %i.bdu = load i64, ptr %i.q, align 8
  %i.bdv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0, i64 noundef %i.bdu, ptr noundef %i.bds, i64 noundef %i.bdt) ; 0 uses
  %i.bdw = load ptr, ptr %34, align 8             ; 2 uses
  %i.bdx = icmp eq ptr %i.bdw, %i.gu
  br i1 %i.bdx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848
  %i.bdy = load i64, ptr %i.gu, align 8
  %i.bdz = add i64 %i.bdy, 1
  call void @_ZdlPvm(ptr noundef %i.bdw, i64 noundef %i.bdz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  %i.bea = load ptr, ptr %32, align 8             ; 2 uses
  %i.beb = icmp eq ptr %i.bea, %i.gr
  br i1 %i.beb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i856

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i856: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855
  %i.bec = load i64, ptr %i.gr, align 8
  %i.bed = add i64 %i.bec, 1
  call void @_ZdlPvm(ptr noundef %i.bea, i64 noundef %i.bed) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i856
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br label %.critedge326

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829
  %.82862 = phi i32 [ 18, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread.thread ], [ 15, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread ], [ %.82869, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829 ]
  %.92772861 = phi i64 [ %i.gk, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread.thread ], [ %i.bcl, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread ], [ %.92772868, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829 ]
  %.sroa.01267.02860 = phi i64 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread.thread ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit828.thread ], [ %.sroa.01267.02867, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %35, i64 %.sroa.01267.02860, ptr %i.bcf, ptr noundef nonnull @_ZN3ada14character_setsL25C0_CONTROL_PERCENT_ENCODEE)
  %i.bee = load ptr, ptr %35, align 8
  %i.bef = load i64, ptr %i.gv, align 8
  %i.beg = load i64, ptr %i.q, align 8
  %i.beh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0, i64 noundef %i.beg, ptr noundef %i.bee, i64 noundef %i.bef) ; 0 uses
  %i.bei = load ptr, ptr %35, align 8             ; 2 uses
  %i.bej = icmp eq ptr %i.bei, %i.gw
  br i1 %i.bej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829.thread
  %i.bek = load i64, ptr %i.gw, align 8
  %i.bel = add i64 %i.bek, 1
  call void @_ZdlPvm(ptr noundef %i.bei, i64 noundef %i.bel) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit829.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  br label %.critedge326

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit867: ; preds = %bb.ah
  %i.bem = sub nuw i64 %.sroa.01320.1, %.02682384
  %i.ben = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.02682384 ; 7 uses
  %i.beo = icmp eq i64 %.sroa.01320.1, %.02682384
  br i1 %i.beo, label %.thread, label %bb.lo

.thread:                                          ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit867
  %i.bep = ptrtoint ptr %i.ben to i64             ; 2 uses
  br label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770

bb.lo:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit867
  %i.beq = load i8, ptr %i.ben, align 1
  %i.ber = icmp eq i8 %i.beq, 45
  br i1 %i.ber, label %bb.lp, label %.lr.ph.i37.i.preheader

bb.lp:                                            ; preds = %bb.lo
  store i8 0, ptr %i.c, align 8
  br label %.critedge329

.lr.ph.i37.i.preheader:                           ; preds = %bb.lo
  %i.bes = ptrtoint ptr %i.ben to i64             ; 5 uses
  br label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %.lr.ph.i37.i.preheader, %.critedge.i38.i
  %.368.i = phi ptr [ %i.bfm, %.critedge.i38.i ], [ %i.ben, %.lr.ph.i37.i.preheader ] ; 4 uses
  %.9.i = phi i32 [ %.10.i, %.critedge.i38.i ], [ 0, %.lr.ph.i37.i.preheader ] ; 3 uses
  %.02338.i.i = phi i32 [ %i.bew, %.critedge.i38.i ], [ 32, %.lr.ph.i37.i.preheader ]
  %i.bet = load i8, ptr %.368.i, align 1
  %i.beu = add i8 %i.bet, -48                     ; 2 uses
  %i.bev = zext i8 %i.beu to i32                  ; 2 uses
  %.not31.i.i = icmp ult i8 %i.beu, 10
  br i1 %.not31.i.i, label %bb.lq, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i

bb.lq:                                            ; preds = %.lr.ph.i37.i
  %i.bew = add i32 %.02338.i.i, -4                ; 2 uses
  %i.bex = icmp sgt i32 %i.bew, -1
  br i1 %i.bex, label %bb.lr, label %bb.ls, !prof !111

bb.lr:                                            ; preds = %bb.lq
  %i.bey = mul i32 %.9.i, 10
  %i.bez = add i32 %i.bey, %i.bev
  br label %.critedge.i38.i

bb.ls:                                            ; preds = %bb.lq
  %i.bfa = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.9.i, i32 10) ; 2 uses
  %i.bfb = extractvalue { i32, i1 } %i.bfa, 1
  br i1 %i.bfb, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, label %bb.lt, !prof !112

bb.lt:                                            ; preds = %bb.ls
  %i.bfc = extractvalue { i32, i1 } %i.bfa, 0
  %i.bfd = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.bfc, i32 %i.bev) ; 2 uses
  %i.bfe = extractvalue { i32, i1 } %i.bfd, 1
  %i.bff = extractvalue { i32, i1 } %i.bfd, 0
  br i1 %i.bfe, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, label %.critedge.i38.i, !prof !18

_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i: ; preds = %bb.lt, %bb.ls
  %i.bfg = getelementptr inbounds nuw i8, ptr %.368.i, i64 1 ; 2 uses
  %.not32.i.i3408 = icmp eq ptr %i.bfg, %i.gn
  br i1 %.not32.i.i3408, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, label %.lr.ph3409

_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i: ; preds = %.lr.ph3409
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfi, i64 1 ; 2 uses
  %.not32.i.i = icmp eq ptr %i.bfh, %i.gn
  br i1 %.not32.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, label %.lr.ph3409, !llvm.loop !113

.lr.ph3409:                                       ; preds = %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i
  %i.bfi = phi ptr [ %i.bfh, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i ], [ %i.bfg, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i ] ; 3 uses
  %i.bfj = load i8, ptr %i.bfi, align 1
  %i.bfk = add i8 %i.bfj, -48
  %i.bfl = icmp ult i8 %i.bfk, 10
  br i1 %i.bfl, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i, label %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge, !llvm.loop !113

.critedge.i38.i:                                  ; preds = %bb.lt, %bb.lr
  %.10.i = phi i32 [ %i.bez, %bb.lr ], [ %i.bff, %bb.lt ] ; 2 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %.368.i, i64 1 ; 2 uses
  %.not.i.i871 = icmp eq ptr %i.bfm, %i.gn
  br i1 %.not.i.i871, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i, label %.lr.ph.i37.i, !llvm.loop !114

._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge: ; preds = %.lr.ph3409
  br label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, !llvm.loop !113

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i: ; preds = %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i, %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i
  %.065.ph.i = phi ptr [ %i.bfi, %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge ], [ %i.gn, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i ], [ %i.gn, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i ]
  %i.bfn = icmp eq ptr %.065.ph.i, %i.ben
  br i1 %i.bfn, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, !prof !115

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i: ; preds = %.critedge.i38.i, %.lr.ph.i37.i
  %.065.i = phi ptr [ %.368.i, %.lr.ph.i37.i ], [ %i.gn, %.critedge.i38.i ] ; 2 uses
  %.0.i868 = phi i32 [ %.9.i, %.lr.ph.i37.i ], [ %.10.i, %.critedge.i38.i ] ; 2 uses
  %.not1909.a = icmp eq ptr %.065.i, %i.ben
  br i1 %.not1909.a, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770, label %bb.lu, !prof !116

bb.lu:                                            ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i
  %i.bfo = icmp ugt i32 %.0.i868, 65535
  br i1 %i.bfo, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.bfp = trunc nuw i32 %.0.i868 to i16
  %.pre2617 = ptrtoint ptr %.065.i to i64
  br label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770

_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, %bb.lu
  store i8 0, ptr %i.c, align 8
  br label %.critedge329

_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770: ; preds = %.thread, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, %bb.lv
  %i.bfq = phi i64 [ %i.bes, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.bep, %.thread ], [ %i.bes, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.bes, %bb.lv ]
  %.pre-phi = phi i64 [ %i.bes, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.bep, %.thread ], [ %i.bes, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %.pre2617, %bb.lv ]
  %i.bfr = phi i1 [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ false, %.thread ], [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ true, %bb.lv ]
  %.015961776 = phi i16 [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ 0, %.thread ], [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.bfp, %bb.lv ] ; 3 uses
  %i.bfs = sub i64 %.pre-phi, %i.bfq              ; 3 uses
  %i.bft = icmp eq i64 %i.bfs, %i.bem
  br i1 %i.bft, label %bb.lz, label %bb.lw

bb.lw:                                            ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.ben, i64 %i.bfs
  %i.bfv = load i8, ptr %i.bfu, align 1           ; 2 uses
  switch i8 %i.bfv, label %bb.lx [
    i8 47, label %bb.lz
    i8 63, label %bb.lz
  ]

bb.lx:                                            ; preds = %bb.lw
  %i.bfw = load i8, ptr %i.f, align 1
  %.not1910 = icmp eq i8 %i.bfw, 1
  br i1 %.not1910, label %.thread1779, label %bb.ly

.thread1779:                                      ; preds = %bb.lx
  store i8 0, ptr %i.c, align 8
  br label %.critedge329

bb.ly:                                            ; preds = %bb.lx
  %i.bfx = icmp eq i8 %i.bfv, 92
  br label %bb.lz

bb.lz:                                            ; preds = %bb.lw, %bb.lw, %bb.ly, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770
  %37 = phi i1 [ true, %bb.lw ], [ true, %bb.lw ], [ true, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770 ], [ %i.bfx, %bb.ly ]
  %i.bfy = load i8, ptr %i.c, align 8, !range !73, !noundef !74
  %38 = trunc nuw i8 %i.bfy to i1
  %39 = and i1 %37, %38                           ; 2 uses
  %40 = zext i1 %39 to i8
  store i8 %40, ptr %i.c, align 8
  br i1 %39, label %_ZN3ada3url10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %.critedge329

_ZN3ada3url10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit: ; preds = %bb.lz
  %i.bfz = load i8, ptr %i.f, align 1
  %i.bga = zext i8 %i.bfz to i64                  ; 2 uses
  %i.bgb = getelementptr inbounds nuw [2 x i8], ptr @_ZN3ada6scheme7detailsL13special_portsE, i64 %i.bga
  %i.bgc = load i16, ptr %i.bgb, align 2
  %i.bgd = lshr i64 194, %i.bga
  %i.bge = trunc i64 %i.bgd to i1
  %i.bgf = icmp eq i16 %.015961776, 0
  %or.cond.i419 = select i1 %i.bge, i1 %i.bgf, i1 false
  %i.bgg = icmp ne i16 %i.bgc, %.015961776
  %spec.select.i = select i1 %or.cond.i419, i1 true, i1 %i.bgg
  %or.cond4.i = select i1 %i.bfr, i1 %spec.select.i, i1 false ; 2 uses
  %spec.select = select i1 %or.cond4.i, i16 %.015961776, i16 %.sroa.01476.02382 ; 2 uses
  %.sroa.41477.0.insert.shift = select i1 %or.cond4.i, i32 65536, i32 0
  %.sroa.01476.0.insert.ext = zext i16 %spec.select to i32
  %.sroa.01476.0.insert.insert = or disjoint i32 %.sroa.41477.0.insert.shift, %.sroa.01476.0.insert.ext
  store i32 %.sroa.01476.0.insert.insert, ptr %i.go, align 8
  %i.bgh = add i64 %i.bfs, %.02682384
  br label %bb.ma

bb.ma:                                            ; preds = %_ZN3ada3url10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, %bb.ah
  %.sroa.01476.1 = phi i16 [ %spec.select, %_ZN3ada3url10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit ], [ %.sroa.01476.02382, %bb.ah ] ; 3 uses
  %.10278 = phi i64 [ %i.bgh, %_ZN3ada3url10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit ], [ %.02682384, %bb.ah ] ; 6 uses
  %i.bgi = load i8, ptr %i.f, align 1
  %.not1911 = icmp eq i8 %i.bgi, 1
  %.not311 = icmp eq i64 %.10278, %.sroa.01320.1  ; 2 uses
  br i1 %.not1911, label %bb.mf, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  br i1 %.not311, label %bb.mc, label %bb.me

bb.mc:                                            ; preds = %bb.mb
  %i.bgj = load i64, ptr %i.q, align 8
  %i.bgk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0, i64 noundef %i.bgj, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  br i1 %.sroa.14.0, label %bb.md, label %.critedge346.critedge

bb.md:                                            ; preds = %bb.mc
  call void @_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(272) %0, i64 %.sroa.01314.0, ptr %.sroa.9.0)
  br label %.critedge346.critedge

bb.me:                                            ; preds = %bb.mb
  %i.bgl = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.10278
  %i.bgm = load i8, ptr %i.bgl, align 1
  switch i8 %i.bgm, label %.critedge326 [
    i8 47, label %.critedge338
    i8 92, label %.critedge338
  ]

bb.mf:                                            ; preds = %bb.ma
  br i1 %.not311, label %.critedge338, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.bgn = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.10278
  %i.bgo = load i8, ptr %i.bgn, align 1
  switch i8 %i.bgo, label %.critedge326 [
    i8 63, label %.critedge338
    i8 47, label %.critedge338.fold.split
  ]

.critedge338.fold.split:                          ; preds = %bb.mg
  br label %.critedge338

.critedge338:                                     ; preds = %bb.mg, %.critedge338.fold.split, %bb.me, %bb.me, %bb.mf
  %.11 = phi i32 [ 16, %bb.me ], [ 16, %bb.me ], [ 15, %bb.mg ], [ 17, %bb.mf ], [ 16, %.critedge338.fold.split ]
  %i.bgp = add i64 %.10278, 1
  br label %.critedge326

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit875: ; preds = %bb.ah
  %i.bgq = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.02682384 ; 23 uses
  %.not1905.a = icmp eq i64 %.sroa.01320.1, %.02682384
  br i1 %.not1905.a, label %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i877

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i877:    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit875
  %i.bgr = sub nuw i64 %.sroa.01320.1, %.02682384 ; 2 uses
  %i.bgs = call ptr @memchr(ptr noundef %i.bgq, i32 noundef 63, i64 noundef %i.bgr) #31 ; 2 uses
  %.not.i878 = icmp eq ptr %i.bgs, null
  %i.bgt = ptrtoint ptr %i.bgs to i64
  %i.bgu = ptrtoint ptr %i.bgq to i64
  %i.bgv = sub i64 %i.bgt, %i.bgu                 ; 3 uses
  %.not310 = icmp eq i64 %i.bgv, -1
  %or.cond1881 = select i1 %.not.i878, i1 true, i1 %.not310 ; 3 uses
  %i.bgw = add i64 %.02682384, 1
  %i.bgx = add i64 %i.bgw, %i.bgv
  %.sroa.01259.0 = select i1 %or.cond1881, i64 %i.bgr, i64 %i.bgv ; 18 uses
  %.11279 = select i1 %or.cond1881, i64 %i.gk, i64 %i.bgx ; 10 uses
  %.12 = select i1 %or.cond1881, i32 16, i32 15   ; 10 uses
  %i.bgy = load i8, ptr %i.f, align 1             ; 3 uses
  %i.bgz = icmp ugt i64 %.sroa.01259.0, 7
  br i1 %i.bgz, label %.lr.ph2216, label %.preheader1988

.preheader1988.loopexit:                          ; preds = %.lr.ph2216
  %i.bha = and i64 %.sroa.01259.0, -8
  br label %.preheader1988

.preheader1988:                                   ; preds = %.preheader1988.loopexit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i877
  %.016.i.lcssa = phi i64 [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i877 ], [ %i.bha, %.preheader1988.loopexit ] ; 4 uses
  %.0.i420.lcssa = phi i8 [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i877 ], [ %i.bjg, %.preheader1988.loopexit ] ; 3 uses
  %i.bhb = icmp ult i64 %.016.i.lcssa, %.sroa.01259.0
  br i1 %i.bhb, label %.lr.ph2221.preheader, label %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit

.lr.ph2221.preheader:                             ; preds = %.preheader1988
  %xtraiter3634 = and i64 %.sroa.01259.0, 3       ; 2 uses
  %lcmp.mod3635.not = icmp eq i64 %xtraiter3634, 0
  br i1 %lcmp.mod3635.not, label %.lr.ph2221.prol.loopexit, label %.lr.ph2221.prol

.lr.ph2221.prol:                                  ; preds = %.lr.ph2221.preheader, %.lr.ph2221.prol
  %.1.i4212220.prol = phi i8 [ %i.bhh, %.lr.ph2221.prol ], [ %.0.i420.lcssa, %.lr.ph2221.preheader ]
  %.117.i2219.prol = phi i64 [ %i.bhi, %.lr.ph2221.prol ], [ %.016.i.lcssa, %.lr.ph2221.preheader ] ; 2 uses
  %prol.iter3636 = phi i64 [ %prol.iter3636.next, %.lr.ph2221.prol ], [ 0, %.lr.ph2221.preheader ]
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bgq, i64 %.117.i2219.prol
  %i.bhd = load i8, ptr %i.bhc, align 1
  %i.bhe = zext i8 %i.bhd to i64
  %i.bhf = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bhe
  %i.bhg = load i8, ptr %i.bhf, align 1
  %i.bhh = or i8 %i.bhg, %.1.i4212220.prol        ; 3 uses
  %i.bhi = add nuw i64 %.117.i2219.prol, 1        ; 2 uses
  %prol.iter3636.next = add i64 %prol.iter3636, 1 ; 2 uses
  %prol.iter3636.cmp.not = icmp eq i64 %prol.iter3636.next, %xtraiter3634
  br i1 %prol.iter3636.cmp.not, label %.lr.ph2221.prol.loopexit, label %.lr.ph2221.prol, !llvm.loop !117

.lr.ph2221.prol.loopexit:                         ; preds = %.lr.ph2221.prol, %.lr.ph2221.preheader
  %.lcssa3459.unr = phi i8 [ poison, %.lr.ph2221.preheader ], [ %i.bhh, %.lr.ph2221.prol ]
  %.1.i4212220.unr = phi i8 [ %.0.i420.lcssa, %.lr.ph2221.preheader ], [ %i.bhh, %.lr.ph2221.prol ]
  %.117.i2219.unr = phi i64 [ %.016.i.lcssa, %.lr.ph2221.preheader ], [ %i.bhi, %.lr.ph2221.prol ]
  %i.bhj = sub i64 %.016.i.lcssa, %.sroa.01259.0
  %i.bhk = icmp ugt i64 %i.bhj, -4
  br i1 %i.bhk, label %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph2221

.lr.ph2216:                                       ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i877, %.lr.ph2216
  %.0.i4202215 = phi i8 [ %i.bjg, %.lr.ph2216 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i877 ]
  %.016.i2214 = phi i64 [ %i.bjh, %.lr.ph2216 ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i877 ] ; 2 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bgq, i64 %.016.i2214 ; 8 uses
  %i.bhm = load i8, ptr %i.bhl, align 1
  %i.bhn = zext i8 %i.bhm to i64
  %i.bho = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bhn
  %i.bhp = load i8, ptr %i.bho, align 1
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhl, i64 1
  %i.bhr = load i8, ptr %i.bhq, align 1
  %i.bhs = zext i8 %i.bhr to i64
  %i.bht = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bhs
  %i.bhu = load i8, ptr %i.bht, align 1
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhl, i64 2
  %i.bhw = load i8, ptr %i.bhv, align 1
  %i.bhx = zext i8 %i.bhw to i64
  %i.bhy = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bhx
  %i.bhz = load i8, ptr %i.bhy, align 1
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhl, i64 3
  %i.bib = load i8, ptr %i.bia, align 1
  %i.bic = zext i8 %i.bib to i64
  %i.bid = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bic
  %i.bie = load i8, ptr %i.bid, align 1
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bhl, i64 4
  %i.big = load i8, ptr %i.bif, align 1
  %i.bih = zext i8 %i.big to i64
  %i.bii = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bih
  %i.bij = load i8, ptr %i.bii, align 1
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bhl, i64 5
  %i.bil = load i8, ptr %i.bik, align 1
  %i.bim = zext i8 %i.bil to i64
  %i.bin = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bim
  %i.bio = load i8, ptr %i.bin, align 1
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bhl, i64 6
  %i.biq = load i8, ptr %i.bip, align 1
  %i.bir = zext i8 %i.biq to i64
  %i.bis = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bir
  %i.bit = load i8, ptr %i.bis, align 1
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bhl, i64 7
  %i.biv = load i8, ptr %i.biu, align 1
  %i.biw = zext i8 %i.biv to i64
  %i.bix = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.biw
  %i.biy = load i8, ptr %i.bix, align 1
  %i.biz = or i8 %i.bhp, %.0.i4202215
  %i.bja = or i8 %i.biz, %i.bhu
  %i.bjb = or i8 %i.bja, %i.bhz
  %i.bjc = or i8 %i.bjb, %i.bie
  %i.bjd = or i8 %i.bjc, %i.bij
  %i.bje = or i8 %i.bjd, %i.bio
  %i.bjf = or i8 %i.bje, %i.bit
  %i.bjg = or i8 %i.bjf, %i.biy                   ; 2 uses
  %i.bjh = add nuw i64 %.016.i2214, 8             ; 2 uses
  %i.bji = or disjoint i64 %i.bjh, 7
  %i.bjj = icmp ult i64 %i.bji, %.sroa.01259.0
  br i1 %i.bjj, label %.lr.ph2216, label %.preheader1988.loopexit, !llvm.loop !118

.lr.ph2221:                                       ; preds = %.lr.ph2221.prol.loopexit, %.lr.ph2221
  %.1.i4212220 = phi i8 [ %i.bkk, %.lr.ph2221 ], [ %.1.i4212220.unr, %.lr.ph2221.prol.loopexit ]
  %.117.i2219 = phi i64 [ %i.bkl, %.lr.ph2221 ], [ %.117.i2219.unr, %.lr.ph2221.prol.loopexit ] ; 5 uses
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bgq, i64 %.117.i2219
  %i.bjl = load i8, ptr %i.bjk, align 1
  %i.bjm = zext i8 %i.bjl to i64
  %i.bjn = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bjm
  %i.bjo = load i8, ptr %i.bjn, align 1
  %i.bjp = or i8 %i.bjo, %.1.i4212220
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bgq, i64 %.117.i2219
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjq, i64 1
  %i.bjs = load i8, ptr %i.bjr, align 1
  %i.bjt = zext i8 %i.bjs to i64
  %i.bju = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bjt
  %i.bjv = load i8, ptr %i.bju, align 1
end_hunk_1
begin_hunk_2_@_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %i.cps = getelementptr inbounds nuw i8, ptr %.sroa.28.216051612, i64 %.02682384 ; 5 uses
  store i8 6, ptr %i.f, align 1
  %i.cpt = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA1_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) @.str.48) ; 0 uses
  %.not306 = icmp eq i64 %.02682384, %.sroa.01320.1 ; 2 uses
  br i1 %.not306, label %bb.tx, label %bb.tw

bb.tw:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1191
  %i.cpu = load i8, ptr %i.cps, align 1
  switch i8 %i.cpu, label %bb.tx [
    i8 47, label %.critedge342
    i8 92, label %.critedge342
  ]

bb.tx:                                            ; preds = %bb.tw, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit1191
  br i1 %i.x, label %bb.ty, label %.critedge326

bb.ty:                                            ; preds = %bb.tx
  %i.cpv = load i8, ptr %i.fu, align 1
  %i.cpw = icmp eq i8 %i.cpv, 6
  br i1 %i.cpw, label %bb.tz, label %.critedge326

bb.tz:                                            ; preds = %bb.ty
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 8 dereferenceable(40) %i.fv)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.fw)
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.fy, ptr noundef nonnull align 8 dereferenceable(40) %i.fx)
  %i.cpx = load i8, ptr %i.fz, align 1, !range !73, !noundef !74
  store i8 %i.cpx, ptr %i.d, align 1
  br i1 %.not306, label %.critedge342, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.cpy = load i8, ptr %i.cps, align 1
  %i.cpz = icmp eq i8 %i.cpy, 63
  br i1 %i.cpz, label %.critedge342, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  %i.cqa = load i8, ptr %i.r, align 8, !range !73, !noundef !74
  %i.cqb = trunc nuw i8 %i.cqa to i1
  store i8 0, ptr %i.r, align 8
  br i1 %i.cqb, label %bb.uc, label %_ZN3ada3url12clear_searchEv.exit1194

bb.uc:                                            ; preds = %bb.ub
  %i.cqc = load ptr, ptr %i.fy, align 8           ; 2 uses
  %i.cqd = icmp eq ptr %i.cqc, %i.ga
  br i1 %i.cqd, label %_ZN3ada3url12clear_searchEv.exit1194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1192: ; preds = %bb.uc
  %i.cqe = load i64, ptr %i.ga, align 8
  %i.cqf = add i64 %i.cqe, 1
  call void @_ZdlPvm(ptr noundef %i.cqc, i64 noundef %i.cqf) #34
  br label %_ZN3ada3url12clear_searchEv.exit1194

_ZN3ada3url12clear_searchEv.exit1194:             ; preds = %bb.uc, %bb.ub, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1192
  %i.cqg = icmp ugt i64 %i.cpr, 1
  br i1 %i.cqg, label %bb.ud, label %bb.uh

bb.ud:                                            ; preds = %_ZN3ada3url12clear_searchEv.exit1194
  %i.cqh = load i8, ptr %i.cps, align 1
  %i.cqi = or i8 %i.cqh, 32
  %i.cqj = add i8 %i.cqi, -97
  %spec.select.i.i1195 = icmp ult i8 %i.cqj, 26
  br i1 %spec.select.i.i1195, label %bb.ue, label %bb.uh

bb.ue:                                            ; preds = %bb.ud
  %i.cqk = getelementptr inbounds nuw i8, ptr %i.cps, i64 1
  %i.cql = load i8, ptr %i.cqk, align 1
  switch i8 %i.cql, label %bb.uh [
    i8 58, label %bb.uf
    i8 124, label %bb.uf
  ]

bb.uf:                                            ; preds = %bb.ue, %bb.ue
  %i.cqm = icmp eq i64 %i.cpr, 2
  br i1 %i.cqm, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196, label %bb.ug

bb.ug:                                            ; preds = %bb.uf
  %i.cqn = getelementptr inbounds nuw i8, ptr %i.cps, i64 2
  %i.cqo = load i8, ptr %i.cqn, align 1
  switch i8 %i.cqo, label %bb.uh [
    i8 47, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196
    i8 92, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196
    i8 63, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196
    i8 35, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196
  ]

bb.uh:                                            ; preds = %bb.ug, %bb.ue, %bb.ud, %_ZN3ada3url12clear_searchEv.exit1194
  %i.cqp = load i8, ptr %i.f, align 1
  %i.cqq = icmp eq i8 %i.cqp, 6
  %.pre2603 = load i64, ptr %i.q, align 8         ; 7 uses
  br i1 %i.cqq, label %bb.ui, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread

bb.ui:                                            ; preds = %bb.uh
  %i.cqr = icmp ugt i64 %.pre2603, 1
  br i1 %i.cqr, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1198, label %bb.uj

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1198:   ; preds = %bb.ui
  %i.cqs = load ptr, ptr %i.o, align 8            ; 4 uses
  %i.cqt = add i64 %.pre2603, -1
  %i.cqu = getelementptr inbounds nuw i8, ptr %i.cqs, i64 1
  %i.cqv = call ptr @memchr(ptr noundef nonnull %i.cqu, i32 noundef 47, i64 noundef %i.cqt) #31 ; 2 uses
  %.not.i1199 = icmp eq ptr %i.cqv, null
  %i.cqw = ptrtoint ptr %i.cqv to i64
  %i.cqx = ptrtoint ptr %i.cqs to i64
  %i.cqy = sub i64 %i.cqw, %i.cqx
  %i.cqz = icmp eq i64 %i.cqy, -1
  %or.cond1888 = or i1 %.not.i1199, %i.cqz
  %i.cra = add i64 %.pre2603, -3
  %i.crb = icmp ult i64 %i.cra, -2
  %or.cond3198 = select i1 %or.cond1888, i1 %i.crb, i1 false
  br i1 %or.cond3198, label %bb.uk, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread

bb.uj:                                            ; preds = %bb.ui
  %i.crc = icmp eq i64 %.pre2603, 0
  br i1 %i.crc, label %.critedge326, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread

bb.uk:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1198
  %i.crd = getelementptr inbounds nuw i8, ptr %i.cqs, i64 1
  %i.cre = load i8, ptr %i.crd, align 1
  %i.crf = or i8 %i.cre, 32
  %i.crg = add i8 %i.crf, -97
  %spec.select.i.i1208 = icmp ult i8 %i.crg, 26
  br i1 %spec.select.i.i1208, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209: ; preds = %bb.uk
  %i.crh = getelementptr inbounds nuw i8, ptr %i.cqs, i64 2
  %i.cri = load i8, ptr %i.crh, align 1
  %i.crj = icmp eq i8 %i.cri, 58
  br i1 %i.crj, label %.critedge326, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread: ; preds = %bb.uh
  %.not.i1210 = icmp eq i64 %.pre2603, 0
  br i1 %.not.i1210, label %.critedge326, label %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread

_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread: ; preds = %bb.uj, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209, %bb.uk, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i1198, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread
  %i.crk = load ptr, ptr %i.o, align 8            ; 2 uses
  %.not13.i12133395 = icmp eq i64 %.pre2603, 0
  br i1 %.not13.i12133395, label %.critedge326, label %.lr.ph3397

bb.ul:                                            ; preds = %.lr.ph3397
  %.not13.i1213 = icmp eq i64 %i.crl, 0
  br i1 %.not13.i1213, label %.critedge326, label %.lr.ph3397, !llvm.loop !96

.lr.ph3397:                                       ; preds = %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread, %bb.ul
  %.1.i12123396 = phi i64 [ %i.crl, %bb.ul ], [ %.pre2603, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread ]
  %i.crl = add i64 %.1.i12123396, -1              ; 5 uses
  %i.crm = getelementptr inbounds nuw i8, ptr %i.crk, i64 %i.crl
  %i.crn = load i8, ptr %i.crm, align 1
  %i.cro = icmp eq i8 %i.crn, 47
  br i1 %i.cro, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1217, label %bb.ul, !llvm.loop !96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1217: ; preds = %.lr.ph3397
  %i.crp = getelementptr inbounds nuw i8, ptr %i.crk, i64 %i.crl
  store i64 %i.crl, ptr %i.q, align 8
  store i8 0, ptr %i.crp, align 1
  br label %.critedge326

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196: ; preds = %bb.ug, %bb.ug, %bb.ug, %bb.ug, %bb.uf
  store i64 0, ptr %i.q, align 8
  %i.crq = load ptr, ptr %i.o, align 8
  store i8 0, ptr %i.crq, align 1
  store i8 1, ptr %i.d, align 1
  br label %.critedge326

.critedge342:                                     ; preds = %bb.tw, %bb.tw, %bb.tz, %bb.ua
  %.16 = phi i32 [ 15, %bb.ua ], [ 10, %bb.tw ], [ 10, %bb.tw ], [ 8, %bb.tz ]
  %i.crr = add i64 %.02682384, 1
  br label %.critedge326

bb.um:                                            ; preds = %bb.ah
  unreachable

.critedge326:                                     ; preds = %bb.ul, %.critedge9, %.lr.ph2363, %bb.dw, %bb.ak, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread, %bb.uj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit915.thread, %bb.du, %bb.nh, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit640.thread, %.preheader1962.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.mg, %bb.me, %.sink.split.i.i, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread, %bb.tv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.qy, %bb.rb, %bb.qz, %bb.qz, %bb.qz, %bb.qz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i923, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819, %bb.ik, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %.thread1628, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i558, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1217, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209, %bb.qq, %bb.qq, %bb.qq, %bb.qq, %bb.qp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863, %bb.ih, %bb.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit619, %bb.dm, %bb.aj, %.critedge342, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196, %bb.ty, %bb.tx, %bb.qk, %bb.ql, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081.thread, %bb.qm, %bb.dl, %bb.bj, %.critedge, %bb.ai, %bb.qj, %.critedge338, %bb.ec, %bb.eb, %.critedge332, %bb.bc
  %.sroa.01476.2 = phi i16 [ %.sroa.01476.02382, %bb.ai ], [ %.sroa.01476.02382, %bb.aj ], [ %.sroa.01476.02382, %bb.rb ], [ %.sroa.01476.02382, %bb.tx ], [ %.sroa.01476.02382, %bb.bc ], [ %.sroa.01476.02382, %.critedge ], [ %.sroa.01476.02382, %bb.bj ], [ %.sroa.01476.02382, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit640.thread ], [ %.sroa.01476.02382, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i558 ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1217 ], [ %.sroa.01476.02382, %bb.dl ], [ %.sroa.01476.02382, %bb.dm ], [ %.sroa.01476.02382, %.critedge332 ], [ %.sroa.01476.02382, %bb.qy ], [ %.sroa.01476.02382, %bb.eb ], [ %.sroa.01476.02382, %bb.ec ], [ %.sroa.01476.02382, %bb.qz ], [ %.sroa.01476.02382, %.preheader1962.a ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %.sroa.01476.02382, %bb.uj ], [ %.sroa.01476.1, %.critedge338 ], [ %.sroa.01476.1, %bb.me ], [ %.sroa.01476.1, %bb.mg ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858 ], [ %.sroa.01476.02382, %bb.qm ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062 ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081.thread ], [ %.sroa.01476.02382, %bb.ql ], [ %.sroa.01476.02382, %bb.qk ], [ %.sroa.01476.02382, %bb.qj ], [ %.sroa.01476.02382, %bb.qz ], [ %.sroa.01476.02382, %.critedge342 ], [ %.sroa.01476.02382, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196 ], [ %.sroa.01476.02382, %bb.qq ], [ %.sroa.01476.02382, %bb.ty ], [ %.sroa.01476.02382, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.sroa.01476.02382, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit619 ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.sroa.01476.02382, %bb.id ], [ %.sroa.01476.02382, %bb.ih ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ], [ %.sroa.01476.02382, %.sink.split.i.i ], [ %.sroa.01476.02382, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398 ], [ %.sroa.01476.02382, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.01476.02382, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.sroa.01476.02382, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sroa.01476.02382, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit915.thread ], [ %.sroa.01476.02382, %bb.qp ], [ %.sroa.01476.02382, %bb.qq ], [ %.sroa.01476.02382, %bb.qq ], [ %.sroa.01476.02382, %bb.qq ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209 ], [ %.sroa.01476.02382, %bb.bk ], [ %.sroa.01476.02382, %.thread1628 ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %.sroa.01476.02382, %bb.ik ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819 ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.sroa.01476.02382, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i923 ], [ %.sroa.01476.02382, %bb.tv ], [ %.sroa.01476.02382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sroa.01476.02382, %bb.qz ], [ %.sroa.01476.02382, %bb.qz ], [ %.sroa.01476.02382, %bb.du ], [ %.sroa.01476.02382, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread ], [ %.sroa.01476.02382, %bb.nh ], [ %.sroa.01476.02382, %bb.dw ], [ %.sroa.01476.02382, %.critedge9 ], [ %.sroa.01476.02382, %bb.ak ], [ %.sroa.01476.02382, %.lr.ph2363 ], [ %.sroa.01476.02382, %bb.ul ]
  %.15283 = phi i64 [ %.sroa.01320.1, %bb.ai ], [ %spec.select347, %bb.aj ], [ %.02682384, %bb.rb ], [ %.02682384, %bb.tx ], [ %i.lt, %bb.bc ], [ 0, %.critedge ], [ %.02682384, %bb.bj ], [ %.sroa.01320.1, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit640.thread ], [ %.02682384, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i558 ], [ %.02682384, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1217 ], [ %.sroa.01320.1, %bb.dl ], [ %spec.select351, %bb.dm ], [ %i.tr, %.critedge332 ], [ %.02682384, %bb.qy ], [ %.02682384, %bb.eb ], [ %i.tz, %bb.ec ], [ %.02682384, %bb.qz ], [ 0, %.preheader1962.a ], [ %.02682384, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %.02682384, %bb.uj ], [ %i.bgp, %.critedge338 ], [ %.10278, %bb.me ], [ %.10278, %bb.mg ], [ %.92772868, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858 ], [ %.02682384, %bb.qm ], [ %.11279287828862896, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062 ], [ %.02682384, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081.thread ], [ %.02682384, %bb.ql ], [ %.02682384, %bb.qk ], [ %i.caa, %bb.qj ], [ %.02682384, %bb.qz ], [ %i.crr, %.critedge342 ], [ %.02682384, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196 ], [ %.02682384, %bb.qq ], [ %.02682384, %bb.ty ], [ %spec.select1947, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.02682384, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit619 ], [ %.02682384, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread ], [ %.02682384, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.aoy, %bb.id ], [ %i.aoz, %bb.ih ], [ %.92772861, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ], [ %.11279287828862896, %.sink.split.i.i ], [ %i.aoz, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398 ], [ %i.cbx, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.cbx, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.aoz, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread ], [ %.11279287828862896, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.11279287828862896, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit915.thread ], [ %.02682384, %bb.qp ], [ %.02682384, %bb.qq ], [ %.02682384, %bb.qq ], [ %.02682384, %bb.qq ], [ %.02682384, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread ], [ %.02682384, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209 ], [ %.02682384, %bb.bk ], [ %.32712375, %.thread1628 ], [ %.02682384, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ %i.aoz, %bb.ik ], [ %i.aoz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819 ], [ %.11279287828862896, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.11279287828862896, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i923 ], [ %i.cbx, %bb.tv ], [ %.11279287828862896, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.02682384, %bb.qz ], [ %.02682384, %bb.qz ], [ %.02682384, %bb.du ], [ %.02682384, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread ], [ %.11279287828862896, %bb.nh ], [ %.02682384, %bb.dw ], [ %.sroa.01320.1, %.critedge9 ], [ 0, %bb.ak ], [ %.62742362, %.lr.ph2363 ], [ %.02682384, %bb.ul ] ; 2 uses
  %.18 = phi i32 [ 4, %bb.ai ], [ %spec.select348, %bb.aj ], [ 17, %bb.rb ], [ 16, %bb.tx ], [ %.1, %bb.bc ], [ 4, %.critedge ], [ %., %bb.bj ], [ 0, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit640.thread ], [ 3, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i558 ], [ 16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit1217 ], [ 16, %bb.dl ], [ %spec.select352, %bb.dm ], [ %.4, %.critedge332 ], [ 16, %bb.qy ], [ 16, %bb.eb ], [ %.5, %bb.ec ], [ 16, %bb.qz ], [ 4, %.preheader1962.a ], [ 16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ 16, %bb.uj ], [ %.11, %.critedge338 ], [ 16, %bb.me ], [ 16, %bb.mg ], [ %.82869, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858 ], [ 16, %bb.qm ], [ %.12287928852901, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1062 ], [ 16, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1081.thread ], [ 16, %bb.ql ], [ 16, %bb.qk ], [ 9, %bb.qj ], [ 16, %bb.qz ], [ %.16, %.critedge342 ], [ 16, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1196 ], [ 16, %bb.qq ], [ 16, %bb.ty ], [ %spec.select1948, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ 6, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit619 ], [ 16, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread ], [ 16, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 19, %bb.id ], [ 17, %bb.ih ], [ %.82862, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ], [ %.12287928852901, %.sink.split.i.i ], [ 17, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398 ], [ 17, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 17, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 17, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread ], [ %.12287928852901, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.12287928852901, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit915.thread ], [ 16, %bb.qp ], [ 16, %bb.qq ], [ 16, %bb.qq ], [ 16, %bb.qq ], [ 16, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209.thread.thread ], [ 16, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit1209 ], [ 3, %bb.bk ], [ 3, %.thread1628 ], [ 16, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ 17, %bb.ik ], [ 17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819 ], [ %.12287928852901, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ], [ %.12287928852901, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i923 ], [ 17, %bb.tv ], [ %.12287928852901, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ 16, %bb.qz ], [ 16, %bb.qz ], [ 16, %bb.du ], [ 16, %_ZN3ada8checkers34is_normalized_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.thread ], [ %.12287928852901, %bb.nh ], [ 16, %bb.dw ], [ 0, %.critedge9 ], [ 4, %bb.ak ], [ 0, %.lr.ph2363 ], [ 16, %bb.ul ]
  %.not = icmp ugt i64 %.15283, %.sroa.01320.1
  br i1 %.not, label %bb.un, label %bb.ah, !llvm.loop !127

bb.un:                                            ; preds = %.critedge326
  br i1 %.sroa.14.0, label %bb.uo, label %.critedge346.critedge

bb.uo:                                            ; preds = %bb.un
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %4, i64 %.sroa.01314.0, ptr %.sroa.9.0, ptr noundef nonnull @_ZN3ada14character_setsL23FRAGMENT_PERCENT_ENCODEE)
  %i.crs = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.crt = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %i.crs, ptr noundef nonnull align 8 dereferenceable(32) %4) #31 ; 0 uses
  %i.cru = load ptr, ptr %4, align 8              ; 2 uses
  %i.crv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.crw = icmp eq ptr %i.cru, %i.crv
  br i1 %i.crw, label %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1218: ; preds = %bb.uo
  %i.crx = load i64, ptr %i.crv, align 8
  %i.cry = add i64 %i.crx, 1
  call void @_ZdlPvm(ptr noundef %i.cru, i64 noundef %i.cry) #34
  br label %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1221

_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1221: ; preds = %bb.uo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1218
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.critedge346.critedge

.critedge329:                                     ; preds = %bb.lz, %bb.ik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819, %bb.fj, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398, %bb.rd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1185, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit, %.thread1779, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, %bb.lp, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread1752, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416.thread, %bb.ig, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1846, %.thread1636
  %i.crz = load ptr, ptr %27, align 8             ; 2 uses
  %i.csa = icmp eq ptr %i.crz, %i.ad
  br i1 %i.csa, label %.critedge346.sink.split, label %.critedge346.sink.split.sink.split

.critedge346.critedge:                            ; preds = %_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE.exit1221, %bb.md, %bb.ed, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit644, %bb.un, %bb.bi, %bb.bg, %bb.mc
  %i.csb = load ptr, ptr %27, align 8             ; 2 uses
  %i.csc = icmp eq ptr %i.csb, %i.ad
  br i1 %i.csc, label %.critedge346.sink.split, label %.critedge346.sink.split.sink.split

.critedge346.sink.split.sink.split:               ; preds = %.critedge346.critedge, %.critedge329
  %.sink3421 = phi ptr [ %i.crz, %.critedge329 ], [ %i.csb, %.critedge346.critedge ]
  %i.csd = load i64, ptr %i.ad, align 8
  %i.cse = add i64 %i.csd, 1
  call void @_ZdlPvm(ptr noundef %.sink3421, i64 noundef %i.cse) #34
  br label %.critedge346.sink.split

.critedge346.sink.split:                          ; preds = %.critedge346.sink.split.sink.split, %.critedge346.critedge, %.critedge329
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  br label %.critedge346

.critedge346:                                     ; preds = %.critedge346.sink.split, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada3urlD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada3urlE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !73, !noundef !74
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.g, align 8
  br i1 %i.i, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 8
  br i1 %i.r, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1: ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3: ; preds = %bb.c, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !range !73, !noundef !74
  %i.ag = trunc nuw i8 %i.af to i1
  store i8 0, ptr %i.ae, align 8
  br i1 %i.ag, label %bb.d, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7: ; preds = %bb.d
  %i.al = load i64, ptr %i.aj, align 8
  %i.am = add i64 %i.al, 1
  tail call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #34
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.ax = load i64, ptr %i.av, align 8
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN3ada5parseINS_14url_aggregatorEEEN2tl8expectedIT_NS_6errorsEEESt17basic_string_viewIcSt11char_traitsIcEEPKS4_(ptr dead_on_unwind noalias writable sret(%"class.tl::expected.29") align 8 %0, i64 %1, ptr %2, ptr noundef %3) local_unnamed_addr #4 comdat {
bb.a:
  %4 = alloca %"struct.ada::url_aggregator", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.ada::url_aggregator") align 8 %4, i64 %1, ptr %2, ptr noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.a, align 8
  store i32 %i.e, ptr %i.d, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada14url_aggregatorE, i64 16), ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8
  %i.i = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %i.f, align 8
  %i.p = load i64, ptr %i.j, align 8
  store i64 %i.p, ptr %i.h, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %.thread

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.q = phi i64 [ %i.m, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.q, ptr %i.s, align 8
  store i64 0, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.v, align 8
  br label %_ZN3ada14url_aggregatorD2Ev.exit

bb.d:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.w, align 8
  %.phi.trans.insert3 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre4 = load ptr, ptr %.phi.trans.insert3, align 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada14url_aggregatorE, i64 16), ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.y = icmp eq ptr %.pre4, %i.x
  br i1 %i.y, label %_ZN3ada14url_aggregatorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.x, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %.pre4, i64 noundef %i.aa) #34, !inline_history !128
  br label %_ZN3ada14url_aggregatorD2Ev.exit

_ZN3ada14url_aggregatorD2Ev.exit:                 ; preds = %bb.d, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_(ptr dead_on_unwind noalias writable sret(%"struct.ada::url_aggregator") align 8 %0, i64 %1, ptr %2, ptr noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::basic_string_view.2", align 8 ; 12 uses
  %5 = alloca %"class.std::basic_string_view.2", align 8 ; 10 uses
  %6 = alloca %"class.std::basic_string_view.2", align 8 ; 12 uses
  %7 = alloca %"class.std::basic_string_view.2", align 8 ; 10 uses
  %8 = alloca %"class.std::basic_string_view.2", align 8 ; 12 uses
  %9 = alloca %"class.std::basic_string_view.2", align 8 ; 10 uses
  %10 = alloca %"class.std::basic_string_view.2", align 8 ; 13 uses
  %11 = alloca %"class.std::optional", align 8    ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 6 uses
  %13 = alloca %"class.std::basic_string_view.2", align 8 ; 5 uses
  %14 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %15 = alloca %"class.std::basic_string_view.2", align 8 ; 13 uses
  %16 = alloca %"class.std::optional", align 8    ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 6 uses
  %18 = alloca %"class.std::basic_string_view.2", align 8 ; 5 uses
  %19 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %20 = alloca %"class.std::basic_string_view.2", align 8 ; 13 uses
  %21 = alloca %"class.std::optional", align 8    ; 12 uses
  %22 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 6 uses
  %23 = alloca %"class.std::basic_string_view.2", align 8 ; 5 uses
  %24 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 11 uses
  %26 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 12 uses
  %27 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %31 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %35 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %36 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 8 uses
  %37 = alloca %"class.std::basic_string_view.2", align 8 ; 6 uses
  %38 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %39 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 24 uses
  store i8 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  store i8 0, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 15 uses
  store i8 1, ptr %i.f, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada14url_aggregatorE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  store i8 0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 -1>, ptr %i.k, align 8
  %i.o = icmp ugt i64 %1, 4294967295
  br i1 %i.o, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = phi i8 [ 0, %bb.b ], [ 1, %bb.a ]        ; 2 uses
  %i.q = icmp ne ptr %3, null                     ; 4 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !73, !noundef !74
  %i.t = and i8 %i.p, %i.s                        ; 2 uses
  store i8 %i.t, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi i8 [ %i.t, %bb.d ], [ %i.p, %bb.c ]
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %.critedge389

bb.f:                                             ; preds = %bb.e
  %i.w = trunc i64 %1 to i32
  %i.x = or i32 %i.w, 1
  %i.y = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.x, i1 true)
  %i.z = lshr i32 -1, %i.y
  %i.aa = add i32 %i.z, 1
  %i.ab = zext i32 %i.aa to i64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  %i.ac = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 5 uses
  store ptr %i.ac, ptr %26, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 7 uses
  store i64 0, ptr %i.ad, align 8
  store i8 0, ptr %i.ac, align 8
  %i.ae = icmp ult i64 %1, 16
  br i1 %i.ae, label %bb.g, label %.preheader1820.preheader

.preheader1820.preheader:                         ; preds = %bb.f
  %i.af = add i64 %1, -16                         ; 2 uses
  %i.ag = lshr i64 %i.af, 4                       ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %.preheader1820.epil.preheader, label %.preheader1820.preheader.new

.preheader1820.preheader.new:                     ; preds = %.preheader1820.preheader
  %unroll_iter = and i64 %i.ah, 2305843009213693950
  br label %.preheader1820

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not6.not.i.i = icmp samesign eq i64 %1, 0
  br i1 %.not6.not.i.i, label %_ZN3ada7helpers10prune_hashERSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.i

_ZN3ada7unicode18is_tabs_or_newlineEc.exit:       ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 1 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.not.i.i, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %.lr.ph.i.i, !llvm.loop !48

.lr.ph.i.i:                                       ; preds = %bb.g, %_ZN3ada7unicode18is_tabs_or_newlineEc.exit
  %.057.i.i = phi ptr [ %i.ak, %_ZN3ada7unicode18is_tabs_or_newlineEc.exit ], [ %2, %bb.g ] ; 2 uses
  %i.al = load i8, ptr %.057.i.i, align 1
  switch i8 %i.al, label %_ZN3ada7unicode18is_tabs_or_newlineEc.exit [
    i8 13, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1459
    i8 10, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1459
    i8 9, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1459
  ]

.preheader1820:                                   ; preds = %.preheader1820, %.preheader1820.preheader.new
  %.013.i1972 = phi i64 [ 0, %.preheader1820.preheader.new ], [ %i.bf, %.preheader1820 ] ; 3 uses
  %.014.i1971 = phi <2 x i64> [ zeroinitializer, %.preheader1820.preheader.new ], [ %i.be, %.preheader1820 ]
  %niter = phi i64 [ 0, %.preheader1820.preheader.new ], [ %niter.next.1, %.preheader1820 ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.013.i1972
  %i.an = load <16 x i8>, ptr %i.am, align 1      ; 2 uses
  %i.ao = icmp eq <16 x i8> %i.an, splat (i8 10)
  %i.ap = and <16 x i8> %i.an, splat (i8 -5)
  %i.aq = icmp eq <16 x i8> %i.ap, splat (i8 9)
  %i.ar = or <16 x i1> %i.ao, %i.aq
  %i.as = sext <16 x i1> %i.ar to <16 x i8>
  %i.at = bitcast <16 x i8> %i.as to <2 x i64>
  %i.au = or <2 x i64> %.014.i1971, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %.013.i1972
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load <16 x i8>, ptr %i.aw, align 1      ; 2 uses
  %i.ay = icmp eq <16 x i8> %i.ax, splat (i8 10)
  %i.az = and <16 x i8> %i.ax, splat (i8 -5)
  %i.ba = icmp eq <16 x i8> %i.az, splat (i8 9)
  %i.bb = or <16 x i1> %i.ay, %i.ba
  %i.bc = sext <16 x i1> %i.bb to <16 x i8>
  %i.bd = bitcast <16 x i8> %i.bc to <2 x i64>
  %i.be = or <2 x i64> %i.au, %i.bd               ; 3 uses
  %i.bf = add nuw i64 %.013.i1972, 32             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %.preheader1820, !llvm.loop !81

.unr-lcssa:                                       ; preds = %.preheader1820
  %i.bg = and i64 %i.af, 16
  %lcmp.mod.not.not = icmp eq i64 %i.bg, 0
  br i1 %lcmp.mod.not.not, label %.preheader1820.epil.preheader, label %bb.h

.preheader1820.epil.preheader:                    ; preds = %.unr-lcssa, %.preheader1820.preheader
  %.013.i1972.epil.init = phi i64 [ 0, %.preheader1820.preheader ], [ %i.bf, %.unr-lcssa ]
  %.014.i1971.epil.init = phi <2 x i64> [ zeroinitializer, %.preheader1820.preheader ], [ %i.be, %.unr-lcssa ]
  %lcmp.mod3218 = trunc i64 %i.ah to i1
  call void @llvm.assume(i1 %lcmp.mod3218)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %.013.i1972.epil.init
  %i.bi = load <16 x i8>, ptr %i.bh, align 1      ; 2 uses
  %i.bj = icmp eq <16 x i8> %i.bi, splat (i8 10)
  %i.bk = and <16 x i8> %i.bi, splat (i8 -5)
  %i.bl = icmp eq <16 x i8> %i.bk, splat (i8 9)
  %i.bm = or <16 x i1> %i.bj, %i.bl
  %i.bn = sext <16 x i1> %i.bm to <16 x i8>
  %i.bo = bitcast <16 x i8> %i.bn to <2 x i64>
  %i.bp = or <2 x i64> %.014.i1971.epil.init, %i.bo
  br label %bb.h

bb.h:                                             ; preds = %.unr-lcssa, %.preheader1820.epil.preheader
  %.lcssa3216 = phi <2 x i64> [ %i.be, %.unr-lcssa ], [ %i.bp, %.preheader1820.epil.preheader ] ; 2 uses
  %i.bq = and i64 %1, 15
  %.not2561 = icmp eq i64 %i.bq, 0
  br i1 %.not2561, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -16
  %i.bt = load <16 x i8>, ptr %i.bs, align 1      ; 2 uses
  %i.bu = icmp eq <16 x i8> %i.bt, splat (i8 10)
  %i.bv = and <16 x i8> %i.bt, splat (i8 -5)
  %i.bw = icmp eq <16 x i8> %i.bv, splat (i8 9)
  %i.bx = or <16 x i1> %i.bu, %i.bw
  %i.by = sext <16 x i1> %i.bx to <16 x i8>
  %i.bz = bitcast <16 x i8> %i.by to <2 x i64>
  %i.ca = or <2 x i64> %.lcssa3216, %i.bz
  br label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.h, %bb.i
  %.1.i = phi <2 x i64> [ %i.ca, %bb.i ], [ %.lcssa3216, %bb.h ]
  %i.cb = bitcast <2 x i64> %.1.i to <16 x i8>
  %i.cc = icmp slt <16 x i8> %i.cb, zeroinitializer
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %.not1747 = icmp eq i16 %i.cd, 0
  br i1 %.not1747, label %.lr.ph.i.preheader, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1459, !prof !82

_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1459: ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef 0, i64 noundef 0, ptr noundef %2, i64 noundef %1) ; 0 uses
  %i.cf = load i64, ptr %i.ad, align 8            ; 6 uses
  %i.cg = load ptr, ptr %26, align 8              ; 7 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf ; 8 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 3 uses
  %i.ck = ashr i64 %i.cf, 2                       ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1459
  %i.cm = and i64 %i.cf, -4
  %scevgep = getelementptr i8, ptr %i.cg, i64 %i.cm
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.m
  %.052.i.i.i.i = phi i64 [ %i.cv, %bb.m ], [ %i.ck, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.cu, %bb.m ], [ %i.cg, %.lr.ph.i.i.i.i.preheader ] ; 11 uses
  %i.cn = load i8, ptr %.sroa.032.051.i.i.i.i, align 1
  switch i8 %i.cn, label %bb.j [
    i8 13, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i
    i8 10, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i
    i8 9, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i
  ]

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 1
  %i.cp = load i8, ptr %i.co, align 1
  switch i8 %i.cp, label %bb.k [
    i8 13, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit
    i8 10, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit
    i8 9, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit
  ]
end_hunk_2
begin_hunk_3_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ke:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, i64 noundef %i.bca, i64 noundef 0, ptr noundef nonnull @.str.52, i64 noundef 3), !noalias !142
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ke, %bb.kd
  store i64 %i.bcc, ptr %i.gu, align 8, !noalias !142
  %i.bcj = load ptr, ptr %33, align 8, !noalias !142
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcj, i64 %i.bcc
  store i8 0, ptr %i.bck, align 1, !noalias !142
  store ptr %i.gv, ptr %32, align 8, !alias.scope !142
  %i.bcl = load ptr, ptr %33, align 8, !noalias !142 ; 3 uses
  %i.bcm = icmp eq ptr %i.bcl, %i.gt
  br i1 %i.bcm, label %bb.kf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888

bb.kf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bcn = load i64, ptr %i.gu, align 8, !noalias !142 ; 3 uses
  %i.bco = icmp ult i64 %i.bcn, 16
  call void @llvm.assume(i1 %i.bco)
  %i.bcp = add nuw nsw i64 %i.bcn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gv, ptr noundef nonnull align 8 dereferenceable(1) %i.gt, i64 %i.bcp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bcl, ptr %32, align 8, !alias.scope !142
  %i.bcq = load i64, ptr %i.gt, align 8, !noalias !142
  store i64 %i.bcq, ptr %i.gv, align 8, !alias.scope !142
  %.pre.i = load i64, ptr %i.gu, align 8, !noalias !142
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891: ; preds = %bb.kf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888
  %i.bcr = phi ptr [ %i.gv, %bb.kf ], [ %i.bcl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888 ]
  %i.bcs = phi i64 [ %i.bcn, %bb.kf ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888 ] ; 2 uses
  store i64 %i.bcs, ptr %i.gw, align 8, !alias.scope !142
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #31
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %34, i64 %i.bcs, ptr %i.bcr, ptr noundef nonnull @_ZN3ada14character_setsL25C0_CONTROL_PERCENT_ENCODEE)
  %i.bct = load ptr, ptr %34, align 8
  %i.bcu = load i64, ptr %i.gx, align 8
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.bcu, ptr %i.bct)
  %i.bcv = load ptr, ptr %34, align 8             ; 2 uses
  %i.bcw = icmp eq ptr %i.bcv, %i.gy
  br i1 %i.bcw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i896

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i896: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891
  %i.bcx = load i64, ptr %i.gy, align 8
  %i.bcy = add i64 %i.bcx, 1
  call void @_ZdlPvm(ptr noundef %i.bcv, i64 noundef %i.bcy) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i896
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  %i.bcz = load ptr, ptr %32, align 8             ; 2 uses
  %i.bda = icmp eq ptr %i.bcz, %i.gv
  br i1 %i.bda, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i899

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i899: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898
  %i.bdb = load i64, ptr %i.gv, align 8
  %i.bdc = add i64 %i.bdb, 1
  call void @_ZdlPvm(ptr noundef %i.bcz, i64 noundef %i.bdc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i899
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br label %.critedge369

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877
  %.82599 = phi i32 [ 18, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread.thread ], [ 15, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread ], [ %.82606, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877 ]
  %.93202598 = phi i64 [ %i.gr, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread.thread ], [ %i.bbm, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread ], [ %.93202605, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877 ]
  %.sroa.01187.02597 = phi i64 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread.thread ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit876.thread ], [ %.sroa.01187.02604, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %35, i64 %.sroa.01187.02597, ptr %i.bbg, ptr noundef nonnull @_ZN3ada14character_setsL25C0_CONTROL_PERCENT_ENCODEE)
  %i.bdd = load ptr, ptr %35, align 8
  %i.bde = load i64, ptr %i.gz, align 8
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.bde, ptr %i.bdd)
  %i.bdf = load ptr, ptr %35, align 8             ; 2 uses
  %i.bdg = icmp eq ptr %i.bdf, %i.ha
  br i1 %i.bdg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit906, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i904

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i904: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877.thread
  %i.bdh = load i64, ptr %i.ha, align 8
  %i.bdi = add i64 %i.bdh, 1
  call void @_ZdlPvm(ptr noundef %i.bdf, i64 noundef %i.bdi) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit906

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit906: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit877.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i904
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  br label %.critedge369

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit910: ; preds = %bb.ah
  %i.bdj = sub nuw i64 %.sroa.01255.1, %.03112133
  %i.bdk = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.03112133 ; 7 uses
  %i.bdl = icmp eq i64 %.sroa.01255.1, %.03112133
  br i1 %i.bdl, label %.thread, label %bb.kg

.thread:                                          ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit910
  %i.bdm = ptrtoint ptr %i.bdk to i64             ; 2 uses
  br label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1646

bb.kg:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit910
  %i.bdn = load i8, ptr %i.bdk, align 1
  %i.bdo = icmp eq i8 %i.bdn, 45
  br i1 %i.bdo, label %bb.kh, label %.lr.ph.i37.i.preheader

bb.kh:                                            ; preds = %bb.kg
  store i8 0, ptr %i.c, align 8
  br label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

.lr.ph.i37.i.preheader:                           ; preds = %bb.kg
  %i.bdp = ptrtoint ptr %i.bdk to i64             ; 5 uses
  br label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %.lr.ph.i37.i.preheader, %.critedge.i38.i
  %.368.i = phi ptr [ %i.bej, %.critedge.i38.i ], [ %i.bdk, %.lr.ph.i37.i.preheader ] ; 4 uses
  %.9.i = phi i32 [ %.10.i, %.critedge.i38.i ], [ 0, %.lr.ph.i37.i.preheader ] ; 3 uses
  %.02338.i.i = phi i32 [ %i.bdt, %.critedge.i38.i ], [ 32, %.lr.ph.i37.i.preheader ]
  %i.bdq = load i8, ptr %.368.i, align 1
  %i.bdr = add i8 %i.bdq, -48                     ; 2 uses
  %i.bds = zext i8 %i.bdr to i32                  ; 2 uses
  %.not31.i.i = icmp ult i8 %i.bdr, 10
  br i1 %.not31.i.i, label %bb.ki, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i

bb.ki:                                            ; preds = %.lr.ph.i37.i
  %i.bdt = add i32 %.02338.i.i, -4                ; 2 uses
  %i.bdu = icmp sgt i32 %i.bdt, -1
  br i1 %i.bdu, label %bb.kj, label %bb.kk, !prof !111

bb.kj:                                            ; preds = %bb.ki
  %i.bdv = mul i32 %.9.i, 10
  %i.bdw = add i32 %i.bdv, %i.bds
  br label %.critedge.i38.i

bb.kk:                                            ; preds = %bb.ki
  %i.bdx = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.9.i, i32 10) ; 2 uses
  %i.bdy = extractvalue { i32, i1 } %i.bdx, 1
  br i1 %i.bdy, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, label %bb.kl, !prof !112

bb.kl:                                            ; preds = %bb.kk
  %i.bdz = extractvalue { i32, i1 } %i.bdx, 0
  %i.bea = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.bdz, i32 %i.bds) ; 2 uses
  %i.beb = extractvalue { i32, i1 } %i.bea, 1
  %i.bec = extractvalue { i32, i1 } %i.bea, 0
  br i1 %i.beb, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, label %.critedge.i38.i, !prof !18

_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i: ; preds = %bb.kl, %bb.kk
  %i.bed = getelementptr inbounds nuw i8, ptr %.368.i, i64 1 ; 2 uses
  %.not32.i.i3005 = icmp eq ptr %i.bed, %i.gs
  br i1 %.not32.i.i3005, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, label %.lr.ph3006

_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i: ; preds = %.lr.ph3006
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bef, i64 1 ; 2 uses
  %.not32.i.i = icmp eq ptr %i.bee, %i.gs
  br i1 %.not32.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, label %.lr.ph3006, !llvm.loop !113

.lr.ph3006:                                       ; preds = %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i
  %i.bef = phi ptr [ %i.bee, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i ], [ %i.bed, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i ] ; 3 uses
  %i.beg = load i8, ptr %i.bef, align 1
  %i.beh = add i8 %i.beg, -48
  %i.bei = icmp ult i8 %i.beh, 10
  br i1 %i.bei, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i, label %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge, !llvm.loop !113

.critedge.i38.i:                                  ; preds = %bb.kl, %bb.kj
  %.10.i = phi i32 [ %i.bdw, %bb.kj ], [ %i.bec, %bb.kl ] ; 2 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %.368.i, i64 1 ; 2 uses
  %.not.i.i915 = icmp eq ptr %i.bej, %i.gs
  br i1 %.not.i.i915, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i, label %.lr.ph.i37.i, !llvm.loop !114

._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge: ; preds = %.lr.ph3006
  br label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, !llvm.loop !113

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i: ; preds = %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i, %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i
  %.065.ph.i = phi ptr [ %i.bef, %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge ], [ %i.gs, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i ], [ %i.gs, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i ]
  %i.bek = icmp eq ptr %.065.ph.i, %i.bdk
  br i1 %i.bek, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1646, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, !prof !115

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i: ; preds = %.critedge.i38.i, %.lr.ph.i37.i
  %.065.i = phi ptr [ %.368.i, %.lr.ph.i37.i ], [ %i.gs, %.critedge.i38.i ] ; 2 uses
  %.0.i911 = phi i32 [ %.9.i, %.lr.ph.i37.i ], [ %.10.i, %.critedge.i38.i ] ; 2 uses
  %.not1756.a = icmp eq ptr %.065.i, %i.bdk
  br i1 %.not1756.a, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1646, label %bb.km, !prof !116

bb.km:                                            ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i
  %i.bel = icmp ugt i32 %.0.i911, 65535
  br i1 %i.bel, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bem = trunc nuw i32 %.0.i911 to i16
  %.pre2326 = ptrtoint ptr %.065.i to i64
  br label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1646

_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, %bb.km
  store i8 0, ptr %i.c, align 8
  br label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1646: ; preds = %.thread, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, %bb.kn
  %i.ben = phi i64 [ %i.bdp, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.bdm, %.thread ], [ %i.bdp, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.bdp, %bb.kn ]
  %.pre-phi = phi i64 [ %i.bdp, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.bdm, %.thread ], [ %i.bdp, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %.pre2326, %bb.kn ]
  %i.beo = phi i1 [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ false, %.thread ], [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ true, %bb.kn ]
  %.014551652 = phi i16 [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ 0, %.thread ], [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.bem, %bb.kn ] ; 3 uses
  %i.bep = sub i64 %.pre-phi, %i.ben              ; 7 uses
  %i.beq = icmp eq i64 %i.bep, %i.bdj
  br i1 %i.beq, label %bb.kr, label %bb.ko

bb.ko:                                            ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1646
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bdk, i64 %i.bep
  %i.bes = load i8, ptr %i.ber, align 1           ; 2 uses
  switch i8 %i.bes, label %bb.kp [
    i8 47, label %bb.kr
    i8 63, label %bb.kr
  ]

bb.kp:                                            ; preds = %bb.ko
  %i.bet = load i8, ptr %i.f, align 1
  %.not1757 = icmp eq i8 %i.bet, 1
  br i1 %.not1757, label %.thread1655, label %bb.kq

.thread1655:                                      ; preds = %bb.kp
  store i8 0, ptr %i.c, align 8
  br label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

bb.kq:                                            ; preds = %bb.kp
  %i.beu = icmp eq i8 %i.bes, 92
  br label %bb.kr

bb.kr:                                            ; preds = %bb.ko, %bb.ko, %bb.kq, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1646
  %40 = phi i1 [ true, %bb.ko ], [ true, %bb.ko ], [ true, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1646 ], [ %i.beu, %bb.kq ]
  %i.bev = load i8, ptr %i.c, align 8, !range !73, !noundef !74
  %41 = trunc nuw i8 %i.bev to i1
  %42 = and i1 %40, %41                           ; 2 uses
  %43 = zext i1 %42 to i8
  store i8 %43, ptr %i.c, align 8
  br i1 %42, label %bb.ks, label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

bb.ks:                                            ; preds = %bb.kr
  %i.bew = load i8, ptr %i.f, align 1
  %i.bex = zext i8 %i.bew to i64                  ; 2 uses
  %i.bey = getelementptr inbounds nuw [2 x i8], ptr @_ZN3ada6scheme7detailsL13special_portsE, i64 %i.bex
  %i.bez = load i16, ptr %i.bey, align 2
  %i.bfa = lshr i64 194, %i.bex
  %i.bfb = trunc i64 %i.bfa to i1
  %i.bfc = icmp eq i16 %.014551652, 0
  %or.cond.i = select i1 %i.bfb, i1 %i.bfc, i1 false
  %i.bfd = icmp ne i16 %i.bez, %.014551652
  %spec.select.i = select i1 %or.cond.i, i1 true, i1 %i.bfd
  %or.cond4.i = select i1 %i.beo, i1 %spec.select.i, i1 false
  br i1 %or.cond4.i, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.bfe = zext i16 %.014551652 to i32
  call void @_ZN3ada14url_aggregator16update_base_portEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.bfe)
  br label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

bb.ku:                                            ; preds = %bb.ks
  %i.bff = load i32, ptr %i.k, align 8
  %i.bfg = icmp eq i32 %i.bff, -1
  br i1 %i.bfg, label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.bfh = load i32, ptr %i.l, align 4            ; 3 uses
  %i.bfi = load i32, ptr %i.go, align 4           ; 3 uses
  %i.bfj = sub i32 %i.bfh, %i.bfi                 ; 4 uses
  %i.bfk = zext i32 %i.bfi to i64                 ; 6 uses
  %i.bfl = zext i32 %i.bfj to i64
  %i.bfm = load i64, ptr %i.i, align 8            ; 6 uses
  %i.bfn = icmp ult i64 %i.bfm, %i.bfk
  br i1 %i.bfn, label %bb.kw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.kw:                                            ; preds = %bb.kv
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.163, i64 noundef %i.bfk, i64 noundef %i.bfm) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.kv
  %cond.i916 = icmp eq i32 %i.bfh, %i.bfi
  br i1 %cond.i916, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i921, label %bb.kx

bb.kx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bfo = sub i64 %i.bfm, %i.bfk
  %spec.select.i.i.i917 = call noundef i64 @llvm.umin.i64(i64 %i.bfl, i64 %i.bfo) ; 3 uses
  %i.bfp = add nuw nsw i64 %spec.select.i.i.i917, %i.bfk ; 2 uses
  %i.bfq = icmp ne i64 %i.bfm, %i.bfp
  %i.bfr = icmp ne i64 %i.bfm, %i.bfk
  %or.cond.i.i.i918 = and i1 %i.bfr, %i.bfq
  br i1 %or.cond.i.i.i918, label %bb.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i919

bb.ky:                                            ; preds = %bb.kx
  %i.bfs = sub i64 %i.bfm, %i.bfp                 ; 2 uses
  %i.bft = load ptr, ptr %i.g, align 8
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bfk ; 3 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %spec.select.i.i.i917 ; 2 uses
  switch i64 %i.bfs, label %bb.la [
    i64 1, label %bb.kz
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i919
  ]

bb.kz:                                            ; preds = %bb.ky
  %i.bfw = load i8, ptr %i.bfv, align 1
  store i8 %i.bfw, ptr %i.bfu, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i919

bb.la:                                            ; preds = %bb.ky
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bfu, ptr nonnull align 1 %i.bfv, i64 %i.bfs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i919

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i919: ; preds = %bb.la, %bb.kz, %bb.ky, %bb.kx
  %i.bfx = load i64, ptr %i.i, align 8
  %i.bfy = sub i64 %i.bfx, %spec.select.i.i.i917  ; 2 uses
  store i64 %i.bfy, ptr %i.i, align 8
  %i.bfz = load ptr, ptr %i.g, align 8
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bfy
  store i8 0, ptr %i.bga, align 1
  %.pre.i920 = load i32, ptr %i.l, align 4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i921

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i921: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i919, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bgb = phi i32 [ %i.bfh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ], [ %.pre.i920, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i919 ]
  %i.bgc = sub i32 %i.bgb, %i.bfj
  store i32 %i.bgc, ptr %i.l, align 4
  %i.bgd = load i32, ptr %i.m, align 8            ; 2 uses
  %.not.i922 = icmp eq i32 %i.bgd, -1
  br i1 %.not.i922, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i921
  %i.bge = sub i32 %i.bgd, %i.bfj
  store i32 %i.bge, ptr %i.m, align 8
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i921
  %i.bgf = load i32, ptr %i.n, align 4            ; 2 uses
  %.not5.i923 = icmp eq i32 %i.bgf, -1
  br i1 %.not5.i923, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.bgg = sub i32 %i.bgf, %i.bfj
  store i32 %i.bgg, ptr %i.n, align 4
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  store i32 -1, ptr %i.k, align 8
  br label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit: ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, %bb.kr, %bb.kt, %.thread1655, %bb.ku, %bb.le, %bb.kh
  %.1.i455 = phi i64 [ 0, %bb.kh ], [ 0, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread ], [ %i.bep, %bb.kt ], [ %i.bep, %.thread1655 ], [ %i.bep, %bb.kr ], [ %i.bep, %bb.ku ], [ %i.bep, %bb.le ]
  %i.bgh = add i64 %.1.i455, %.03112133
  %i.bgi = load i8, ptr %i.c, align 8, !range !73, !noundef !74
  %i.bgj = trunc nuw i8 %i.bgi to i1
  br i1 %i.bgj, label %bb.lf, label %.critedge372

bb.lf:                                            ; preds = %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, %bb.ah
  %.10321 = phi i64 [ %i.bgh, %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit ], [ %.03112133, %bb.ah ] ; 6 uses
  %i.bgk = load i8, ptr %i.f, align 1
  %.not1758 = icmp eq i8 %i.bgk, 1
  %.not354 = icmp eq i64 %.10321, %.sroa.01255.1  ; 2 uses
  br i1 %.not1758, label %bb.lk, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  br i1 %.not354, label %bb.lh, label %bb.lj

bb.lh:                                            ; preds = %bb.lg
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 1, ptr nonnull @.str.2)
  br i1 %.sroa.14.0, label %bb.li, label %.critedge389.critedge

bb.li:                                            ; preds = %bb.lh
  call void @_ZN3ada14url_aggregator26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.01248.0, ptr %.sroa.91249.0)
  br label %.critedge389.critedge

bb.lj:                                            ; preds = %bb.lg
  %i.bgl = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.10321
  %i.bgm = load i8, ptr %i.bgl, align 1
  switch i8 %i.bgm, label %.critedge369 [
    i8 47, label %.critedge381
    i8 92, label %.critedge381
  ]

bb.lk:                                            ; preds = %bb.lf
  br i1 %.not354, label %.critedge381, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.bgn = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.10321
  %i.bgo = load i8, ptr %i.bgn, align 1
  switch i8 %i.bgo, label %.critedge369 [
    i8 63, label %.critedge381
    i8 47, label %.critedge381.fold.split
  ]

.critedge381.fold.split:                          ; preds = %bb.ll
  br label %.critedge381

.critedge381:                                     ; preds = %bb.ll, %.critedge381.fold.split, %bb.lj, %bb.lj, %bb.lk
  %.11 = phi i32 [ 16, %bb.lj ], [ 16, %bb.lj ], [ 15, %bb.ll ], [ 17, %bb.lk ], [ 16, %.critedge381.fold.split ]
  %i.bgp = add i64 %.10321, 1
  br label %.critedge369

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927: ; preds = %bb.ah
  %i.bgq = sub nuw i64 %.sroa.01255.1, %.03112133 ; 3 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.03112133 ; 3 uses
  %.not1755.a = icmp eq i64 %i.bgq, 0
  br i1 %.not1755.a, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929:    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927
  %i.bgs = call ptr @memchr(ptr noundef %i.bgr, i32 noundef 63, i64 noundef %i.bgq) #31 ; 2 uses
  %.not.i930 = icmp eq ptr %i.bgs, null
  %i.bgt = ptrtoint ptr %i.bgs to i64
  %i.bgu = ptrtoint ptr %i.bgr to i64
  %i.bgv = sub i64 %i.bgt, %i.bgu                 ; 3 uses
  %.not353 = icmp eq i64 %i.bgv, -1
  %or.cond1744 = select i1 %.not.i930, i1 true, i1 %.not353
  br i1 %or.cond1744, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread, label %bb.lm

bb.lm:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929
  %i.bgw = add i64 %.03112133, 1
  %i.bgx = add i64 %i.bgw, %i.bgv
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit932.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929, %bb.lm
  %.sroa.01178.0 = phi i64 [ %i.bgv, %bb.lm ], [ %i.bgq, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929 ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927 ]
  %.11322 = phi i64 [ %i.bgx, %bb.lm ], [ %i.gr, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929 ], [ %i.gr, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927 ]
  %.12 = phi i32 [ 15, %bb.lm ], [ 16, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i929 ], [ 16, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit927 ]
  call void @_ZN3ada14url_aggregator21consume_prepared_pathESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.01178.0, ptr %i.bgr)
  br label %.critedge369

bb.ln:                                            ; preds = %bb.ah
  %.not351 = icmp eq i64 %.03112133, %.sroa.01255.1
  br i1 %.not351, label %bb.lq, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.bgy = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.03112133
  %i.bgz = load i8, ptr %i.bgy, align 1
  switch i8 %i.bgz, label %bb.lq [
    i8 47, label %bb.lp
    i8 92, label %bb.lp
  ]

bb.lp:                                            ; preds = %bb.lo, %bb.lo
  %i.bha = add i64 %.03112133, 1
  br label %.critedge369

bb.lq:                                            ; preds = %bb.lo, %bb.ln
  br i1 %i.q, label %bb.lr, label %.critedge369

bb.lr:                                            ; preds = %bb.lq
  %i.bhb = load i8, ptr %i.fs, align 1
  %i.bhc = icmp eq i8 %i.bhb, 6
  br i1 %i.bhc, label %bb.ls, label %.critedge369

bb.ls:                                            ; preds = %bb.lr
  %i.bhd = load i32, ptr %i.ft, align 8           ; 2 uses
  %i.bhe = zext i32 %i.bhd to i64                 ; 3 uses
  %i.bhf = load i32, ptr %i.fu, align 4           ; 2 uses
  %i.bhg = icmp ugt i32 %i.bhf, %i.bhd
  br i1 %i.bhg, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.bhh = load ptr, ptr %i.fv, align 8
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhh, i64 %i.bhe
  %i.bhj = load i8, ptr %i.bhi, align 1
  %i.bhk = icmp eq i8 %i.bhj, 64
  %i.bhl = zext i1 %i.bhk to i64
  %spec.select.i940 = add nuw nsw i64 %i.bhl, %i.bhe
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %.0.i933 = phi i64 [ %i.bhe, %bb.ls ], [ %spec.select.i940, %bb.lt ] ; 6 uses
  %i.bhm = zext i32 %i.bhf to i64
  %i.bhn = icmp eq i64 %.0.i933, %i.bhm
  br i1 %i.bhn, label %_ZNK3ada14url_aggregator8get_hostEv.exit, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.bho = load i64, ptr %i.fw, align 8           ; 3 uses
  %i.bhp = icmp ugt i64 %.0.i933, %i.bho
  br i1 %i.bhp, label %bb.lw, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i934

bb.lw:                                            ; preds = %bb.lv
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %.0.i933, i64 noundef %i.bho) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i934: ; preds = %bb.lv
  %i.bhq = load i32, ptr %i.fx, align 4
  %i.bhr = zext i32 %i.bhq to i64
  %i.bhs = sub nsw i64 %i.bhr, %.0.i933
  %i.bht = load ptr, ptr %i.fv, align 8
  %i.bhu = sub nuw i64 %i.bho, %.0.i933
  %.sroa.speculated.i.i935 = call i64 @llvm.umin.i64(i64 %i.bhu, i64 %i.bhs)
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bht, i64 %.0.i933
  br label %_ZNK3ada14url_aggregator8get_hostEv.exit

_ZNK3ada14url_aggregator8get_hostEv.exit:         ; preds = %bb.lu, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i934
  %.sroa.0.0.i936 = phi i64 [ %.sroa.speculated.i.i935, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i934 ], [ 0, %bb.lu ]
  %.sroa.3.0.i937 = phi ptr [ %i.bhv, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i934 ], [ null, %bb.lu ]
  call void @_ZN3ada14url_aggregator24update_host_to_base_hostESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.0.0.i936, ptr %.sroa.3.0.i937)
  %i.bhw = load i64, ptr %i.fw, align 8           ; 4 uses
  %i.bhx = load i32, ptr %i.fx, align 4
  %i.bhy = zext i32 %i.bhx to i64                 ; 5 uses
  %i.bhz = icmp ult i64 %i.bhw, %i.bhy
  br i1 %i.bhz, label %bb.lx, label %_ZNK3ada14url_aggregator12get_pathnameEv.exit949

bb.lx:                                            ; preds = %_ZNK3ada14url_aggregator8get_hostEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.bhy, i64 noundef %i.bhw) #32
  unreachable

_ZNK3ada14url_aggregator12get_pathnameEv.exit949: ; preds = %_ZNK3ada14url_aggregator8get_hostEv.exit
  %i.bia = load i32, ptr %i.fy, align 8           ; 2 uses
  %.not.i942 = icmp eq i32 %i.bia, -1
  %i.bib = load i32, ptr %i.fz, align 4           ; 2 uses
  %.not5.i943 = icmp eq i32 %i.bib, -1
  %i.bic = trunc i64 %i.bhw to i32
  %spec.select.i944 = select i1 %.not5.i943, i32 %i.bic, i32 %i.bib
  %.0.i945 = select i1 %.not.i942, i32 %spec.select.i944, i32 %i.bia
  %i.bid = zext i32 %.0.i945 to i64
  %i.bie = sub nsw i64 %i.bid, %i.bhy
  %i.bif = load ptr, ptr %i.fv, align 8
  %i.big = sub nuw i64 %i.bhw, %i.bhy
  %.sroa.speculated.i.i946 = call i64 @llvm.umin.i64(i64 %i.big, i64 %i.bie) ; 2 uses
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bif, i64 %i.bhy ; 2 uses
  %i.bii = icmp eq i64 %.sroa.speculated.i.i946, 0
  br i1 %i.bii, label %.critedge369, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit953

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit953: ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit949
  %i.bij = sub nuw i64 %.sroa.01255.1, %.03112133 ; 2 uses
  %i.bik = getelementptr inbounds nuw i8, ptr %.sroa.28.214641471, i64 %.03112133 ; 3 uses
  %i.bil = icmp ugt i64 %i.bij, 1
  br i1 %i.bil, label %bb.ly, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit967

bb.ly:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit953
  %i.bim = load i8, ptr %i.bik, align 1
  %i.bin = or i8 %i.bim, 32
  %i.bio = add i8 %i.bin, -97
  %spec.select.i.i954 = icmp ult i8 %i.bio, 26
  br i1 %spec.select.i.i954, label %bb.lz, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit967

bb.lz:                                            ; preds = %bb.ly
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bik, i64 1
  %i.biq = load i8, ptr %i.bip, align 1
  switch i8 %i.biq, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit967 [
    i8 58, label %bb.ma
    i8 124, label %bb.ma
  ]

bb.ma:                                            ; preds = %bb.lz, %bb.lz
  %i.bir = icmp eq i64 %i.bij, 2
  br i1 %i.bir, label %.critedge369, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
end_hunk_3
begin_hunk_4_@_ZN3ada9can_parseESt17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %4 = alloca %"struct.ada::url_aggregator", align 8 ; 13 uses
  %5 = alloca %"struct.ada::url_aggregator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store <4 x i8> <i8 1, i8 0, i8 0, i8 1>, ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada14url_aggregatorE, i64 16), ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 -1>, ptr %i.f, align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %.sroa.01.0.copyload = load i64, ptr %2, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8
  call void @_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb0EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.ada::url_aggregator") align 8 %4, i64 %.sroa.01.0.copyload, ptr %.sroa.22.0.copyload, ptr noundef null)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i32, ptr %i.g, align 8
  store i32 %i.h, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.j = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.k = icmp eq ptr %i.j, %i.c
  %i.l = load ptr, ptr %i.i, align 8              ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.n = icmp eq ptr %i.l, %i.m                   ; 2 uses
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  br i1 %i.n, label %bb.c, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  br i1 %i.n, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  switch i64 %i.p, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.l, align 1
  store i8 %i.r, ptr %i.j, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.l, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.s = load i64, ptr %i.o, align 8              ; 2 uses
  store i64 %i.s, ptr %i.d, align 8
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 0, ptr %i.u, align 1
  %.pre.i.i = load ptr, ptr %i.i, align 8
  br label %_ZN3ada14url_aggregatoraSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.l, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load <2 x i64>, ptr %i.v, align 8
  store <2 x i64> %i.w, ptr %i.d, align 8
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.x = load i64, ptr %i.c, align 8
  store ptr %i.l, ptr %i.b, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = load <2 x i64>, ptr %i.y, align 8
  store <2 x i64> %i.z, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.j, ptr %i.i, align 8
  store i64 %i.x, ptr %i.m, align 8
  br label %_ZN3ada14url_aggregatoraSEOS0_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.m, ptr %i.i, align 8
  br label %_ZN3ada14url_aggregatoraSEOS0_.exit

_ZN3ada14url_aggregatoraSEOS0_.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f, %bb.g
  %i.aa = phi ptr [ %i.j, %bb.f ], [ %i.m, %bb.g ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.ab, align 8
  store i8 0, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada14url_aggregatorE, i64 16), ptr %4, align 8
  %i.ad = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN3ada14url_aggregatorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN3ada14url_aggregatoraSEOS0_.exit
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #34, !inline_history !128
  br label %_ZN3ada14url_aggregatorD2Ev.exit

_ZN3ada14url_aggregatorD2Ev.exit:                 ; preds = %_ZN3ada14url_aggregatoraSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ai = load i8, ptr %i.a, align 8, !range !73, !noundef !74
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN3ada14url_aggregatorD2Ev.exit, %bb.a
  %.08 = phi ptr [ null, %bb.a ], [ %3, %_ZN3ada14url_aggregatorD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb0EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.ada::url_aggregator") align 8 %5, i64 %0, ptr %1, ptr noundef %.08)
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.al = load i8, ptr %i.ak, align 8, !range !73, !noundef !74
  %i.am = trunc nuw i8 %i.al to i1
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada14url_aggregatorE, i64 16), ptr %5, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZN3ada14url_aggregatorD2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %bb.h
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #34, !inline_history !128
  br label %_ZN3ada14url_aggregatorD2Ev.exit12

_ZN3ada14url_aggregatorD2Ev.exit12:               ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.i

bb.i:                                             ; preds = %_ZN3ada14url_aggregatorD2Ev.exit, %_ZN3ada14url_aggregatorD2Ev.exit12
  %.0 = phi i1 [ %i.am, %_ZN3ada14url_aggregatorD2Ev.exit12 ], [ false, %_ZN3ada14url_aggregatorD2Ev.exit ]
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada14url_aggregatorE, i64 16), ptr %3, align 8
  %i.at = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.c
  br i1 %i.au, label %_ZN3ada14url_aggregatorD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %bb.i
  %i.av = load i64, ptr %i.c, align 8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #34, !inline_history !128
  br label %_ZN3ada14url_aggregatorD2Ev.exit15

_ZN3ada14url_aggregatorD2Ev.exit15:               ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb0EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_(ptr dead_on_unwind noalias writable sret(%"struct.ada::url_aggregator") align 8 %0, i64 %1, ptr %2, ptr noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::basic_string_view.2", align 8 ; 12 uses
  %5 = alloca %"class.std::basic_string_view.2", align 8 ; 10 uses
  %6 = alloca %"class.std::basic_string_view.2", align 8 ; 12 uses
  %7 = alloca %"class.std::basic_string_view.2", align 8 ; 10 uses
  %8 = alloca %"class.std::basic_string_view.2", align 8 ; 12 uses
  %9 = alloca %"class.std::basic_string_view.2", align 8 ; 10 uses
  %10 = alloca %"class.std::basic_string_view.2", align 8 ; 13 uses
  %11 = alloca %"class.std::optional", align 8    ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 6 uses
  %13 = alloca %"class.std::basic_string_view.2", align 8 ; 5 uses
  %14 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %15 = alloca %"class.std::basic_string_view.2", align 8 ; 13 uses
  %16 = alloca %"class.std::optional", align 8    ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 6 uses
  %18 = alloca %"class.std::basic_string_view.2", align 8 ; 5 uses
  %19 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %20 = alloca %"class.std::basic_string_view.2", align 8 ; 13 uses
  %21 = alloca %"class.std::optional", align 8    ; 12 uses
  %22 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 6 uses
  %23 = alloca %"class.std::basic_string_view.2", align 8 ; 5 uses
  %24 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 11 uses
  %26 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 12 uses
  %27 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %31 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %32 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 8 uses
  %33 = alloca %"class.std::basic_string_view.2", align 8 ; 6 uses
  %34 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 7 uses
  %35 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 24 uses
  store i8 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  store i8 0, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 14 uses
  store i8 1, ptr %i.f, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3ada14url_aggregatorE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  store i8 0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 -1>, ptr %i.k, align 8
  %i.o = icmp ugt i64 %1, 4294967295
  br i1 %i.o, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = phi i8 [ 0, %bb.b ], [ 1, %bb.a ]        ; 2 uses
  %i.q = icmp ne ptr %3, null                     ; 4 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !73, !noundef !74
  %i.t = and i8 %i.p, %i.s                        ; 2 uses
  store i8 %i.t, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi i8 [ %i.t, %bb.d ], [ %i.p, %bb.c ]
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %.critedge354

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  %i.w = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 5 uses
  store ptr %i.w, ptr %26, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 7 uses
  store i64 0, ptr %i.x, align 8
  store i8 0, ptr %i.w, align 8
  %i.y = icmp ult i64 %1, 16
  br i1 %i.y, label %bb.g, label %.preheader1733.preheader

.preheader1733.preheader:                         ; preds = %bb.f
  %i.z = add i64 %1, -16                          ; 2 uses
  %i.aa = lshr i64 %i.z, 4                        ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %.preheader1733.epil.preheader, label %.preheader1733.preheader.new

.preheader1733.preheader.new:                     ; preds = %.preheader1733.preheader
  %unroll_iter = and i64 %i.ab, 2305843009213693950
  br label %.preheader1733

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not6.not.i.i = icmp samesign eq i64 %1, 0
  br i1 %.not6.not.i.i, label %_ZN3ada7helpers10prune_hashERSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.i

_ZN3ada7unicode18is_tabs_or_newlineEc.exit:       ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 1 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.not.i.i, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %.lr.ph.i.i, !llvm.loop !48

.lr.ph.i.i:                                       ; preds = %bb.g, %_ZN3ada7unicode18is_tabs_or_newlineEc.exit
  %.057.i.i = phi ptr [ %i.ae, %_ZN3ada7unicode18is_tabs_or_newlineEc.exit ], [ %2, %bb.g ] ; 2 uses
  %i.af = load i8, ptr %.057.i.i, align 1
  switch i8 %i.af, label %_ZN3ada7unicode18is_tabs_or_newlineEc.exit [
    i8 13, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1378
    i8 10, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1378
    i8 9, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1378
  ]

.preheader1733:                                   ; preds = %.preheader1733, %.preheader1733.preheader.new
  %.013.i1834 = phi i64 [ 0, %.preheader1733.preheader.new ], [ %i.az, %.preheader1733 ] ; 3 uses
  %.014.i1833 = phi <2 x i64> [ zeroinitializer, %.preheader1733.preheader.new ], [ %i.ay, %.preheader1733 ]
  %niter = phi i64 [ 0, %.preheader1733.preheader.new ], [ %niter.next.1, %.preheader1733 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.013.i1834
  %i.ah = load <16 x i8>, ptr %i.ag, align 1      ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ah, splat (i8 10)
  %i.aj = and <16 x i8> %i.ah, splat (i8 -5)
  %i.ak = icmp eq <16 x i8> %i.aj, splat (i8 9)
  %i.al = or <16 x i1> %i.ai, %i.ak
  %i.am = sext <16 x i1> %i.al to <16 x i8>
  %i.an = bitcast <16 x i8> %i.am to <2 x i64>
  %i.ao = or <2 x i64> %.014.i1833, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %.013.i1834
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load <16 x i8>, ptr %i.aq, align 1      ; 2 uses
  %i.as = icmp eq <16 x i8> %i.ar, splat (i8 10)
  %i.at = and <16 x i8> %i.ar, splat (i8 -5)
  %i.au = icmp eq <16 x i8> %i.at, splat (i8 9)
  %i.av = or <16 x i1> %i.as, %i.au
  %i.aw = sext <16 x i1> %i.av to <16 x i8>
  %i.ax = bitcast <16 x i8> %i.aw to <2 x i64>
  %i.ay = or <2 x i64> %i.ao, %i.ax               ; 3 uses
  %i.az = add nuw i64 %.013.i1834, 32             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %.preheader1733, !llvm.loop !81

.unr-lcssa:                                       ; preds = %.preheader1733
  %i.ba = and i64 %i.z, 16
  %lcmp.mod.not.not = icmp eq i64 %i.ba, 0
  br i1 %lcmp.mod.not.not, label %.preheader1733.epil.preheader, label %bb.h

.preheader1733.epil.preheader:                    ; preds = %.unr-lcssa, %.preheader1733.preheader
  %.013.i1834.epil.init = phi i64 [ 0, %.preheader1733.preheader ], [ %i.az, %.unr-lcssa ]
  %.014.i1833.epil.init = phi <2 x i64> [ zeroinitializer, %.preheader1733.preheader ], [ %i.ay, %.unr-lcssa ]
  %lcmp.mod2928 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod2928)
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %.013.i1834.epil.init
  %i.bc = load <16 x i8>, ptr %i.bb, align 1      ; 2 uses
  %i.bd = icmp eq <16 x i8> %i.bc, splat (i8 10)
  %i.be = and <16 x i8> %i.bc, splat (i8 -5)
  %i.bf = icmp eq <16 x i8> %i.be, splat (i8 9)
  %i.bg = or <16 x i1> %i.bd, %i.bf
  %i.bh = sext <16 x i1> %i.bg to <16 x i8>
  %i.bi = bitcast <16 x i8> %i.bh to <2 x i64>
  %i.bj = or <2 x i64> %.014.i1833.epil.init, %i.bi
  br label %bb.h

bb.h:                                             ; preds = %.unr-lcssa, %.preheader1733.epil.preheader
  %.lcssa2926 = phi <2 x i64> [ %i.ay, %.unr-lcssa ], [ %i.bj, %.preheader1733.epil.preheader ] ; 2 uses
  %i.bk = and i64 %1, 15
  %.not2406 = icmp eq i64 %i.bk, 0
  br i1 %.not2406, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -16
  %i.bn = load <16 x i8>, ptr %i.bm, align 1      ; 2 uses
  %i.bo = icmp eq <16 x i8> %i.bn, splat (i8 10)
  %i.bp = and <16 x i8> %i.bn, splat (i8 -5)
  %i.bq = icmp eq <16 x i8> %i.bp, splat (i8 9)
  %i.br = or <16 x i1> %i.bo, %i.bq
  %i.bs = sext <16 x i1> %i.br to <16 x i8>
  %i.bt = bitcast <16 x i8> %i.bs to <2 x i64>
  %i.bu = or <2 x i64> %.lcssa2926, %i.bt
  br label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.h, %bb.i
  %.1.i = phi <2 x i64> [ %i.bu, %bb.i ], [ %.lcssa2926, %bb.h ]
  %i.bv = bitcast <2 x i64> %.1.i to <16 x i8>
  %i.bw = icmp slt <16 x i8> %i.bv, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %.not1664 = icmp eq i16 %i.bx, 0
  br i1 %.not1664, label %.lr.ph.i.preheader, label %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1378, !prof !82

_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1378: ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.by = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef 0, i64 noundef 0, ptr noundef %2, i64 noundef %1) ; 0 uses
  %i.bz = load i64, ptr %i.x, align 8             ; 6 uses
  %i.ca = load ptr, ptr %26, align 8              ; 7 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz ; 8 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 3 uses
  %i.ce = ashr i64 %i.bz, 2                       ; 2 uses
  %i.cf = icmp sgt i64 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN3ada7unicode19has_tabs_or_newlineESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1378
  %i.cg = and i64 %i.bz, -4
  %scevgep = getelementptr i8, ptr %i.ca, i64 %i.cg
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.m
  %.052.i.i.i.i = phi i64 [ %i.cp, %bb.m ], [ %i.ce, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.co, %bb.m ], [ %i.ca, %.lr.ph.i.i.i.i.preheader ] ; 11 uses
  %i.ch = load i8, ptr %.sroa.032.051.i.i.i.i, align 1
  switch i8 %i.ch, label %bb.j [
    i8 13, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i
    i8 10, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i
    i8 9, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i
  ]

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 1
  %i.cj = load i8, ptr %i.ci, align 1
  switch i8 %i.cj, label %bb.k [
    i8 13, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit
    i8 10, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit
    i8 9, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit
  ]

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 2
  %i.cl = load i8, ptr %i.ck, align 1
  switch i8 %i.cl, label %bb.l [
    i8 13, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit2602
    i8 10, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predISt17reference_wrapperIPDoFbcEEEEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit2602
end_hunk_4
begin_hunk_5_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb0EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.jz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef %i.bal, i64 noundef 0, ptr noundef nonnull @.str.52, i64 noundef 3), !noalias !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.jz, %bb.jy
  store i64 %i.ban, ptr %i.go, align 8, !noalias !166
  %i.bau = load ptr, ptr %29, align 8, !noalias !166
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bau, i64 %i.ban
  store i8 0, ptr %i.bav, align 1, !noalias !166
  store ptr %i.gp, ptr %28, align 8, !alias.scope !166
  %i.baw = load ptr, ptr %29, align 8, !noalias !166 ; 3 uses
  %i.bax = icmp eq ptr %i.baw, %i.gn
  br i1 %i.bax, label %bb.ka, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822

bb.ka:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bay = load i64, ptr %i.go, align 8, !noalias !166 ; 3 uses
  %i.baz = icmp ult i64 %i.bay, 16
  call void @llvm.assume(i1 %i.baz)
  %i.bba = add nuw nsw i64 %i.bay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gp, ptr noundef nonnull align 8 dereferenceable(1) %i.gn, i64 %i.bba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.baw, ptr %28, align 8, !alias.scope !166
  %i.bbb = load i64, ptr %i.gn, align 8, !noalias !166
  store i64 %i.bbb, ptr %i.gp, align 8, !alias.scope !166
  %.pre.i = load i64, ptr %i.go, align 8, !noalias !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825: ; preds = %bb.ka, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822
  %i.bbc = phi ptr [ %i.gp, %bb.ka ], [ %i.baw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822 ]
  %i.bbd = phi i64 [ %i.bay, %bb.ka ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i822 ] ; 2 uses
  store i64 %i.bbd, ptr %i.gq, align 8, !alias.scope !166
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #31
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %30, i64 %i.bbd, ptr %i.bbc, ptr noundef nonnull @_ZN3ada14character_setsL25C0_CONTROL_PERCENT_ENCODEE)
  %i.bbe = load ptr, ptr %30, align 8
  %i.bbf = load i64, ptr %i.gr, align 8
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.bbf, ptr %i.bbe)
  %i.bbg = load ptr, ptr %30, align 8             ; 2 uses
  %i.bbh = icmp eq ptr %i.bbg, %i.gs
  br i1 %i.bbh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i830

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i830: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825
  %i.bbi = load i64, ptr %i.gs, align 8
  %i.bbj = add i64 %i.bbi, 1
  call void @_ZdlPvm(ptr noundef %i.bbg, i64 noundef %i.bbj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i830
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31
  %i.bbk = load ptr, ptr %28, align 8             ; 2 uses
  %i.bbl = icmp eq ptr %i.bbk, %i.gp
  br i1 %i.bbl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832
  %i.bbm = load i64, ptr %i.gp, align 8
  %i.bbn = add i64 %i.bbm, 1
  call void @_ZdlPvm(ptr noundef %i.bbk, i64 noundef %i.bbn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  br label %.critedge334

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811
  %.82444 = phi i32 [ 18, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread.thread ], [ 15, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread ], [ %.82451, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811 ]
  %.92862443 = phi i64 [ %i.gl, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread.thread ], [ %i.azx, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread ], [ %.92862450, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811 ]
  %.sroa.01119.02442 = phi i64 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread.thread ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit810.thread ], [ %.sroa.01119.02449, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #31
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %31, i64 %.sroa.01119.02442, ptr %i.azr, ptr noundef nonnull @_ZN3ada14character_setsL25C0_CONTROL_PERCENT_ENCODEE)
  %i.bbo = load ptr, ptr %31, align 8
  %i.bbp = load i64, ptr %i.gt, align 8
  call void @_ZN3ada14url_aggregator20update_base_pathnameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %i.bbp, ptr %i.bbo)
  %i.bbq = load ptr, ptr %31, align 8             ; 2 uses
  %i.bbr = icmp eq ptr %i.bbq, %i.gu
  br i1 %i.bbr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i838

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i838: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811.thread
  %i.bbs = load i64, ptr %i.gu, align 8
  %i.bbt = add i64 %i.bbs, 1
  call void @_ZdlPvm(ptr noundef %i.bbq, i64 noundef %i.bbt) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit840: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit811.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i838
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  br label %.critedge334

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit844: ; preds = %bb.ah
  %i.bbu = sub nuw i64 %.sroa.01179.1, %.02771995
  %i.bbv = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.02771995 ; 7 uses
  %i.bbw = icmp eq i64 %.sroa.01179.1, %.02771995
  br i1 %i.bbw, label %.thread, label %bb.kb

.thread:                                          ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit844
  %i.bbx = ptrtoint ptr %i.bbv to i64             ; 2 uses
  br label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1563

bb.kb:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit844
  %i.bby = load i8, ptr %i.bbv, align 1
  %i.bbz = icmp eq i8 %i.bby, 45
  br i1 %i.bbz, label %bb.kc, label %.lr.ph.i37.i.preheader

bb.kc:                                            ; preds = %bb.kb
  store i8 0, ptr %i.c, align 8
  br label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

.lr.ph.i37.i.preheader:                           ; preds = %bb.kb
  %i.bca = ptrtoint ptr %i.bbv to i64             ; 5 uses
  br label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %.lr.ph.i37.i.preheader, %.critedge.i38.i
  %.368.i = phi ptr [ %i.bcu, %.critedge.i38.i ], [ %i.bbv, %.lr.ph.i37.i.preheader ] ; 4 uses
  %.9.i = phi i32 [ %.10.i, %.critedge.i38.i ], [ 0, %.lr.ph.i37.i.preheader ] ; 3 uses
  %.02338.i.i = phi i32 [ %i.bce, %.critedge.i38.i ], [ 32, %.lr.ph.i37.i.preheader ]
  %i.bcb = load i8, ptr %.368.i, align 1
  %i.bcc = add i8 %i.bcb, -48                     ; 2 uses
  %i.bcd = zext i8 %i.bcc to i32                  ; 2 uses
  %.not31.i.i = icmp ult i8 %i.bcc, 10
  br i1 %.not31.i.i, label %bb.kd, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i

bb.kd:                                            ; preds = %.lr.ph.i37.i
  %i.bce = add i32 %.02338.i.i, -4                ; 2 uses
  %i.bcf = icmp sgt i32 %i.bce, -1
  br i1 %i.bcf, label %bb.ke, label %bb.kf, !prof !111

bb.ke:                                            ; preds = %bb.kd
  %i.bcg = mul i32 %.9.i, 10
  %i.bch = add i32 %i.bcg, %i.bcd
  br label %.critedge.i38.i

bb.kf:                                            ; preds = %bb.kd
  %i.bci = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.9.i, i32 10) ; 2 uses
  %i.bcj = extractvalue { i32, i1 } %i.bci, 1
  br i1 %i.bcj, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, label %bb.kg, !prof !112

bb.kg:                                            ; preds = %bb.kf
  %i.bck = extractvalue { i32, i1 } %i.bci, 0
  %i.bcl = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.bck, i32 %i.bcd) ; 2 uses
  %i.bcm = extractvalue { i32, i1 } %i.bcl, 1
  %i.bcn = extractvalue { i32, i1 } %i.bcl, 0
  br i1 %i.bcm, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, label %.critedge.i38.i, !prof !18

_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i: ; preds = %bb.kg, %bb.kf
  %i.bco = getelementptr inbounds nuw i8, ptr %.368.i, i64 1 ; 2 uses
  %.not32.i.i2760 = icmp eq ptr %i.bco, %i.gm
  br i1 %.not32.i.i2760, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, label %.lr.ph2761

_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i: ; preds = %.lr.ph2761
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcq, i64 1 ; 2 uses
  %.not32.i.i = icmp eq ptr %i.bcp, %i.gm
  br i1 %.not32.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, label %.lr.ph2761, !llvm.loop !113

.lr.ph2761:                                       ; preds = %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i
  %i.bcq = phi ptr [ %i.bcp, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i ], [ %i.bco, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i ] ; 3 uses
  %i.bcr = load i8, ptr %i.bcq, align 1
  %i.bcs = add i8 %i.bcr, -48
  %i.bct = icmp ult i8 %i.bcs, 10
  br i1 %i.bct, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i, label %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge, !llvm.loop !113

.critedge.i38.i:                                  ; preds = %bb.kg, %bb.ke
  %.10.i = phi i32 [ %i.bch, %bb.ke ], [ %i.bcn, %bb.kg ] ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %.368.i, i64 1 ; 2 uses
  %.not.i.i849 = icmp eq ptr %i.bcu, %i.gm
  br i1 %.not.i.i849, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i, label %.lr.ph.i37.i, !llvm.loop !114

._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge: ; preds = %.lr.ph2761
  br label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, !llvm.loop !113

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i: ; preds = %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i, %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i
  %.065.ph.i = phi ptr [ %i.bcq, %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge ], [ %i.gm, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i ], [ %i.gm, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i ]
  %i.bcv = icmp eq ptr %.065.ph.i, %i.bbv
  br i1 %i.bcv, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1563, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, !prof !115

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i: ; preds = %.critedge.i38.i, %.lr.ph.i37.i
  %.065.i = phi ptr [ %.368.i, %.lr.ph.i37.i ], [ %i.gm, %.critedge.i38.i ] ; 2 uses
  %.0.i845 = phi i32 [ %.9.i, %.lr.ph.i37.i ], [ %.10.i, %.critedge.i38.i ] ; 2 uses
  %.not1673.a = icmp eq ptr %.065.i, %i.bbv
  br i1 %.not1673.a, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1563, label %bb.kh, !prof !116

bb.kh:                                            ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i
  %i.bcw = icmp ugt i32 %.0.i845, 65535
  br i1 %i.bcw, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.bcx = trunc nuw i32 %.0.i845 to i16
  %.pre2181 = ptrtoint ptr %.065.i to i64
  br label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1563

_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, %bb.kh
  store i8 0, ptr %i.c, align 8
  br label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1563: ; preds = %.thread, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, %bb.ki
  %i.bcy = phi i64 [ %i.bca, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.bbx, %.thread ], [ %i.bca, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.bca, %bb.ki ]
  %.pre-phi = phi i64 [ %i.bca, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.bbx, %.thread ], [ %i.bca, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %.pre2181, %bb.ki ]
  %i.bcz = phi i1 [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ false, %.thread ], [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ true, %bb.ki ]
  %.013741569 = phi i16 [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ 0, %.thread ], [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.bcx, %bb.ki ] ; 3 uses
  %i.bda = sub i64 %.pre-phi, %i.bcy              ; 7 uses
  %i.bdb = icmp eq i64 %i.bda, %i.bbu
  br i1 %i.bdb, label %bb.km, label %bb.kj

bb.kj:                                            ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1563
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bbv, i64 %i.bda
  %i.bdd = load i8, ptr %i.bdc, align 1           ; 2 uses
  switch i8 %i.bdd, label %bb.kk [
    i8 47, label %bb.km
    i8 63, label %bb.km
  ]

bb.kk:                                            ; preds = %bb.kj
  %i.bde = load i8, ptr %i.f, align 1
  %.not1674 = icmp eq i8 %i.bde, 1
  br i1 %.not1674, label %.thread1572, label %bb.kl

.thread1572:                                      ; preds = %bb.kk
  store i8 0, ptr %i.c, align 8
  br label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

bb.kl:                                            ; preds = %bb.kk
  %i.bdf = icmp eq i8 %i.bdd, 92
  br label %bb.km

bb.km:                                            ; preds = %bb.kj, %bb.kj, %bb.kl, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1563
  %36 = phi i1 [ true, %bb.kj ], [ true, %bb.kj ], [ true, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1563 ], [ %i.bdf, %bb.kl ]
  %i.bdg = load i8, ptr %i.c, align 8, !range !73, !noundef !74
  %37 = trunc nuw i8 %i.bdg to i1
  %38 = and i1 %36, %37                           ; 2 uses
  %39 = zext i1 %38 to i8
  store i8 %39, ptr %i.c, align 8
  br i1 %38, label %bb.kn, label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

bb.kn:                                            ; preds = %bb.km
  %i.bdh = load i8, ptr %i.f, align 1
  %i.bdi = zext i8 %i.bdh to i64                  ; 2 uses
  %i.bdj = getelementptr inbounds nuw [2 x i8], ptr @_ZN3ada6scheme7detailsL13special_portsE, i64 %i.bdi
  %i.bdk = load i16, ptr %i.bdj, align 2
  %i.bdl = lshr i64 194, %i.bdi
  %i.bdm = trunc i64 %i.bdl to i1
  %i.bdn = icmp eq i16 %.013741569, 0
  %or.cond.i = select i1 %i.bdm, i1 %i.bdn, i1 false
  %i.bdo = icmp ne i16 %i.bdk, %.013741569
  %spec.select.i = select i1 %or.cond.i, i1 true, i1 %i.bdo
  %or.cond4.i = select i1 %i.bcz, i1 %spec.select.i, i1 false
  br i1 %or.cond4.i, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  %i.bdp = zext i16 %.013741569 to i32
  call void @_ZN3ada14url_aggregator16update_base_portEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.bdp)
  br label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

bb.kp:                                            ; preds = %bb.kn
  %i.bdq = load i32, ptr %i.k, align 8
  %i.bdr = icmp eq i32 %i.bdq, -1
  br i1 %i.bdr, label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.bds = load i32, ptr %i.l, align 4            ; 3 uses
  %i.bdt = load i32, ptr %i.gi, align 4           ; 3 uses
  %i.bdu = sub i32 %i.bds, %i.bdt                 ; 4 uses
  %i.bdv = zext i32 %i.bdt to i64                 ; 6 uses
  %i.bdw = zext i32 %i.bdu to i64
  %i.bdx = load i64, ptr %i.i, align 8            ; 6 uses
  %i.bdy = icmp ult i64 %i.bdx, %i.bdv
  br i1 %i.bdy, label %bb.kr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.kr:                                            ; preds = %bb.kq
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.163, i64 noundef %i.bdv, i64 noundef %i.bdx) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.kq
  %cond.i850 = icmp eq i32 %i.bds, %i.bdt
  br i1 %cond.i850, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i855, label %bb.ks

bb.ks:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bdz = sub i64 %i.bdx, %i.bdv
  %spec.select.i.i.i851 = call noundef i64 @llvm.umin.i64(i64 %i.bdw, i64 %i.bdz) ; 3 uses
  %i.bea = add nuw nsw i64 %spec.select.i.i.i851, %i.bdv ; 2 uses
  %i.beb = icmp ne i64 %i.bdx, %i.bea
  %i.bec = icmp ne i64 %i.bdx, %i.bdv
  %or.cond.i.i.i852 = and i1 %i.bec, %i.beb
  br i1 %or.cond.i.i.i852, label %bb.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i853

bb.kt:                                            ; preds = %bb.ks
  %i.bed = sub i64 %i.bdx, %i.bea                 ; 2 uses
  %i.bee = load ptr, ptr %i.g, align 8
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 %i.bdv ; 3 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 %spec.select.i.i.i851 ; 2 uses
  switch i64 %i.bed, label %bb.kv [
    i64 1, label %bb.ku
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i853
  ]

bb.ku:                                            ; preds = %bb.kt
  %i.beh = load i8, ptr %i.beg, align 1
  store i8 %i.beh, ptr %i.bef, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i853

bb.kv:                                            ; preds = %bb.kt
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bef, ptr nonnull align 1 %i.beg, i64 %i.bed, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i853

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i853: ; preds = %bb.kv, %bb.ku, %bb.kt, %bb.ks
  %i.bei = load i64, ptr %i.i, align 8
  %i.bej = sub i64 %i.bei, %spec.select.i.i.i851  ; 2 uses
  store i64 %i.bej, ptr %i.i, align 8
  %i.bek = load ptr, ptr %i.g, align 8
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 %i.bej
  store i8 0, ptr %i.bel, align 1
  %.pre.i854 = load i32, ptr %i.l, align 4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i855

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i855: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i853, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bem = phi i32 [ %i.bds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ], [ %.pre.i854, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i853 ]
  %i.ben = sub i32 %i.bem, %i.bdu
  store i32 %i.ben, ptr %i.l, align 4
  %i.beo = load i32, ptr %i.m, align 8            ; 2 uses
  %.not.i856 = icmp eq i32 %i.beo, -1
  br i1 %.not.i856, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i855
  %i.bep = sub i32 %i.beo, %i.bdu
  store i32 %i.bep, ptr %i.m, align 8
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i855
  %i.beq = load i32, ptr %i.n, align 4            ; 2 uses
  %.not5.i857 = icmp eq i32 %i.beq, -1
  br i1 %.not5.i857, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.ber = sub i32 %i.beq, %i.bdu
  store i32 %i.ber, ptr %i.n, align 4
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  store i32 -1, ptr %i.k, align 8
  br label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit: ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, %bb.km, %bb.ko, %.thread1572, %bb.kp, %bb.kz, %bb.kc
  %.1.i420 = phi i64 [ 0, %bb.kc ], [ 0, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread ], [ %i.bda, %bb.ko ], [ %i.bda, %.thread1572 ], [ %i.bda, %bb.km ], [ %i.bda, %bb.kp ], [ %i.bda, %bb.kz ]
  %i.bes = add i64 %.1.i420, %.02771995
  %i.bet = load i8, ptr %i.c, align 8, !range !73, !noundef !74
  %i.beu = trunc nuw i8 %i.bet to i1
  br i1 %i.beu, label %bb.la, label %.critedge337

bb.la:                                            ; preds = %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, %bb.ah
  %.10287 = phi i64 [ %i.bes, %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit ], [ %.02771995, %bb.ah ] ; 6 uses
  %i.bev = load i8, ptr %i.f, align 1
  %.not1675 = icmp eq i8 %i.bev, 1
  %.not319 = icmp eq i64 %.10287, %.sroa.01179.1  ; 2 uses
  br i1 %.not1675, label %bb.ld, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  br i1 %.not319, label %.critedge354.critedge, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.bew = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.10287
  %i.bex = load i8, ptr %i.bew, align 1
  switch i8 %i.bex, label %.critedge334 [
    i8 47, label %.critedge346
    i8 92, label %.critedge346
  ]

bb.ld:                                            ; preds = %bb.la
  br i1 %.not319, label %.critedge346, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bey = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.10287
  %i.bez = load i8, ptr %i.bey, align 1
  switch i8 %i.bez, label %.critedge334 [
    i8 63, label %.critedge346
    i8 47, label %.critedge346.fold.split
  ]

.critedge346.fold.split:                          ; preds = %bb.le
  br label %.critedge346

.critedge346:                                     ; preds = %bb.le, %.critedge346.fold.split, %bb.lc, %bb.lc, %bb.ld
  %.11 = phi i32 [ 16, %bb.lc ], [ 16, %bb.lc ], [ 15, %bb.le ], [ 17, %bb.ld ], [ 16, %.critedge346.fold.split ]
  %i.bfa = add i64 %.10287, 1
  br label %.critedge334

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861: ; preds = %bb.ah
  %.not1672.a = icmp eq i64 %.sroa.01179.1, %.02771995
  br i1 %.not1672.a, label %.critedge334, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863:    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit861
  %i.bfb = sub nuw i64 %.sroa.01179.1, %.02771995
  %i.bfc = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.02771995 ; 2 uses
  %i.bfd = call ptr @memchr(ptr noundef %i.bfc, i32 noundef 63, i64 noundef %i.bfb) #31 ; 2 uses
  %.not.i864 = icmp eq ptr %i.bfd, null
  %i.bfe = ptrtoint ptr %i.bfd to i64
  %i.bff = ptrtoint ptr %i.bfc to i64
  %i.bfg = sub i64 %i.bfe, %i.bff                 ; 2 uses
  %.not318 = icmp eq i64 %i.bfg, -1
  %or.cond1661 = or i1 %.not.i864, %.not318
  br i1 %or.cond1661, label %.critedge334, label %bb.lf

bb.lf:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i863
  %i.bfh = add i64 %.02771995, 1
  %i.bfi = add i64 %i.bfh, %i.bfg
  br label %.critedge334

bb.lg:                                            ; preds = %bb.ah
  %.not316 = icmp eq i64 %.02771995, %.sroa.01179.1
  br i1 %.not316, label %bb.lj, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bfj = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.02771995
  %i.bfk = load i8, ptr %i.bfj, align 1
  switch i8 %i.bfk, label %bb.lj [
    i8 47, label %bb.li
    i8 92, label %bb.li
  ]

bb.li:                                            ; preds = %bb.lh, %bb.lh
  %i.bfl = add i64 %.02771995, 1
  br label %.critedge334

bb.lj:                                            ; preds = %bb.lh, %bb.lg
  br i1 %i.q, label %bb.lk, label %.critedge334

bb.lk:                                            ; preds = %bb.lj
  %i.bfm = load i8, ptr %i.fm, align 1
  %i.bfn = icmp eq i8 %i.bfm, 6
  br i1 %i.bfn, label %bb.ll, label %.critedge334

bb.ll:                                            ; preds = %bb.lk
  %i.bfo = load i32, ptr %i.fn, align 8           ; 2 uses
  %i.bfp = zext i32 %i.bfo to i64                 ; 3 uses
  %i.bfq = load i32, ptr %i.fo, align 4           ; 2 uses
  %i.bfr = icmp ugt i32 %i.bfq, %i.bfo
  br i1 %i.bfr, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  %i.bfs = load ptr, ptr %i.fp, align 8
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfs, i64 %i.bfp
  %i.bfu = load i8, ptr %i.bft, align 1
  %i.bfv = icmp eq i8 %i.bfu, 64
  %i.bfw = zext i1 %i.bfv to i64
  %spec.select.i874 = add nuw nsw i64 %i.bfw, %i.bfp
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll
  %.0.i867 = phi i64 [ %i.bfp, %bb.ll ], [ %spec.select.i874, %bb.lm ] ; 6 uses
  %i.bfx = zext i32 %i.bfq to i64
  %i.bfy = icmp eq i64 %.0.i867, %i.bfx
  br i1 %i.bfy, label %_ZNK3ada14url_aggregator8get_hostEv.exit, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.bfz = load i64, ptr %i.fq, align 8           ; 3 uses
  %i.bga = icmp ugt i64 %.0.i867, %i.bfz
  br i1 %i.bga, label %bb.lp, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i868

bb.lp:                                            ; preds = %bb.lo
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %.0.i867, i64 noundef %i.bfz) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i868: ; preds = %bb.lo
  %i.bgb = load i32, ptr %i.fr, align 4
  %i.bgc = zext i32 %i.bgb to i64
  %i.bgd = sub nsw i64 %i.bgc, %.0.i867
  %i.bge = load ptr, ptr %i.fp, align 8
  %i.bgf = sub nuw i64 %i.bfz, %.0.i867
  %.sroa.speculated.i.i869 = call i64 @llvm.umin.i64(i64 %i.bgf, i64 %i.bgd)
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bge, i64 %.0.i867
  br label %_ZNK3ada14url_aggregator8get_hostEv.exit

_ZNK3ada14url_aggregator8get_hostEv.exit:         ; preds = %bb.ln, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i868
  %.sroa.0.0.i870 = phi i64 [ %.sroa.speculated.i.i869, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i868 ], [ 0, %bb.ln ]
  %.sroa.3.0.i871 = phi ptr [ %i.bgg, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i868 ], [ null, %bb.ln ]
  call void @_ZN3ada14url_aggregator24update_host_to_base_hostESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.0.0.i870, ptr %.sroa.3.0.i871)
  %i.bgh = load i64, ptr %i.fq, align 8           ; 4 uses
  %i.bgi = load i32, ptr %i.fr, align 4
  %i.bgj = zext i32 %i.bgi to i64                 ; 5 uses
  %i.bgk = icmp ult i64 %i.bgh, %i.bgj
  br i1 %i.bgk, label %bb.lq, label %_ZNK3ada14url_aggregator12get_pathnameEv.exit883

bb.lq:                                            ; preds = %_ZNK3ada14url_aggregator8get_hostEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.bgj, i64 noundef %i.bgh) #32
  unreachable

_ZNK3ada14url_aggregator12get_pathnameEv.exit883: ; preds = %_ZNK3ada14url_aggregator8get_hostEv.exit
  %i.bgl = load i32, ptr %i.fs, align 8           ; 2 uses
  %.not.i876 = icmp eq i32 %i.bgl, -1
  %i.bgm = load i32, ptr %i.ft, align 4           ; 2 uses
  %.not5.i877 = icmp eq i32 %i.bgm, -1
  %i.bgn = trunc i64 %i.bgh to i32
  %spec.select.i878 = select i1 %.not5.i877, i32 %i.bgn, i32 %i.bgm
  %.0.i879 = select i1 %.not.i876, i32 %spec.select.i878, i32 %i.bgl
  %i.bgo = zext i32 %.0.i879 to i64
  %i.bgp = sub nsw i64 %i.bgo, %i.bgj
  %i.bgq = load ptr, ptr %i.fp, align 8
  %i.bgr = sub nuw i64 %i.bgh, %i.bgj
  %.sroa.speculated.i.i880 = call i64 @llvm.umin.i64(i64 %i.bgr, i64 %i.bgp) ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgq, i64 %i.bgj ; 2 uses
  %i.bgt = icmp eq i64 %.sroa.speculated.i.i880, 0
  br i1 %i.bgt, label %.critedge334, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit887

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit887: ; preds = %_ZNK3ada14url_aggregator12get_pathnameEv.exit883
  %i.bgu = sub nuw i64 %.sroa.01179.1, %.02771995 ; 2 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %.sroa.27.213831390, i64 %.02771995 ; 3 uses
  %i.bgw = icmp ugt i64 %i.bgu, 1
  br i1 %i.bgw, label %bb.lr, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901

bb.lr:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit887
  %i.bgx = load i8, ptr %i.bgv, align 1
  %i.bgy = or i8 %i.bgx, 32
  %i.bgz = add i8 %i.bgy, -97
  %spec.select.i.i888 = icmp ult i8 %i.bgz, 26
  br i1 %spec.select.i.i888, label %bb.ls, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901

bb.ls:                                            ; preds = %bb.lr
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgv, i64 1
  %i.bhb = load i8, ptr %i.bha, align 1
  switch i8 %i.bhb, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901 [
    i8 58, label %bb.lt
    i8 124, label %bb.lt
  ]

bb.lt:                                            ; preds = %bb.ls, %bb.ls
  %i.bhc = icmp eq i64 %i.bgu, 2
  br i1 %i.bhc, label %.critedge334, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bgv, i64 2
  %i.bhe = load i8, ptr %i.bhd, align 1
  switch i8 %i.bhe, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901 [
    i8 47, label %.critedge334
    i8 92, label %.critedge334
    i8 63, label %.critedge334
    i8 35, label %.critedge334
  ]

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit901: ; preds = %bb.lu, %bb.ls, %bb.lr, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit887
  %i.bhf = add i64 %.sroa.speculated.i.i880, -1   ; 3 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bgs, i64 1 ; 4 uses
  %.not1671 = icmp eq i64 %i.bhf, 0
  br i1 %.not1671, label %.critedge334, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i903

end_hunk_5
begin_hunk_6_@_ZN3ada3url8set_hrefESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.el = trunc nuw i8 %.pre15 to i1
  br i1 %i.el, label %bb.o, label %_ZN2tl6detail21expected_storage_baseIN3ada3urlENS2_6errorsELb0ELb1EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  call void @_ZN3ada3urlD2Ev(ptr noundef nonnull align 8 dereferenceable(273) %4) #31, !inline_history !197
  br label %_ZN2tl6detail21expected_storage_baseIN3ada3urlENS2_6errorsELb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseIN3ada3urlENS2_6errorsELb0ELb1EED2Ev.exit: ; preds = %_ZN3ada5parseINS_3urlEEEN2tl8expectedIT_NS_6errorsEEESt17basic_string_viewIcSt11char_traitsIcEEPKS4_.exit, %bb.n, %bb.o
  %i.em = phi i1 [ true, %bb.o ], [ false, %bb.n ], [ false, %_ZN3ada5parseINS_3urlEEEN2tl8expectedIT_NS_6errorsEEESt17basic_string_viewIcSt11char_traitsIcEEPKS4_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret i1 %i.em
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada3url26update_unencoded_base_hashESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(272) %0, i64 %1, ptr %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %3, i64 %1, ptr %2, ptr noundef nonnull @_ZN3ada14character_setsL23FRAGMENT_PERCENT_ENCODEE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3) #31 ; 0 uses
  %i.c = load ptr, ptr %3, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada3url12clear_searchEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8
  br i1 %i.c, label %bb.b, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #34
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada3url18update_base_searchESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr noundef nonnull align 8 dereferenceable(272) %0, i64 %1, ptr %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN3ada7unicode14percent_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.4") align 8 %4, i64 %1, ptr %2, ptr noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4) #31 ; 0 uses
  %i.c = load ptr, ptr %4, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN3ada3url10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(272) %0, i64 %1, ptr %2, i1 noundef zeroext %3) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  br label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %2, align 1
  %i.d = icmp eq i8 %i.c, 45
  br i1 %i.d, label %bb.c, label %.lr.ph.i37.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.e, align 8
  br label %bb.o

.lr.ph.i37.i.preheader:                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 6 uses
  %i.g = ptrtoint ptr %2 to i64                   ; 5 uses
  br label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %.lr.ph.i37.i.preheader, %.critedge.i38.i
  %.368.i = phi ptr [ %i.aa, %.critedge.i38.i ], [ %2, %.lr.ph.i37.i.preheader ] ; 4 uses
  %.9.i = phi i32 [ %.10.i, %.critedge.i38.i ], [ 0, %.lr.ph.i37.i.preheader ] ; 3 uses
  %.02338.i.i = phi i32 [ %i.k, %.critedge.i38.i ], [ 32, %.lr.ph.i37.i.preheader ]
  %i.h = load i8, ptr %.368.i, align 1
  %i.i = add i8 %i.h, -48                         ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %.not31.i.i = icmp ult i8 %i.i, 10
  br i1 %.not31.i.i, label %bb.d, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i

bb.d:                                             ; preds = %.lr.ph.i37.i
  %i.k = add i32 %.02338.i.i, -4                  ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.f, !prof !111

bb.e:                                             ; preds = %bb.d
  %i.m = mul i32 %.9.i, 10
  %i.n = add i32 %i.m, %i.j
  br label %.critedge.i38.i

bb.f:                                             ; preds = %bb.d
  %i.o = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.9.i, i32 10) ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, label %bb.g, !prof !112

bb.g:                                             ; preds = %bb.f
  %i.q = extractvalue { i32, i1 } %i.o, 0
  %i.r = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.q, i32 %i.j) ; 2 uses
  %i.s = extractvalue { i32, i1 } %i.r, 1
  %i.t = extractvalue { i32, i1 } %i.r, 0
  br i1 %i.s, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, label %.critedge.i38.i, !prof !18

_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i: ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.368.i, i64 1 ; 2 uses
  %.not32.i.i61 = icmp eq ptr %i.u, %i.f
  br i1 %.not32.i.i61, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, label %.lr.ph

_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i: ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %.not32.i.i = icmp eq ptr %i.v, %i.f
  br i1 %.not32.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, label %.lr.ph, !llvm.loop !113

.lr.ph:                                           ; preds = %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i
  %i.w = phi ptr [ %i.v, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i ], [ %i.u, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i ] ; 3 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = add i8 %i.x, -48
  %i.z = icmp ult i8 %i.y, 10
  br i1 %i.z, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i, label %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge, !llvm.loop !113

.critedge.i38.i:                                  ; preds = %bb.g, %bb.e
  %.10.i = phi i32 [ %i.n, %bb.e ], [ %i.t, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.368.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.f
  br i1 %.not.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i, label %.lr.ph.i37.i, !llvm.loop !114

._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge: ; preds = %.lr.ph
  br label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, !llvm.loop !113

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i: ; preds = %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i, %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i
  %.065.ph.i = phi ptr [ %i.w, %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge ], [ %i.f, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i ], [ %i.f, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i ]
  %i.ab = icmp eq ptr %.065.ph.i, %2
  br i1 %i.ab, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, !prof !115

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i: ; preds = %.critedge.i38.i, %.lr.ph.i37.i
  %.065.i = phi ptr [ %.368.i, %.lr.ph.i37.i ], [ %i.f, %.critedge.i38.i ] ; 2 uses
  %.0.i = phi i32 [ %.9.i, %.lr.ph.i37.i ], [ %.10.i, %.critedge.i38.i ] ; 2 uses
  %.not = icmp eq ptr %.065.i, %2
  br i1 %.not, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35, label %bb.h, !prof !116

bb.h:                                             ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i
  %i.ac = icmp ugt i32 %.0.i, 65535
  br i1 %i.ac, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = trunc nuw i32 %.0.i to i16
  %.pre52 = ptrtoint ptr %.065.i to i64
  br label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35

_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ae, align 8
  br label %bb.o

_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35: ; preds = %.thread, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, %bb.i
  %i.af = phi i64 [ %i.g, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.b, %.thread ], [ %i.g, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.g, %bb.i ]
  %.pre-phi = phi i64 [ %i.g, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.b, %.thread ], [ %i.g, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %.pre52, %bb.i ]
  %i.ag = phi i1 [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ false, %.thread ], [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ true, %bb.i ]
  %.02841 = phi i16 [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ 0, %.thread ], [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.ad, %bb.i ] ; 3 uses
  %i.ah = sub i64 %.pre-phi, %i.af                ; 5 uses
  br i1 %3, label %bb.j, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35._crit_edge

_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35._crit_edge: ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !73
  %4 = trunc nuw i8 %.pre to i1
  br i1 %4, label %bb.n, label %bb.o

bb.j:                                             ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35
  %i.ai = icmp eq i64 %i.ah, %1
  br i1 %i.ai, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1             ; 2 uses
  switch i8 %i.ak, label %bb.l [
    i8 47, label %bb.m
    i8 63, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.am = load i8, ptr %i.al, align 1
  %5 = icmp ne i8 %i.am, 1
  %.not48 = icmp eq i8 %i.ak, 92
  %spec.select46 = and i1 %.not48, %5
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.k, %bb.l
  %6 = phi i1 [ true, %bb.k ], [ true, %bb.k ], [ true, %bb.j ], [ %spec.select46, %bb.l ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !range !73, !noundef !74
  %7 = trunc nuw i8 %i.ao to i1
  %8 = and i1 %6, %7                              ; 2 uses
  %9 = zext i1 %8 to i8
  store i8 %9, ptr %i.an, align 8
  br i1 %8, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35._crit_edge, %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i64                    ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr @_ZN3ada6scheme7detailsL13special_portsE, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2
  %i.au = lshr i64 194, %i.ar
  %i.av = trunc i64 %i.au to i1
  %i.aw = icmp eq i16 %.02841, 0
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  %i.ax = icmp ne i16 %i.at, %.02841
  %spec.select = select i1 %or.cond, i1 true, i1 %i.ax
  %or.cond4 = select i1 %i.ag, i1 %spec.select, i1 false
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.az = zext i16 %.02841 to i32
  %i.ba = or disjoint i32 %i.az, 65536
  %.sroa.0.0.insert.insert = select i1 %or.cond4, i32 %i.ba, i32 0
  store i32 %.sroa.0.0.insert.insert, ptr %i.ay, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35._crit_edge, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, %bb.n, %bb.m, %bb.c
  %.1 = phi i64 [ 0, %bb.c ], [ 0, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread ], [ %i.ah, %bb.n ], [ %i.ah, %bb.m ], [ %i.ah, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35._crit_edge ]
  ret i64 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = icmp ugt i64 %0, 1
  br i1 %i.a, label %bb.b, label %switch.edge

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1
  %i.c = or i8 %i.b, 32
  %i.d = add i8 %i.c, -97
  %spec.select.i = icmp ult i8 %i.d, 26
  br i1 %spec.select.i, label %bb.c, label %switch.edge

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1
  switch i8 %i.f, label %switch.edge [
    i8 58, label %bb.d
    i8 124, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.g = icmp eq i64 %0, 2
  br i1 %i.g, label %switch.edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i8, ptr %i.h, align 1
  %switch.tableidx = add i8 %i.i, -35             ; 2 uses
  %i.j = icmp ult i8 %switch.tableidx, 58
  br i1 %i.j, label %switch.lookup, label %switch.edge

switch.lookup:                                    ; preds = %bb.e
  %switch.cast = zext nneg i8 %switch.tableidx to i58
  %switch.downshift = lshr i58 -144115187807416319, %switch.cast
  %switch.masked = trunc i58 %switch.downshift to i1
  br label %switch.edge

switch.edge:                                      ; preds = %bb.e, %switch.lookup, %bb.c, %bb.d, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.d ], [ %switch.masked, %switch.lookup ], [ false, %bb.e ]
  ret i1 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8 ; 6 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = sub i64 9223372036854775807, %i.b
  %i.d = icmp ult i64 %i.c, %.sroa.0.0.copyload.i
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.e = add i64 %i.b, %.sroa.0.0.copyload.i      ; 3 uses
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.j = load i64, ptr %i.g, align 8
  %i.k = select i1 %i.h, i64 15, i64 %i.j
  %.not.i.i.i = icmp ugt i64 %i.e, %i.k
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load i8, ptr %.sroa.4.0.copyload.i, align 1
  store i8 %i.m, ptr %i.l, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %.sroa.4.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef %.sroa.4.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.e, ptr %i.a, align 8
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.e
  store i8 0, ptr %i.o, align 1
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA1_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull %1, i64 noundef %i.f) ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(1) %1) #31 ; 8 uses
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.d, label %._crit_edge.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.123) #32
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = add nuw i64 %i.i, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !18

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.f
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #33 ; 2 uses
  store ptr %i.n, ptr %0, align 8
  store i64 %i.i, ptr %i.h, align 8
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.c
  %i.o = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.h, %bb.c ] ; 3 uses
  switch i64 %i.i, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRA1_KcEEEvDpOT_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.p = load i8, ptr %1, align 1
  store i8 %i.p, ptr %i.o, align 1
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRA1_KcEEEvDpOT_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 dereferenceable(1) %1, i64 %i.i, i1 false)
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRA1_KcEEEvDpOT_.exit

_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRA1_KcEEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.h, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i8 0, ptr %i.r, align 1
  store i8 1, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRA1_KcEEEvDpOT_.exit, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada3url14clear_pathnameEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.a, align 8
  store i8 0, ptr %i.c, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada14url_aggregator11copy_schemeERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN3ada14url_aggregator20update_base_hostnameESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.151, i64 noundef %i.ac, i64 noundef %i.bc) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmmSC_.exit23: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.ba)
  %i.be = sub nuw i64 %i.bc, %i.ac
  %spec.select.i.i.i22 = tail call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.be)
  %i.bf = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 noundef %i.ac, i64 noundef %spec.select.i.i.i22, ptr noundef %2, i64 noundef %.sroa.speculated.i) ; 0 uses
  %i.bg = zext i32 %i.h to i64                    ; 3 uses
  %i.bh = icmp ult i64 %1, %i.ba
  br i1 %i.bh, label %bb.p, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmmSC_.exit23
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128, i64 noundef %i.ba, i64 noundef %1) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmmSC_.exit23
  %i.bi = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bg
  br i1 %i.bj, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit30

bb.q:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.151, i64 noundef %i.bg, i64 noundef %i.bi) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit30: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 %i.ba
  %i.bl = sub nuw i64 %1, %i.ba
  %i.bm = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 noundef %i.bg, i64 noundef 0, ptr noundef nonnull %i.bk, i64 noundef %i.bl) ; 0 uses
  br label %_ZN3ada14url_aggregator18replace_and_resizeEjjSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN3ada14url_aggregator18replace_and_resizeEjjSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmmSC_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmmSC_.exit18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeEmSC_.exit30
  %i.bn = sub i32 %i.j, %i.i                      ; 2 uses
  br i1 %i.f, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZN3ada14url_aggregator18replace_and_resizeEjjSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bo = load i32, ptr %i.d, align 8
  %i.bp = zext i32 %i.bo to i64                   ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bp
  br i1 %i.bs, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.151, i64 noundef %i.bp, i64 noundef %i.br) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit: ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 noundef %i.bp, i64 noundef 0, ptr noundef nonnull @.str.158, i64 noundef 1) ; 0 uses
  %i.bv = add i32 %i.bn, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit, %_ZN3ada14url_aggregator18replace_and_resizeEjjSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.0 = phi i32 [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit ], [ %i.bn, %_ZN3ada14url_aggregator18replace_and_resizeEjjSt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 4 uses
  %i.bw = load i32, ptr %i.g, align 4
  %i.bx = add i32 %i.bw, %.0
  store i32 %i.bx, ptr %i.g, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = add i32 %i.bz, %.0
  store i32 %i.ca, ptr %i.by, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8            ; 2 uses
  %.not = icmp eq i32 %i.cc, -1
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = add i32 %i.cc, %.0
  store i32 %i.cd, ptr %i.cb, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4            ; 2 uses
  %.not10 = icmp eq i32 %i.cf, -1
  br i1 %.not10, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = add i32 %i.cf, %.0
  store i32 %i.cg, ptr %i.ce, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %1, ptr %2, i1 noundef zeroext %3) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  br label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %2, align 1
  %i.d = icmp eq i8 %i.c, 45
  br i1 %i.d, label %bb.c, label %.lr.ph.i37.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.e, align 8
  br label %_ZN3ada14url_aggregator10clear_portEv.exit

.lr.ph.i37.i.preheader:                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 6 uses
  %i.g = ptrtoint ptr %2 to i64                   ; 5 uses
  br label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %.lr.ph.i37.i.preheader, %.critedge.i38.i
  %.368.i = phi ptr [ %i.aa, %.critedge.i38.i ], [ %2, %.lr.ph.i37.i.preheader ] ; 4 uses
  %.9.i = phi i32 [ %.10.i, %.critedge.i38.i ], [ 0, %.lr.ph.i37.i.preheader ] ; 3 uses
  %.02338.i.i = phi i32 [ %i.k, %.critedge.i38.i ], [ 32, %.lr.ph.i37.i.preheader ]
  %i.h = load i8, ptr %.368.i, align 1
  %i.i = add i8 %i.h, -48                         ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %.not31.i.i = icmp ult i8 %i.i, 10
  br i1 %.not31.i.i, label %bb.d, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i

bb.d:                                             ; preds = %.lr.ph.i37.i
  %i.k = add i32 %.02338.i.i, -4                  ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.f, !prof !111

bb.e:                                             ; preds = %bb.d
  %i.m = mul i32 %.9.i, 10
  %i.n = add i32 %i.m, %i.j
  br label %.critedge.i38.i

bb.f:                                             ; preds = %bb.d
  %i.o = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.9.i, i32 10) ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, label %bb.g, !prof !112

bb.g:                                             ; preds = %bb.f
  %i.q = extractvalue { i32, i1 } %i.o, 0
  %i.r = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.q, i32 %i.j) ; 2 uses
  %i.s = extractvalue { i32, i1 } %i.r, 1
  %i.t = extractvalue { i32, i1 } %i.r, 0
  br i1 %i.s, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, label %.critedge.i38.i, !prof !18

_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i: ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.368.i, i64 1 ; 2 uses
  %.not32.i.i64 = icmp eq ptr %i.u, %i.f
  br i1 %.not32.i.i64, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, label %.lr.ph

_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i: ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %.not32.i.i = icmp eq ptr %i.v, %i.f
  br i1 %.not32.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, label %.lr.ph, !llvm.loop !113

.lr.ph:                                           ; preds = %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i
  %i.w = phi ptr [ %i.v, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i ], [ %i.u, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i ] ; 3 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = add i8 %i.x, -48
  %i.z = icmp ult i8 %i.y, 10
  br i1 %i.z, label %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i, label %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge, !llvm.loop !113

.critedge.i38.i:                                  ; preds = %bb.g, %bb.e
  %.10.i = phi i32 [ %i.n, %bb.e ], [ %i.t, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.368.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.f
  br i1 %.not.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i, label %.lr.ph.i37.i, !llvm.loop !114

._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge: ; preds = %.lr.ph
  br label %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, !llvm.loop !113

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i: ; preds = %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i, %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i
  %.065.ph.i = phi ptr [ %i.w, %._ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i_crit_edge ], [ %i.f, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.preheader.i.i ], [ %i.f, %_ZNSt8__detail15__raise_and_addIjEEbRT_ih.exit.i.i ]
  %i.ab = icmp eq ptr %.065.ph.i, %2
  br i1 %i.ab, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, !prof !115

_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i: ; preds = %.critedge.i38.i, %.lr.ph.i37.i
  %.065.i = phi ptr [ %.368.i, %.lr.ph.i37.i ], [ %i.f, %.critedge.i38.i ] ; 2 uses
  %.0.i = phi i32 [ %.9.i, %.lr.ph.i37.i ], [ %.10.i, %.critedge.i38.i ] ; 2 uses
  %.not = icmp eq ptr %.065.i, %2
  br i1 %.not, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33, label %bb.h, !prof !116

bb.h:                                             ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i
  %i.ac = icmp ugt i32 %.0.i, 65535
  br i1 %i.ac, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = trunc nuw i32 %.0.i to i16
  %.pre47 = ptrtoint ptr %.065.i to i64
  br label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33

_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ae, align 8
  br label %_ZN3ada14url_aggregator10clear_portEv.exit

_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33: ; preds = %.thread, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i, %bb.i
  %i.af = phi i64 [ %i.g, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.b, %.thread ], [ %i.g, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.g, %bb.i ]
  %.pre-phi = phi i64 [ %i.g, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.b, %.thread ], [ %i.g, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %.pre47, %bb.i ]
  %i.ag = phi i1 [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ false, %.thread ], [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ true, %bb.i ]
  %.02639 = phi i16 [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ 0, %.thread ], [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.ad, %bb.i ] ; 3 uses
  %i.ah = sub i64 %.pre-phi, %i.af                ; 7 uses
  br i1 %3, label %bb.j, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33._crit_edge

_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33._crit_edge: ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !73
  %4 = trunc nuw i8 %.pre to i1
  br i1 %4, label %bb.n, label %_ZN3ada14url_aggregator10clear_portEv.exit

bb.j:                                             ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33
  %i.ai = icmp eq i64 %i.ah, %1
  br i1 %i.ai, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1             ; 2 uses
  switch i8 %i.ak, label %bb.l [
    i8 47, label %bb.m
    i8 63, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.am = load i8, ptr %i.al, align 1
  %5 = icmp ne i8 %i.am, 1
  %.not44 = icmp eq i8 %i.ak, 92
  %spec.select44 = and i1 %.not44, %5
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.k, %bb.l
  %6 = phi i1 [ true, %bb.k ], [ true, %bb.k ], [ true, %bb.j ], [ %spec.select44, %bb.l ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !range !73, !noundef !74
  %7 = trunc nuw i8 %i.ao to i1
  %8 = and i1 %6, %7                              ; 2 uses
  %9 = zext i1 %8 to i8
  store i8 %9, ptr %i.an, align 8
  br i1 %8, label %bb.n, label %_ZN3ada14url_aggregator10clear_portEv.exit

bb.n:                                             ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33._crit_edge, %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i64                    ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr @_ZN3ada6scheme7detailsL13special_portsE, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2
  %i.au = lshr i64 194, %i.ar
  %i.av = trunc i64 %i.au to i1
  %i.aw = icmp eq i16 %.02639, 0
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  %i.ax = icmp ne i16 %i.at, %.02639
  %spec.select = select i1 %or.cond, i1 true, i1 %i.ax
  %or.cond4 = select i1 %i.ag, i1 %spec.select, i1 false
  br i1 %or.cond4, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ay = zext i16 %.02639 to i32
  tail call void @_ZN3ada14url_aggregator16update_base_portEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.ay)
  br label %_ZN3ada14url_aggregator10clear_portEv.exit

bb.p:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %_ZN3ada14url_aggregator10clear_portEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4            ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bf = load i32, ptr %i.be, align 4            ; 3 uses
  %i.bg = sub i32 %i.bd, %i.bf                    ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = zext i32 %i.bf to i64                   ; 6 uses
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8            ; 6 uses
  %i.bm = icmp ult i64 %i.bl, %i.bi
  br i1 %i.bm, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.163, i64 noundef %i.bi, i64 noundef %i.bl) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.q
  %cond.i = icmp eq i32 %i.bd, %i.bf
  br i1 %cond.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bn = sub i64 %i.bl, %i.bi
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bn) ; 3 uses
  %i.bo = add nuw nsw i64 %spec.select.i.i.i, %i.bi ; 2 uses
  %i.bp = icmp ne i64 %i.bl, %i.bo
  %i.bq = icmp ne i64 %i.bl, %i.bi
  %or.cond.i.i.i = and i1 %i.bq, %i.bp
  br i1 %or.cond.i.i.i, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.br = sub i64 %i.bl, %i.bo                    ; 2 uses
  %i.bs = load ptr, ptr %i.bh, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bi ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %spec.select.i.i.i ; 2 uses
  switch i64 %i.br, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i
  ]

bb.u:                                             ; preds = %bb.t
  %i.bv = load i8, ptr %i.bu, align 1
  store i8 %i.bv, ptr %i.bt, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bt, ptr nonnull align 1 %i.bu, i64 %i.br, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.bw = load i64, ptr %i.bk, align 8
  %i.bx = sub i64 %i.bw, %spec.select.i.i.i       ; 2 uses
  store i64 %i.bx, ptr %i.bk, align 8
  %i.by = load ptr, ptr %i.bh, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  store i8 0, ptr %i.bz, align 1
  %.pre.i = load i32, ptr %i.bc, align 4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ca = phi i32 [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm.exit.i.i ]
  %i.cb = sub i32 %i.ca, %i.bg
  store i32 %i.cb, ptr %i.bc, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8            ; 2 uses
  %.not.i = icmp eq i32 %i.cd, -1
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i
  %i.ce = sub i32 %i.cd, %i.bg
  store i32 %i.ce, ptr %i.cc, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  %.not5.i = icmp eq i32 %i.cg, -1
  br i1 %.not5.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = sub i32 %i.cg, %i.bg
  store i32 %i.ch, ptr %i.cf, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  store i32 -1, ptr %i.az, align 8
  br label %_ZN3ada14url_aggregator10clear_portEv.exit

_ZN3ada14url_aggregator10clear_portEv.exit:       ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33._crit_edge, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, %bb.o, %bb.m, %bb.p, %bb.z, %bb.c
  %.1 = phi i64 [ 0, %bb.c ], [ 0, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread ], [ %i.ah, %bb.o ], [ %i.ah, %bb.m ], [ %i.ah, %bb.p ], [ %i.ah, %bb.z ], [ %i.ah, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33._crit_edge ]
  ret i64 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada14url_aggregator21consume_prepared_pathESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %1, ptr %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 62 uses
  %4 = alloca %"class.std::__cxx11::basic_string.4", align 8 ; 8 uses
  %i.a = icmp ugt i64 %1, 7
  br i1 %i.a, label %.lr.ph, label %.preheader379

.preheader379.loopexit:                           ; preds = %.lr.ph
  %i.b = and i64 %1, -8
  br label %.preheader379

.preheader379:                                    ; preds = %.preheader379.loopexit, %bb.a
  %.016.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.b, %.preheader379.loopexit ] ; 4 uses
  %.0.i.lcssa = phi i8 [ 0, %bb.a ], [ %i.bi, %.preheader379.loopexit ] ; 3 uses
  %i.c = icmp ult i64 %.016.i.lcssa, %1
  br i1 %i.c, label %.lr.ph395.preheader, label %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit

.lr.ph395.preheader:                              ; preds = %.preheader379
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph395.prol.loopexit, label %.lr.ph395.prol

.lr.ph395.prol:                                   ; preds = %.lr.ph395.preheader, %.lr.ph395.prol
  %.1.i101.fr394.prol = phi i8 [ %i.i, %.lr.ph395.prol ], [ %.0.i.lcssa, %.lr.ph395.preheader ]
  %.117.i393.prol = phi i64 [ %i.j, %.lr.ph395.prol ], [ %.016.i.lcssa, %.lr.ph395.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph395.prol ], [ 0, %.lr.ph395.preheader ]
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.117.i393.prol
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  %.fr.prol = freeze i8 %i.h
  %i.i = or i8 %.fr.prol, %.1.i101.fr394.prol     ; 3 uses
  %i.j = add nuw i64 %.117.i393.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph395.prol.loopexit, label %.lr.ph395.prol, !llvm.loop !247

.lr.ph395.prol.loopexit:                          ; preds = %.lr.ph395.prol, %.lr.ph395.preheader
  %.lcssa519.unr = phi i8 [ poison, %.lr.ph395.preheader ], [ %i.i, %.lr.ph395.prol ]
  %.1.i101.fr394.unr = phi i8 [ %.0.i.lcssa, %.lr.ph395.preheader ], [ %i.i, %.lr.ph395.prol ]
  %.117.i393.unr = phi i64 [ %.016.i.lcssa, %.lr.ph395.preheader ], [ %i.j, %.lr.ph395.prol ]
  %i.k = sub i64 %.016.i.lcssa, %1
  %i.l = icmp ugt i64 %i.k, -4
  br i1 %i.l, label %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph395

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i390 = phi i8 [ %i.bi, %.lr.ph ], [ 0, %bb.a ]
  %.016.i389 = phi i64 [ %i.bj, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.016.i389 ; 8 uses
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 7
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = or i8 %i.q, %.0.i390
  %i.bb = or i8 %i.ba, %i.v
  %i.bc = or i8 %i.bb, %i.aa
  %i.bd = or i8 %i.bc, %i.af
  %i.be = or i8 %i.bd, %i.ak
  %i.bf = or i8 %i.be, %i.ap
  %i.bg = or i8 %i.bf, %i.au
  %i.bh = or i8 %i.bg, %i.az
  %i.bi = freeze i8 %i.bh                         ; 2 uses
  %i.bj = add nuw i64 %.016.i389, 8               ; 2 uses
  %i.bk = or disjoint i64 %i.bj, 7
  %i.bl = icmp ult i64 %i.bk, %1
  br i1 %i.bl, label %.lr.ph, label %.preheader379.loopexit, !llvm.loop !118

.lr.ph395:                                        ; preds = %.lr.ph395.prol.loopexit, %.lr.ph395
  %.1.i101.fr394 = phi i8 [ %i.cm, %.lr.ph395 ], [ %.1.i101.fr394.unr, %.lr.ph395.prol.loopexit ]
  %.117.i393 = phi i64 [ %i.cn, %.lr.ph395 ], [ %.117.i393.unr, %.lr.ph395.prol.loopexit ] ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %.117.i393
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1
  %.fr = freeze i8 %i.bq
  %i.br = or i8 %.fr, %.1.i101.fr394
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 %.117.i393
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %.fr.1 = freeze i8 %i.bx
  %i.by = or i8 %.fr.1, %i.br
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %.117.i393
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %.fr.2 = freeze i8 %i.ce
  %i.cf = or i8 %.fr.2, %i.by
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 %.117.i393
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 3
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @_ZN3ada8checkersL20path_signature_tableE, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1
  %.fr.3 = freeze i8 %i.cl
  %i.cm = or i8 %.fr.3, %i.cf                     ; 2 uses
  %i.cn = add nuw i64 %.117.i393, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cn, %1
  br i1 %exitcond.not.3, label %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph395, !llvm.loop !119

_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph395.prol.loopexit, %.lr.ph395, %.preheader379
  %.1.i101.fr.lcssa = phi i8 [ %.0.i.lcssa, %.preheader379 ], [ %.lcssa519.unr, %.lr.ph395.prol.loopexit ], [ %i.cm, %.lr.ph395 ] ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 3 uses
  %i.cp = load i8, ptr %i.co, align 1             ; 3 uses
  %.not = icmp eq i8 %i.cp, 1                     ; 2 uses
  %i.cq = icmp eq i8 %i.cp, 6
  br i1 %i.cq, label %bb.b, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.b:                                             ; preds = %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cr = icmp ugt i64 %1, 1
  br i1 %i.cr, label %bb.c, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.cs = load i8, ptr %2, align 1
  %i.ct = or i8 %i.cs, 32
  %i.cu = add i8 %i.ct, -97
  %spec.select.i.i = icmp ult i8 %i.cu, 26
  br i1 %spec.select.i.i, label %bb.d, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cw = load i8, ptr %i.cv, align 1
  switch i8 %i.cw, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread [
    i8 58, label %bb.e
    i8 124, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.cx = icmp eq i64 %1, 2
  br i1 %i.cx, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cz = load i8, ptr %i.cy, align 1
  %switch.tableidx = add i8 %i.cz, -35            ; 2 uses
  %i.da = icmp ult i8 %switch.tableidx, 58
  br i1 %i.da, label %switch.lookup, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN3ada8checkers14path_signatureESt17basic_string_viewIcSt11char_traitsIcEE.exit
  br i1 %.not, label %bb.g, label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

switch.lookup:                                    ; preds = %bb.f
  %switch.cast = zext nneg i8 %switch.tableidx to i58
  %switch.downshift = lshr i58 -144115187807416319, %switch.cast
  %switch.masked = trunc i58 %switch.downshift to i1
  br label %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.f, %switch.lookup, %bb.b, %bb.c, %bb.d, %bb.e, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.db = phi i1 [ false, %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %switch.masked, %switch.lookup ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.f ] ; 2 uses
  %i.dc = icmp eq i8 %.1.i101.fr.lcssa, 0
  br i1 %i.dc, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_ZN3ada8checkers23is_windows_drive_letterESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.dd = and i8 %.1.i101.fr.lcssa, 13
  %i.de = icmp eq i8 %i.dd, 0
end_hunk_7
