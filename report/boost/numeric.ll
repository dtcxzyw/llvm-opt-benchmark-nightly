Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/numeric?download=true
inline.NumInlined: 1727
inline.NumDeleted: 449
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK5boost6locale4util14base_num_parseIcE14parse_currencyILb1EEESt19istreambuf_iteratorIcSt11char_traitsIcEES8_S8_RSt8ios_baseRSt12_Ios_IostateRe:bb.a
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !93   ; 3 uses
  %.not.not.i25 = icmp eq ptr %i.r, null
  br i1 %.not.not.i25, label %bb.c, label %_ZSt9use_facetINSt7__cxx119money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEEEERKT_RKSt6locale.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1110moneypunctIcLb1EE11frac_digitsEv.exit
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %.noexc26 unwind label %bb.e

.noexc26:                                         ; preds = %bb.c
  unreachable

_ZSt9use_facetINSt7__cxx119money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEEEERKT_RKSt6locale.exit: ; preds = %_ZNKSt7__cxx1110moneypunctIcLb1EE11frac_digitsEv.exit
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke { ptr, i32 } %i.u(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr %1, i32 %2, ptr %3, i32 %4, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
          to label %_ZNKSt7__cxx119money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES4_S4_bRSt8ios_baseRSt12_Ios_IostateRe.exit unwind label %bb.e, !inline_history !17

_ZNKSt7__cxx119money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES4_S4_bRSt8ios_baseRSt12_Ios_IostateRe.exit: ; preds = %_ZSt9use_facetINSt7__cxx119money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEEEERKT_RKSt6locale.exit
  %i.w = load i32, ptr %6, align 4, !tbaa !137
  %i.x = and i32 %i.w, 4
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %.preheader, label %bb.f

.preheader:                                       ; preds = %_ZNKSt7__cxx119money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES4_S4_bRSt8ios_baseRSt12_Ios_IostateRe.exit
  %.promoted = load x86_fp80, ptr %i.a, align 16  ; 3 uses
  %i.y = icmp sgt i32 %i.l, 0
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i32 %i.l, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.028.prol = phi i32 [ %i.ab, %.lr.ph.prol ], [ %i.l, %.lr.ph.preheader ]
  %i.z = phi x86_fp80 [ %i.aa, %.lr.ph.prol ], [ %.promoted, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.aa = fdiv x86_fp80 %i.z, 1.000000e+01        ; 3 uses
  %i.ab = add nsw i32 %.028.prol, -1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !280

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.028.unr = phi i32 [ %i.l, %.lr.ph.preheader ], [ %i.ab, %.lr.ph.prol ]
  %.unr = phi x86_fp80 [ %.promoted, %.lr.ph.preheader ], [ %i.aa, %.lr.ph.prol ]
  %.lcssa.unr = phi x86_fp80 [ poison, %.lr.ph.preheader ], [ %i.aa, %.lr.ph.prol ]
  %i.ac = icmp ult i32 %i.l, 8
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.028 = phi i32 [ %i.am, %.lr.ph ], [ %.028.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.ad = phi x86_fp80 [ %i.al, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.ae = fdiv x86_fp80 %i.ad, 1.000000e+01
  %i.af = fdiv x86_fp80 %i.ae, 1.000000e+01
  %i.ag = fdiv x86_fp80 %i.af, 1.000000e+01
  %i.ah = fdiv x86_fp80 %i.ag, 1.000000e+01
  %i.ai = fdiv x86_fp80 %i.ah, 1.000000e+01
  %i.aj = fdiv x86_fp80 %i.ai, 1.000000e+01
  %i.ak = fdiv x86_fp80 %i.aj, 1.000000e+01
  %i.al = fdiv x86_fp80 %i.ak, 1.000000e+01       ; 2 uses
  %i.am = add nsw i32 %.028, -8
  %i.an = icmp sgt i32 %.028, 8
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !281

bb.d:                                             ; preds = %_ZSt9use_facetINSt7__cxx1110moneypunctIcLb1EEEERKT_RKSt6locale.exit, %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZSt9use_facetINSt7__cxx119money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEEEERKT_RKSt6locale.exit, %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.g

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader
  %i.aq = phi x86_fp80 [ %.promoted, %.preheader ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.al, %.lr.ph ]
  store x86_fp80 %i.aq, ptr %7, align 16, !tbaa !136
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %_ZNKSt7__cxx119money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES4_S4_bRSt8ios_baseRSt12_Ios_IostateRe.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  ret { ptr, i32 } %i.v

bb.g:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.ao, %bb.d ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i32 } @_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11IlEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.std::__use_cache", align 1 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.b = call noundef ptr @_ZNKSt11__use_cacheISt16__numpunct_cacheIcEEclERKSt6locale(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = and i32 %i.d, 74                         ; 3 uses
  %i.f = icmp eq i32 %i.e, 64                     ; 2 uses
  %i.g = icmp eq i32 %i.e, 8
  %i.h = select i1 %i.g, i32 16, i32 10
  %i.i = select i1 %i.f, i32 8, i32 %i.h          ; 5 uses
  %.not.i.i.i.i = icmp ne ptr %1, null
  %i.j = icmp eq i32 %2, -1                       ; 2 uses
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !139  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140
  %i.o = icmp ult ptr %i.l, %i.n
  br i1 %i.o, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.p = load i8, ptr %i.l, align 1, !tbaa !55
  %i.q = zext i8 %i.p to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i: ; preds = %bb.b
  %i.r = load ptr, ptr %1, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !18 ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  %spec.select323 = select i1 %i.v, ptr null, ptr %1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i, %bb.a
  %.sroa.0266.9 = phi ptr [ %1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i ], [ %1, %bb.a ], [ %spec.select323, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ] ; 11 uses
  %.0.i.i.i.i = phi i32 [ %i.q, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i ], [ %2, %bb.a ], [ %i.u, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ] ; 3 uses
  %.not.i.i2.i.i = icmp ne ptr %3, null
  %i.w = icmp eq i32 %4, -1                       ; 16 uses
  %or.cond.i.i3.i.i = select i1 %.not.i.i2.i.i, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i, label %bb.c, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.c:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !139
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !140
  %i.ab = icmp ult ptr %i.y, %i.aa
  br i1 %i.ab, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i: ; preds = %bb.c
  %i.ac = load ptr, ptr %3, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %3), !inline_history !18
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %.split, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm

.split:                                           ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i
  %i.ah = icmp eq i32 %.0.i.i.i.i, -1
  br i1 %i.ah, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread, label %bb.d

_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm: ; preds = %bb.c, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i
  %.not344 = icmp eq i32 %.0.i.i.i.i, -1
  br i1 %.not344, label %bb.d, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread

_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.ai = icmp ne i32 %.0.i.i.i.i, -1
  %i.aj = xor i1 %i.w, %i.ai
  br i1 %i.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread, label %bb.d

bb.d:                                             ; preds = %.split, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.5297 = phi ptr [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split ] ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 110
  %.not.i.i = icmp ne ptr %.sroa.0266.9, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0266.9, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !139 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0266.9, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !140
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i: ; preds = %bb.e
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !55
  %i.ar = zext i8 %i.aq to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i: ; preds = %bb.e
  %i.as = load ptr, ptr %.sroa.0266.9, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.9), !inline_history !19 ; 2 uses
  %i.aw = icmp eq i32 %i.av, -1
  %spec.select325 = select i1 %i.aw, ptr null, ptr %.sroa.0266.9
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, %bb.d, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
  %.sroa.0266.10 = phi ptr [ %.sroa.0266.9, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ], [ %.sroa.0266.9, %bb.d ], [ %spec.select325, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ] ; 11 uses
  %.0.i.i = phi i32 [ %i.ar, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ], [ %2, %bb.d ], [ %i.av, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ]
  %i.ax = trunc i32 %.0.i.i to i8                 ; 10 uses
  %i.ay = load i8, ptr %i.ak, align 1, !tbaa !55
  %i.az = icmp eq i8 %i.ay, %i.ax                 ; 11 uses
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 111
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !55
  %i.bc = icmp eq i8 %i.bb, %i.ax
  br i1 %i.bc, label %bb.g, label %.lr.ph

bb.g:                                             ; preds = %bb.f, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !100, !range !101, !noundef !102
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !105
  %i.bi = icmp eq i8 %i.bh, %i.ax
  br i1 %i.bi, label %.lr.ph, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !108
  %i.bl = icmp eq i8 %i.bk, %i.ax
  br i1 %i.bl, label %.lr.ph, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0266.10, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !139 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0266.10, i64 24 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !140 ; 2 uses
  %i.bq = icmp ult ptr %i.bn, %i.bp
  br i1 %i.bq, label %bb.k, label %bb.l, !prof !78

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit

bb.l:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %.sroa.0266.10, align 8, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.10), !inline_history !20 ; 0 uses
  %.pre = load ptr, ptr %i.bm, align 8, !tbaa !139
  %.pre525 = load ptr, ptr %i.bo, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit: ; preds = %bb.l, %bb.k
  %i.bw = phi ptr [ %.pre525, %bb.l ], [ %i.bp, %bb.k ]
  %i.bx = phi ptr [ %.pre, %bb.l ], [ %i.br, %bb.k ]
  %i.by = icmp ult ptr %i.bx, %i.bw
  br i1 %i.by, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i160, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i167, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i167: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit
  %i.bz = load ptr, ptr %.sroa.0266.10, align 8, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef i32 %i.cb(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.10), !inline_history !21
  %i.cd = icmp eq i32 %i.cc, -1                   ; 2 uses
  %spec.select327 = select i1 %i.cd, ptr null, ptr %.sroa.0266.10
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i160

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i160: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i167
  %.sroa.0266.11 = phi ptr [ %spec.select327, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i167 ], [ %.sroa.0266.10, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit ] ; 10 uses
  %.0.i.i.i.i161 = phi i1 [ %i.cd, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i167 ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit ] ; 3 uses
  %.not.i.i2.i.i162 = icmp ne ptr %.sroa.0.5297, null
  %or.cond.i.i3.i.i163 = select i1 %.not.i.i2.i.i162, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i163, label %bb.m, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.m:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i160
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.5297, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !139
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.5297, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !140
  %i.ci = icmp ult ptr %i.cf, %i.ch
  br i1 %i.ci, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i165, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i165: ; preds = %bb.m
  %i.cj = load ptr, ptr %.sroa.0.5297, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.5297), !inline_history !21
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %.split299, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm

