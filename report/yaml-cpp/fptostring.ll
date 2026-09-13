Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/fptostring?download=true
inline.NumInlined: 309
inline.NumDeleted: 181
begin_hunk_0_@_ZN4YAML10FpToStringB5cxx11Efm
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
  br label %bb.y

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.z, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.z

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
  br label %.loopexit185

.lr.ph37.preheader.i:                             ; preds = %bb.i
  %scevgep.i = getelementptr inbounds nuw i8, ptr %5, i64 19
  store i8 48, ptr %scevgep.i, align 1
  br label %.loopexit185

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

.loopexit185:                                     ; preds = %.lr.ph37.preheader.i, %.preheader.i
  %.pre-phi.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 1, %.lr.ph37.preheader.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %i.be, %.preheader.i ], [ 1, %.lr.ph37.preheader.i ] ; 3 uses
  %i.bl = sub nsw i64 0, %.pre-phi.i
  %i.bm = getelementptr inbounds i8, ptr %i.bc, i64 %i.bl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.bm, i64 %.pre-phi.i, i1 false)
  %i.bn = icmp sgt i32 %.1.lcssa.i, %i.d
  br i1 %i.bn, label %bb.j, label %.loopexit184

bb.j:                                             ; preds = %.loopexit185
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
  br i1 %i.bt, label %bb.k, label %.loopexit184

bb.k:                                             ; preds = %bb.j
  %i.bu = add nsw i32 %i.d, -1                    ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !10
  %i.by = add i8 %i.bx, 1                         ; 2 uses
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !10
  %i.bz = icmp eq i8 %i.by, 58
  br i1 %i.bz, label %.lr.ph.preheader, label %.loopexit184

.lr.ph.preheader:                                 ; preds = %bb.k
  %.sroa.054.4.insert.ext59262 = add i64 %.sroa.054.4.insert.shift, 4294967296 ; 2 uses
  %i.ca = icmp sgt i32 %i.d, 1
  br i1 %i.ca, label %.lr.ph266, label %.lr.ph._crit_edge

.lr.ph266:                                        ; preds = %.lr.ph.preheader
  %8 = zext nneg i32 %i.bu to i64
  br label %.lr.ph266.a

.lr.ph:                                           ; preds = %.lr.ph266.a
  %i.cb = and i64 %.sroa.054.4.insert.ext59265, -4294967296
  %.sroa.054.4.insert.ext59 = add i64 %i.cb, 4294967296 ; 2 uses
  %9 = trunc nuw i64 %indvars.iv.next to i32
  %i.cc = icmp sgt i32 %9, 0
  br i1 %i.cc, label %.lr.ph266.a, label %.lr.ph._crit_edge, !llvm.loop !37

.lr.ph266.a:                                      ; preds = %.lr.ph266, %.lr.ph
  %.sroa.054.4.insert.ext59265 = phi i64 [ %.sroa.054.4.insert.ext59262, %.lr.ph266 ], [ %.sroa.054.4.insert.ext59, %.lr.ph ] ; 2 uses
  %.0173188264 = phi i32 [ %i.d, %.lr.ph266 ], [ %i.cd, %.lr.ph ]
  %indvars.iv263 = phi i64 [ %8, %.lr.ph266 ], [ %indvars.iv.next, %.lr.ph ]
  %i.cd = add nsw i32 %.0173188264, -1            ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv263, -1 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !10
  %i.cg = add i8 %i.cf, 1                         ; 2 uses
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !10
  %i.ch = icmp eq i8 %i.cg, 58
  br i1 %i.ch, label %.lr.ph, label %.loopexit184, !llvm.loop !37

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.054.4.insert.ext59.lcssa = phi i64 [ %.sroa.054.4.insert.ext59262, %.lr.ph.preheader ], [ %.sroa.054.4.insert.ext59, %.lr.ph ]
  store i8 49, ptr %5, align 1, !tbaa !10
  br label %.loopexit184

