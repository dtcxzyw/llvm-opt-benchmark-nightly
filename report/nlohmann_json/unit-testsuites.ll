Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-testsuites?download=true
inline.NumInlined: 7862
inline.NumDeleted: 1619
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 21
begin_hunk_0_@"_ZNK7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_21vE3$_2E9stringifyEPSo":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %eh.lpad-body.i

"_ZZL20DOCTEST_ANON_FUNC_21vENK3$_2clEPSo.exit":  ; preds = %.noexc4.i
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @_ZN7doctest6detail14MessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i32 %2, ptr %3, i32 %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
.peel.begin:
  %i.a = alloca i64, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 15, ptr %i.a, align 8, !tbaa !71
  %i.b = icmp eq i32 %4, -1                       ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %.not.i.i.i.i.peel = icmp ne ptr %1, null
  %i.d = icmp eq i32 %2, -1                       ; 2 uses
  %or.cond.i.i.i.i.peel = select i1 %.not.i.i.i.i.peel, i1 %i.d, i1 false
  br i1 %or.cond.i.i.i.i.peel, label %bb.a, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

bb.a:                                             ; preds = %.peel.begin
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !202  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !203
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel, !prof !200

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel: ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !787 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  %spec.select.peel = select i1 %i.n, ptr null, ptr %1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel: ; preds = %bb.a
  %i.o = load i8, ptr %i.f, align 1, !tbaa !45
  %i.p = zext i8 %i.o to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel, %.peel.begin
  %.sroa.045.2.peel = phi ptr [ %1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel ], [ %1, %.peel.begin ], [ %spec.select.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel ] ; 12 uses
  %.0.i.i.i.i.peel = phi i32 [ %i.p, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel ], [ %2, %.peel.begin ], [ %i.m, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel ] ; 2 uses
  %.not.i.i2.i.i.peel = icmp ne ptr %3, null
  %or.cond.i.i3.i.i.peel = select i1 %.not.i.i2.i.i.peel, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i.peel, label %bb.b, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel

bb.b:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !202
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !203
  %i.u = icmp ult ptr %i.r, %i.t
  br i1 %i.u, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel, !prof !200

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel: ; preds = %bb.b
  %i.v = load ptr, ptr %3, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(64) %3), !inline_history !787 ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  %spec.select56.peel = select i1 %i.z, ptr null, ptr %3
  br label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel: ; preds = %bb.b
  %i.aa = icmp eq i32 %.0.i.i.i.i.peel, -1
  br i1 %i.aa, label %bb.c, label %.preheader

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
  %.sroa.042.2.peel = phi ptr [ %spec.select56.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel ], [ %3, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel ] ; 2 uses
  %.0.i.i4.i.i.peel = phi i32 [ %i.y, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel ], [ %4, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.peel, -1
  %i.ac = icmp eq i32 %.0.i.i4.i.i.peel, -1
  %i.ad = xor i1 %i.ab, %i.ac
  br i1 %i.ad, label %bb.c, label %.preheader

bb.c:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel
  %.sroa.042.2.peel87 = phi ptr [ %3, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.sroa.042.2.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ]
  %.not.i.i.peel = icmp ne ptr %.sroa.045.2.peel, null
  %or.cond.i.i.peel = select i1 %.not.i.i.peel, i1 %i.d, i1 false
  br i1 %or.cond.i.i.peel, label %bb.d, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !202 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !203
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel, !prof !200

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel: ; preds = %bb.d
  %i.aj = load ptr, ptr %.sroa.045.2.peel, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2.peel), !inline_history !788 ; 2 uses
  %i.an = icmp ne i32 %i.am, -1
  tail call void @llvm.assume(i1 %i.an)
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel: ; preds = %bb.d
  %i.ao = load i8, ptr %i.af, align 1, !tbaa !45
  %i.ap = zext i8 %i.ao to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel, %bb.c
  %.0.i.i.peel = phi i32 [ %2, %bb.c ], [ %i.am, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel ], [ %i.ap, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel ]
  %i.aq = trunc i32 %.0.i.i.peel to i8
  store i8 %i.aq, ptr %i.c, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !202 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !203
  %i.av = icmp ult ptr %i.as, %i.au
  br i1 %i.av, label %bb.f, label %bb.e, !prof !200