.split299:                                        ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i165
  br i1 %.0.i.i.i.i161, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread, label %bb.n

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm: ; preds = %bb.m, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i165
  br i1 %.0.i.i.i.i161, label %bb.n, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i160
  %i.co = xor i1 %i.w, %.0.i.i.i.i161
  br i1 %i.co, label %bb.n, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread

bb.n:                                             ; preds = %.split299, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.6298 = phi ptr [ %.sroa.0.5297, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0.5297, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split299 ] ; 3 uses
  %.not.i.i169.not = icmp eq ptr %.sroa.0266.11, null
  br i1 %.not.i.i169.not, label %.lr.ph, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0266.11, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !139 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0266.11, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !140
  %i.ct = icmp ult ptr %i.cq, %i.cs
  br i1 %i.ct, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i173, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i172, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i173: ; preds = %bb.o
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !55
  br label %.lr.ph

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i172: ; preds = %bb.o
  %i.cv = load ptr, ptr %.sroa.0266.11, align 8, !tbaa !54
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef i32 %i.cx(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.11), !inline_history !19 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, -1
  %spec.select329 = select i1 %i.cz, ptr null, ptr %.sroa.0266.11
  %i.da = trunc i32 %i.cy to i8
  br label %.lr.ph

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread: ; preds = %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split299, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %.split, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm
  %.sroa.0266.0.ph = phi ptr [ %.sroa.0266.11, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0266.9, %.split ], [ %.sroa.0266.9, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0266.11, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %.sroa.0266.11, %.split299 ], [ %.sroa.0266.9, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.26.0.ph = phi i32 [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %2, %.split ], [ %2, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ -1, %.split299 ], [ %2, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.5297, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ null, %.split ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0.5297, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split299 ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0290.ph = phi i8 [ %i.ax, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ 0, %.split ], [ 0, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %i.ax, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.ax, %.split299 ], [ 0, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0128.shrunk.ph = phi i1 [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ false, %.split ], [ false, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.az, %.split299 ], [ false, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge

.lr.ph:                                           ; preds = %bb.i, %bb.h, %bb.f, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i172, %bb.n, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i173
  %.sroa.0266.0 = phi ptr [ %.sroa.0266.11, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i173 ], [ %.sroa.0266.10, %bb.h ], [ %.sroa.0266.10, %bb.i ], [ null, %bb.n ], [ %spec.select329, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i172 ], [ %.sroa.0266.10, %bb.f ] ; 11 uses
  %.sroa.26.0 = phi i32 [ -1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i173 ], [ %2, %bb.h ], [ %2, %bb.i ], [ -1, %bb.n ], [ -1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i172 ], [ %2, %bb.f ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.6298, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i173 ], [ %.sroa.0.5297, %bb.h ], [ %.sroa.0.5297, %bb.i ], [ %.sroa.0.6298, %bb.n ], [ %.sroa.0.6298, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i172 ], [ %.sroa.0.5297, %bb.f ] ; 12 uses
  %.0290 = phi i8 [ %i.cu, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i173 ], [ %i.ax, %bb.h ], [ %i.ax, %bb.i ], [ -1, %bb.n ], [ %i.da, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i172 ], [ %i.ax, %bb.f ] ; 9 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 73 ; 9 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 113
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 114 ; 2 uses
  %i.dh = icmp eq i32 %i.e, 0                     ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.dj = load i8, ptr %i.de, align 8, !tbaa !100, !range !101, !noundef !102
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.dl = load i8, ptr %i.dc, align 1, !tbaa !105
  %i.dm = icmp eq i8 %.0290, %i.dl
  br i1 %i.dm, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph
  %i.dn = load i8, ptr %i.df, align 8, !tbaa !108
  %i.do = icmp eq i8 %.0290, %i.dn
  br i1 %i.do, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = load i8, ptr %i.dg, align 2, !tbaa !55
  %.not576 = icmp eq i8 %.0290, %i.dp
  br i1 %.not576, label %bb.s, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge

bb.s:                                             ; preds = %bb.r
  %spec.select.peel = select i1 %i.dh, i32 8, i32 %i.i ; 4 uses
  %i.dq = or i1 %i.dh, %i.f
  %not. = xor i1 %i.dq, true
  %spec.select157.peel = zext i1 %not. to i32     ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0266.0, i64 16 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !139 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0266.0, i64 24 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !140 ; 2 uses
  %i.dv = icmp ult ptr %i.ds, %i.du
  br i1 %i.dv, label %bb.u, label %bb.t, !prof !78

bb.t:                                             ; preds = %bb.s
  %i.dw = load ptr, ptr %.sroa.0266.0, align 8, !tbaa !54
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef i32 %i.dy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.0), !inline_history !20 ; 0 uses
  %.pre528 = load ptr, ptr %i.dr, align 8, !tbaa !139
  %.pre529 = load ptr, ptr %i.dt, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175.peel

bb.u:                                             ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  store ptr %i.ea, ptr %i.dr, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175.peel: ; preds = %bb.u, %bb.t
  %i.eb = phi ptr [ %i.du, %bb.u ], [ %.pre529, %bb.t ]
  %i.ec = phi ptr [ %i.ea, %bb.u ], [ %.pre528, %bb.t ]
  %i.ed = icmp ult ptr %i.ec, %i.eb
  br i1 %i.ed, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175.peel
  %i.ee = load ptr, ptr %.sroa.0266.0, align 8, !tbaa !54
end_hunk_0
begin_hunk_1_@_ZNK5boost6locale4util14base_num_parseIcE11do_real_getItEESt19istreambuf_iteratorIcSt11char_traitsIcEES8_S8_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a
_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRSt12_Ios_IostateRt.exit: ; preds = %bb.d
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %8, align 8, !tbaa !54
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %8, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !54
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRSt12_Ios_IostateRt.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !55
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRSt12_Ios_IostateRt.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #24
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.am, ptr %8, align 8, !tbaa !54
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %8, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !134
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.as) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.n

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  resume { ptr, i32 } %i.at

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store x86_fp80 0.000000e+00, ptr %i.a, align 16, !tbaa !136
  %i.au = tail call noundef i64 @_ZNK5boost6locale8ios_info14currency_flagsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call noundef i64 @_ZNK5boost6locale8ios_info14currency_flagsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.ax = icmp eq i64 %i.aw, 64
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ay = call { ptr, i32 } @_ZNK5boost6locale4util14base_num_parseIcE14parse_currencyILb0EEESt19istreambuf_iteratorIcSt11char_traitsIcEES8_S8_RSt8ios_baseRSt12_Ios_IostateRe(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.az = call { ptr, i32 } @_ZNK5boost6locale4util14base_num_parseIcE14parse_currencyILb1EEESt19istreambuf_iteratorIcSt11char_traitsIcEES8_S8_RSt8ios_baseRSt12_Ios_IostateRe(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.h ], [ %i.az, %bb.i ]
  %i.ba = load i32, ptr %6, align 4, !tbaa !137
  %i.bb = and i32 %i.ba, 4
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = load x86_fp80, ptr %i.a, align 16, !tbaa !136
  %i.bd = fptoui x86_fp80 %i.bc to i16
  store i16 %i.bd, ptr %7, align 2, !tbaa !122
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.be = tail call { ptr, i32 } @_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11ItEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 2 dereferenceable(2) %7)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.pn74 = phi { ptr, i32 } [ %i.be, %bb.m ], [ %i.w, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.pn, %bb.l ]
  ret { ptr, i32 } %.pn74
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i32 } @_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11ItEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 2 dereferenceable(2) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.std::__use_cache", align 1 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.b = call noundef ptr @_ZNKSt11__use_cacheISt16__numpunct_cacheIcEEclERKSt6locale(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = and i32 %i.d, 74                         ; 3 uses
  %i.f = icmp eq i32 %i.e, 64                     ; 2 uses
  %i.g = icmp eq i32 %i.e, 8
  %i.h = select i1 %i.g, i32 16, i32 10
  %i.i = select i1 %i.f, i32 8, i32 %i.h          ; 5 uses
  %.not.i.i.i.i = icmp ne ptr %1, null
  %i.j = icmp eq i32 %2, -1                       ; 2 uses
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !139  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140
  %i.o = icmp ult ptr %i.l, %i.n
  br i1 %i.o, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.p = load i8, ptr %i.l, align 1, !tbaa !55
  %i.q = zext i8 %i.p to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i: ; preds = %bb.b
  %i.r = load ptr, ptr %1, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !18 ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  %spec.select322 = select i1 %i.v, ptr null, ptr %1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i, %bb.a
  %.sroa.0267.9 = phi ptr [ %1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i ], [ %1, %bb.a ], [ %spec.select322, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ] ; 11 uses
  %.0.i.i.i.i = phi i32 [ %i.q, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i ], [ %2, %bb.a ], [ %i.u, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ] ; 3 uses
  %.not.i.i2.i.i = icmp ne ptr %3, null
  %i.w = icmp eq i32 %4, -1                       ; 16 uses
  %or.cond.i.i3.i.i = select i1 %.not.i.i2.i.i, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i, label %bb.c, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.c:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !139
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !140
  %i.ab = icmp ult ptr %i.y, %i.aa
  br i1 %i.ab, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i: ; preds = %bb.c
  %i.ac = load ptr, ptr %3, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %3), !inline_history !18
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %.split, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm

.split:                                           ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i
  %i.ah = icmp eq i32 %.0.i.i.i.i, -1
  br i1 %i.ah, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread, label %bb.d

_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm: ; preds = %bb.c, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i
  %.not342 = icmp eq i32 %.0.i.i.i.i, -1
  br i1 %.not342, label %bb.d, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread

_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.ai = icmp ne i32 %.0.i.i.i.i, -1
  %i.aj = xor i1 %i.w, %i.ai
  br i1 %i.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread, label %bb.d

