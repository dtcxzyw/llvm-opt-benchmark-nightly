Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/fptostring?download=true
inline.NumInlined: 309
inline.NumDeleted: 181
begin_hunk_0_@llvm.lifetime.start.p0
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML10FpToStringB5cxx11Efm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, float noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %2 to i32
  tail call void @_ZN4YAML6detail13fp_formatting10FpToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_i(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, float noundef %1, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4YAML6detail13fp_formatting10FpToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_i(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, float noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %4 = alloca %"class.std::locale", align 8       ; 2 uses
  %5 = alloca %"struct.std::array", align 1       ; 19 uses
  %i.b = ptrtoaddr ptr %5 to i64                  ; 2 uses
  %6 = alloca %"struct.std::array.0", align 1     ; 10 uses
  %7 = alloca %"struct.std::array", align 2       ; 9 uses
  %i.c = icmp eq i32 %2, 0
  %i.d = select i1 %i.c, i32 6, i32 %2            ; 9 uses
  %or.cond180 = tail call i1 @llvm.is.fpclass.f32(float %1, /* (nan inf zero) */ i32 615)
  br i1 %or.cond180, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.e = load ptr, ptr %3, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.g
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %4, ptr noundef nonnull align 8 dereferenceable(264) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #11
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = fpext float %1 to double
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, double noundef %i.k)
          to label %_ZNSolsEf.exit unwind label %bb.h ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !17, !alias.scope !43
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !20, !alias.scope !43
  store i8 0, ptr %i.m, align 8, !tbaa !10, !alias.scope !43
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24, !noalias !43 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !noalias !43 ; 2 uses
  %i.s = icmp ugt ptr %i.p, %i.r
  %.08.i.i.i = select i1 %i.s, ptr %i.p, ptr %i.r ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSolsEf.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25, !noalias !43 ; 2 uses
  %i.v = ptrtoint ptr %.08.i.i.i to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.u, i64 noundef %i.x)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !26, !alias.scope !43 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.m
  br i1 %i.ab, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.aa) #12
  br label %.body

bb.g:                                             ; preds = %_ZNSolsEf.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  %i.ad = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ad, ptr %3, align 8, !tbaa !13
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %3, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !13
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aj, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.al) #12
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aj, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #11
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ap, ptr %3, align 8, !tbaa !13
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %3, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.av) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.z

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.z, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.aa

bb.i:                                             ; preds = %bb.a
  %i.ax = bitcast float %1 to i32                 ; 2 uses
  %i.ay = lshr i32 %i.ax, 23
  %i.az = and i32 %i.ay, 255
  %i.ba = and i32 %i.ax, -2139095041
  %i.bb = tail call { i64, i8 } @_ZN4YAML3jkj9dragonbox6detail4implINS1_21ieee754_binary_traitsINS1_16ieee754_binary32EjiEEE15compute_nearestINS1_6policy4sign13return_sign_tENS9_13trailing_zero8remove_tENS9_26decimal_to_binary_rounding17nearest_to_even_tENS9_26binary_to_decimal_rounding9to_even_tENS9_5cache6full_tENS9_23preferred_integer_types7match_tEEENS1_10decimal_fpIjNT4_21decimal_exponent_typeIS6_XcviclL_ZNS7_3minEiiEngL_ZNS7_5max_kEEL_ZNS7_5min_kEEEEXcviclL_ZNS7_3maxEiiEL_ZNS7_5max_kEEplplngL_ZNS7_5min_kEEL_ZNS7_5kappaEELi1EEEEEXsrT_15return_has_signEXsrT0_21report_trailing_zerosEEENS1_23signed_significand_bitsIS6_EEi(i32 %i.ba, i32 noundef %i.az) #11 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.bb, 0 ; 3 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.bb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.bd = and i64 %.fca.0.extract, 4294967295     ; 3 uses
  %.not33.i = icmp eq i64 %i.bd, 0
  br i1 %.not33.i, label %.lr.ph37.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.be = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %bb.j

.lr.ph37.preheader.i:                             ; preds = %bb.i
  %scevgep.i = getelementptr inbounds nuw i8, ptr %5, i64 19
  store i8 48, ptr %scevgep.i, align 1
  br label %bb.j

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.i ] ; 2 uses
  %.02634.i = phi i64 [ %i.bi, %.lr.ph.i ], [ %i.bd, %bb.i ] ; 3 uses
  %i.bf = urem i64 %.02634.i, 10
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  %i.bh = or disjoint i8 %i.bg, 48
  %i.bi = udiv i64 %.02634.i, 10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bj = xor i64 %indvars.iv.i, -1
  %i.bk = getelementptr inbounds i8, ptr %i.bc, i64 %i.bj
  store i8 %i.bh, ptr %i.bk, align 1, !tbaa !10
  %.not.i = icmp samesign ult i64 %.02634.i, 10
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !0