.loopexit184:                                     ; preds = %.lr.ph266.a, %bb.k, %bb.j, %.lr.ph._crit_edge, %.loopexit185
  %.1174 = phi i32 [ 1, %.lr.ph._crit_edge ], [ %.1.lcssa.i, %.loopexit185 ], [ %i.d, %bb.j ], [ %i.d, %bb.k ], [ %i.cd, %.lr.ph266.a ] ; 7 uses
  %.sroa.054.3 = phi i64 [ %.sroa.054.4.insert.ext59.lcssa, %.lr.ph._crit_edge ], [ %.fca.0.extract, %.loopexit185 ], [ %.sroa.054.4.insert.insert, %bb.j ], [ %.sroa.054.4.insert.insert, %bb.k ], [ %.sroa.054.4.insert.ext59265, %.lr.ph266.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ci = trunc i8 %.fca.1.extract to i1
  br i1 %i.ci, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit184
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 45, ptr %6, align 1, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit184
  %.096 = phi ptr [ %i.cj, %bb.l ], [ %6, %.loopexit184 ] ; 9 uses
  %.sroa.054.4.extract.shift64 = lshr i64 %.sroa.054.3, 32
  %.sroa.054.4.extract.trunc65 = trunc nuw i64 %.sroa.054.4.extract.shift64 to i32 ; 3 uses
  %i.ck = add nsw i32 %.1174, %.sroa.054.4.extract.trunc65 ; 9 uses
  %i.cl = add nsw i32 %i.ck, -1                   ; 2 uses
  %i.cm = icmp sgt i32 %i.ck, %i.d
  %i.cn = icmp slt i32 %i.ck, -3
  %or.cond = or i1 %i.cm, %i.cn
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.co = load i8, ptr %5, align 1, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %.096, i64 1 ; 2 uses
  store i8 %i.co, ptr %.096, align 1, !tbaa !10
  %i.cq = icmp sgt i32 %.1174, 1
  br i1 %i.cq, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.n
  %i.cr = getelementptr i8, ptr %.096, i64 2
  store i8 46, ptr %i.cp, align 1, !tbaa !10
  %scevgep235 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.cs = add nsw i32 %.1174, -1
  %i.ct = zext nneg i32 %i.cs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr nonnull align 1 %scevgep235, i64 %i.ct, i1 false), !tbaa !10
  %narrow252 = add nuw i32 %.1174, 1
  %i.cu = zext i32 %narrow252 to i64
  %scevgep238 = getelementptr i8, ptr %.096, i64 %i.cu
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.n
  %.298 = phi ptr [ %i.cp, %bb.n ], [ %scevgep238, %.loopexit.loopexit ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.298, i64 1
  store i8 101, ptr %.298, align 1, !tbaa !10
  %i.cw = icmp sgt i32 %i.ck, 0
  %i.cx = select i1 %i.cw, i8 43, i8 45
  %i.cy = getelementptr i8, ptr %.298, i64 2
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %.not33.i132 = icmp eq i32 %i.cl, 0
  br i1 %.not33.i132, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread, label %.lr.ph.i133.preheader

.lr.ph.i133.preheader:                            ; preds = %.loopexit
  %i.da = tail call i32 @llvm.abs.i32(i32 %i.cl, i1 true)
  %i.db = zext nneg i32 %i.da to i64
  br label %.lr.ph.i133

.preheader.i139:                                  ; preds = %.lr.ph.i133
  %i.dc = icmp eq i64 %indvars.iv.i134, 0
  br i1 %i.dc, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149

_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread: ; preds = %.preheader.i139, %.loopexit
  %.neg = phi i64 [ 1, %.preheader.i139 ], [ 2, %.loopexit ]
  %scevgep.i144 = getelementptr inbounds nuw i8, ptr %7, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i144, i8 48, i64 %.neg, i1 false), !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 18
  %i.de = load i16, ptr %i.dd, align 2
  store i16 %i.de, ptr %7, align 2
  br label %.lr.ph218.preheader

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.preheader, %.lr.ph.i133
  %indvars.iv.i134 = phi i64 [ %indvars.iv.next.i136, %.lr.ph.i133 ], [ 0, %.lr.ph.i133.preheader ] ; 4 uses
  %.02634.i135 = phi i64 [ %i.di, %.lr.ph.i133 ], [ %i.db, %.lr.ph.i133.preheader ] ; 3 uses
  %i.df = urem i64 %.02634.i135, 10
  %i.dg = trunc nuw nsw i64 %i.df to i8
  %i.dh = or disjoint i8 %i.dg, 48
  %i.di = udiv i64 %.02634.i135, 10
  %indvars.iv.next.i136 = add nuw nsw i64 %indvars.iv.i134, 1 ; 3 uses
  %i.dj = xor i64 %indvars.iv.i134, -1
  %i.dk = getelementptr inbounds i8, ptr %i.cz, i64 %i.dj
  store i8 %i.dh, ptr %i.dk, align 1, !tbaa !10
  %.not.i137 = icmp samesign ult i64 %.02634.i135, 10
  br i1 %.not.i137, label %.preheader.i139, label %.lr.ph.i133, !llvm.loop !0