bb.d:                                             ; preds = %.split, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.5298 = phi ptr [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split ] ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 110
  %.not.i.i = icmp ne ptr %.sroa.0267.9, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0267.9, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !139 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0267.9, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !140
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i: ; preds = %bb.e
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !55
  %i.ar = zext i8 %i.aq to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i: ; preds = %bb.e
  %i.as = load ptr, ptr %.sroa.0267.9, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.9), !inline_history !19 ; 2 uses
  %i.aw = icmp eq i32 %i.av, -1
  %spec.select324 = select i1 %i.aw, ptr null, ptr %.sroa.0267.9
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, %bb.d, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
  %.sroa.0267.10 = phi ptr [ %.sroa.0267.9, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ], [ %.sroa.0267.9, %bb.d ], [ %spec.select324, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ] ; 11 uses
  %.0.i.i = phi i32 [ %i.ar, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ], [ %2, %bb.d ], [ %i.av, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ]
  %i.ax = trunc i32 %.0.i.i to i8                 ; 10 uses
  %i.ay = load i8, ptr %i.ak, align 1, !tbaa !55
  %i.az = icmp eq i8 %i.ay, %i.ax                 ; 11 uses
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 111
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !55
  %i.bc = icmp eq i8 %i.bb, %i.ax
  br i1 %i.bc, label %bb.g, label %.lr.ph

bb.g:                                             ; preds = %bb.f, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !100, !range !101, !noundef !102
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !105
  %i.bi = icmp eq i8 %i.bh, %i.ax
  br i1 %i.bi, label %.lr.ph, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !108
  %i.bl = icmp eq i8 %i.bk, %i.ax
  br i1 %i.bl, label %.lr.ph, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0267.10, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !139 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0267.10, i64 24 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !140 ; 2 uses
  %i.bq = icmp ult ptr %i.bn, %i.bp
  br i1 %i.bq, label %bb.k, label %bb.l, !prof !78

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit

bb.l:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %.sroa.0267.10, align 8, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.10), !inline_history !20 ; 0 uses
  %.pre = load ptr, ptr %i.bm, align 8, !tbaa !139
  %.pre523 = load ptr, ptr %i.bo, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit: ; preds = %bb.l, %bb.k
  %i.bw = phi ptr [ %.pre523, %bb.l ], [ %i.bp, %bb.k ]
  %i.bx = phi ptr [ %.pre, %bb.l ], [ %i.br, %bb.k ]
  %i.by = icmp ult ptr %i.bx, %i.bw
  br i1 %i.by, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i161, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i168, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i168: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit
  %i.bz = load ptr, ptr %.sroa.0267.10, align 8, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef i32 %i.cb(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.10), !inline_history !21
  %i.cd = icmp eq i32 %i.cc, -1                   ; 2 uses
  %spec.select326 = select i1 %i.cd, ptr null, ptr %.sroa.0267.10
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i161

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i161: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i168
  %.sroa.0267.11 = phi ptr [ %spec.select326, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i168 ], [ %.sroa.0267.10, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit ] ; 10 uses
  %.0.i.i.i.i162 = phi i1 [ %i.cd, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i168 ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit ] ; 3 uses
  %.not.i.i2.i.i163 = icmp ne ptr %.sroa.0.5298, null
  %or.cond.i.i3.i.i164 = select i1 %.not.i.i2.i.i163, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i164, label %bb.m, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.m:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i161
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.5298, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !139
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.5298, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !140
  %i.ci = icmp ult ptr %i.cf, %i.ch
  br i1 %i.ci, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i166, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i166: ; preds = %bb.m
  %i.cj = load ptr, ptr %.sroa.0.5298, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.5298), !inline_history !21
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %.split300, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm

.split300:                                        ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i166
  br i1 %.0.i.i.i.i162, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread, label %bb.n

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm: ; preds = %bb.m, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i166
  br i1 %.0.i.i.i.i162, label %bb.n, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i161
  %i.co = xor i1 %i.w, %.0.i.i.i.i162
  br i1 %i.co, label %bb.n, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread

bb.n:                                             ; preds = %.split300, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.6299 = phi ptr [ %.sroa.0.5298, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0.5298, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split300 ] ; 3 uses
  %.not.i.i170.not = icmp eq ptr %.sroa.0267.11, null
  br i1 %.not.i.i170.not, label %.lr.ph, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0267.11, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !139 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0267.11, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !140
  %i.ct = icmp ult ptr %i.cq, %i.cs
  br i1 %i.ct, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i174, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i173, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i174: ; preds = %bb.o
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !55
  br label %.lr.ph

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i173: ; preds = %bb.o
  %i.cv = load ptr, ptr %.sroa.0267.11, align 8, !tbaa !54
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef i32 %i.cx(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.11), !inline_history !19 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, -1
  %spec.select328 = select i1 %i.cz, ptr null, ptr %.sroa.0267.11
  %i.da = trunc i32 %i.cy to i8
  br label %.lr.ph

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread: ; preds = %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split300, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %.split, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm
  %.sroa.0267.0.ph = phi ptr [ %.sroa.0267.11, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0267.9, %.split ], [ %.sroa.0267.9, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0267.11, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %.sroa.0267.11, %.split300 ], [ %.sroa.0267.9, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.26.0.ph = phi i32 [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %2, %.split ], [ %2, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ -1, %.split300 ], [ %2, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.5298, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ null, %.split ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0.5298, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split300 ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0291.ph = phi i8 [ %i.ax, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ 0, %.split ], [ 0, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %i.ax, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.ax, %.split300 ], [ 0, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0127.shrunk.ph = phi i1 [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ false, %.split ], [ false, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.az, %.split300 ], [ false, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge

.lr.ph:                                           ; preds = %bb.i, %bb.h, %bb.f, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i173, %bb.n, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i174
  %.sroa.0267.0 = phi ptr [ %.sroa.0267.11, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i174 ], [ %.sroa.0267.10, %bb.h ], [ %.sroa.0267.10, %bb.i ], [ null, %bb.n ], [ %spec.select328, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i173 ], [ %.sroa.0267.10, %bb.f ] ; 11 uses
  %.sroa.26.0 = phi i32 [ -1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i174 ], [ %2, %bb.h ], [ %2, %bb.i ], [ -1, %bb.n ], [ -1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i173 ], [ %2, %bb.f ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.6299, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i174 ], [ %.sroa.0.5298, %bb.h ], [ %.sroa.0.5298, %bb.i ], [ %.sroa.0.6299, %bb.n ], [ %.sroa.0.6299, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i173 ], [ %.sroa.0.5298, %bb.f ] ; 12 uses
  %.0291 = phi i8 [ %i.cu, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i174 ], [ %i.ax, %bb.h ], [ %i.ax, %bb.i ], [ -1, %bb.n ], [ %i.da, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i173 ], [ %i.ax, %bb.f ] ; 9 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 73 ; 9 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 113
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 114 ; 2 uses
  %i.dh = icmp eq i32 %i.e, 0                     ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.dj = load i8, ptr %i.de, align 8, !tbaa !100, !range !101, !noundef !102
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.dl = load i8, ptr %i.dc, align 1, !tbaa !105
  %i.dm = icmp eq i8 %.0291, %i.dl
  br i1 %i.dm, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph
  %i.dn = load i8, ptr %i.df, align 8, !tbaa !108
  %i.do = icmp eq i8 %.0291, %i.dn
  br i1 %i.do, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = load i8, ptr %i.dg, align 2, !tbaa !55
  %.not574 = icmp eq i8 %.0291, %i.dp
  br i1 %.not574, label %bb.s, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge

bb.s:                                             ; preds = %bb.r
  %spec.select.peel = select i1 %i.dh, i32 8, i32 %i.i ; 4 uses
  %i.dq = or i1 %i.dh, %i.f
  %not. = xor i1 %i.dq, true
  %spec.select158.peel = zext i1 %not. to i32     ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0267.0, i64 16 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !139 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0267.0, i64 24 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !140 ; 2 uses
  %i.dv = icmp ult ptr %i.ds, %i.du
  br i1 %i.dv, label %bb.u, label %bb.t, !prof !78

bb.t:                                             ; preds = %bb.s
  %i.dw = load ptr, ptr %.sroa.0267.0, align 8, !tbaa !54
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef i32 %i.dy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.0), !inline_history !20 ; 0 uses
  %.pre526 = load ptr, ptr %i.dr, align 8, !tbaa !139
  %.pre527 = load ptr, ptr %i.dt, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit176.peel

bb.u:                                             ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  store ptr %i.ea, ptr %i.dr, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit176.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit176.peel: ; preds = %bb.u, %bb.t
  %i.eb = phi ptr [ %i.du, %bb.u ], [ %.pre527, %bb.t ]
  %i.ec = phi ptr [ %i.ea, %bb.u ], [ %.pre526, %bb.t ]
  %i.ed = icmp ult ptr %i.ec, %i.eb
  br i1 %i.ed, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i179.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i186.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i186.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit176.peel
  %i.ee = load ptr, ptr %.sroa.0267.0, align 8, !tbaa !54
end_hunk_1
begin_hunk_2_@_ZNK5boost6locale4util14base_num_parseIcE11do_real_getIjEESt19istreambuf_iteratorIcSt11char_traitsIcEES8_S8_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a
_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRSt12_Ios_IostateRj.exit: ; preds = %bb.d
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %8, align 8, !tbaa !54
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %8, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !54
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRSt12_Ios_IostateRj.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !55
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRSt12_Ios_IostateRj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #24
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.am, ptr %8, align 8, !tbaa !54
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %8, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !134
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.as) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.n

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  resume { ptr, i32 } %i.at

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store x86_fp80 0.000000e+00, ptr %i.a, align 16, !tbaa !136
  %i.au = tail call noundef i64 @_ZNK5boost6locale8ios_info14currency_flagsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call noundef i64 @_ZNK5boost6locale8ios_info14currency_flagsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.ax = icmp eq i64 %i.aw, 64
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ay = call { ptr, i32 } @_ZNK5boost6locale4util14base_num_parseIcE14parse_currencyILb0EEESt19istreambuf_iteratorIcSt11char_traitsIcEES8_S8_RSt8ios_baseRSt12_Ios_IostateRe(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.az = call { ptr, i32 } @_ZNK5boost6locale4util14base_num_parseIcE14parse_currencyILb1EEESt19istreambuf_iteratorIcSt11char_traitsIcEES8_S8_RSt8ios_baseRSt12_Ios_IostateRe(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.h ], [ %i.az, %bb.i ]
  %i.ba = load i32, ptr %6, align 4, !tbaa !137
  %i.bb = and i32 %i.ba, 4
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = load x86_fp80, ptr %i.a, align 16, !tbaa !136
  %i.bd = fptoui x86_fp80 %i.bc to i32
  store i32 %i.bd, ptr %7, align 4, !tbaa !56
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.be = tail call { ptr, i32 } @_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11IjEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.pn74 = phi { ptr, i32 } [ %i.be, %bb.m ], [ %i.w, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.pn, %bb.l ]
  ret { ptr, i32 } %.pn74
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i32 } @_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11IjEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.std::__use_cache", align 1 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.b = call noundef ptr @_ZNKSt11__use_cacheISt16__numpunct_cacheIcEEclERKSt6locale(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = and i32 %i.d, 74                         ; 3 uses
  %i.f = icmp eq i32 %i.e, 64                     ; 2 uses
  %i.g = icmp eq i32 %i.e, 8
  %i.h = select i1 %i.g, i32 16, i32 10
  %i.i = select i1 %i.f, i32 8, i32 %i.h          ; 5 uses
  %.not.i.i.i.i = icmp ne ptr %1, null
  %i.j = icmp eq i32 %2, -1                       ; 2 uses
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !139  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140
  %i.o = icmp ult ptr %i.l, %i.n
  br i1 %i.o, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.p = load i8, ptr %i.l, align 1, !tbaa !55
  %i.q = zext i8 %i.p to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i: ; preds = %bb.b
  %i.r = load ptr, ptr %1, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !18 ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  %spec.select320 = select i1 %i.v, ptr null, ptr %1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i, %bb.a
  %.sroa.0265.9 = phi ptr [ %1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i ], [ %1, %bb.a ], [ %spec.select320, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ] ; 11 uses
  %.0.i.i.i.i = phi i32 [ %i.q, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i ], [ %2, %bb.a ], [ %i.u, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ] ; 3 uses
  %.not.i.i2.i.i = icmp ne ptr %3, null
  %i.w = icmp eq i32 %4, -1                       ; 16 uses
  %or.cond.i.i3.i.i = select i1 %.not.i.i2.i.i, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i, label %bb.c, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.c:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !139
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !140
  %i.ab = icmp ult ptr %i.y, %i.aa
  br i1 %i.ab, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i: ; preds = %bb.c
  %i.ac = load ptr, ptr %3, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %3), !inline_history !18
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %.split, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm

.split:                                           ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i
  %i.ah = icmp eq i32 %.0.i.i.i.i, -1
  br i1 %i.ah, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread, label %bb.d

_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm: ; preds = %bb.c, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i
  %.not340 = icmp eq i32 %.0.i.i.i.i, -1
  br i1 %.not340, label %bb.d, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread

_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.ai = icmp ne i32 %.0.i.i.i.i, -1
  %i.aj = xor i1 %i.w, %i.ai
  br i1 %i.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread, label %bb.d

bb.d:                                             ; preds = %.split, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.5296 = phi ptr [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split ] ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 110
  %.not.i.i = icmp ne ptr %.sroa.0265.9, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0265.9, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !139 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0265.9, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !140
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i: ; preds = %bb.e
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !55
  %i.ar = zext i8 %i.aq to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i: ; preds = %bb.e
  %i.as = load ptr, ptr %.sroa.0265.9, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.9), !inline_history !19 ; 2 uses
  %i.aw = icmp eq i32 %i.av, -1
  %spec.select322 = select i1 %i.aw, ptr null, ptr %.sroa.0265.9
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, %bb.d, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
  %.sroa.0265.10 = phi ptr [ %.sroa.0265.9, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ], [ %.sroa.0265.9, %bb.d ], [ %spec.select322, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ] ; 11 uses
  %.0.i.i = phi i32 [ %i.ar, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ], [ %2, %bb.d ], [ %i.av, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ]
  %i.ax = trunc i32 %.0.i.i to i8                 ; 10 uses
  %i.ay = load i8, ptr %i.ak, align 1, !tbaa !55
  %i.az = icmp eq i8 %i.ay, %i.ax                 ; 11 uses
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 111
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !55
  %i.bc = icmp eq i8 %i.bb, %i.ax
  br i1 %i.bc, label %bb.g, label %.lr.ph

