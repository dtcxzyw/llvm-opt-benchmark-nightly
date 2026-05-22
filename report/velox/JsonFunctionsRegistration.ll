inline.NumInlined: 34235
inline.NumDeleted: 5823
begin_hunk_0_@_ZN8facebook5velox9functions17SIMDJsonExtractor14visitRecursiveIZNS1_25JsonExtractScalarFunctionINS0_4exec10VectorExecEE8callImplERNS5_12StringWriterERKNS0_10StringViewESC_EUlRT_E_EEN8simdjson10error_codeERNSG_8fallback8ondemand5valueESE_Rbm:bb.a
  %.not6.i.i.i.not = icmp eq i32 %.pre13011378, 2
  br i1 %.not6.i.i.i.not, label %.loopexit1246, label %bb.cf

bb.cc:                                            ; preds = %bb.ca
  %i.lm = load i32, ptr %i.lg, align 4, !tbaa !3
  %i.ln = zext i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw i8, ptr %.pre1300, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !26
  %i.lq = icmp eq i8 %i.lp, 58
  br i1 %i.lq, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 2 uses
  store ptr %i.lr, ptr %.sroa.0388.sroa.8.0..sroa_idx, align 8, !tbaa !1933
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc, %bb.ca
  %i.ls = add nsw i32 %.pre13011378, -1           ; 2 uses
  store i32 %i.ls, ptr %i.az, align 4, !tbaa !1947
  %.not7.i.i.i.not = icmp eq i32 %.pre13011378, 2
  br i1 %.not7.i.i.i.not, label %.loopexit1246, label %bb.cf

bb.cf:                                            ; preds = %bb.ca, %bb.ca, %bb.ca, %bb.ca, %bb.ce, %bb.cd, %bb.cb
  %.pre13011313 = phi i32 [ %.pre13011378, %bb.ca ], [ %.pre13011378, %bb.ca ], [ %.pre13011378, %bb.ca ], [ %.pre13011378, %bb.ca ], [ %i.ls, %bb.ce ], [ %.pre13011378, %bb.cd ], [ %i.ll, %bb.cb ] ; 4 uses
  %.promoted = phi ptr [ %i.lg, %bb.ca ], [ %i.lg, %bb.ca ], [ %i.lg, %bb.ca ], [ %i.lg, %bb.ca ], [ %i.lg, %bb.ce ], [ %i.lr, %bb.cd ], [ %i.lg, %bb.cb ] ; 2 uses
  %i.lt = load ptr, ptr %i.aw, align 8, !tbaa !1915
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !1937 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !1939
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lz = zext i32 %i.lx to i64
  %i.ma = load ptr, ptr %i.ly, align 8, !tbaa !852
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.lz ; 2 uses
  %i.mc = icmp ult ptr %.promoted, %i.mb
  br i1 %i.mc, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i

.lr.ph:                                           ; preds = %bb.cf, %bb.ci
  %.pre13011312 = phi i32 [ %.pre13011311, %bb.ci ], [ %.pre13011313, %bb.cf ]
  %i.md = phi ptr [ %i.mf, %bb.ci ], [ %.promoted, %bb.cf ] ; 2 uses
  %i.me = phi i32 [ %i.mm, %bb.ci ], [ %.pre13011313, %bb.cf ] ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 4 ; 4 uses
  store ptr %i.mf, ptr %.sroa.0388.sroa.8.0..sroa_idx, align 8, !tbaa !1933
  %i.mg = load i32, ptr %i.md, align 4, !tbaa !3
  %i.mh = zext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %.pre1300, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !26
  switch i8 %i.mj, label %bb.ci [
    i8 91, label %bb.cg
    i8 123, label %bb.cg
    i8 93, label %bb.ch
    i8 125, label %bb.ch
  ]

bb.cg:                                            ; preds = %.lr.ph, %.lr.ph
  %i.mk = add nsw i32 %i.me, 1                    ; 3 uses
  store i32 %i.mk, ptr %i.az, align 4, !tbaa !1947
  br label %bb.ci