_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149: ; preds = %.preheader.i139
  %i.dl = trunc nuw nsw i64 %indvars.iv.next.i136 to i32
  %i.dm = xor i64 %indvars.iv.i134, -1
  %i.dn = getelementptr inbounds i8, ptr %i.cz, i64 %i.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.dn, i64 %indvars.iv.next.i136, i1 false)
  br label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread
  %.1.lcssa.i142256 = phi i32 [ 2, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread ], [ %i.dl, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149 ] ; 2 uses
  %i.do = zext nneg i32 %.1.lcssa.i142256 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr nonnull align 2 %7, i64 %i.do, i1 false), !tbaa !10
  %narrow253 = add nuw i32 %.1.lcssa.i142256, 2
  %i.dp = zext i32 %narrow253 to i64
  %scevgep242 = getelementptr i8, ptr %.298, i64 %i.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.loopexit182

bb.o:                                             ; preds = %bb.m
  %i.dq = sext i32 %.1174 to i64                  ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %5, i64 %i.dq ; 2 uses
  %i.ds = icmp sgt i32 %i.ck, 0
  br i1 %i.ds, label %.preheader183, label %bb.p

.preheader183:                                    ; preds = %bb.o
  %i.dt = icmp sgt i32 %.1174, 0
  br i1 %i.dt, label %.lr.ph195.preheader, label %._crit_edge

.lr.ph195.preheader:                              ; preds = %.preheader183
  %i.du = call i32 @llvm.umin.i32(i32 %.1174, i32 %i.ck)
  %i.dv = zext nneg i32 %i.du to i64              ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.096, ptr nonnull align 1 %5, i64 %i.dv, i1 false), !tbaa !10
  %scevgep = getelementptr i8, ptr %5, i64 %i.dv
  %scevgep230 = getelementptr i8, ptr %.096, i64 %i.dv
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph195.preheader, %.preheader183
  %.5.lcssa = phi ptr [ %.096, %.preheader183 ], [ %scevgep230, %.lr.ph195.preheader ] ; 4 uses
  %.091.lcssa = phi ptr [ %5, %.preheader183 ], [ %scevgep, %.lr.ph195.preheader ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %.5.lcssa to i64
  %i.dz = xor i64 %i.dy, -1
  %i.ea = add i64 %i.dz, %i.dx
  %i.eb = trunc i64 %i.ea to i32                  ; 2 uses
  %i.ec = sub nsw i32 %.sroa.054.4.extract.trunc65, %i.eb
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ec, i32 0)
  %i.ed = call i32 @llvm.smin.i32(i32 %.sroa.054.4.extract.trunc65, i32 %i.eb) ; 3 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.lr.ph201.preheader, label %._crit_edge202

.lr.ph201.preheader:                              ; preds = %._crit_edge
  %i.ef = zext nneg i32 %i.ed to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.5.lcssa, i8 48, i64 %i.ef, i1 false), !tbaa !10
  %i.eg = zext nneg i32 %i.ed to i64
  %scevgep231 = getelementptr i8, ptr %.5.lcssa, i64 %i.eg
  br label %._crit_edge202