bb.g:                                             ; preds = %bb.f, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !100, !range !101, !noundef !102
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !105
  %i.bi = icmp eq i8 %i.bh, %i.ax
  br i1 %i.bi, label %.lr.ph, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !108
  %i.bl = icmp eq i8 %i.bk, %i.ax
  br i1 %i.bl, label %.lr.ph, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0265.10, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !139 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0265.10, i64 24 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !140 ; 2 uses
  %i.bq = icmp ult ptr %i.bn, %i.bp
  br i1 %i.bq, label %bb.k, label %bb.l, !prof !78

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit

bb.l:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %.sroa.0265.10, align 8, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.10), !inline_history !20 ; 0 uses
  %.pre = load ptr, ptr %i.bm, align 8, !tbaa !139
  %.pre521 = load ptr, ptr %i.bo, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit: ; preds = %bb.l, %bb.k
  %i.bw = phi ptr [ %.pre521, %bb.l ], [ %i.bp, %bb.k ]
  %i.bx = phi ptr [ %.pre, %bb.l ], [ %i.br, %bb.k ]
  %i.by = icmp ult ptr %i.bx, %i.bw
  br i1 %i.by, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i159, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i166, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i166: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit
  %i.bz = load ptr, ptr %.sroa.0265.10, align 8, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef i32 %i.cb(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.10), !inline_history !21
  %i.cd = icmp eq i32 %i.cc, -1                   ; 2 uses
  %spec.select324 = select i1 %i.cd, ptr null, ptr %.sroa.0265.10
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i159

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i159: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i166
  %.sroa.0265.11 = phi ptr [ %spec.select324, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i166 ], [ %.sroa.0265.10, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit ] ; 10 uses
  %.0.i.i.i.i160 = phi i1 [ %i.cd, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i166 ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit ] ; 3 uses
  %.not.i.i2.i.i161 = icmp ne ptr %.sroa.0.5296, null
  %or.cond.i.i3.i.i162 = select i1 %.not.i.i2.i.i161, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i162, label %bb.m, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.m:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i159
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.5296, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !139
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.5296, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !140
  %i.ci = icmp ult ptr %i.cf, %i.ch
  br i1 %i.ci, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i164, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i164: ; preds = %bb.m
  %i.cj = load ptr, ptr %.sroa.0.5296, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.5296), !inline_history !21
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %.split298, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm

.split298:                                        ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i164
  br i1 %.0.i.i.i.i160, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread, label %bb.n

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm: ; preds = %bb.m, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i164
  br i1 %.0.i.i.i.i160, label %bb.n, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i159
  %i.co = xor i1 %i.w, %.0.i.i.i.i160
  br i1 %i.co, label %bb.n, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread

bb.n:                                             ; preds = %.split298, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.6297 = phi ptr [ %.sroa.0.5296, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0.5296, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split298 ] ; 3 uses
  %.not.i.i168.not = icmp eq ptr %.sroa.0265.11, null
  br i1 %.not.i.i168.not, label %.lr.ph, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0265.11, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !139 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0265.11, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !140
  %i.ct = icmp ult ptr %i.cq, %i.cs
  br i1 %i.ct, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172: ; preds = %bb.o
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !55
  br label %.lr.ph

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171: ; preds = %bb.o
  %i.cv = load ptr, ptr %.sroa.0265.11, align 8, !tbaa !54
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef i32 %i.cx(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.11), !inline_history !19 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, -1
  %spec.select326 = select i1 %i.cz, ptr null, ptr %.sroa.0265.11
  %i.da = trunc i32 %i.cy to i8
  br label %.lr.ph

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread: ; preds = %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split298, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %.split, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm
  %.sroa.0265.0.ph = phi ptr [ %.sroa.0265.11, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0265.9, %.split ], [ %.sroa.0265.9, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0265.11, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %.sroa.0265.11, %.split298 ], [ %.sroa.0265.9, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.26.0.ph = phi i32 [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %2, %.split ], [ %2, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ -1, %.split298 ], [ %2, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.5296, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ null, %.split ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0.5296, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split298 ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0289.ph = phi i8 [ %i.ax, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ 0, %.split ], [ 0, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %i.ax, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.ax, %.split298 ], [ 0, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0127.shrunk.ph = phi i1 [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ false, %.split ], [ false, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.az, %.split298 ], [ false, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge

.lr.ph:                                           ; preds = %bb.i, %bb.h, %bb.f, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171, %bb.n, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172
  %.sroa.0265.0 = phi ptr [ %.sroa.0265.11, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172 ], [ %.sroa.0265.10, %bb.h ], [ %.sroa.0265.10, %bb.i ], [ null, %bb.n ], [ %spec.select326, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171 ], [ %.sroa.0265.10, %bb.f ] ; 11 uses
  %.sroa.26.0 = phi i32 [ -1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172 ], [ %2, %bb.h ], [ %2, %bb.i ], [ -1, %bb.n ], [ -1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171 ], [ %2, %bb.f ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.6297, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172 ], [ %.sroa.0.5296, %bb.h ], [ %.sroa.0.5296, %bb.i ], [ %.sroa.0.6297, %bb.n ], [ %.sroa.0.6297, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171 ], [ %.sroa.0.5296, %bb.f ] ; 12 uses
  %.0289 = phi i8 [ %i.cu, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172 ], [ %i.ax, %bb.h ], [ %i.ax, %bb.i ], [ -1, %bb.n ], [ %i.da, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171 ], [ %i.ax, %bb.f ] ; 9 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 73 ; 9 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 113
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 114 ; 2 uses
  %i.dh = icmp eq i32 %i.e, 0                     ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.dj = load i8, ptr %i.de, align 8, !tbaa !100, !range !101, !noundef !102
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.dl = load i8, ptr %i.dc, align 1, !tbaa !105
  %i.dm = icmp eq i8 %.0289, %i.dl
  br i1 %i.dm, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph
  %i.dn = load i8, ptr %i.df, align 8, !tbaa !108
  %i.do = icmp eq i8 %.0289, %i.dn
  br i1 %i.do, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = load i8, ptr %i.dg, align 2, !tbaa !55
  %.not572 = icmp eq i8 %.0289, %i.dp
  br i1 %.not572, label %bb.s, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge

bb.s:                                             ; preds = %bb.r
  %spec.select.peel = select i1 %i.dh, i32 8, i32 %i.i ; 4 uses
  %i.dq = or i1 %i.dh, %i.f
  %not. = xor i1 %i.dq, true
  %spec.select156.peel = zext i1 %not. to i32     ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0265.0, i64 16 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !139 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0265.0, i64 24 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !140 ; 2 uses
  %i.dv = icmp ult ptr %i.ds, %i.du
  br i1 %i.dv, label %bb.u, label %bb.t, !prof !78

bb.t:                                             ; preds = %bb.s
  %i.dw = load ptr, ptr %.sroa.0265.0, align 8, !tbaa !54
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef i32 %i.dy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.0), !inline_history !20 ; 0 uses
  %.pre524 = load ptr, ptr %i.dr, align 8, !tbaa !139
  %.pre525 = load ptr, ptr %i.dt, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel

bb.u:                                             ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  store ptr %i.ea, ptr %i.dr, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel: ; preds = %bb.u, %bb.t
  %i.eb = phi ptr [ %i.du, %bb.u ], [ %.pre525, %bb.t ]
  %i.ec = phi ptr [ %i.ea, %bb.u ], [ %.pre524, %bb.t ]
  %i.ed = icmp ult ptr %i.ec, %i.eb
  br i1 %i.ed, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel
  %i.ee = load ptr, ptr %.sroa.0265.0, align 8, !tbaa !54
end_hunk_2
begin_hunk_3_@_ZNK5boost6locale4util14base_num_parseIcE11do_real_getImEESt19istreambuf_iteratorIcSt11char_traitsIcEES8_S8_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a
_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRSt12_Ios_IostateRm.exit: ; preds = %bb.d
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %8, align 8, !tbaa !54
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %8, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !54
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRSt12_Ios_IostateRm.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !55
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRSt12_Ios_IostateRm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #24
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.am, ptr %8, align 8, !tbaa !54
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %8, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !134
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.as) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.n

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  resume { ptr, i32 } %i.at

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store x86_fp80 0.000000e+00, ptr %i.a, align 16, !tbaa !136
  %i.au = tail call noundef i64 @_ZNK5boost6locale8ios_info14currency_flagsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call noundef i64 @_ZNK5boost6locale8ios_info14currency_flagsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.ax = icmp eq i64 %i.aw, 64
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ay = call { ptr, i32 } @_ZNK5boost6locale4util14base_num_parseIcE14parse_currencyILb0EEESt19istreambuf_iteratorIcSt11char_traitsIcEES8_S8_RSt8ios_baseRSt12_Ios_IostateRe(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.az = call { ptr, i32 } @_ZNK5boost6locale4util14base_num_parseIcE14parse_currencyILb1EEESt19istreambuf_iteratorIcSt11char_traitsIcEES8_S8_RSt8ios_baseRSt12_Ios_IostateRe(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.h ], [ %i.az, %bb.i ]
  %i.ba = load i32, ptr %6, align 4, !tbaa !137
  %i.bb = and i32 %i.ba, 4
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = load x86_fp80, ptr %i.a, align 16, !tbaa !136
  %i.bd = fptoui x86_fp80 %i.bc to i64
  store i64 %i.bd, ptr %7, align 8, !tbaa !77
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.be = tail call { ptr, i32 } @_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11ImEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.pn74 = phi { ptr, i32 } [ %i.be, %bb.m ], [ %i.w, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.pn, %bb.l ]
  ret { ptr, i32 } %.pn74
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i32 } @_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11ImEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.std::__use_cache", align 1 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.b = call noundef ptr @_ZNKSt11__use_cacheISt16__numpunct_cacheIcEEclERKSt6locale(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = and i32 %i.d, 74                         ; 3 uses
  %i.f = icmp eq i32 %i.e, 64                     ; 2 uses
  %i.g = icmp eq i32 %i.e, 8
  %i.h = select i1 %i.g, i32 16, i32 10
  %i.i = select i1 %i.f, i32 8, i32 %i.h          ; 5 uses
  %.not.i.i.i.i = icmp ne ptr %1, null
  %i.j = icmp eq i32 %2, -1                       ; 2 uses
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !139  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140
  %i.o = icmp ult ptr %i.l, %i.n
  br i1 %i.o, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.p = load i8, ptr %i.l, align 1, !tbaa !55
  %i.q = zext i8 %i.p to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i: ; preds = %bb.b
  %i.r = load ptr, ptr %1, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !18 ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  %spec.select322 = select i1 %i.v, ptr null, ptr %1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i, %bb.a
  %.sroa.0265.9 = phi ptr [ %1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i ], [ %1, %bb.a ], [ %spec.select322, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ] ; 11 uses
  %.0.i.i.i.i = phi i32 [ %i.q, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i ], [ %2, %bb.a ], [ %i.u, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ] ; 3 uses
  %.not.i.i2.i.i = icmp ne ptr %3, null
  %i.w = icmp eq i32 %4, -1                       ; 16 uses
  %or.cond.i.i3.i.i = select i1 %.not.i.i2.i.i, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i, label %bb.c, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.c:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !139
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !140
  %i.ab = icmp ult ptr %i.y, %i.aa
  br i1 %i.ab, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i: ; preds = %bb.c
  %i.ac = load ptr, ptr %3, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %3), !inline_history !18
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %.split, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm

.split:                                           ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i
  %i.ah = icmp eq i32 %.0.i.i.i.i, -1
  br i1 %i.ah, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread, label %bb.d

_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm: ; preds = %bb.c, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i
  %.not343 = icmp eq i32 %.0.i.i.i.i, -1
  br i1 %.not343, label %bb.d, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread

_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.ai = icmp ne i32 %.0.i.i.i.i, -1
  %i.aj = xor i1 %i.w, %i.ai
  br i1 %i.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread, label %bb.d

bb.d:                                             ; preds = %.split, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.5296 = phi ptr [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split ] ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 110
  %.not.i.i = icmp ne ptr %.sroa.0265.9, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0265.9, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !139 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0265.9, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !140
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i: ; preds = %bb.e
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !55
  %i.ar = zext i8 %i.aq to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i: ; preds = %bb.e
  %i.as = load ptr, ptr %.sroa.0265.9, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.9), !inline_history !19 ; 2 uses
  %i.aw = icmp eq i32 %i.av, -1
  %spec.select324 = select i1 %i.aw, ptr null, ptr %.sroa.0265.9
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, %bb.d, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
  %.sroa.0265.10 = phi ptr [ %.sroa.0265.9, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ], [ %.sroa.0265.9, %bb.d ], [ %spec.select324, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ] ; 11 uses
  %.0.i.i = phi i32 [ %i.ar, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ], [ %2, %bb.d ], [ %i.av, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ]
  %i.ax = trunc i32 %.0.i.i to i8                 ; 10 uses
  %i.ay = load i8, ptr %i.ak, align 1, !tbaa !55
  %i.az = icmp eq i8 %i.ay, %i.ax                 ; 11 uses
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 111
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !55
  %i.bc = icmp eq i8 %i.bb, %i.ax
  br i1 %i.bc, label %bb.g, label %.lr.ph

bb.g:                                             ; preds = %bb.f, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !100, !range !101, !noundef !102
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !105
  %i.bi = icmp eq i8 %i.bh, %i.ax
  br i1 %i.bi, label %.lr.ph, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !108
  %i.bl = icmp eq i8 %i.bk, %i.ax
  br i1 %i.bl, label %.lr.ph, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0265.10, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !139 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0265.10, i64 24 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !140 ; 2 uses
  %i.bq = icmp ult ptr %i.bn, %i.bp
  br i1 %i.bq, label %bb.k, label %bb.l, !prof !78

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit

bb.l:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %.sroa.0265.10, align 8, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.10), !inline_history !20 ; 0 uses
  %.pre = load ptr, ptr %i.bm, align 8, !tbaa !139
  %.pre524 = load ptr, ptr %i.bo, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit: ; preds = %bb.l, %bb.k
  %i.bw = phi ptr [ %.pre524, %bb.l ], [ %i.bp, %bb.k ]
  %i.bx = phi ptr [ %.pre, %bb.l ], [ %i.br, %bb.k ]
  %i.by = icmp ult ptr %i.bx, %i.bw
  br i1 %i.by, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i159, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i166, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i166: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit
  %i.bz = load ptr, ptr %.sroa.0265.10, align 8, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef i32 %i.cb(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.10), !inline_history !21
  %i.cd = icmp eq i32 %i.cc, -1                   ; 2 uses
  %spec.select326 = select i1 %i.cd, ptr null, ptr %.sroa.0265.10
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i159

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i159: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i166
  %.sroa.0265.11 = phi ptr [ %spec.select326, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i166 ], [ %.sroa.0265.10, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit ] ; 10 uses
  %.0.i.i.i.i160 = phi i1 [ %i.cd, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i166 ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit ] ; 3 uses
  %.not.i.i2.i.i161 = icmp ne ptr %.sroa.0.5296, null
  %or.cond.i.i3.i.i162 = select i1 %.not.i.i2.i.i161, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i162, label %bb.m, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.m:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i159
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.5296, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !139
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.5296, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !140
  %i.ci = icmp ult ptr %i.cf, %i.ch
  br i1 %i.ci, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i164, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i164: ; preds = %bb.m
  %i.cj = load ptr, ptr %.sroa.0.5296, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.5296), !inline_history !21
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %.split298, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm

.split298:                                        ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i164
  br i1 %.0.i.i.i.i160, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread, label %bb.n

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm: ; preds = %bb.m, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i164
  br i1 %.0.i.i.i.i160, label %bb.n, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i159
  %i.co = xor i1 %i.w, %.0.i.i.i.i160
  br i1 %i.co, label %bb.n, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread

bb.n:                                             ; preds = %.split298, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.6297 = phi ptr [ %.sroa.0.5296, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0.5296, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split298 ] ; 3 uses
  %.not.i.i168.not = icmp eq ptr %.sroa.0265.11, null
  br i1 %.not.i.i168.not, label %.lr.ph, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0265.11, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !139 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0265.11, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !140
  %i.ct = icmp ult ptr %i.cq, %i.cs
  br i1 %i.ct, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172: ; preds = %bb.o
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !55
  br label %.lr.ph

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171: ; preds = %bb.o
  %i.cv = load ptr, ptr %.sroa.0265.11, align 8, !tbaa !54
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef i32 %i.cx(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.11), !inline_history !19 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, -1
  %spec.select328 = select i1 %i.cz, ptr null, ptr %.sroa.0265.11
  %i.da = trunc i32 %i.cy to i8
  br label %.lr.ph

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread: ; preds = %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split298, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %.split, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm
  %.sroa.0265.0.ph = phi ptr [ %.sroa.0265.11, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0265.9, %.split ], [ %.sroa.0265.9, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0265.11, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %.sroa.0265.11, %.split298 ], [ %.sroa.0265.9, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.26.0.ph = phi i32 [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %2, %.split ], [ %2, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ -1, %.split298 ], [ %2, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.5296, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ null, %.split ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0.5296, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split298 ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0289.ph = phi i8 [ %i.ax, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ 0, %.split ], [ 0, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %i.ax, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.ax, %.split298 ], [ 0, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0127.shrunk.ph = phi i1 [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ false, %.split ], [ false, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.az, %.split298 ], [ false, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge

.lr.ph:                                           ; preds = %bb.i, %bb.h, %bb.f, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171, %bb.n, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172
  %.sroa.0265.0 = phi ptr [ %.sroa.0265.11, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172 ], [ %.sroa.0265.10, %bb.h ], [ %.sroa.0265.10, %bb.i ], [ null, %bb.n ], [ %spec.select328, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171 ], [ %.sroa.0265.10, %bb.f ] ; 11 uses
  %.sroa.26.0 = phi i32 [ -1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172 ], [ %2, %bb.h ], [ %2, %bb.i ], [ -1, %bb.n ], [ -1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171 ], [ %2, %bb.f ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.6297, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172 ], [ %.sroa.0.5296, %bb.h ], [ %.sroa.0.5296, %bb.i ], [ %.sroa.0.6297, %bb.n ], [ %.sroa.0.6297, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171 ], [ %.sroa.0.5296, %bb.f ] ; 12 uses
  %.0289 = phi i8 [ %i.cu, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172 ], [ %i.ax, %bb.h ], [ %i.ax, %bb.i ], [ -1, %bb.n ], [ %i.da, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171 ], [ %i.ax, %bb.f ] ; 9 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 73 ; 9 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 113
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 114 ; 2 uses
  %i.dh = icmp eq i32 %i.e, 0                     ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.dj = load i8, ptr %i.de, align 8, !tbaa !100, !range !101, !noundef !102
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.dl = load i8, ptr %i.dc, align 1, !tbaa !105
  %i.dm = icmp eq i8 %.0289, %i.dl
  br i1 %i.dm, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph
  %i.dn = load i8, ptr %i.df, align 8, !tbaa !108
  %i.do = icmp eq i8 %.0289, %i.dn
  br i1 %i.do, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = load i8, ptr %i.dg, align 2, !tbaa !55
  %.not575 = icmp eq i8 %.0289, %i.dp
  br i1 %.not575, label %bb.s, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge

bb.s:                                             ; preds = %bb.r
  %spec.select.peel = select i1 %i.dh, i32 8, i32 %i.i ; 4 uses
  %i.dq = or i1 %i.dh, %i.f
  %not. = xor i1 %i.dq, true
  %spec.select156.peel = zext i1 %not. to i32     ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0265.0, i64 16 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !139 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0265.0, i64 24 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !140 ; 2 uses
  %i.dv = icmp ult ptr %i.ds, %i.du
  br i1 %i.dv, label %bb.u, label %bb.t, !prof !78

bb.t:                                             ; preds = %bb.s
  %i.dw = load ptr, ptr %.sroa.0265.0, align 8, !tbaa !54
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef i32 %i.dy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.0), !inline_history !20 ; 0 uses
  %.pre527 = load ptr, ptr %i.dr, align 8, !tbaa !139
  %.pre528 = load ptr, ptr %i.dt, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel

bb.u:                                             ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  store ptr %i.ea, ptr %i.dr, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel: ; preds = %bb.u, %bb.t
  %i.eb = phi ptr [ %i.du, %bb.u ], [ %.pre528, %bb.t ]
  %i.ec = phi ptr [ %i.ea, %bb.u ], [ %.pre527, %bb.t ]
  %i.ed = icmp ult ptr %i.ec, %i.eb
  br i1 %i.ed, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel
  %i.ee = load ptr, ptr %.sroa.0265.0, align 8, !tbaa !54
end_hunk_3
begin_hunk_4_@_ZNK5boost6locale4util14base_num_parseIcE11do_real_getIxEESt19istreambuf_iteratorIcSt11char_traitsIcEES8_S8_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a
_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRSt12_Ios_IostateRx.exit: ; preds = %bb.d
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %8, align 8, !tbaa !54
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %8, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !54
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRSt12_Ios_IostateRx.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !55
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRSt12_Ios_IostateRx.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #24
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.am, ptr %8, align 8, !tbaa !54
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %8, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !134
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.as) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.n

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  resume { ptr, i32 } %i.at

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store x86_fp80 0.000000e+00, ptr %i.a, align 16, !tbaa !136
  %i.au = tail call noundef i64 @_ZNK5boost6locale8ios_info14currency_flagsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call noundef i64 @_ZNK5boost6locale8ios_info14currency_flagsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.ax = icmp eq i64 %i.aw, 64
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ay = call { ptr, i32 } @_ZNK5boost6locale4util14base_num_parseIcE14parse_currencyILb0EEESt19istreambuf_iteratorIcSt11char_traitsIcEES8_S8_RSt8ios_baseRSt12_Ios_IostateRe(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.az = call { ptr, i32 } @_ZNK5boost6locale4util14base_num_parseIcE14parse_currencyILb1EEESt19istreambuf_iteratorIcSt11char_traitsIcEES8_S8_RSt8ios_baseRSt12_Ios_IostateRe(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.h ], [ %i.az, %bb.i ]
  %i.ba = load i32, ptr %6, align 4, !tbaa !137
  %i.bb = and i32 %i.ba, 4
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = load x86_fp80, ptr %i.a, align 16, !tbaa !136
  %i.bd = fptosi x86_fp80 %i.bc to i64
  store i64 %i.bd, ptr %7, align 8, !tbaa !143
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.be = tail call { ptr, i32 } @_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11IxEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.pn74 = phi { ptr, i32 } [ %i.be, %bb.m ], [ %i.w, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.pn, %bb.l ]
  ret { ptr, i32 } %.pn74
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i32 } @_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11IxEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.std::__use_cache", align 1 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.b = call noundef ptr @_ZNKSt11__use_cacheISt16__numpunct_cacheIcEEclERKSt6locale(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = and i32 %i.d, 74                         ; 3 uses
  %i.f = icmp eq i32 %i.e, 64                     ; 2 uses
  %i.g = icmp eq i32 %i.e, 8
  %i.h = select i1 %i.g, i32 16, i32 10
  %i.i = select i1 %i.f, i32 8, i32 %i.h          ; 5 uses
  %.not.i.i.i.i = icmp ne ptr %1, null
  %i.j = icmp eq i32 %2, -1                       ; 2 uses
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !139  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140
  %i.o = icmp ult ptr %i.l, %i.n
  br i1 %i.o, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.p = load i8, ptr %i.l, align 1, !tbaa !55
  %i.q = zext i8 %i.p to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i: ; preds = %bb.b
  %i.r = load ptr, ptr %1, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !18 ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  %spec.select323 = select i1 %i.v, ptr null, ptr %1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i, %bb.a
  %.sroa.0266.9 = phi ptr [ %1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i ], [ %1, %bb.a ], [ %spec.select323, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ] ; 11 uses
  %.0.i.i.i.i = phi i32 [ %i.q, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i ], [ %2, %bb.a ], [ %i.u, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ] ; 3 uses
  %.not.i.i2.i.i = icmp ne ptr %3, null
  %i.w = icmp eq i32 %4, -1                       ; 16 uses
  %or.cond.i.i3.i.i = select i1 %.not.i.i2.i.i, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i, label %bb.c, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.c:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !139
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !140
  %i.ab = icmp ult ptr %i.y, %i.aa
  br i1 %i.ab, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i: ; preds = %bb.c
  %i.ac = load ptr, ptr %3, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %3), !inline_history !18
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %.split, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm

.split:                                           ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i
  %i.ah = icmp eq i32 %.0.i.i.i.i, -1
  br i1 %i.ah, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread, label %bb.d

_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm: ; preds = %bb.c, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i
  %.not344 = icmp eq i32 %.0.i.i.i.i, -1
  br i1 %.not344, label %bb.d, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread

_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.ai = icmp ne i32 %.0.i.i.i.i, -1
  %i.aj = xor i1 %i.w, %i.ai
  br i1 %i.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread, label %bb.d

bb.d:                                             ; preds = %.split, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.5297 = phi ptr [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split ] ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 110
  %.not.i.i = icmp ne ptr %.sroa.0266.9, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0266.9, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !139 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0266.9, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !140
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i: ; preds = %bb.e
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !55
  %i.ar = zext i8 %i.aq to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i: ; preds = %bb.e
  %i.as = load ptr, ptr %.sroa.0266.9, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.9), !inline_history !19 ; 2 uses
  %i.aw = icmp eq i32 %i.av, -1
  %spec.select325 = select i1 %i.aw, ptr null, ptr %.sroa.0266.9
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, %bb.d, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
  %.sroa.0266.10 = phi ptr [ %.sroa.0266.9, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ], [ %.sroa.0266.9, %bb.d ], [ %spec.select325, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ] ; 11 uses
  %.0.i.i = phi i32 [ %i.ar, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ], [ %2, %bb.d ], [ %i.av, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ]
  %i.ax = trunc i32 %.0.i.i to i8                 ; 10 uses
  %i.ay = load i8, ptr %i.ak, align 1, !tbaa !55
  %i.az = icmp eq i8 %i.ay, %i.ax                 ; 11 uses
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 111
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !55
  %i.bc = icmp eq i8 %i.bb, %i.ax
  br i1 %i.bc, label %bb.g, label %.lr.ph

bb.g:                                             ; preds = %bb.f, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !100, !range !101, !noundef !102
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !105
  %i.bi = icmp eq i8 %i.bh, %i.ax
  br i1 %i.bi, label %.lr.ph, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !108
  %i.bl = icmp eq i8 %i.bk, %i.ax
  br i1 %i.bl, label %.lr.ph, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0266.10, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !139 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0266.10, i64 24 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !140 ; 2 uses
  %i.bq = icmp ult ptr %i.bn, %i.bp
  br i1 %i.bq, label %bb.k, label %bb.l, !prof !78

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit

bb.l:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %.sroa.0266.10, align 8, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.10), !inline_history !20 ; 0 uses
  %.pre = load ptr, ptr %i.bm, align 8, !tbaa !139
  %.pre525 = load ptr, ptr %i.bo, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit: ; preds = %bb.l, %bb.k
  %i.bw = phi ptr [ %.pre525, %bb.l ], [ %i.bp, %bb.k ]
  %i.bx = phi ptr [ %.pre, %bb.l ], [ %i.br, %bb.k ]
  %i.by = icmp ult ptr %i.bx, %i.bw
  br i1 %i.by, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i160, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i167, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i167: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit
  %i.bz = load ptr, ptr %.sroa.0266.10, align 8, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef i32 %i.cb(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.10), !inline_history !21
  %i.cd = icmp eq i32 %i.cc, -1                   ; 2 uses
  %spec.select327 = select i1 %i.cd, ptr null, ptr %.sroa.0266.10
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i160

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i160: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i167
  %.sroa.0266.11 = phi ptr [ %spec.select327, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i167 ], [ %.sroa.0266.10, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit ] ; 10 uses
  %.0.i.i.i.i161 = phi i1 [ %i.cd, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i167 ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit ] ; 3 uses
  %.not.i.i2.i.i162 = icmp ne ptr %.sroa.0.5297, null
  %or.cond.i.i3.i.i163 = select i1 %.not.i.i2.i.i162, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i163, label %bb.m, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.m:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i160
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.5297, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !139
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.5297, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !140
  %i.ci = icmp ult ptr %i.cf, %i.ch
  br i1 %i.ci, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i165, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i165: ; preds = %bb.m
  %i.cj = load ptr, ptr %.sroa.0.5297, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.5297), !inline_history !21
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %.split299, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm

.split299:                                        ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i165
  br i1 %.0.i.i.i.i161, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread, label %bb.n

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm: ; preds = %bb.m, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i165
  br i1 %.0.i.i.i.i161, label %bb.n, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i160
  %i.co = xor i1 %i.w, %.0.i.i.i.i161
  br i1 %i.co, label %bb.n, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread

bb.n:                                             ; preds = %.split299, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.6298 = phi ptr [ %.sroa.0.5297, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0.5297, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split299 ] ; 3 uses
  %.not.i.i169.not = icmp eq ptr %.sroa.0266.11, null
  br i1 %.not.i.i169.not, label %.lr.ph, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0266.11, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !139 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0266.11, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !140
  %i.ct = icmp ult ptr %i.cq, %i.cs
  br i1 %i.ct, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i173, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i172, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i173: ; preds = %bb.o
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !55
  br label %.lr.ph

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i172: ; preds = %bb.o
  %i.cv = load ptr, ptr %.sroa.0266.11, align 8, !tbaa !54
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef i32 %i.cx(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.11), !inline_history !19 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, -1
  %spec.select329 = select i1 %i.cz, ptr null, ptr %.sroa.0266.11
  %i.da = trunc i32 %i.cy to i8
  br label %.lr.ph

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread: ; preds = %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split299, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %.split, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm
  %.sroa.0266.0.ph = phi ptr [ %.sroa.0266.11, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0266.9, %.split ], [ %.sroa.0266.9, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0266.11, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %.sroa.0266.11, %.split299 ], [ %.sroa.0266.9, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.26.0.ph = phi i32 [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %2, %.split ], [ %2, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ -1, %.split299 ], [ %2, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.5297, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ null, %.split ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0.5297, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split299 ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0290.ph = phi i8 [ %i.ax, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ 0, %.split ], [ 0, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %i.ax, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.ax, %.split299 ], [ 0, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0128.shrunk.ph = phi i1 [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ false, %.split ], [ false, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.az, %.split299 ], [ false, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge

.lr.ph:                                           ; preds = %bb.i, %bb.h, %bb.f, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i172, %bb.n, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i173
  %.sroa.0266.0 = phi ptr [ %.sroa.0266.11, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i173 ], [ %.sroa.0266.10, %bb.h ], [ %.sroa.0266.10, %bb.i ], [ null, %bb.n ], [ %spec.select329, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i172 ], [ %.sroa.0266.10, %bb.f ] ; 11 uses
  %.sroa.26.0 = phi i32 [ -1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i173 ], [ %2, %bb.h ], [ %2, %bb.i ], [ -1, %bb.n ], [ -1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i172 ], [ %2, %bb.f ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.6298, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i173 ], [ %.sroa.0.5297, %bb.h ], [ %.sroa.0.5297, %bb.i ], [ %.sroa.0.6298, %bb.n ], [ %.sroa.0.6298, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i172 ], [ %.sroa.0.5297, %bb.f ] ; 12 uses
  %.0290 = phi i8 [ %i.cu, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i173 ], [ %i.ax, %bb.h ], [ %i.ax, %bb.i ], [ -1, %bb.n ], [ %i.da, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i172 ], [ %i.ax, %bb.f ] ; 9 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 73 ; 9 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 113
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 114 ; 2 uses
  %i.dh = icmp eq i32 %i.e, 0                     ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.dj = load i8, ptr %i.de, align 8, !tbaa !100, !range !101, !noundef !102
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.dl = load i8, ptr %i.dc, align 1, !tbaa !105
  %i.dm = icmp eq i8 %.0290, %i.dl
  br i1 %i.dm, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph
  %i.dn = load i8, ptr %i.df, align 8, !tbaa !108
  %i.do = icmp eq i8 %.0290, %i.dn
  br i1 %i.do, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = load i8, ptr %i.dg, align 2, !tbaa !55
  %.not576 = icmp eq i8 %.0290, %i.dp
  br i1 %.not576, label %bb.s, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge

bb.s:                                             ; preds = %bb.r
  %spec.select.peel = select i1 %i.dh, i32 8, i32 %i.i ; 4 uses
  %i.dq = or i1 %i.dh, %i.f
  %not. = xor i1 %i.dq, true
  %spec.select157.peel = zext i1 %not. to i32     ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0266.0, i64 16 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !139 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0266.0, i64 24 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !140 ; 2 uses
  %i.dv = icmp ult ptr %i.ds, %i.du
  br i1 %i.dv, label %bb.u, label %bb.t, !prof !78

bb.t:                                             ; preds = %bb.s
  %i.dw = load ptr, ptr %.sroa.0266.0, align 8, !tbaa !54
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef i32 %i.dy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.0), !inline_history !20 ; 0 uses
  %.pre528 = load ptr, ptr %i.dr, align 8, !tbaa !139
  %.pre529 = load ptr, ptr %i.dt, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175.peel

bb.u:                                             ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  store ptr %i.ea, ptr %i.dr, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175.peel: ; preds = %bb.u, %bb.t
  %i.eb = phi ptr [ %i.du, %bb.u ], [ %.pre529, %bb.t ]
  %i.ec = phi ptr [ %i.ea, %bb.u ], [ %.pre528, %bb.t ]
  %i.ed = icmp ult ptr %i.ec, %i.eb
  br i1 %i.ed, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175.peel
  %i.ee = load ptr, ptr %.sroa.0266.0, align 8, !tbaa !54
end_hunk_4
begin_hunk_5_@_ZNK5boost6locale4util14base_num_parseIcE11do_real_getIyEESt19istreambuf_iteratorIcSt11char_traitsIcEES8_S8_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a
_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRSt12_Ios_IostateRy.exit: ; preds = %bb.d
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %8, align 8, !tbaa !54
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %8, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !54
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRSt12_Ios_IostateRy.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !55
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE6do_getES3_S3_RSt8ios_baseRSt12_Ios_IostateRy.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #24
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.am, ptr %8, align 8, !tbaa !54
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %8, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !134
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.as) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.n

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  resume { ptr, i32 } %i.at

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store x86_fp80 0.000000e+00, ptr %i.a, align 16, !tbaa !136
  %i.au = tail call noundef i64 @_ZNK5boost6locale8ios_info14currency_flagsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call noundef i64 @_ZNK5boost6locale8ios_info14currency_flagsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.ax = icmp eq i64 %i.aw, 64
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ay = call { ptr, i32 } @_ZNK5boost6locale4util14base_num_parseIcE14parse_currencyILb0EEESt19istreambuf_iteratorIcSt11char_traitsIcEES8_S8_RSt8ios_baseRSt12_Ios_IostateRe(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.az = call { ptr, i32 } @_ZNK5boost6locale4util14base_num_parseIcE14parse_currencyILb1EEESt19istreambuf_iteratorIcSt11char_traitsIcEES8_S8_RSt8ios_baseRSt12_Ios_IostateRe(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.h ], [ %i.az, %bb.i ]
  %i.ba = load i32, ptr %6, align 4, !tbaa !137
  %i.bb = and i32 %i.ba, 4
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = load x86_fp80, ptr %i.a, align 16, !tbaa !136
  %i.bd = fptoui x86_fp80 %i.bc to i64
  store i64 %i.bd, ptr %7, align 8, !tbaa !143
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.be = tail call { ptr, i32 } @_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11IyEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.pn74 = phi { ptr, i32 } [ %i.be, %bb.m ], [ %i.w, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.pn, %bb.l ]
  ret { ptr, i32 } %.pn74
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i32 } @_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11IyEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.std::__use_cache", align 1 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.b = call noundef ptr @_ZNKSt11__use_cacheISt16__numpunct_cacheIcEEclERKSt6locale(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = and i32 %i.d, 74                         ; 3 uses
  %i.f = icmp eq i32 %i.e, 64                     ; 2 uses
  %i.g = icmp eq i32 %i.e, 8
  %i.h = select i1 %i.g, i32 16, i32 10
  %i.i = select i1 %i.f, i32 8, i32 %i.h          ; 5 uses
  %.not.i.i.i.i = icmp ne ptr %1, null
  %i.j = icmp eq i32 %2, -1                       ; 2 uses
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.b, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !139  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140
  %i.o = icmp ult ptr %i.l, %i.n
  br i1 %i.o, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.p = load i8, ptr %i.l, align 1, !tbaa !55
  %i.q = zext i8 %i.p to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i: ; preds = %bb.b
  %i.r = load ptr, ptr %1, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !18 ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  %spec.select322 = select i1 %i.v, ptr null, ptr %1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i, %bb.a
  %.sroa.0265.9 = phi ptr [ %1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i ], [ %1, %bb.a ], [ %spec.select322, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ] ; 11 uses
  %.0.i.i.i.i = phi i32 [ %i.q, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i ], [ %2, %bb.a ], [ %i.u, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ] ; 3 uses
  %.not.i.i2.i.i = icmp ne ptr %3, null
  %i.w = icmp eq i32 %4, -1                       ; 16 uses
  %or.cond.i.i3.i.i = select i1 %.not.i.i2.i.i, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i, label %bb.c, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.c:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !139
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !140
  %i.ab = icmp ult ptr %i.y, %i.aa
  br i1 %i.ab, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i: ; preds = %bb.c
  %i.ac = load ptr, ptr %3, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %3), !inline_history !18
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %.split, label %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm

.split:                                           ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i
  %i.ah = icmp eq i32 %.0.i.i.i.i, -1
  br i1 %i.ah, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread, label %bb.d

_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm: ; preds = %bb.c, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i
  %.not343 = icmp eq i32 %.0.i.i.i.i, -1
  br i1 %.not343, label %bb.d, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread

_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.ai = icmp ne i32 %.0.i.i.i.i, -1
  %i.aj = xor i1 %i.w, %i.ai
  br i1 %i.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread, label %bb.d

bb.d:                                             ; preds = %.split, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.5296 = phi ptr [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split ] ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 110
  %.not.i.i = icmp ne ptr %.sroa.0265.9, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0265.9, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !139 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0265.9, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !140
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i: ; preds = %bb.e
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !55
  %i.ar = zext i8 %i.aq to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i: ; preds = %bb.e
  %i.as = load ptr, ptr %.sroa.0265.9, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.9), !inline_history !19 ; 2 uses
  %i.aw = icmp eq i32 %i.av, -1
  %spec.select324 = select i1 %i.aw, ptr null, ptr %.sroa.0265.9
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, %bb.d, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
  %.sroa.0265.10 = phi ptr [ %.sroa.0265.9, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ], [ %.sroa.0265.9, %bb.d ], [ %spec.select324, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ] ; 11 uses
  %.0.i.i = phi i32 [ %i.ar, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ], [ %2, %bb.d ], [ %i.av, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ]
  %i.ax = trunc i32 %.0.i.i to i8                 ; 10 uses
  %i.ay = load i8, ptr %i.ak, align 1, !tbaa !55
  %i.az = icmp eq i8 %i.ay, %i.ax                 ; 11 uses
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 111
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !55
  %i.bc = icmp eq i8 %i.bb, %i.ax
  br i1 %i.bc, label %bb.g, label %.lr.ph