bb.ch:                                            ; preds = %.lr.ph, %.lr.ph
  %i.ml = add nsw i32 %i.me, -1                   ; 3 uses
  store i32 %i.ml, ptr %i.az, align 4, !tbaa !1947
  %.not8.i.i.i = icmp sgt i32 %i.me, 2
  br i1 %.not8.i.i.i, label %bb.ci, label %.loopexit1246

bb.ci:                                            ; preds = %.lr.ph, %bb.ch, %bb.cg
  %.pre13011311 = phi i32 [ %.pre13011312, %.lr.ph ], [ %i.ml, %bb.ch ], [ %i.mk, %bb.cg ] ; 2 uses
  %i.mm = phi i32 [ %i.me, %.lr.ph ], [ %i.ml, %bb.ch ], [ %i.mk, %bb.cg ] ; 2 uses
  %i.mn = icmp ult ptr %i.mf, %i.mb
  br i1 %i.mn, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i, !llvm.loop !1992

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i: ; preds = %bb.ci, %bb.cf
  %.pre13011310 = phi i32 [ %.pre13011313, %bb.cf ], [ %.pre13011311, %bb.ci ]
  %i.mo = phi i32 [ %.pre13011313, %bb.cf ], [ %i.mm, %bb.ci ]
  store i32 3, ptr %i.ay, align 8, !tbaa !1948
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

.loopexit1246:                                    ; preds = %bb.ch, %bb.bz, %bb.cb, %bb.ce
  %i.mp = phi ptr [ %i.lg, %bb.ce ], [ %i.ld, %bb.bz ], [ %i.lg, %bb.cb ], [ %i.mf, %bb.ch ] ; 3 uses
  %i.mq = icmp ugt ptr %i.mp, %.sroa.6709.0.copyload
  call void @llvm.assume(i1 %i.mq)
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  store ptr %i.mr, ptr %.sroa.0388.sroa.8.0..sroa_idx, align 8, !tbaa !1933
  %i.ms = load i32, ptr %i.mp, align 4, !tbaa !3
  %i.mt = zext i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %.pre1300, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !26
  switch i8 %i.mv, label %bb.ck [
    i8 93, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread
    i8 44, label %bb.cj
  ]

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread: ; preds = %.loopexit1246
  store i32 0, ptr %i.az, align 4, !tbaa !1947
  br label %.thread1163

bb.cj:                                            ; preds = %.loopexit1246
  store i32 2, ptr %i.az, align 4, !tbaa !1947
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.ck:                                            ; preds = %.loopexit1246
  store i32 3, ptr %i.ay, align 8, !tbaa !1948
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit: ; preds = %bb.ck, %bb.cj, %.thread1211, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i
  %.pre13011308 = phi i32 [ 1, %bb.ck ], [ 2, %bb.cj ], [ %.pre13011310, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i ], [ %.pre1301.pre, %.thread1211 ]
  %i.mw = phi i32 [ 1, %bb.ck ], [ 2, %bb.cj ], [ %i.mo, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i ], [ %.pre1301.pre, %.thread1211 ]
  %i.mx = phi i32 [ 3, %bb.ck ], [ 0, %bb.cj ], [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i ], [ %.pre1297, %.thread1211 ]
  %i.my = icmp sgt i32 %i.mw, 0
  br i1 %i.my, label %bb.bu, label %.thread1163

bb.cl:                                            ; preds = %.critedge12
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.cm