._crit_edge202:                                   ; preds = %.lr.ph201.preheader, %._crit_edge
  %.6.lcssa = phi ptr [ %.5.lcssa, %._crit_edge ], [ %scevgep231, %.lr.ph201.preheader ]
  %i.eh = zext nneg i32 %.sroa.speculated to i64
  %.pre = ptrtoaddr ptr %.091.lcssa to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ei = getelementptr inbounds nuw i8, ptr %.096, i64 1
  store i8 48, ptr %.096, align 1, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge202
  %.1233.pre-phi = phi i64 [ %i.b, %bb.p ], [ %.pre, %._crit_edge202 ]
  %.7 = phi ptr [ %i.ei, %bb.p ], [ %.6.lcssa, %._crit_edge202 ] ; 4 uses
  %.094 = phi i64 [ 0, %bb.p ], [ %i.eh, %._crit_edge202 ] ; 5 uses
  %.1 = phi ptr [ %5, %bb.p ], [ %.091.lcssa, %._crit_edge202 ] ; 9 uses
  %.1268 = ptrtoaddr ptr %.1 to i64
  %.not = icmp eq ptr %.1, %i.dr
  br i1 %.not, label %.loopexit182, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 46, ptr %.7, align 1, !tbaa !10
  %.8204 = getelementptr i8, ptr %.7, i64 1       ; 2 uses
  %i.ej = icmp slt i32 %i.ck, 0
  br i1 %i.ej, label %.lr.ph208.preheader, label %.preheader

.lr.ph208.preheader:                              ; preds = %bb.r
  %i.ek = sub nsw i32 0, %i.ck
  %i.el = zext nneg i32 %i.ek to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.8204, i8 48, i64 %i.el, i1 false), !tbaa !10
  %narrow = sub nsw i32 1, %i.ck
  %i.em = zext nneg i32 %narrow to i64
  %scevgep232 = getelementptr i8, ptr %.7, i64 %i.em
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph208.preheader, %bb.r
  %.8.lcssa = phi ptr [ %.8204, %bb.r ], [ %scevgep232, %.lr.ph208.preheader ] ; 7 uses
  %i.en = icmp ult ptr %.1, %i.dr
  br i1 %i.en, label %iter.check, label %.loopexit182

iter.check:                                       ; preds = %.preheader
  %.8.lcssa267 = ptrtoaddr ptr %.8.lcssa to i64
  %i.eo = add i64 %i.b, %i.dq
end_hunk_0
begin_hunk_1_@_ZN4YAML6detail13fp_formatting10FpToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_i:bb.a

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML10FpToStringB5cxx11Edm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %2 to i32
  tail call void @_ZN4YAML6detail13fp_formatting10FpToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_i(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4YAML6detail13fp_formatting10FpToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_i(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
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
  %or.cond175 = tail call i1 @llvm.is.fpclass.f64(double %1, /* (nan inf zero) */ i32 615)
  br i1 %or.cond175, label %bb.b, label %bb.i

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
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, double noundef %1)
          to label %_ZNSolsEd.exit unwind label %bb.h ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !17, !alias.scope !54
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !20, !alias.scope !54
  store i8 0, ptr %i.l, align 8, !tbaa !10, !alias.scope !54
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24, !noalias !54 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !noalias !54 ; 2 uses
  %i.r = icmp ugt ptr %i.o, %i.q
  %.08.i.i.i = select i1 %i.r, ptr %i.o, ptr %i.q ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSolsEd.exit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25, !noalias !54 ; 2 uses
  %i.u = ptrtoint ptr %.08.i.i.i to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.t, i64 noundef %i.w)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !26, !alias.scope !54 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.l
  br i1 %i.aa, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.z) #12
  br label %.body

bb.g:                                             ; preds = %_ZNSolsEd.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  %i.ac = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !13
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %3, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !13
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ah, ptr %i.j, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.ak) #12
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #11
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !13
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %3, i64 %i.ar
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.au) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.y

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.h ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.y, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.z