bb.g:                                             ; preds = %bb.f, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !100, !range !101, !noundef !102
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !105
  %i.bi = icmp eq i8 %i.bh, %i.ax
  br i1 %i.bi, label %.lr.ph, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !108
  %i.bl = icmp eq i8 %i.bk, %i.ax
  br i1 %i.bl, label %.lr.ph, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0265.10, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !139 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0265.10, i64 24 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !140 ; 2 uses
  %i.bq = icmp ult ptr %i.bn, %i.bp
  br i1 %i.bq, label %bb.k, label %bb.l, !prof !78

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit

bb.l:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %.sroa.0265.10, align 8, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.10), !inline_history !20 ; 0 uses
  %.pre = load ptr, ptr %i.bm, align 8, !tbaa !139
  %.pre524 = load ptr, ptr %i.bo, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit: ; preds = %bb.l, %bb.k
  %i.bw = phi ptr [ %.pre524, %bb.l ], [ %i.bp, %bb.k ]
  %i.bx = phi ptr [ %.pre, %bb.l ], [ %i.br, %bb.k ]
  %i.by = icmp ult ptr %i.bx, %i.bw
  br i1 %i.by, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i159, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i166, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i166: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit
  %i.bz = load ptr, ptr %.sroa.0265.10, align 8, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef i32 %i.cb(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.10), !inline_history !21
  %i.cd = icmp eq i32 %i.cc, -1                   ; 2 uses
  %spec.select326 = select i1 %i.cd, ptr null, ptr %.sroa.0265.10
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i159

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i159: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i166
  %.sroa.0265.11 = phi ptr [ %spec.select326, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i166 ], [ %.sroa.0265.10, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit ] ; 10 uses
  %.0.i.i.i.i160 = phi i1 [ %i.cd, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i166 ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit ] ; 3 uses
  %.not.i.i2.i.i161 = icmp ne ptr %.sroa.0.5296, null
  %or.cond.i.i3.i.i162 = select i1 %.not.i.i2.i.i161, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i162, label %bb.m, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.m:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i159
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.5296, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !139
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.5296, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !140
  %i.ci = icmp ult ptr %i.cf, %i.ch
  br i1 %i.ci, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i164, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i164: ; preds = %bb.m
  %i.cj = load ptr, ptr %.sroa.0.5296, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.5296), !inline_history !21
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %.split298, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm

.split298:                                        ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i164
  br i1 %.0.i.i.i.i160, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread, label %bb.n

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm: ; preds = %bb.m, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i164
  br i1 %.0.i.i.i.i160, label %bb.n, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i159
  %i.co = xor i1 %i.w, %.0.i.i.i.i160
  br i1 %i.co, label %bb.n, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread

bb.n:                                             ; preds = %.split298, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.6297 = phi ptr [ %.sroa.0.5296, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0.5296, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split298 ] ; 3 uses
  %.not.i.i168.not = icmp eq ptr %.sroa.0265.11, null
  br i1 %.not.i.i168.not, label %.lr.ph, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0265.11, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !139 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0265.11, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !140
  %i.ct = icmp ult ptr %i.cq, %i.cs
  br i1 %i.ct, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172: ; preds = %bb.o
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !55
  br label %.lr.ph

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171: ; preds = %bb.o
  %i.cv = load ptr, ptr %.sroa.0265.11, align 8, !tbaa !54
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef i32 %i.cx(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.11), !inline_history !19 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, -1
  %spec.select328 = select i1 %i.cz, ptr null, ptr %.sroa.0265.11
  %i.da = trunc i32 %i.cy to i8
  br label %.lr.ph

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread: ; preds = %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split298, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm, %.split, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm
  %.sroa.0265.0.ph = phi ptr [ %.sroa.0265.11, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0265.9, %.split ], [ %.sroa.0265.9, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0265.11, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %.sroa.0265.11, %.split298 ], [ %.sroa.0265.9, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.26.0.ph = phi i32 [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %2, %.split ], [ %2, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ -1, %.split298 ], [ %2, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.5296, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ null, %.split ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %.sroa.0.5296, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split298 ], [ %3, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0289.ph = phi i8 [ %i.ax, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ 0, %.split ], [ 0, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %i.ax, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.ax, %.split298 ], [ 0, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0127.shrunk.ph = phi i1 [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ false, %.split ], [ false, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.thr_comm ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.az, %.split298 ], [ false, %_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge

.lr.ph:                                           ; preds = %bb.i, %bb.h, %bb.f, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171, %bb.n, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172
  %.sroa.0265.0 = phi ptr [ %.sroa.0265.11, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172 ], [ %.sroa.0265.10, %bb.h ], [ %.sroa.0265.10, %bb.i ], [ null, %bb.n ], [ %spec.select328, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171 ], [ %.sroa.0265.10, %bb.f ] ; 11 uses
  %.sroa.26.0 = phi i32 [ -1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172 ], [ %2, %bb.h ], [ %2, %bb.i ], [ -1, %bb.n ], [ -1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171 ], [ %2, %bb.f ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.6297, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172 ], [ %.sroa.0.5296, %bb.h ], [ %.sroa.0.5296, %bb.i ], [ %.sroa.0.6297, %bb.n ], [ %.sroa.0.6297, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171 ], [ %.sroa.0.5296, %bb.f ] ; 12 uses
  %.0289 = phi i8 [ %i.cu, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i172 ], [ %i.ax, %bb.h ], [ %i.ax, %bb.i ], [ -1, %bb.n ], [ %i.da, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i171 ], [ %i.ax, %bb.f ] ; 9 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 73 ; 9 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 113
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 114 ; 2 uses
  %i.dh = icmp eq i32 %i.e, 0                     ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.dj = load i8, ptr %i.de, align 8, !tbaa !100, !range !101, !noundef !102
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.dl = load i8, ptr %i.dc, align 1, !tbaa !105
  %i.dm = icmp eq i8 %.0289, %i.dl
  br i1 %i.dm, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph
  %i.dn = load i8, ptr %i.df, align 8, !tbaa !108
  %i.do = icmp eq i8 %.0289, %i.dn
  br i1 %i.do, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = load i8, ptr %i.dg, align 2, !tbaa !55
  %.not575 = icmp eq i8 %.0289, %i.dp
  br i1 %.not575, label %bb.s, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge

bb.s:                                             ; preds = %bb.r
  %spec.select.peel = select i1 %i.dh, i32 8, i32 %i.i ; 4 uses
  %i.dq = or i1 %i.dh, %i.f
  %not. = xor i1 %i.dq, true
  %spec.select156.peel = zext i1 %not. to i32     ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0265.0, i64 16 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !139 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0265.0, i64 24 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !140 ; 2 uses
  %i.dv = icmp ult ptr %i.ds, %i.du
  br i1 %i.dv, label %bb.u, label %bb.t, !prof !78

bb.t:                                             ; preds = %bb.s
  %i.dw = load ptr, ptr %.sroa.0265.0, align 8, !tbaa !54
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef i32 %i.dy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.0), !inline_history !20 ; 0 uses
  %.pre527 = load ptr, ptr %i.dr, align 8, !tbaa !139
  %.pre528 = load ptr, ptr %i.dt, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel

bb.u:                                             ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  store ptr %i.ea, ptr %i.dr, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel: ; preds = %bb.u, %bb.t
  %i.eb = phi ptr [ %i.du, %bb.u ], [ %.pre528, %bb.t ]
  %i.ec = phi ptr [ %i.ea, %bb.u ], [ %.pre527, %bb.t ]
  %i.ed = icmp ult ptr %i.ec, %i.eb
  br i1 %i.ed, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel
  %i.ee = load ptr, ptr %.sroa.0265.0, align 8, !tbaa !54
end_hunk_5