bb.j:                                             ; preds = %.lr.ph37.preheader.i, %.preheader.i
  %.pre-phi.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 1, %.lr.ph37.preheader.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %i.be, %.preheader.i ], [ 1, %.lr.ph37.preheader.i ] ; 3 uses
  %i.bl = sub nsw i64 0, %.pre-phi.i
  %i.bm = getelementptr inbounds i8, ptr %i.bc, i64 %i.bl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.bm, i64 %.pre-phi.i, i1 false)
  %i.bn = icmp sgt i32 %.1.lcssa.i, %i.d
  br i1 %i.bn, label %bb.k, label %.loopexit184

bb.k:                                             ; preds = %bb.j
  %.sroa.054.4.extract.shift = lshr i64 %.fca.0.extract, 32
  %.sroa.054.4.extract.trunc = trunc nuw i64 %.sroa.054.4.extract.shift to i32
  %i.bo = sub i32 %.sroa.054.4.extract.trunc, %i.d
  %i.bp = add i32 %i.bo, %.1.lcssa.i
  %.sroa.054.4.insert.ext = zext i32 %i.bp to i64
  %.sroa.054.4.insert.shift = shl nuw i64 %.sroa.054.4.insert.ext, 32 ; 2 uses
  %.sroa.054.4.insert.insert = or disjoint i64 %.sroa.054.4.insert.shift, %i.bd ; 2 uses
  %i.bq = sext i32 %i.d to i64
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !10
  %i.bt = icmp sgt i8 %i.bs, 52
  br i1 %i.bt, label %bb.l, label %.loopexit184

bb.l:                                             ; preds = %bb.k
  %i.bu = add nsw i32 %i.d, -1
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !10
  %i.by = add i8 %i.bx, 1                         ; 2 uses
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !10
  %i.bz = icmp eq i8 %i.by, 58
  br i1 %i.bz, label %.lr.ph.preheader, label %.loopexit184

.lr.ph.preheader:                                 ; preds = %bb.l
  %.sroa.054.4.insert.ext59262 = add i64 %.sroa.054.4.insert.shift, 4294967296 ; 2 uses
  %i.ca = icmp sgt i32 %i.d, 1
  br i1 %i.ca, label %.lr.ph266, label %.lr.ph._crit_edge

.lr.ph:                                           ; preds = %.lr.ph266
  %8 = and i64 %.sroa.054.4.insert.ext59265, -4294967296
  %.sroa.054.4.insert.ext59 = add i64 %8, 4294967296 ; 2 uses
  %i.cb = icmp sgt i64 %indvars.iv263, 1
  br i1 %i.cb, label %.lr.ph266, label %.lr.ph._crit_edge, !llvm.loop !37

.lr.ph266:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.054.4.insert.ext59265 = phi i64 [ %.sroa.054.4.insert.ext59, %.lr.ph ], [ %.sroa.054.4.insert.ext59262, %.lr.ph.preheader ] ; 2 uses
  %.0173188264 = phi i32 [ %i.cc, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %indvars.iv263 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.bv, %.lr.ph.preheader ] ; 2 uses
  %i.cc = add nsw i32 %.0173188264, -1            ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv263, -1 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !10
  %i.cf = add i8 %i.ce, 1                         ; 2 uses
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !10
  %i.cg = icmp eq i8 %i.cf, 58
  br i1 %i.cg, label %.lr.ph, label %.loopexit184, !llvm.loop !37

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.054.4.insert.ext59.lcssa = phi i64 [ %.sroa.054.4.insert.ext59262, %.lr.ph.preheader ], [ %.sroa.054.4.insert.ext59, %.lr.ph ]
  store i8 49, ptr %5, align 1, !tbaa !10
  br label %.loopexit184