bb.i:                                             ; preds = %bb.a
  %i.aw = bitcast double %1 to i64                ; 2 uses
  %i.ax = lshr i64 %i.aw, 52
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = and i32 %i.ay, 2047
  %i.ba = and i64 %i.aw, -9218868437227405313
  %i.bb = tail call { i64, i64 } @_ZN4YAML3jkj9dragonbox6detail4implINS1_21ieee754_binary_traitsINS1_16ieee754_binary64EmiEEE15compute_nearestINS1_6policy4sign13return_sign_tENS9_13trailing_zero8remove_tENS9_26decimal_to_binary_rounding17nearest_to_even_tENS9_26binary_to_decimal_rounding9to_even_tENS9_5cache6full_tENS9_23preferred_integer_types7match_tEEENS1_10decimal_fpImNT4_21decimal_exponent_typeIS6_XcviclL_ZNS7_3minEiiEngL_ZNS7_5max_kEEL_ZNS7_5min_kEEEEXcviclL_ZNS7_3maxEiiEL_ZNS7_5max_kEEplplngL_ZNS7_5min_kEEL_ZNS7_5kappaEELi1EEEEEXsrT_15return_has_signEXsrT0_21report_trailing_zerosEEENS1_23signed_significand_bitsIS6_EEi(i64 %i.ba, i32 noundef %i.az) #11 ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0      ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bb, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %.not33.i = icmp eq i64 %i.bc, 0
  br i1 %.not33.i, label %.lr.ph37.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.bf = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.loopexit180

.lr.ph37.preheader.i:                             ; preds = %bb.i
  %scevgep.i = getelementptr inbounds nuw i8, ptr %5, i64 19
  store i8 48, ptr %scevgep.i, align 1
  br label %.loopexit180

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.i ] ; 2 uses
  %.02634.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %i.bc, %bb.i ] ; 3 uses
  %i.bg = urem i64 %.02634.i, 10
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  %i.bi = or disjoint i8 %i.bh, 48
  %i.bj = udiv i64 %.02634.i, 10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bk = xor i64 %indvars.iv.i, -1
  %i.bl = getelementptr inbounds i8, ptr %i.be, i64 %i.bk
  store i8 %i.bi, ptr %i.bl, align 1, !tbaa !10
  %.not.i = icmp ult i64 %.02634.i, 10
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !0

.loopexit180:                                     ; preds = %.lr.ph37.preheader.i, %.preheader.i
  %.pre-phi.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 1, %.lr.ph37.preheader.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %i.bf, %.preheader.i ], [ 1, %.lr.ph37.preheader.i ] ; 3 uses
  %i.bm = sub nsw i64 0, %.pre-phi.i
  %i.bn = getelementptr inbounds i8, ptr %i.be, i64 %i.bm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.bn, i64 %.pre-phi.i, i1 false)
  %i.bo = icmp sgt i32 %.1.lcssa.i, %i.d
  br i1 %i.bo, label %bb.j, label %.loopexit179

bb.j:                                             ; preds = %.loopexit180
  %.sroa.5.8.extract.trunc = trunc i64 %i.bd to i32
  %i.bp = sub i32 %.sroa.5.8.extract.trunc, %i.d
  %i.bq = add i32 %i.bp, %.1.lcssa.i
  %.sroa.5.8.insert.ext = zext i32 %i.bq to i64   ; 2 uses
  %.sroa.5.8.insert.mask = and i64 %i.bd, -4294967296 ; 2 uses
  %.sroa.5.8.insert.insert = or disjoint i64 %.sroa.5.8.insert.mask, %.sroa.5.8.insert.ext ; 2 uses
  %i.br = sext i32 %i.d to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !10
  %i.bu = icmp sgt i8 %i.bt, 52
  br i1 %i.bu, label %bb.k, label %.loopexit179

bb.k:                                             ; preds = %bb.j
  %i.bv = add nsw i32 %i.d, -1                    ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 %i.bw ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !10
  %i.bz = add i8 %i.by, 1                         ; 2 uses
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !10
  %i.ca = icmp eq i8 %i.bz, 58
  br i1 %i.ca, label %.lr.ph.preheader, label %.loopexit179

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.cb = add nuw nsw i64 %.sroa.5.8.insert.ext, 1
  %.sroa.5.8.insert.ext57257 = and i64 %i.cb, 4294967295
  %.sroa.5.8.insert.insert59259 = or disjoint i64 %.sroa.5.8.insert.ext57257, %.sroa.5.8.insert.mask ; 2 uses
  %i.cc = icmp sgt i32 %i.d, 1
  br i1 %i.cc, label %.lr.ph263, label %.lr.ph._crit_edge