bb.e:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel
  %i.aw = load ptr, ptr %.sroa.045.2.peel, align 8, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2.peel), !inline_history !789 ; 0 uses
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader

bb.f:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.ba, ptr %i.ar, align 8, !tbaa !202
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader: ; preds = %bb.f, %bb.e
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader
  %.sroa.045.0 = phi ptr [ %.sroa.045.2.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %.sroa.045.2, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 6 uses
  %.sroa.042.0 = phi ptr [ %.sroa.042.2.peel87, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %.sroa.042.2, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 8 uses
  %.013 = phi i64 [ 1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %i.ew, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !202
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !203
  %i.bf = icmp ult ptr %i.bc, %i.be
  br i1 %i.bf, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, !prof !200

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel
  %i.bg = load ptr, ptr %.sroa.045.0, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef i32 %i.bi(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.0), !inline_history !787 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, -1
  %spec.select = select i1 %i.bk, ptr null, ptr %.sroa.045.0
  %i.bl = icmp eq i32 %i.bj, -1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i
  %.sroa.045.2 = phi ptr [ %spec.select, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ], [ %.sroa.045.0, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel ] ; 11 uses
  %.0.i.i.i.i = phi i1 [ %i.bl, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel ]
  %.not.i.i2.i.i = icmp ne ptr %.sroa.042.0, null
  %or.cond.i.i3.i.i = select i1 %.not.i.i2.i.i, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i, label %bb.g, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.g:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !202 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !203
  %i.bq = icmp ult ptr %i.bn, %i.bp
  br i1 %i.bq, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, !prof !200

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i: ; preds = %bb.g
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !45
  %i.bs = zext i8 %i.br to i32
  br label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i: ; preds = %bb.g
  %i.bt = load ptr, ptr %.sroa.042.0, align 8, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef i32 %i.bv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.0), !inline_history !787 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, -1
  %spec.select56 = select i1 %i.bx, ptr null, ptr %.sroa.042.0
  br label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i
  %.sroa.042.2 = phi ptr [ %.sroa.042.0, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i ], [ %.sroa.042.0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i ], [ %spec.select56, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i ] ; 2 uses
  %.0.i.i4.i.i = phi i32 [ %i.bs, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i ], [ %4, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i ], [ %i.bw, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i ]
  %i.by = icmp eq i32 %.0.i.i4.i.i, -1
  %i.bz = xor i1 %.0.i.i.i.i, %i.by
  %i.ca = icmp samesign ult i64 %.013, 15
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %bb.u, label %.preheader

.preheader:                                       ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel
  %.sroa.042.2.lcssa = phi ptr [ %.sroa.042.2.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ %3, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.sroa.042.2, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 7 uses
  %.sroa.045.2.lcssa = phi ptr [ %.sroa.045.2.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ %.sroa.045.2.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.sroa.045.2, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 8 uses
  %.sroa.11.0.lcssa = phi i32 [ %2, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ %2, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 3 uses
  %.013.lcssa = phi i64 [ 0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ 0, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.013, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 10 uses
  %.not.i.i.i.i15.peel = icmp ne ptr %.sroa.045.2.lcssa, null
  %i.cc = icmp eq i32 %.sroa.11.0.lcssa, -1       ; 2 uses
  %or.cond.i.i.i.i16.peel = select i1 %.not.i.i.i.i15.peel, i1 %i.cc, i1 false
  br i1 %or.cond.i.i.i.i16.peel, label %bb.h, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel

bb.h:                                             ; preds = %.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.045.2.lcssa, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !202 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.045.2.lcssa, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !203
  %i.ch = icmp ult ptr %i.ce, %i.cg
  br i1 %i.ch, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel, !prof !200

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel: ; preds = %bb.h
  %i.ci = load ptr, ptr %.sroa.045.2.lcssa, align 8, !tbaa !25
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef i32 %i.ck(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2.lcssa)
          to label %.noexc.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !787 ; 2 uses

.noexc.peel:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel
  %i.cm = icmp eq i32 %i.cl, -1
  %spec.select58.peel = select i1 %i.cm, ptr null, ptr %.sroa.045.2.lcssa
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel: ; preds = %bb.h
  %i.cn = load i8, ptr %i.ce, align 1, !tbaa !45
  %i.co = zext i8 %i.cn to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel, %.noexc.peel, %.preheader
  %.sroa.045.4.peel = phi ptr [ %.sroa.045.2.lcssa, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel ], [ %.sroa.045.2.lcssa, %.preheader ], [ %spec.select58.peel, %.noexc.peel ] ; 10 uses
  %.0.i.i.i.i18.peel = phi i32 [ %i.co, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel ], [ %.sroa.11.0.lcssa, %.preheader ], [ %i.cl, %.noexc.peel ] ; 3 uses
  %.not.i.i2.i.i19.peel = icmp ne ptr %.sroa.042.2.lcssa, null
  %or.cond.i.i3.i.i20.peel = select i1 %.not.i.i2.i.i19.peel, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i20.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel
  %i.cp = icmp eq i32 %.0.i.i.i.i18.peel, -1
  %i.cq = xor i1 %i.b, %i.cp
  br i1 %i.cq, label %bb.k, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.j:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.042.2.lcssa, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !202
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.042.2.lcssa, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !203
  %i.cv = icmp ult ptr %i.cs, %i.cu
  br i1 %i.cv, label %.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel, !prof !200

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel: ; preds = %bb.j
  %i.cw = load ptr, ptr %.sroa.042.2.lcssa, align 8, !tbaa !25
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef i32 %i.cy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.2.lcssa)
          to label %.noexc26.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !787

.noexc26.peel:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel
  %i.da = icmp eq i32 %i.cz, -1
  br i1 %i.da, label %.split.peel, label %.thr_comm.peel

.split.peel:                                      ; preds = %.noexc26.peel
  %.not.peel = icmp eq i32 %.0.i.i.i.i18.peel, -1
  br i1 %.not.peel, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit, label %bb.k

.thr_comm.peel:                                   ; preds = %.noexc26.peel, %bb.j
  %i.db = icmp eq i32 %.0.i.i.i.i18.peel, -1
  br i1 %i.db, label %bb.k, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.k:                                             ; preds = %.thr_comm.peel, %.split.peel, %bb.i
  %.sroa.042.354.peel = phi ptr [ %.sroa.042.2.lcssa, %.thr_comm.peel ], [ %.sroa.042.2.lcssa, %bb.i ], [ null, %.split.peel ]
  %i.dc = load i64, ptr %i.a, align 8, !tbaa !71
  %i.dd = icmp eq i64 %.013.lcssa, %i.dc
  br i1 %i.dd, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %0, align 8, !tbaa !70
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.de = add nuw nsw i64 %.013.lcssa, 1
  store i64 %i.de, ptr %i.a, align 8, !tbaa !71
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.013.lcssa)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.dg = load ptr, ptr %0, align 8, !tbaa !70    ; 2 uses
  switch i64 %.013.lcssa, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
  ]

bb.n:                                             ; preds = %bb.m
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !45
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.dg, i64 %.013.lcssa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel: ; preds = %bb.o, %bb.n, %bb.m
  %i.di = load ptr, ptr %0, align 8, !tbaa !70    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.c
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
  call void @_ZdlPv(ptr noundef %i.di) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.peel
  store ptr %i.df, ptr %0, align 8, !tbaa !70
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.dk, ptr %i.c, align 8, !tbaa !45
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel
  %i.dl = phi ptr [ %.pre, %._crit_edge ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel ]
  %.not.i.i28.peel = icmp ne ptr %.sroa.045.4.peel, null
  %or.cond.i.i29.peel = select i1 %.not.i.i28.peel, i1 %i.cc, i1 false
  br i1 %or.cond.i.i29.peel, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !202 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !203
  %i.dq = icmp ult ptr %i.dn, %i.dp
  br i1 %i.dq, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel, !prof !200

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel: ; preds = %bb.q
  %i.dr = load ptr, ptr %.sroa.045.4.peel, align 8, !tbaa !25
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 72
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = invoke noundef i32 %i.dt(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4.peel)
          to label %.noexc33.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !788 ; 2 uses

.noexc33.peel:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel
  %i.dv = icmp ne i32 %i.du, -1
  call void @llvm.assume(i1 %i.dv)
  br label %bb.r

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel: ; preds = %bb.q
  %i.dw = load i8, ptr %i.dn, align 1, !tbaa !45
  %i.dx = zext i8 %i.dw to i32
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel, %.noexc33.peel, %bb.p
  %.0.i.i30.peel = phi i32 [ %.sroa.11.0.lcssa, %bb.p ], [ %i.du, %.noexc33.peel ], [ %i.dx, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel ]
  %i.dy = trunc i32 %.0.i.i30.peel to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.013.lcssa
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !45
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 16 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !202 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !203
  %i.ee = icmp ult ptr %i.eb, %i.ed
  br i1 %i.ee, label %bb.t, label %bb.s, !prof !200

bb.s:                                             ; preds = %bb.r
  %i.ef = load ptr, ptr %.sroa.045.4.peel, align 8, !tbaa !25
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 80
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = invoke noundef i32 %i.eh(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4.peel)
          to label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !789 ; 0 uses

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader: ; preds = %bb.t, %bb.s
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel

bb.t:                                             ; preds = %bb.r
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  store ptr %i.ej, ptr %i.ea, align 8, !tbaa !202
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader

bb.u:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.not.i.i.not = icmp eq ptr %.sroa.045.2, null
  br i1 %.not.i.i.not, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !202 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !203
  %i.eo = icmp ult ptr %i.el, %i.en
  br i1 %i.eo, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, !prof !200

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i: ; preds = %bb.v
  %i.ep = load i8, ptr %i.el, align 1, !tbaa !45
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i: ; preds = %bb.v
  %i.eq = load ptr, ptr %.sroa.045.2, align 8, !tbaa !25
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = tail call noundef i32 %i.es(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2), !inline_history !788 ; 2 uses
  %i.eu = icmp ne i32 %i.et, -1
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = trunc i32 %i.et to i8
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, %bb.u, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
  %.0.i.i = phi i8 [ -1, %bb.u ], [ %i.ev, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ], [ %i.ep, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ]
  %i.ew = add nuw nsw i64 %.013, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 %.013
  store i8 %.0.i.i, ptr %i.ex, align 1, !tbaa !45
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 16 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !202 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !203
  %i.fc = icmp ult ptr %i.ez, %i.fb
  br i1 %i.fc, label %bb.w, label %bb.x, !prof !200

bb.w:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  store ptr %i.fd, ptr %i.ey, align 8, !tbaa !202
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge: ; preds = %bb.w, %bb.x
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel, !llvm.loop !790

bb.x:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.fe = load ptr, ptr %.sroa.045.2, align 8, !tbaa !25
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 80
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = tail call noundef i32 %i.fg(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2), !inline_history !789 ; 0 uses
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader
  %.sroa.045.1 = phi ptr [ %.sroa.045.4.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.sroa.045.4, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 6 uses
  %.sroa.042.1 = phi ptr [ %.sroa.042.354.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.sroa.042.354, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 7 uses
  %.1.in = phi i64 [ %.013.lcssa, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 2 uses
  %.1 = add i64 %.1.in, 1                         ; 9 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.045.1, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !202
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.045.1, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !203
  %i.fm = icmp ult ptr %i.fj, %i.fl
  br i1 %i.fm, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24, !prof !200

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel
  %i.fn = load ptr, ptr %.sroa.045.1, align 8, !tbaa !25
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = invoke noundef i32 %i.fp(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !787 ; 2 uses

.noexc:                                           ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24
  %i.fr = icmp eq i32 %i.fq, -1
  %spec.select58 = select i1 %i.fr, ptr null, ptr %.sroa.045.1
  %i.fs = icmp eq i32 %i.fq, -1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel, %.noexc
  %.sroa.045.4 = phi ptr [ %spec.select58, %.noexc ], [ %.sroa.045.1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel ] ; 10 uses
  %.0.i.i.i.i18 = phi i1 [ %i.fs, %.noexc ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel ] ; 3 uses
  %.not.i.i2.i.i19 = icmp ne ptr %.sroa.042.1, null
  %or.cond.i.i3.i.i20 = select i1 %.not.i.i2.i.i19, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i20, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.042.1, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !202
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.042.1, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !203
  %i.fx = icmp ult ptr %i.fu, %i.fw
  br i1 %i.fx, label %.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22, !prof !200

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22: ; preds = %bb.y
  %i.fy = load ptr, ptr %.sroa.042.1, align 8, !tbaa !25
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 72
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = invoke noundef i32 %i.ga(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.1)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !787

.noexc26:                                         ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22
  %i.gc = icmp eq i32 %i.gb, -1
  br i1 %i.gc, label %.split, label %.thr_comm

.split:                                           ; preds = %.noexc26
  br i1 %.0.i.i.i.i18, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit, label %bb.aa

.thr_comm:                                        ; preds = %bb.y, %.noexc26
  br i1 %.0.i.i.i.i18, label %bb.aa, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.z:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17
  %i.gd = xor i1 %i.b, %.0.i.i.i.i18
  br i1 %i.gd, label %bb.aa, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.aa:                                            ; preds = %.split, %.thr_comm, %bb.z
  %.sroa.042.354 = phi ptr [ %.sroa.042.1, %.thr_comm ], [ %.sroa.042.1, %bb.z ], [ null, %.split ]
  %i.ge = load i64, ptr %i.a, align 8, !tbaa !71
  %i.gf = icmp eq i64 %.1, %i.ge
  br i1 %i.gf, label %bb.ab, label %._crit_edge67

._crit_edge67:                                    ; preds = %bb.aa
  %.pre68 = load ptr, ptr %0, align 8, !tbaa !70
  br label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.gg = add i64 %.1.in, 2
  store i64 %i.gg, ptr %i.a, align 8, !tbaa !71
  %i.gh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.1)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ac:                                            ; preds = %bb.ab
  %i.gi = load ptr, ptr %0, align 8, !tbaa !70    ; 2 uses
  switch i64 %.1, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !45
  store i8 %i.gj, ptr %i.gh, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gh, ptr align 1 %i.gi, i64 %.1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.gk = load ptr, ptr %0, align 8, !tbaa !70    ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.c
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  call void @_ZdlPv(ptr noundef %i.gk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.gh, ptr %0, align 8, !tbaa !70
  %i.gm = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.gm, ptr %i.c, align 8, !tbaa !45
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  %i.gn = phi ptr [ %.pre68, %._crit_edge67 ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit ]
  %.not.i.i28.not = icmp eq ptr %.sroa.045.4, null
  br i1 %.not.i.i28.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !202 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !203
  %i.gs = icmp ult ptr %i.gp, %i.gr
  br i1 %i.gs, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31, !prof !200

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32: ; preds = %bb.ag
  %i.gt = load i8, ptr %i.gp, align 1, !tbaa !45
  br label %bb.ah

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31: ; preds = %bb.ag
  %i.gu = load ptr, ptr %.sroa.045.4, align 8, !tbaa !25
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 72
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = invoke noundef i32 %i.gw(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !788 ; 2 uses

.noexc33:                                         ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31
  %i.gy = icmp ne i32 %i.gx, -1
  call void @llvm.assume(i1 %i.gy)
  %i.gz = trunc i32 %i.gx to i8
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc33, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32, %bb.af
  %.0.i.i30 = phi i8 [ -1, %bb.af ], [ %i.gz, %.noexc33 ], [ %i.gt, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32 ]
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.1
  store i8 %.0.i.i30, ptr %i.ha, align 1, !tbaa !45
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 16 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !202 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !203
  %i.hf = icmp ult ptr %i.hc, %i.he
  br i1 %i.hf, label %bb.ai, label %bb.aj, !prof !200

bb.ai:                                            ; preds = %bb.ah
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  store ptr %i.hg, ptr %i.hb, align 8, !tbaa !202
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge

bb.aj:                                            ; preds = %bb.ah
  %i.hh = load ptr, ptr %.sroa.045.4, align 8, !tbaa !25
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 80
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = invoke noundef i32 %i.hj(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4)
          to label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !789 ; 0 uses

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge: ; preds = %bb.aj, %bb.ai
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel, !llvm.loop !791

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22, %bb.aj, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel, %bb.l, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.hl = load ptr, ptr %0, align 8, !tbaa !70    ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.c
  br i1 %i.hm, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit: ; preds = %.split, %.thr_comm, %bb.z, %.thr_comm.peel, %.split.peel, %bb.i
  %.1.lcssa61 = phi i64 [ %.013.lcssa, %bb.i ], [ %.013.lcssa, %.split.peel ], [ %.013.lcssa, %.thr_comm.peel ], [ %.1, %bb.z ], [ %.1, %.thr_comm ], [ %.1, %.split ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.1.lcssa61, ptr %5, align 8, !tbaa !69
  %i.hn = load ptr, ptr %0, align 8, !tbaa !70
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.1.lcssa61
  store i8 0, ptr %i.ho, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.hl) #31
  br label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_21vE3$_3ED0Ev"(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_21vE3$_3EE", i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !32, !range !33, !noundef !34
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_21vE3$_3ED2Ev.exit"

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7doctest6detail16ContextScopeBase7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_21vE3$_3ED2Ev.exit" unwind label %bb.c, !inline_history !90

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29, !inline_history !90
  unreachable

"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_21vE3$_3ED2Ev.exit": ; preds = %bb.a, %bb.b
  tail call void @_ZN7doctest13IContextScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %0) #28, !inline_history !90
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNK7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_21vE3$_3E9stringifyEPSo"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.doctest::String", align 8   ; 7 uses
  %3 = alloca %"struct.doctest::detail::MessageBuilder", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN7doctest6detail14MessageBuilderC1EPKciNS_10assertType4EnumE(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull @.str.5, i32 noundef 304, i32 noundef 1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !133
  %i.b = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZN7doctest6detail14MessageBuildercmIA16_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 1 dereferenceable(16) @.str.293)
          to label %_ZN7doctest6detail14MessageBuildermlIA16_cEERS1_RKT_.exit.i unwind label %bb.c

_ZN7doctest6detail14MessageBuildermlIA16_cEERS1_RKT_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !799, !nonnull !34, !align !143 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.g = invoke noundef ptr @_ZN7doctest6detail8tlssPushEv()
          to label %.noexc.i unwind label %bb.c, !noalias !800

.noexc.i:                                         ; preds = %_ZN7doctest6detail14MessageBuildermlIA16_cEERS1_RKT_.exit.i
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !70, !noalias !800
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !69, !noalias !800
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h, i64 noundef %i.j)
          to label %.noexc3.i unwind label %bb.c, !noalias !800 ; 0 uses

.noexc3.i:                                        ; preds = %.noexc.i
  invoke void @_ZN7doctest6detail7tlssPopEv(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %2)
          to label %.noexc4.i unwind label %bb.c

.noexc4.i:                                        ; preds = %.noexc3.i
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7doctestlsERSoRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %"_ZZL20DOCTEST_ANON_FUNC_21vENK3$_3clEPSo.exit" unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %.noexc4.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.body.i

bb.c:                                             ; preds = %.noexc3.i, %.noexc.i, %_ZN7doctest6detail14MessageBuildermlIA16_cEERS1_RKT_.exit.i, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.m, %bb.b ]
  call void @_ZN7doctest6detail14MessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %eh.lpad-body.i

"_ZZL20DOCTEST_ANON_FUNC_21vENK3$_3clEPSo.exit":  ; preds = %.noexc4.i
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @_ZN7doctest6detail14MessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !257
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !258
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !801
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !801
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !103
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !198

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !257
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !258
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !13
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !13
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !103
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
end_hunk_0