.loopexit184:                                     ; preds = %.lr.ph266, %bb.l, %bb.k, %.lr.ph._crit_edge, %bb.j
  %.1174 = phi i32 [ 1, %.lr.ph._crit_edge ], [ %.1.lcssa.i, %bb.j ], [ %i.d, %bb.k ], [ %i.d, %bb.l ], [ %i.cc, %.lr.ph266 ] ; 7 uses
  %.sroa.054.3 = phi i64 [ %.sroa.054.4.insert.ext59.lcssa, %.lr.ph._crit_edge ], [ %.fca.0.extract, %bb.j ], [ %.sroa.054.4.insert.insert, %bb.k ], [ %.sroa.054.4.insert.insert, %bb.l ], [ %.sroa.054.4.insert.ext59265, %.lr.ph266 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ch = trunc i8 %.fca.1.extract to i1
  br i1 %i.ch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit184
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 45, ptr %6, align 1, !tbaa !10
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit184
  %.096 = phi ptr [ %i.ci, %bb.m ], [ %6, %.loopexit184 ] ; 9 uses
  %.sroa.054.4.extract.shift64 = lshr i64 %.sroa.054.3, 32
  %.sroa.054.4.extract.trunc65 = trunc nuw i64 %.sroa.054.4.extract.shift64 to i32 ; 3 uses
  %i.cj = add nsw i32 %.1174, %.sroa.054.4.extract.trunc65 ; 9 uses
  %i.ck = add nsw i32 %i.cj, -1                   ; 2 uses
  %i.cl = icmp sgt i32 %i.cj, %i.d
  %i.cm = icmp slt i32 %i.cj, -3
  %or.cond = or i1 %i.cl, %i.cm
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cn = load i8, ptr %5, align 1, !tbaa !10
  %i.co = getelementptr inbounds nuw i8, ptr %.096, i64 1 ; 2 uses
  store i8 %i.cn, ptr %.096, align 1, !tbaa !10
  %i.cp = icmp sgt i32 %.1174, 1
  br i1 %i.cp, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.o
  %i.cq = getelementptr i8, ptr %.096, i64 2
  store i8 46, ptr %i.co, align 1, !tbaa !10
  %scevgep235 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.cr = add nsw i32 %.1174, -1
  %i.cs = zext nneg i32 %i.cr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr nonnull align 1 %scevgep235, i64 %i.cs, i1 false), !tbaa !10
  %narrow252 = add nuw i32 %.1174, 1
  %i.ct = zext i32 %narrow252 to i64
  %scevgep238 = getelementptr i8, ptr %.096, i64 %i.ct
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.o
  %.298 = phi ptr [ %i.co, %bb.o ], [ %scevgep238, %.loopexit.loopexit ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.298, i64 1
  store i8 101, ptr %.298, align 1, !tbaa !10
  %i.cv = icmp sgt i32 %i.cj, 0
  %i.cw = select i1 %i.cv, i8 43, i8 45
  %i.cx = getelementptr i8, ptr %.298, i64 2
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %.not33.i132 = icmp eq i32 %i.ck, 0
  br i1 %.not33.i132, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread, label %.lr.ph.i133.preheader

.lr.ph.i133.preheader:                            ; preds = %.loopexit
  %i.cz = tail call i32 @llvm.abs.i32(i32 %i.ck, i1 true)
  %i.da = zext nneg i32 %i.cz to i64
  br label %.lr.ph.i133

.preheader.i139:                                  ; preds = %.lr.ph.i133
  %i.db = icmp eq i64 %indvars.iv.i134, 0
  br i1 %i.db, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149

_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread: ; preds = %.preheader.i139, %.loopexit
  %.neg = phi i64 [ 1, %.preheader.i139 ], [ 2, %.loopexit ]
  %scevgep.i144 = getelementptr inbounds nuw i8, ptr %7, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i144, i8 48, i64 %.neg, i1 false), !tbaa !10
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 18
  %i.dd = load i16, ptr %i.dc, align 2
  store i16 %i.dd, ptr %7, align 2
  br label %.lr.ph218.preheader

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.preheader, %.lr.ph.i133
  %indvars.iv.i134 = phi i64 [ %indvars.iv.next.i136, %.lr.ph.i133 ], [ 0, %.lr.ph.i133.preheader ] ; 4 uses
  %.02634.i135 = phi i64 [ %i.dh, %.lr.ph.i133 ], [ %i.da, %.lr.ph.i133.preheader ] ; 3 uses
  %i.de = urem i64 %.02634.i135, 10
  %i.df = trunc nuw nsw i64 %i.de to i8
  %i.dg = or disjoint i8 %i.df, 48
  %i.dh = udiv i64 %.02634.i135, 10
  %indvars.iv.next.i136 = add nuw nsw i64 %indvars.iv.i134, 1 ; 3 uses
  %i.di = xor i64 %indvars.iv.i134, -1
  %i.dj = getelementptr inbounds i8, ptr %i.cy, i64 %i.di
  store i8 %i.dg, ptr %i.dj, align 1, !tbaa !10
  %.not.i137 = icmp samesign ult i64 %.02634.i135, 10
  br i1 %.not.i137, label %.preheader.i139, label %.lr.ph.i133, !llvm.loop !0