.lr.ph263:                                        ; preds = %.lr.ph.preheader
  %8 = zext nneg i32 %i.bv to i64
  br label %.lr.ph263.a

.lr.ph:                                           ; preds = %.lr.ph263.a
  %i.cd = add i64 %.sroa.5.8.insert.insert59262, 1
  %.sroa.5.8.insert.ext57 = and i64 %i.cd, 4294967295
  %.sroa.5.8.insert.mask58 = and i64 %.sroa.5.8.insert.insert59262, -4294967296
  %.sroa.5.8.insert.insert59 = or disjoint i64 %.sroa.5.8.insert.ext57, %.sroa.5.8.insert.mask58 ; 2 uses
  %9 = trunc nuw i64 %indvars.iv.next to i32
  %i.ce = icmp sgt i32 %9, 0
  br i1 %i.ce, label %.lr.ph263.a, label %.lr.ph._crit_edge, !llvm.loop !48

.lr.ph263.a:                                      ; preds = %.lr.ph263, %.lr.ph
  %.sroa.5.8.insert.insert59262 = phi i64 [ %.sroa.5.8.insert.insert59259, %.lr.ph263 ], [ %.sroa.5.8.insert.insert59, %.lr.ph ] ; 3 uses
  %.0168183261 = phi i32 [ %i.d, %.lr.ph263 ], [ %i.cf, %.lr.ph ]
  %indvars.iv260 = phi i64 [ %8, %.lr.ph263 ], [ %indvars.iv.next, %.lr.ph ]
  %i.cf = add nsw i32 %.0168183261, -1            ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv260, -1 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !10
  %i.ci = add i8 %i.ch, 1                         ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !10
  %i.cj = icmp eq i8 %i.ci, 58
  br i1 %i.cj, label %.lr.ph, label %.loopexit179, !llvm.loop !48

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.5.8.insert.insert59.lcssa = phi i64 [ %.sroa.5.8.insert.insert59259, %.lr.ph.preheader ], [ %.sroa.5.8.insert.insert59, %.lr.ph ]
  store i8 49, ptr %5, align 1, !tbaa !10
  br label %.loopexit179