.thread1163:                                      ; preds = %bb.w, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit, %.thread1146, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.sink.split, %bb.bo, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread, %bb.bt, %bb.bq, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.thread, %bb.av, %bb.bd, %bb.ay, %bb.ba, %.thread1039, %bb.ag, %bb.aa, %bb.ad, %bb.ae, %bb.v, %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit, %bb.bv, %bb.by, %bb.aj, %bb.at, %bb.ao, %bb.al, %bb.aq, %bb.s
  %.15 = phi i32 [ %i.cs, %bb.s ], [ %i.el, %bb.ae ], [ 0, %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit ], [ 27, %bb.v ], [ 17, %bb.av ], [ %i.ku, %bb.bv ], [ 1, %bb.aa ], [ 29, %bb.aj ], [ 28, %bb.at ], [ 28, %bb.ao ], [ 28, %bb.al ], [ 28, %bb.aq ], [ %i.ey, %.thread1039 ], [ 3, %bb.ba ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ %i.lc, %bb.by ], [ 0, %bb.bt ], [ 0, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.thread ], [ %i.er, %bb.ag ], [ %i.eg, %bb.ad ], [ %i.ii, %bb.bd ], [ %i.hm, %bb.ay ], [ 0, %bb.bo ], [ 17, %bb.bq ], [ 0, %.thread1146 ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.sink.split ], [ 27, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.cn

bb.cm:                                            ; preds = %bb.bp, %bb.cl, %bb.t
  %.pn116.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.t ], [ %i.kd, %bb.bp ], [ %i.mz, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.na = load ptr, ptr %i.g, align 8, !tbaa !730 ; 2 uses
  %.not.i.i259 = icmp eq ptr %i.na, null
  br i1 %.not.i.i259, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i260

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i260: ; preds = %bb.cm
  call void @_ZdaPv(ptr noundef nonnull %i.na) #35
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i260, %bb.cm
  %i.nb = load ptr, ptr %i.c, align 8, !tbaa !1937 ; 3 uses
  %.not.i1.i = icmp eq ptr %i.nb, null
  br i1 %.not.i1.i, label %_ZN8simdjson8fallback8ondemand6parserD2Ev.exit, label %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !115
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 72
  %i.ne = load ptr, ptr %i.nd, align 8
  call void %i.ne(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.nb) #31, !inline_history !2095
  br label %_ZN8simdjson8fallback8ondemand6parserD2Ev.exit

_ZN8simdjson8fallback8ondemand6parserD2Ev.exit:   ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i, %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %.pn116.pn.pn

bb.cn:                                            ; preds = %bb.h, %bb.r, %bb.m, %bb.j, %bb.o, %.thread1163
  %.16 = phi i32 [ %.15, %.thread1163 ], [ 29, %bb.h ], [ 28, %bb.r ], [ 28, %bb.m ], [ 28, %bb.j ], [ 28, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %_ZNK8simdjson18padded_string_view22has_sufficient_paddingEv.exit

_ZNK8simdjson18padded_string_view22has_sufficient_paddingEv.exit: ; preds = %bb.d, %_ZN8simdjson8fallback8ondemand6parser8allocateEmm.exit.thread1000, %bb.f, %_ZN8simdjson18padded_string_view15remove_utf8_bomEv.exit, %bb.c, %bb.cn
  %.17 = phi i32 [ %.16, %bb.cn ], [ 1, %_ZN8simdjson18padded_string_view15remove_utf8_bomEv.exit ], [ 27, %bb.c ], [ %i.ap, %_ZN8simdjson8fallback8ondemand6parser8allocateEmm.exit.thread1000 ], [ %i.am, %bb.f ], [ 27, %bb.d ]
  %i.nf = load ptr, ptr %i.g, align 8, !tbaa !730 ; 2 uses
  %.not.i.i261 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i261, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i263, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i262

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i262: ; preds = %_ZNK8simdjson18padded_string_view22has_sufficient_paddingEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.nf) #35
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i263

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i263: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i262, %_ZNK8simdjson18padded_string_view22has_sufficient_paddingEv.exit
  %i.ng = load ptr, ptr %i.c, align 8, !tbaa !1937 ; 3 uses
  %.not.i1.i264 = icmp eq ptr %i.ng, null
  br i1 %.not.i1.i264, label %_ZN8simdjson8fallback8ondemand6parserD2Ev.exit266, label %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i265

_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i265: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i263
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !115
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 72
  %i.nj = load ptr, ptr %i.ni, align 8
  call void %i.nj(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ng) #31, !inline_history !2095
  br label %_ZN8simdjson8fallback8ondemand6parserD2Ev.exit266

_ZN8simdjson8fallback8ondemand6parserD2Ev.exit266: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i263, %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.co

bb.co:                                            ; preds = %bb.a, %_ZN8simdjson8fallback8ondemand6parserD2Ev.exit266
  %.18 = phi i32 [ %.17, %_ZN8simdjson8fallback8ondemand6parserD2Ev.exit266 ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i32 %.18
}

declare noundef i32 @_ZN8facebook5velox9functions13extractObjectERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef i32 @_ZN8facebook5velox9functions12extractArrayERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand5valueE(ptr dead_on_unwind noalias writable sret(%"struct.simdjson::simdjson_result.1061") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.simdjson::fallback::ondemand::array", align 8 ; 6 uses
  %3 = alloca %"class.simdjson::fallback::ondemand::object", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1973   ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1975 ; 6 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !866  ; 5 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !3    ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26
  switch i8 %i.h, label %bb.l [
    i8 123, label %bb.g
    i8 91, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1933, !noalias !2096 ; 4 uses
  %i.n = icmp eq ptr %i.m, %i.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1947, !noalias !2096 ; 3 uses
  %i.q = load i32, ptr %i.k, align 8, !tbaa !1979, !noalias !2096 ; 2 uses
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.n, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.r), !noalias !2096
  %i.s = icmp sgt i32 %i.p, 0
  tail call void @llvm.assume(i1 %i.s), !noalias !2096
  %i.t = load i32, ptr %i.m, align 4, !tbaa !3, !noalias !2096
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !26, !noalias !2096
  %.not8.i.i = icmp eq i8 %i.w, 91
  br i1 %.not8.i.i, label %bb.d, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store ptr %i.x, ptr %i.l, align 8, !tbaa !1933, !noalias !2096
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.d
  %i.y = phi i32 [ %i.p, %bb.d ], [ %i.q, %bb.b ] ; 2 uses
  %i.z = phi ptr [ %i.x, %bb.d ], [ %i.m, %bb.b ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ab = icmp eq ptr %i.z, %i.aa
  tail call void @llvm.assume(i1 %i.ab), !noalias !2096
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ad = icmp sgt i32 %i.y, 0
  tail call void @llvm.assume(i1 %i.ad), !noalias !2096
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !3, !noalias !2096
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !26, !noalias !2096
  %i.ai = icmp eq i8 %i.ah, 93
  br i1 %i.ai, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit.a, label %bb.e

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit.a: ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aj, ptr %i.l, align 8, !tbaa !1933, !noalias !2096
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit.a
  %.sink = phi i32 [ -1, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit.a ], [ 1, %._crit_edge ]
  %i.ak = add nsw i32 %i.y, %.sink
  store i32 %i.ak, ptr %i.ac, align 4, !tbaa !1947, !noalias !2096
  %.sroa.077.sroa.6.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !852, !noalias !2096
  store ptr %i.a, ptr %2, align 8, !tbaa !1949
  %i.al = load <2 x i32>, ptr %i.k, align 8, !noalias !2096
  store <2 x i32> %i.al, ptr %i.i, align 8
  store ptr %.sroa.077.sroa.6.0.copyload, ptr %i.j, align 8, !tbaa !852
  call void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand5arrayE(ptr dead_on_unwind writable sret(%"struct.simdjson::simdjson_result.1061") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #31
  br label %bb.f

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit: ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 17, ptr %4, align 8, !tbaa !1964
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1933, !noalias !2099 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, %i.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !1947, !noalias !2099 ; 3 uses
  %i.au = load i32, ptr %i.ao, align 8, !tbaa !1979, !noalias !2099 ; 2 uses
  %i.av = icmp eq i32 %i.at, %i.au
  br i1 %i.ar, label %bb.h, label %._crit_edge164

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.av), !noalias !2099
  %i.aw = icmp sgt i32 %i.at, 0
  tail call void @llvm.assume(i1 %i.aw), !noalias !2099
  %i.ax = load i32, ptr %i.aq, align 4, !tbaa !3, !noalias !2099
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !26, !noalias !2099
  %.not8.i = icmp eq i8 %i.ba, 123
  br i1 %.not8.i, label %bb.i, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  store ptr %i.bb, ptr %i.ap, align 8, !tbaa !1933, !noalias !2099
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %bb.g, %bb.i
  %i.bc = phi i32 [ %i.at, %bb.i ], [ %i.au, %bb.g ] ; 4 uses
  %i.bd = phi ptr [ %i.bb, %bb.i ], [ %i.aq, %bb.g ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bf = icmp eq ptr %i.bd, %i.be
  tail call void @llvm.assume(i1 %i.bf), !noalias !2099
  %i.bg = icmp sgt i32 %i.bc, 0
  tail call void @llvm.assume(i1 %i.bg), !noalias !2099
  %i.bh = load i32, ptr %i.bd, align 4, !tbaa !3, !noalias !2099
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !26, !noalias !2099
  %i.bl = icmp eq i8 %i.bk, 125
  br i1 %i.bl, label %bb.j, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread

bb.j:                                             ; preds = %._crit_edge164
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store ptr %i.bn, ptr %i.ap, align 8, !tbaa !1933, !noalias !2099
  %i.bo = add nsw i32 %i.bc, -1
  %or.cond.i.i = icmp ne i32 %i.bc, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i), !noalias !2099
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !1947, !noalias !2099
  %.sroa.050.sroa.4.0.copyload.pre = load i32, ptr %i.ao, align 8, !tbaa !3
  br label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread

_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread: ; preds = %bb.j, %._crit_edge164
  %.sroa.050.sroa.4.0.copyload = phi i32 [ %.sroa.050.sroa.4.0.copyload.pre, %bb.j ], [ %i.bc, %._crit_edge164 ]
  %.sroa.050.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.050.sroa.5.0.copyload = load i32, ptr %.sroa.050.sroa.5.0..sroa_idx, align 4
  %.sroa.050.sroa.6.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !852
  store ptr %i.a, ptr %3, align 8, !tbaa !1949
  store i32 %.sroa.050.sroa.4.0.copyload, ptr %i.am, align 8, !tbaa !3
  %.sroa.029.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.050.sroa.5.0.copyload, ptr %.sroa.029.sroa.6.0..sroa_idx, align 4
  store ptr %.sroa.050.sroa.6.0.copyload, ptr %i.an, align 8, !tbaa !852
  call void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand6objectE(ptr dead_on_unwind writable sret(%"struct.simdjson::simdjson_result.1061") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #31
  br label %bb.k

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit: ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 17, ptr %i.bp, align 8, !tbaa !1964
  br label %bb.k

bb.k:                                             ; preds = %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3  ; 2 uses
  %i.bs = sub i32 %i.br, %i.e
  %i.bt = zext i32 %i.bs to i64                   ; 5 uses
  %.not.i26 = icmp eq i32 %i.br, %i.e
  br i1 %.not.i26, label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.l, %bb.m
  %.0710.i.i.i = phi i64 [ %i.bz, %bb.m ], [ 0, %bb.l ] ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0710.i.i.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !26  ; 2 uses
  %i.bw = zext nneg i8 %i.bv to i64
  %memchr.bounds.i = icmp ugt i8 %i.bv, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bx, 4294977024
  %memchr.bits.i = icmp eq i64 %i.by, 0
  %memchr.not.i = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr.not.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i.preheader, label %bb.m

bb.m:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.bz = add nuw nsw i64 %.0710.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bz, %i.bt
  br i1 %exitcond.not.i.i.i, label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !2012

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i.preheader: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0710.i.i.i
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i:  ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i.preheader, %bb.n
  %.1.i.i.in.i = phi i64 [ %.1.i.i.i, %bb.n ], [ %i.bt, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i.preheader ]
  %.1.i.i.i = add nsw i64 %.1.i.i.in.i, -1        ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 %.1.i.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !26  ; 2 uses
  %i.cd = zext nneg i8 %i.cc to i64
  %memchr.bounds24.i = icmp ugt i8 %i.cc, 63
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.ce, 4294977024
  %memchr.bits25.i = icmp eq i64 %i.cf, 0
  %memchr.not26.i = select i1 %memchr.bounds24.i, i1 true, i1 %memchr.bits25.i
  br i1 %memchr.not26.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i
  %.not15.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not15.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i, !llvm.loop !2013

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i: ; preds = %bb.n, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i
  %.010.i.i.i = phi i64 [ %.1.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i ], [ -1, %bb.n ]
  %i.cg = icmp samesign ugt i64 %.0710.i.i.i, %i.bt
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.206, i64 noundef %.0710.i.i.i, i64 noundef %i.bt) #36
          to label %.noexc.i unwind label %bb.q

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i
  %reass.sub = sub i64 %.010.i.i.i, %.0710.i.i.i
  %i.ch = add i64 %reass.sub, 1
  %i.ci = sub nuw nsw i64 %i.bt, %.0710.i.i.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.ch)
  br label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.q:                                             ; preds = %bb.o
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  tail call void @__clang_call_terminate(ptr %i.ck) #37
  unreachable

_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.m, %bb.l, %bb.p
  %.sroa.3.0.i = phi ptr [ %i.ca, %bb.p ], [ null, %bb.l ], [ null, %bb.m ]
  %.sroa.010.0.i = phi i64 [ %.sroa.speculated.i.i, %bb.p ], [ 0, %bb.l ], [ 0, %bb.m ]
  store i64 %.sroa.010.0.i, ptr %0, align 8, !tbaa !186
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !730
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.cl, align 8, !tbaa !1964
  br label %bb.r

bb.r:                                             ; preds = %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.k, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand5arrayE(ptr dead_on_unwind noalias writable sret(%"struct.simdjson::simdjson_result.1061") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1973, !noalias !2102 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1975, !noalias !2102
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !866, !noalias !2102 ; 4 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !3, !noalias !2102
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1979, !noalias !2102 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 6 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !1947, !noalias !2102 ; 10 uses
  %.not.i.i.not = icmp slt i32 %i.k, %i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1933, !noalias !2102 ; 4 uses
  br i1 %.not.i.i.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 4 ; 10 uses
  store ptr %i.l, ptr %.phi.trans.insert, align 8, !tbaa !1933, !noalias !2102
  %i.m = load i32, ptr %.pre, align 4, !tbaa !3, !noalias !2102
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !26, !noalias !2102
  switch i8 %i.p, label %bb.f [
    i8 91, label %bb.g
    i8 123, label %bb.g
    i8 58, label %bb.g
    i8 44, label %bb.g
    i8 93, label %bb.c
    i8 125, label %bb.c
    i8 34, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.q = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.q, ptr %i.j, align 4, !tbaa !1947, !noalias !2102
  %.not6.i.i = icmp sgt i32 %i.k, %i.i
  br i1 %.not6.i.i, label %bb.g, label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.l, align 4, !tbaa !3, !noalias !2102
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !26, !noalias !2102
  %i.v = icmp eq i8 %i.u, 58
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 2 uses
  store ptr %i.w, ptr %.phi.trans.insert, align 8, !tbaa !1933, !noalias !2102
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.x = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.x, ptr %i.j, align 4, !tbaa !1947, !noalias !2102
  %.not7.i.i = icmp sgt i32 %i.k, %i.i
  br i1 %.not7.i.i, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.f, %bb.e, %bb.c
  %i.y = phi i32 [ %i.k, %bb.b ], [ %i.k, %bb.b ], [ %i.k, %bb.b ], [ %i.k, %bb.b ], [ %i.x, %bb.f ], [ %i.k, %bb.e ], [ %i.q, %bb.c ]
  %i.z = phi ptr [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.f ], [ %i.w, %bb.e ], [ %i.l, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1915, !noalias !2102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1937, !noalias !2102 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1939, !noalias !2102
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ah = zext i32 %i.af to i64                   ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !852, !noalias !2102
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = icmp ult ptr %i.z, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %bb.j
  %i.al = phi i32 [ %i.au, %bb.j ], [ %i.y, %bb.g ] ; 4 uses
  %i.am = phi ptr [ %i.an, %bb.j ], [ %i.z, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 4 uses
  store ptr %i.an, ptr %.phi.trans.insert, align 8, !tbaa !1933, !noalias !2102
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !2102
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !26, !noalias !2102
  switch i8 %i.ar, label %bb.j [
    i8 91, label %bb.h
    i8 123, label %bb.h
    i8 93, label %bb.i
    i8 125, label %bb.i
  ]

bb.h:                                             ; preds = %.lr.ph, %.lr.ph
  %i.as = add nsw i32 %i.al, 1                    ; 2 uses
  store i32 %i.as, ptr %i.j, align 4, !tbaa !1947, !noalias !2102
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph, %.lr.ph
  %i.at = add nsw i32 %i.al, -1                   ; 2 uses
end_hunk_0