_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149: ; preds = %.preheader.i139
  %i.dk = trunc nuw nsw i64 %indvars.iv.next.i136 to i32
  %i.dl = xor i64 %indvars.iv.i134, -1
  %i.dm = getelementptr inbounds i8, ptr %i.cy, i64 %i.dl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.dm, i64 %indvars.iv.next.i136, i1 false)
  br label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread
  %.1.lcssa.i142256 = phi i32 [ 2, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread ], [ %i.dk, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149 ] ; 2 uses
  %i.dn = zext nneg i32 %.1.lcssa.i142256 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr nonnull align 2 %7, i64 %i.dn, i1 false), !tbaa !10
  %narrow253 = add nuw i32 %.1.lcssa.i142256, 2
  %i.do = zext i32 %narrow253 to i64
  %scevgep242 = getelementptr i8, ptr %.298, i64 %i.do
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.loopexit182

bb.p:                                             ; preds = %bb.n
  %i.dp = sext i32 %.1174 to i64                  ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %5, i64 %i.dp ; 2 uses
  %i.dr = icmp sgt i32 %i.cj, 0
  br i1 %i.dr, label %.preheader183, label %bb.q

.preheader183:                                    ; preds = %bb.p
  %i.ds = icmp sgt i32 %.1174, 0
  br i1 %i.ds, label %.lr.ph195.preheader, label %._crit_edge

.lr.ph195.preheader:                              ; preds = %.preheader183
  %i.dt = call i32 @llvm.umin.i32(i32 %.1174, i32 %i.cj)
  %i.du = zext nneg i32 %i.dt to i64              ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.096, ptr nonnull align 1 %5, i64 %i.du, i1 false), !tbaa !10
  %scevgep = getelementptr i8, ptr %5, i64 %i.du
  %scevgep230 = getelementptr i8, ptr %.096, i64 %i.du
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph195.preheader, %.preheader183
  %.5.lcssa = phi ptr [ %.096, %.preheader183 ], [ %scevgep230, %.lr.ph195.preheader ] ; 4 uses
  %.091.lcssa = phi ptr [ %5, %.preheader183 ], [ %scevgep, %.lr.ph195.preheader ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %.5.lcssa to i64
  %i.dy = xor i64 %i.dx, -1
  %i.dz = add i64 %i.dy, %i.dw
  %i.ea = trunc i64 %i.dz to i32                  ; 2 uses
  %i.eb = sub nsw i32 %.sroa.054.4.extract.trunc65, %i.ea
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.eb, i32 0)
  %i.ec = call i32 @llvm.smin.i32(i32 %.sroa.054.4.extract.trunc65, i32 %i.ea) ; 3 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph201.preheader, label %._crit_edge202

.lr.ph201.preheader:                              ; preds = %._crit_edge
  %i.ee = zext nneg i32 %i.ec to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.5.lcssa, i8 48, i64 %i.ee, i1 false), !tbaa !10
  %i.ef = zext nneg i32 %i.ec to i64
  %scevgep231 = getelementptr i8, ptr %.5.lcssa, i64 %i.ef
  br label %._crit_edge202

._crit_edge202:                                   ; preds = %.lr.ph201.preheader, %._crit_edge
  %.6.lcssa = phi ptr [ %.5.lcssa, %._crit_edge ], [ %scevgep231, %.lr.ph201.preheader ]
  %i.eg = zext nneg i32 %.sroa.speculated to i64
  %.pre = ptrtoaddr ptr %.091.lcssa to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %.096, i64 1
  store i8 48, ptr %.096, align 1, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge202
  %.1233.pre-phi = phi i64 [ %i.b, %bb.q ], [ %.pre, %._crit_edge202 ]
  %.7 = phi ptr [ %i.eh, %bb.q ], [ %.6.lcssa, %._crit_edge202 ] ; 4 uses
  %.094 = phi i64 [ 0, %bb.q ], [ %i.eg, %._crit_edge202 ] ; 5 uses
  %.1 = phi ptr [ %5, %bb.q ], [ %.091.lcssa, %._crit_edge202 ] ; 9 uses
  %.1269 = ptrtoaddr ptr %.1 to i64
  %.not = icmp eq ptr %.1, %i.dq
  br i1 %.not, label %.loopexit182, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 46, ptr %.7, align 1, !tbaa !10
  %.8204 = getelementptr i8, ptr %.7, i64 1       ; 2 uses
  %i.ei = icmp slt i32 %i.cj, 0
  br i1 %i.ei, label %.lr.ph208.preheader, label %.preheader

.lr.ph208.preheader:                              ; preds = %bb.s
  %i.ej = sub nsw i32 0, %i.cj
  %i.ek = zext nneg i32 %i.ej to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.8204, i8 48, i64 %i.ek, i1 false), !tbaa !10
  %narrow = sub nsw i32 1, %i.cj
  %i.el = zext nneg i32 %narrow to i64
  %scevgep232 = getelementptr i8, ptr %.7, i64 %i.el
  br label %.preheader
end_hunk_0