.loopexit179:                                     ; preds = %.lr.ph263.a, %bb.k, %bb.j, %.lr.ph._crit_edge, %.loopexit180
  %.1169 = phi i32 [ 1, %.lr.ph._crit_edge ], [ %.1.lcssa.i, %.loopexit180 ], [ %i.d, %bb.j ], [ %i.d, %bb.k ], [ %i.cf, %.lr.ph263.a ] ; 7 uses
  %.sroa.5.3 = phi i64 [ %.sroa.5.8.insert.insert59.lcssa, %.lr.ph._crit_edge ], [ %i.bd, %.loopexit180 ], [ %.sroa.5.8.insert.insert, %bb.j ], [ %.sroa.5.8.insert.insert, %bb.k ], [ %.sroa.5.8.insert.insert59262, %.lr.ph263.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ck = and i64 %.sroa.5.3, 4294967296
  %.not = icmp eq i64 %i.ck, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit179
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 45, ptr %6, align 1, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit179
  %.090 = phi ptr [ %i.cl, %bb.l ], [ %6, %.loopexit179 ] ; 9 uses
  %.sroa.5.8.extract.trunc61 = trunc i64 %.sroa.5.3 to i32 ; 3 uses
  %i.cm = add nsw i32 %.1169, %.sroa.5.8.extract.trunc61 ; 9 uses
  %i.cn = add nsw i32 %i.cm, -1                   ; 2 uses
  %i.co = icmp sgt i32 %i.cm, %i.d
  %i.cp = icmp slt i32 %i.cm, -3
  %or.cond = or i1 %i.co, %i.cp
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = load i8, ptr %5, align 1, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.090, i64 1 ; 2 uses
  store i8 %i.cq, ptr %.090, align 1, !tbaa !10
  %i.cs = icmp sgt i32 %.1169, 1
  br i1 %i.cs, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.n
  %i.ct = getelementptr i8, ptr %.090, i64 2
  store i8 46, ptr %i.cr, align 1, !tbaa !10
  %scevgep230 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.cu = add nsw i32 %.1169, -1
  %i.cv = zext nneg i32 %i.cu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr nonnull align 1 %scevgep230, i64 %i.cv, i1 false), !tbaa !10
  %narrow247 = add nuw i32 %.1169, 1
  %i.cw = zext i32 %narrow247 to i64
  %scevgep233 = getelementptr i8, ptr %.090, i64 %i.cw
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.n
  %.292 = phi ptr [ %i.cr, %bb.n ], [ %scevgep233, %.loopexit.loopexit ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.292, i64 1
  store i8 101, ptr %.292, align 1, !tbaa !10
  %i.cy = icmp sgt i32 %i.cm, 0
  %i.cz = select i1 %i.cy, i8 43, i8 45
  %i.da = getelementptr i8, ptr %.292, i64 2
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %.not33.i127 = icmp eq i32 %i.cn, 0
  br i1 %.not33.i127, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144.thread, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %.loopexit
  %i.dc = tail call i32 @llvm.abs.i32(i32 %i.cn, i1 true)
  %i.dd = zext nneg i32 %i.dc to i64
  br label %.lr.ph.i128

.preheader.i134:                                  ; preds = %.lr.ph.i128
  %i.de = icmp eq i64 %indvars.iv.i129, 0
  br i1 %i.de, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144.thread, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144

_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144.thread: ; preds = %.preheader.i134, %.loopexit
  %.neg = phi i64 [ 1, %.preheader.i134 ], [ 2, %.loopexit ]
  %scevgep.i139 = getelementptr inbounds nuw i8, ptr %7, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i139, i8 48, i64 %.neg, i1 false), !tbaa !10
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 18
  %i.dg = load i16, ptr %i.df, align 2
  store i16 %i.dg, ptr %7, align 2
  br label %.lr.ph213.preheader

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader, %.lr.ph.i128
  %indvars.iv.i129 = phi i64 [ %indvars.iv.next.i131, %.lr.ph.i128 ], [ 0, %.lr.ph.i128.preheader ] ; 4 uses
  %.02634.i130 = phi i64 [ %i.dk, %.lr.ph.i128 ], [ %i.dd, %.lr.ph.i128.preheader ] ; 3 uses
  %i.dh = urem i64 %.02634.i130, 10
  %i.di = trunc nuw nsw i64 %i.dh to i8
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = udiv i64 %.02634.i130, 10
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i129, 1 ; 3 uses
  %i.dl = xor i64 %indvars.iv.i129, -1
  %i.dm = getelementptr inbounds i8, ptr %i.db, i64 %i.dl
  store i8 %i.dj, ptr %i.dm, align 1, !tbaa !10
  %.not.i132 = icmp samesign ult i64 %.02634.i130, 10
  br i1 %.not.i132, label %.preheader.i134, label %.lr.ph.i128, !llvm.loop !0

_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144: ; preds = %.preheader.i134
  %i.dn = trunc nuw nsw i64 %indvars.iv.next.i131 to i32
  %i.do = xor i64 %indvars.iv.i129, -1
  %i.dp = getelementptr inbounds i8, ptr %i.db, i64 %i.do
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.dp, i64 %indvars.iv.next.i131, i1 false)
  br label %.lr.ph213.preheader

.lr.ph213.preheader:                              ; preds = %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144.thread
  %.1.lcssa.i137251 = phi i32 [ 2, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144.thread ], [ %i.dn, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144 ] ; 2 uses
  %i.dq = zext nneg i32 %.1.lcssa.i137251 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr nonnull align 2 %7, i64 %i.dq, i1 false), !tbaa !10
  %narrow248 = add nuw i32 %.1.lcssa.i137251, 2
  %i.dr = zext i32 %narrow248 to i64
  %scevgep237 = getelementptr i8, ptr %.292, i64 %i.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.loopexit177

bb.o:                                             ; preds = %bb.m
  %i.ds = sext i32 %.1169 to i64                  ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %5, i64 %i.ds ; 2 uses
  %i.du = icmp sgt i32 %i.cm, 0
  br i1 %i.du, label %.preheader178, label %bb.p

.preheader178:                                    ; preds = %bb.o
  %i.dv = icmp sgt i32 %.1169, 0
  br i1 %i.dv, label %.lr.ph190.preheader, label %._crit_edge

.lr.ph190.preheader:                              ; preds = %.preheader178
  %i.dw = call i32 @llvm.umin.i32(i32 %.1169, i32 %i.cm)
  %i.dx = zext nneg i32 %i.dw to i64              ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.090, ptr nonnull align 1 %5, i64 %i.dx, i1 false), !tbaa !10
  %scevgep = getelementptr i8, ptr %5, i64 %i.dx
  %scevgep225 = getelementptr i8, ptr %.090, i64 %i.dx
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph190.preheader, %.preheader178
  %.5.lcssa = phi ptr [ %.090, %.preheader178 ], [ %scevgep225, %.lr.ph190.preheader ] ; 4 uses
  %.085.lcssa = phi ptr [ %5, %.preheader178 ], [ %scevgep, %.lr.ph190.preheader ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.5.lcssa to i64
  %i.eb = xor i64 %i.ea, -1
  %i.ec = add i64 %i.eb, %i.dz
  %i.ed = trunc i64 %i.ec to i32                  ; 2 uses
  %i.ee = sub nsw i32 %.sroa.5.8.extract.trunc61, %i.ed
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %i.ef = call i32 @llvm.smin.i32(i32 %.sroa.5.8.extract.trunc61, i32 %i.ed) ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph196.preheader, label %._crit_edge197

.lr.ph196.preheader:                              ; preds = %._crit_edge
  %i.eh = zext nneg i32 %i.ef to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.5.lcssa, i8 48, i64 %i.eh, i1 false), !tbaa !10
  %i.ei = zext nneg i32 %i.ef to i64
  %scevgep226 = getelementptr i8, ptr %.5.lcssa, i64 %i.ei
  br label %._crit_edge197

._crit_edge197:                                   ; preds = %.lr.ph196.preheader, %._crit_edge
  %.6.lcssa = phi ptr [ %.5.lcssa, %._crit_edge ], [ %scevgep226, %.lr.ph196.preheader ]
  %i.ej = zext nneg i32 %.sroa.speculated to i64
  %.pre = ptrtoaddr ptr %.085.lcssa to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ek = getelementptr inbounds nuw i8, ptr %.090, i64 1
  store i8 48, ptr %.090, align 1, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge197
  %.1228.pre-phi = phi i64 [ %i.b, %bb.p ], [ %.pre, %._crit_edge197 ]
  %.7 = phi ptr [ %i.ek, %bb.p ], [ %.6.lcssa, %._crit_edge197 ] ; 4 uses
  %.088 = phi i64 [ 0, %bb.p ], [ %i.ej, %._crit_edge197 ] ; 5 uses
  %.1 = phi ptr [ %5, %bb.p ], [ %.085.lcssa, %._crit_edge197 ] ; 9 uses
  %.1265 = ptrtoaddr ptr %.1 to i64
  %.not106 = icmp eq ptr %.1, %i.dt
  br i1 %.not106, label %.loopexit177, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 46, ptr %.7, align 1, !tbaa !10
  %.8199 = getelementptr i8, ptr %.7, i64 1       ; 2 uses
  %i.el = icmp slt i32 %i.cm, 0
  br i1 %i.el, label %.lr.ph203.preheader, label %.preheader

.lr.ph203.preheader:                              ; preds = %bb.r
  %i.em = sub nsw i32 0, %i.cm
  %i.en = zext nneg i32 %i.em to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.8199, i8 48, i64 %i.en, i1 false), !tbaa !10
  %narrow = sub nsw i32 1, %i.cm
  %i.eo = zext nneg i32 %narrow to i64
  %scevgep227 = getelementptr i8, ptr %.7, i64 %i.eo
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph203.preheader, %bb.r
  %.8.lcssa = phi ptr [ %.8199, %bb.r ], [ %scevgep227, %.lr.ph203.preheader ] ; 7 uses
  %i.ep = icmp ult ptr %.1, %i.dt
  br i1 %i.ep, label %iter.check, label %.loopexit177

iter.check:                                       ; preds = %.preheader
  %.8.lcssa264 = ptrtoaddr ptr %.8.lcssa to i64
  %i.eq = add i64 %i.b, %i.ds
end_hunk_1
