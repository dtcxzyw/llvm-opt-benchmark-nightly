Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16054
inline.NumDeleted: 5797
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNSt10filesystem7__cxx114pathdVERKS1_
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #9

declare void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i32 %2, ptr %3, i32 %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.peel.begin:
  %i.a = alloca i64, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 15, ptr %i.a, align 8, !tbaa !164
  %i.b = icmp eq i32 %4, -1                       ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %.not.i.i.i.i.peel = icmp ne ptr %1, null
  %i.d = icmp eq i32 %2, -1                       ; 2 uses
  %or.cond.i.i.i.i.peel = select i1 %.not.i.i.i.i.peel, i1 %i.d, i1 false
  br i1 %or.cond.i.i.i.i.peel, label %bb.a, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

bb.a:                                             ; preds = %.peel.begin
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2484 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2485
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel, !prof !570

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel: ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !259
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !2479 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  %spec.select.peel = select i1 %i.n, ptr null, ptr %1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel: ; preds = %bb.a
  %i.o = load i8, ptr %i.f, align 1, !tbaa !167
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
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2484
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2485
  %i.u = icmp ult ptr %i.r, %i.t
  br i1 %i.u, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel, !prof !570

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel: ; preds = %bb.b
  %i.v = load ptr, ptr %3, align 8, !tbaa !259
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(64) %3), !inline_history !2479 ; 2 uses
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
  %.sroa.042.2.peel89 = phi ptr [ %3, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.sroa.042.2.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ]
  %.not.i.i.peel = icmp ne ptr %.sroa.045.2.peel, null
  %or.cond.i.i.peel = select i1 %.not.i.i.peel, i1 %i.d, i1 false
  br i1 %or.cond.i.i.peel, label %bb.d, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2484 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2485
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel, !prof !570

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel: ; preds = %bb.d
  %i.aj = load ptr, ptr %.sroa.045.2.peel, align 8, !tbaa !259
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2.peel), !inline_history !2480 ; 2 uses
  %i.an = icmp ne i32 %i.am, -1
  tail call void @llvm.assume(i1 %i.an)
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel: ; preds = %bb.d
  %i.ao = load i8, ptr %i.af, align 1, !tbaa !167
  %i.ap = zext i8 %i.ao to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel, %bb.c
  %.0.i.i.peel = phi i32 [ %2, %bb.c ], [ %i.am, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel ], [ %i.ap, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel ]
  %i.aq = trunc i32 %.0.i.i.peel to i8
  store i8 %i.aq, ptr %i.c, align 8, !tbaa !167
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2484 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2485
  %i.av = icmp ult ptr %i.as, %i.au
  br i1 %i.av, label %bb.f, label %bb.e, !prof !570

bb.e:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel
  %i.aw = load ptr, ptr %.sroa.045.2.peel, align 8, !tbaa !259
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2.peel), !inline_history !2481 ; 0 uses
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader

bb.f:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.ba, ptr %i.ar, align 8, !tbaa !2484
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader: ; preds = %bb.f, %bb.e
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader
  %.sroa.045.0 = phi ptr [ %.sroa.045.2.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %.sroa.045.2, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 6 uses
  %.sroa.042.0 = phi ptr [ %.sroa.042.2.peel89, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %.sroa.042.2, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 8 uses
  %.013 = phi i64 [ 1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %i.ey, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2484
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2485
  %i.bf = icmp ult ptr %i.bc, %i.be
  br i1 %i.bf, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, !prof !570

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel
  %i.bg = load ptr, ptr %.sroa.045.0, align 8, !tbaa !259
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef i32 %i.bi(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.0), !inline_history !2479 ; 2 uses
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
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2484 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !2485
  %i.bq = icmp ult ptr %i.bn, %i.bp
  br i1 %i.bq, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, !prof !570

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i: ; preds = %bb.g
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !167
  %i.bs = zext i8 %i.br to i32
  br label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i: ; preds = %bb.g
  %i.bt = load ptr, ptr %.sroa.042.0, align 8, !tbaa !259
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef i32 %i.bv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.0), !inline_history !2479 ; 2 uses
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
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !2484 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.045.2.lcssa, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2485
  %i.ch = icmp ult ptr %i.ce, %i.cg
  br i1 %i.ch, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel, !prof !570

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel: ; preds = %bb.h
  %i.ci = load ptr, ptr %.sroa.045.2.lcssa, align 8, !tbaa !259
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef i32 %i.ck(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2.lcssa)
          to label %.noexc.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2479 ; 2 uses

.noexc.peel:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel
  %i.cm = icmp eq i32 %i.cl, -1
  %spec.select58.peel = select i1 %i.cm, ptr null, ptr %.sroa.045.2.lcssa
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel: ; preds = %bb.h
  %i.cn = load i8, ptr %i.ce, align 1, !tbaa !167
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
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !2484
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.042.2.lcssa, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !2485
  %i.cv = icmp ult ptr %i.cs, %i.cu
  br i1 %i.cv, label %.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel, !prof !570

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel: ; preds = %bb.j
  %i.cw = load ptr, ptr %.sroa.042.2.lcssa, align 8, !tbaa !259
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef i32 %i.cy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.2.lcssa)
          to label %.noexc26.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2479

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
  %i.dc = load i64, ptr %i.a, align 8, !tbaa !164
  %i.dd = icmp eq i64 %.013.lcssa, %i.dc
  br i1 %i.dd, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %0, align 8, !tbaa !166
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.de = add nuw nsw i64 %.013.lcssa, 1
  store i64 %i.de, ptr %i.a, align 8, !tbaa !164
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.013.lcssa)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.dg = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  switch i64 %.013.lcssa, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
  ]

bb.n:                                             ; preds = %bb.m
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !167
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !167
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.dg, i64 %.013.lcssa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel: ; preds = %bb.o, %bb.n, %bb.m
  %i.di = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.c
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !167
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel
  store ptr %i.df, ptr %0, align 8, !tbaa !166
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !164
  store i64 %i.dm, ptr %i.c, align 8, !tbaa !167
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel
  %i.dn = phi ptr [ %.pre, %._crit_edge ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel ]
  %.not.i.i28.peel = icmp ne ptr %.sroa.045.4.peel, null
  %or.cond.i.i29.peel = select i1 %.not.i.i28.peel, i1 %i.cc, i1 false
  br i1 %or.cond.i.i29.peel, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2484 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2485
  %i.ds = icmp ult ptr %i.dp, %i.dr
  br i1 %i.ds, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel, !prof !570

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel: ; preds = %bb.q
  %i.dt = load ptr, ptr %.sroa.045.4.peel, align 8, !tbaa !259
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = invoke noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4.peel)
          to label %.noexc33.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2480 ; 2 uses

.noexc33.peel:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel
  %i.dx = icmp ne i32 %i.dw, -1
  call void @llvm.assume(i1 %i.dx)
  br label %bb.r

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel: ; preds = %bb.q
  %i.dy = load i8, ptr %i.dp, align 1, !tbaa !167
  %i.dz = zext i8 %i.dy to i32
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel, %.noexc33.peel, %bb.p
  %.0.i.i30.peel = phi i32 [ %.sroa.11.0.lcssa, %bb.p ], [ %i.dw, %.noexc33.peel ], [ %i.dz, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel ]
  %i.ea = trunc i32 %.0.i.i30.peel to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.013.lcssa
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !167
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 16 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !2484 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !2485
  %i.eg = icmp ult ptr %i.ed, %i.ef
  br i1 %i.eg, label %bb.t, label %bb.s, !prof !570

bb.s:                                             ; preds = %bb.r
  %i.eh = load ptr, ptr %.sroa.045.4.peel, align 8, !tbaa !259
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = invoke noundef i32 %i.ej(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4.peel)
          to label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2481 ; 0 uses

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader: ; preds = %bb.t, %bb.s
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel

bb.t:                                             ; preds = %bb.r
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store ptr %i.el, ptr %i.ec, align 8, !tbaa !2484
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader

bb.u:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.not.i.i.not = icmp eq ptr %.sroa.045.2, null
  br i1 %.not.i.i.not, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !2484 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !2485
  %i.eq = icmp ult ptr %i.en, %i.ep
  br i1 %i.eq, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, !prof !570

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i: ; preds = %bb.v
  %i.er = load i8, ptr %i.en, align 1, !tbaa !167
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i: ; preds = %bb.v
  %i.es = load ptr, ptr %.sroa.045.2, align 8, !tbaa !259
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = tail call noundef i32 %i.eu(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2), !inline_history !2480 ; 2 uses
  %i.ew = icmp ne i32 %i.ev, -1
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = trunc i32 %i.ev to i8
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, %bb.u, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
  %.0.i.i = phi i8 [ -1, %bb.u ], [ %i.ex, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ], [ %i.er, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ]
  %i.ey = add nuw nsw i64 %.013, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 %.013
  store i8 %.0.i.i, ptr %i.ez, align 1, !tbaa !167
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 16 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !2484 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !2485
  %i.fe = icmp ult ptr %i.fb, %i.fd
  br i1 %i.fe, label %bb.w, label %bb.x, !prof !570

bb.w:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  store ptr %i.ff, ptr %i.fa, align 8, !tbaa !2484
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge: ; preds = %bb.w, %bb.x
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel, !llvm.loop !2482

bb.x:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.fg = load ptr, ptr %.sroa.045.2, align 8, !tbaa !259
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = tail call noundef i32 %i.fi(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2), !inline_history !2481 ; 0 uses
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader
  %.sroa.045.1 = phi ptr [ %.sroa.045.4.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.sroa.045.4, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 6 uses
  %.sroa.042.1 = phi ptr [ %.sroa.042.354.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.sroa.042.354, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 7 uses
  %.1.in = phi i64 [ %.013.lcssa, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 2 uses
  %.1 = add i64 %.1.in, 1                         ; 9 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.045.1, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !2484
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.045.1, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !2485
  %i.fo = icmp ult ptr %i.fl, %i.fn
  br i1 %i.fo, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24, !prof !570

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel
  %i.fp = load ptr, ptr %.sroa.045.1, align 8, !tbaa !259
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = invoke noundef i32 %i.fr(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2479 ; 2 uses

.noexc:                                           ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24
  %i.ft = icmp eq i32 %i.fs, -1
  %spec.select58 = select i1 %i.ft, ptr null, ptr %.sroa.045.1
  %i.fu = icmp eq i32 %i.fs, -1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel, %.noexc
  %.sroa.045.4 = phi ptr [ %spec.select58, %.noexc ], [ %.sroa.045.1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel ] ; 10 uses
  %.0.i.i.i.i18 = phi i1 [ %i.fu, %.noexc ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel ] ; 3 uses
  %.not.i.i2.i.i19 = icmp ne ptr %.sroa.042.1, null
  %or.cond.i.i3.i.i20 = select i1 %.not.i.i2.i.i19, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i20, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.042.1, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !2484
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.042.1, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !2485
  %i.fz = icmp ult ptr %i.fw, %i.fy
  br i1 %i.fz, label %.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22, !prof !570

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22: ; preds = %bb.y
  %i.ga = load ptr, ptr %.sroa.042.1, align 8, !tbaa !259
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = invoke noundef i32 %i.gc(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.1)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2479

.noexc26:                                         ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22
  %i.ge = icmp eq i32 %i.gd, -1
  br i1 %i.ge, label %.split, label %.thr_comm

.split:                                           ; preds = %.noexc26
  br i1 %.0.i.i.i.i18, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit, label %bb.aa

.thr_comm:                                        ; preds = %bb.y, %.noexc26
  br i1 %.0.i.i.i.i18, label %bb.aa, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.z:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17
  %i.gf = xor i1 %i.b, %.0.i.i.i.i18
  br i1 %i.gf, label %bb.aa, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.aa:                                            ; preds = %.split, %.thr_comm, %bb.z
  %.sroa.042.354 = phi ptr [ %.sroa.042.1, %.thr_comm ], [ %.sroa.042.1, %bb.z ], [ null, %.split ]
  %i.gg = load i64, ptr %i.a, align 8, !tbaa !164
  %i.gh = icmp eq i64 %.1, %i.gg
  br i1 %i.gh, label %bb.ab, label %._crit_edge67

._crit_edge67:                                    ; preds = %bb.aa
  %.pre68 = load ptr, ptr %0, align 8, !tbaa !166
  br label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.gi = add i64 %.1.in, 2
  store i64 %i.gi, ptr %i.a, align 8, !tbaa !164
  %i.gj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.1)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ac:                                            ; preds = %bb.ab
  %i.gk = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  switch i64 %.1, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !167
  store i8 %i.gl, ptr %i.gj, align 1, !tbaa !167
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gj, ptr align 1 %i.gk, i64 %.1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.gm = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.c
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.go = load i64, ptr %i.c, align 8, !tbaa !167
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.gj, ptr %0, align 8, !tbaa !166
  %i.gq = load i64, ptr %i.a, align 8, !tbaa !164
  store i64 %i.gq, ptr %i.c, align 8, !tbaa !167
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  %i.gr = phi ptr [ %.pre68, %._crit_edge67 ], [ %i.gj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit ]
  %.not.i.i28.not = icmp eq ptr %.sroa.045.4, null
  br i1 %.not.i.i28.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !2484 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !2485
  %i.gw = icmp ult ptr %i.gt, %i.gv
  br i1 %i.gw, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31, !prof !570

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32: ; preds = %bb.ag
  %i.gx = load i8, ptr %i.gt, align 1, !tbaa !167
  br label %bb.ah

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31: ; preds = %bb.ag
  %i.gy = load ptr, ptr %.sroa.045.4, align 8, !tbaa !259
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 72
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = invoke noundef i32 %i.ha(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2480 ; 2 uses

.noexc33:                                         ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31
  %i.hc = icmp ne i32 %i.hb, -1
  call void @llvm.assume(i1 %i.hc)
  %i.hd = trunc i32 %i.hb to i8
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc33, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32, %bb.af
  %.0.i.i30 = phi i8 [ -1, %bb.af ], [ %i.hd, %.noexc33 ], [ %i.gx, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32 ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.1
  store i8 %.0.i.i30, ptr %i.he, align 1, !tbaa !167
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 16 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !2484 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !2485
  %i.hj = icmp ult ptr %i.hg, %i.hi
  br i1 %i.hj, label %bb.ai, label %bb.aj, !prof !570

bb.ai:                                            ; preds = %bb.ah
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  store ptr %i.hk, ptr %i.hf, align 8, !tbaa !2484
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge

bb.aj:                                            ; preds = %bb.ah
  %i.hl = load ptr, ptr %.sroa.045.4, align 8, !tbaa !259
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 80
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = invoke noundef i32 %i.hn(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4)
          to label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2481 ; 0 uses

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge: ; preds = %bb.aj, %bb.ai
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel, !llvm.loop !2483

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22, %bb.aj, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel, %bb.l, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.hp = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.c
  br i1 %i.hq, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit: ; preds = %.split, %.thr_comm, %bb.z, %.thr_comm.peel, %.split.peel, %bb.i
  %.1.lcssa61 = phi i64 [ %.013.lcssa, %bb.i ], [ %.013.lcssa, %.split.peel ], [ %.013.lcssa, %.thr_comm.peel ], [ %.1, %bb.z ], [ %.1, %.thr_comm ], [ %.1, %.split ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.1.lcssa61, ptr %5, align 8, !tbaa !168
  %i.hr = load ptr, ptr %0, align 8, !tbaa !166
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.1.lcssa61
  store i8 0, ptr %i.hs, align 1, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ht = load i64, ptr %i.c, align 8, !tbaa !167
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hu) #41
  br label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EPFS5_RKS5_EE9_M_invokeERKSt9_Any_dataOS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !181, !noalias !2491
  tail call void %i.a(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2), !inline_history !2490
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EPFS5_RKS5_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !181
  br label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_E, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !181
  br label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4crow8mustache10template_t15render_internalEiiRSt6vectorIPKNS_4json6wvalueESaIS6_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.crow::mustache::template_t", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.crow::mustache::template_t", align 8 ; 15 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !168
  %i.h = sext i32 %5 to i64
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.g, i64 noundef 0, i64 noundef %i.h, i8 noundef signext 32) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc.exit, %bb.a
  %i.j = icmp slt i32 %1, %2
  br i1 %i.j, label %.lr.ph521, label %._crit_edge522

.lr.ph521:                                        ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 20 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph521, %_ZNSt6vectorIPKN4crow4json6wvalueESaIS4_EE12emplace_backIJPS2_EEERS4_DpOT_.exit
  %.0291519 = phi i32 [ %1, %.lr.ph521 ], [ %i.uk, %_ZNSt6vectorIPKN4crow4json6wvalueESaIS4_EE12emplace_backIJPS2_EEERS4_DpOT_.exit ] ; 19 uses
  %i.au = sext i32 %.0291519 to i64               ; 2 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !1004
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load ptr, ptr %i.k, align 8, !tbaa !1000
  %i.ay = getelementptr inbounds nuw [20 x i8], ptr %i.ax, i64 %i.au ; 16 uses
  %.sroa.030.0.copyload = load i64, ptr %i.aw, align 4
  call void @_ZNK4crow8mustache10template_t15render_fragmentESt4pairIiiEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 %.sroa.030.0.copyload, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 4 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !1060
  switch i32 %i.ba, label %bb.du [
    i32 0, label %_ZNSt6vectorIPKN4crow4json6wvalueESaIS4_EE12emplace_backIJPS2_EEERS4_DpOT_.exit
    i32 6, label %bb.d
    i32 2, label %bb.o
    i32 1, label %bb.o
    i32 5, label %bb.bi
    i32 3, label %bb.cq
    i32 4, label %bb.dt
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !2517)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !1057, !noalias !2517 ; 2 uses
  %i.bd = sext i32 %i.bc to i64                   ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !1058, !noalias !2517
  call void @llvm.experimental.noalias.scope.decl(metadata !2518)
  %i.bg = load i64, ptr %i.m, align 8, !tbaa !168, !noalias !2519 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, %i.bd
  br i1 %i.bh, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.273, i64 noundef %i.bd, i64 noundef %i.bg) #39, !noalias !2519
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.bi = sub nsw i32 %i.bf, %i.bc
  %i.bj = sext i32 %i.bi to i64
  store ptr %i.am, ptr %6, align 8, !tbaa !162, !alias.scope !2519
  %i.bk = load ptr, ptr %i.n, align 8, !tbaa !166, !noalias !2519
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bd ; 2 uses
  %i.bm = sub nuw i64 %i.bg, %i.bd
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bm) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40, !noalias !2519
  store i64 %spec.select.i.i.i.i, ptr %i.e, align 8, !tbaa !164, !noalias !2519
  %i.bn = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.bn, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.bo = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.bo, ptr %6, align 8, !tbaa !166, !alias.scope !2519
  %i.bp = load i64, ptr %i.e, align 8, !tbaa !164, !noalias !2519
  store i64 %i.bp, ptr %i.am, align 8, !tbaa !167, !alias.scope !2519
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.bq = phi ptr [ %i.bo, %.noexc10.i.i.i ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNK4crow8mustache10template_t8tag_nameB5cxx11ERKNS0_6ActionE.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.br = load i8, ptr %i.bl, align 1, !tbaa !167
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !167
  br label %_ZNK4crow8mustache10template_t8tag_nameB5cxx11ERKNS0_6ActionE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN4crow6Router14handle_initialERNS_7requestERNS_8responseE:_ZNSt6vectorImSaImEEC2ERKS1_.exit.i
  br label %bb.ea

bb.t:                                             ; preds = %bb.n
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.q, %bb.o
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %8) #40
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn131 = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.cy, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %bb.ea

bb.w:                                             ; preds = %bb.m, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store i32 404, ptr %9, align 8, !tbaa !539
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store ptr %i.db, ptr %i.da, align 8, !tbaa !162
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.dc, align 8, !tbaa !168
  store i8 0, ptr %i.db, align 8, !tbaa !167
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !540
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store i64 1, ptr %i.df, align 8, !tbaa !541
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dh, align 8, !tbaa !179
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.di, i8 0, i64 19, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dj, i8 0, i64 64, i1 false)
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !162
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 176
  store i64 0, ptr %i.dm, align 8, !tbaa !168
  store i8 0, ptr %i.dl, align 8, !tbaa !167
  %i.dn = call noundef nonnull align 8 dereferenceable(352) ptr @_ZN4crow8responseaSEOS0_(ptr noundef nonnull align 8 dereferenceable(352) %3, ptr noundef nonnull align 8 dereferenceable(352) %9) #40 ; 0 uses
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !166 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.dl
  br i1 %i.dp, label %_ZN4crow8response16static_file_infoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  %i.dq = load i64, ptr %i.dl, align 8, !tbaa !167
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #41
  br label %_ZN4crow8response16static_file_infoD2Ev.exit.i

_ZN4crow8response16static_file_infoD2Ev.exit.i:   ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !246 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN4crow8response16static_file_infoD2Ev.exit.i
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 2 uses
  %i.dv = invoke noundef zeroext i1 %i.dt(ptr noundef nonnull align 8 dereferenceable(32) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %i.du, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.x, %_ZN4crow8response16static_file_infoD2Ev.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !246 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.dz, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ea = invoke noundef zeroext i1 %i.dz(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %i.dj, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.z, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ed = load ptr, ptr %i.dg, align 8, !tbaa !542 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.ee, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.ed, %_ZNSt14_Function_baseD2Ev.exit2.i ] ; 6 uses
  %i.ee = load ptr, ptr %.06.i.i.i, align 8, !tbaa !237 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !166 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i323: ; preds = %.lr.ph.i.i.i
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !167
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i323
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !166 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !167
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #41
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #41
  %.not.i.i.i324 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i324, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.er = load ptr, ptr %i.dd, align 8, !tbaa !540
  %i.es = load i64, ptr %i.df, align 8, !tbaa !541
  %i.et = shl i64 %i.es, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.er, i8 0, i64 %i.et, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  %i.eu = load ptr, ptr %i.dd, align 8, !tbaa !540 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.de
  br i1 %i.ev, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i
  %i.ew = load i64, ptr %i.df, align 8, !tbaa !541
  %i.ex = shl i64 %i.ew, 3
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #41
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, %bb.ab
  %i.ey = load ptr, ptr %i.da, align 8, !tbaa !166 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.db
  br i1 %i.ez, label %_ZN4crow8responseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit
  %i.fa = load i64, ptr %i.db, align 8, !tbaa !167
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #41
  br label %_ZN4crow8responseD2Ev.exit

_ZN4crow8responseD2Ev.exit:                       ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  invoke void @_ZN4crow8response3endEv(ptr noundef nonnull align 8 dereferenceable(352) %3)
          to label %.critedge unwind label %bb.db

bb.ac:                                            ; preds = %_ZN4crow21routing_handle_resultaSEOS0_.exit147, %_ZN4crow21routing_handle_resultaSEOS0_.exit
  %.097 = phi i8 [ %i.f, %_ZN4crow21routing_handle_resultaSEOS0_.exit ], [ 1, %_ZN4crow21routing_handle_resultaSEOS0_.exit147 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i8 1, ptr %i.fc, align 8, !tbaa !564
  store i8 %.097, ptr %i.r, align 8, !tbaa !1469
  br label %.critedge

bb.ad:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.fd, ptr %10, align 8, !tbaa !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.fd, ptr noundef nonnull align 1 dereferenceable(13) @.str.470, i64 13, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 10 uses
  store i64 13, ptr %i.fe, align 8, !tbaa !168
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 29
  store i8 0, ptr %i.ff, align 1, !tbaa !167
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !168
  %i.fj = icmp eq i64 %i.fi, 2
  br i1 %i.fj, label %.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader: ; preds = %.split, %bb.ad
  %i.fk = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  br label %bb.ax

.split:                                           ; preds = %bb.ad
  %i.fn = load ptr, ptr %i.fg, align 8, !tbaa !166
  %i.fo = load i16, ptr %i.fn, align 1
  %i.fp = icmp ne i16 %i.fo, 10799
  %i.fq = zext i1 %i.fp to i32
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

bb.ae:                                            ; preds = %.split
  %i.fs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 17 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !1142
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !1142
  %i.fy = icmp eq ptr %i.fv, %i.fx
  br i1 %i.fy, label %.peel.next, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel: ; preds = %bb.ae
  %i.fz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.263, i64 noundef 2)
          to label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !3265)
  store ptr %i.fs, ptr %11, align 8, !tbaa !162, !alias.scope !3265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40, !noalias !3265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.fs, ptr noundef nonnull align 1 dereferenceable(6) @.str.476, i64 6, i1 false)
  store i64 6, ptr %i.ft, align 8, !tbaa !168, !alias.scope !3265
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i8 0, ptr %i.ga, align 2, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40, !noalias !3265
  %i.gb = load i64, ptr %i.fe, align 8, !tbaa !168
  %i.gc = add i64 %i.gb, -4611686018427387898
  %i.gd = icmp ult i64 %i.gc, 6
  br i1 %i.gd, label %.loopexit442, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit.peel
  %i.ge = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.fs, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel
  %i.gf = load ptr, ptr %11, align 8, !tbaa !166  ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.fs
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel
  %i.gh = load i64, ptr %i.fs, align 8, !tbaa !167
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.ae
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1142
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !1142
  %i.gn = icmp eq ptr %i.gk, %i.gm
  br i1 %i.gn, label %.peel.next421.preheader, label %bb.af

bb.af:                                            ; preds = %.peel.next
  %i.go = load i64, ptr %i.fe, align 8, !tbaa !168
  %i.gp = and i64 %i.go, -2
  %i.gq = icmp eq i64 %i.gp, 4611686018427387902
  br i1 %i.gq, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel408

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel408: ; preds = %bb.af
  %i.gr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.263, i64 noundef 2)
          to label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit.peel413 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit.peel413: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel408
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !3266)
  store ptr %i.fs, ptr %11, align 8, !tbaa !162, !alias.scope !3266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40, !noalias !3266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.fs, ptr noundef nonnull align 1 dereferenceable(3) @.str.477, i64 3, i1 false)
  store i64 3, ptr %i.ft, align 8, !tbaa !168, !alias.scope !3266
  %i.gs = getelementptr inbounds nuw i8, ptr %11, i64 19
  store i8 0, ptr %i.gs, align 1, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40, !noalias !3266
  %i.gt = load i64, ptr %i.fe, align 8, !tbaa !168
  %i.gu = add i64 %i.gt, -4611686018427387901
  %i.gv = icmp ult i64 %i.gu, 3
  br i1 %i.gv, label %.loopexit442, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel414: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit.peel413
  %i.gw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.fs, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel415 unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel414
  %i.gx = load ptr, ptr %11, align 8, !tbaa !166  ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.fs
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel416

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel416: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel415
  %i.gz = load i64, ptr %i.fs, align 8, !tbaa !167
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel418

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel418: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel415, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel416
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %.peel.next421.preheader

.peel.next421.preheader:                          ; preds = %.peel.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel418
  br label %.peel.next421

.peel.next421:                                    ; preds = %.peel.next421.preheader, %bb.ak
  %indvars.iv403 = phi i64 [ %indvars.iv.next404, %bb.ak ], [ 3, %.peel.next421.preheader ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %indvars.iv403 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 120
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !1142
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 128
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !1142
  %i.hg = icmp eq ptr %i.hd, %i.hf
  br i1 %i.hg, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %.peel.next421
  %i.hh = load i64, ptr %i.fe, align 8, !tbaa !168
  %i.hi = and i64 %i.hh, -2
  %i.hj = icmp eq i64 %i.hi, 4611686018427387902
  br i1 %i.hj, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.ag
  %i.hk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.263, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !3267)
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %indvars.iv403
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !553, !noalias !3267 ; 3 uses
  store ptr %i.fs, ptr %11, align 8, !tbaa !162, !alias.scope !3267
  %i.hn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hm) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40, !noalias !3267
  store i64 %i.hn, ptr %i.e, align 8, !tbaa !164, !noalias !3267
  %i.ho = icmp ugt i64 %i.hn, 15
  br i1 %i.ho, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.hp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc153 unwind label %bb.aj ; 2 uses

.noexc153:                                        ; preds = %.noexc.i.i
  store ptr %i.hp, ptr %11, align 8, !tbaa !166, !alias.scope !3267
  %i.hq = load i64, ptr %i.e, align 8, !tbaa !164, !noalias !3267
  store i64 %i.hq, ptr %i.fs, align 8, !tbaa !167, !alias.scope !3267
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.hr = phi ptr [ %i.hp, %.noexc153 ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit ] ; 2 uses
  switch i64 %i.hn, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  %i.hs = load i8, ptr %i.hm, align 1, !tbaa !167
  store i8 %i.hs, ptr %i.hr, align 1, !tbaa !167
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hr, ptr nonnull align 1 %i.hm, i64 %i.hn, i1 false)
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i.i
  %i.ht = load i64, ptr %i.e, align 8, !tbaa !164, !noalias !3267 ; 2 uses
  store i64 %i.ht, ptr %i.ft, align 8, !tbaa !168, !alias.scope !3267
  %i.hu = load ptr, ptr %11, align 8, !tbaa !166, !alias.scope !3267
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.ht
  store i8 0, ptr %i.hv, align 1, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40, !noalias !3267
  %i.hw = load i64, ptr %i.ft, align 8, !tbaa !168 ; 2 uses
  %i.hx = load i64, ptr %i.fe, align 8, !tbaa !168
  %i.hy = sub i64 4611686018427387903, %i.hx
  %i.hz = icmp ult i64 %i.hy, %i.hw
  br i1 %i.hz, label %.loopexit442, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

.loopexit442:                                     ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit.peel413, %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit.peel
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.237) #39
          to label %.noexc155 unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp

.noexc155:                                        ; preds = %.loopexit442
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.ia = load ptr, ptr %11, align 8, !tbaa !166
  %i.ib = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.ia, i64 noundef %i.hw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.ic = load ptr, ptr %11, align 8, !tbaa !166  ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.fs
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ie = load i64, ptr %i.fs, align 8, !tbaa !167
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.ak

bb.aj:                                            ; preds = %.noexc.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel414, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel, %.loopexit442
  %lpad.loopexit.split-lp607 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = load ptr, ptr %11, align 8, !tbaa !166  ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.fs
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp
  %i.ii = load i64, ptr %i.fs, align 8, !tbaa !167
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157, %bb.aj
  %.pn124 = phi { ptr, i32 } [ %lpad.loopexit, %bb.aj ], [ %lpad.loopexit.split-lp607, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157 ], [ %lpad.loopexit.split-lp607, %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

bb.ak:                                            ; preds = %.peel.next421, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %exitcond406.not = icmp eq i64 %indvars.iv.next404, 34
  br i1 %exitcond406.not, label %.loopexit446, label %.peel.next421, !llvm.loop !3259

.loopexit446:                                     ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  store i32 204, ptr %12, align 8, !tbaa !539
  %i.ik = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 4 uses
  store ptr %i.il, ptr %i.ik, align 8, !tbaa !162
  %i.im = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.im, align 8, !tbaa !168
  store i8 0, ptr %i.il, align 8, !tbaa !167
  %i.in = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 2 uses
  store ptr %i.io, ptr %i.in, align 8, !tbaa !540
  %i.ip = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 3 uses
  store i64 1, ptr %i.ip, align 8, !tbaa !541
  %i.iq = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %12, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iq, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ir, align 8, !tbaa !179
  %i.is = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.it = getelementptr inbounds nuw i8, ptr %12, i64 104 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %12, i64 168 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %12, i64 184 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.is, i8 0, i64 19, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.it, i8 0, i64 64, i1 false)
  store ptr %i.iv, ptr %i.iu, align 8, !tbaa !162
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 176
  store i64 0, ptr %i.iw, align 8, !tbaa !168
  store i8 0, ptr %i.iv, align 8, !tbaa !167
  %i.ix = call noundef nonnull align 8 dereferenceable(352) ptr @_ZN4crow8responseaSEOS0_(ptr noundef nonnull align 8 dereferenceable(352) %3, ptr noundef nonnull align 8 dereferenceable(352) %12) #40 ; 0 uses
  %i.iy = load ptr, ptr %i.iu, align 8, !tbaa !166 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.iv
  br i1 %i.iz, label %_ZN4crow8response16static_file_infoD2Ev.exit.i161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i160: ; preds = %.loopexit446
  %i.ja = load i64, ptr %i.iv, align 8, !tbaa !167
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #41
  br label %_ZN4crow8response16static_file_infoD2Ev.exit.i161

_ZN4crow8response16static_file_infoD2Ev.exit.i161: ; preds = %.loopexit446, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i160
  %i.jc = getelementptr inbounds nuw i8, ptr %12, i64 152
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !246 ; 2 uses
  %.not.i.i162 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i162, label %_ZNSt14_Function_baseD2Ev.exit.i163, label %bb.al

bb.al:                                            ; preds = %_ZN4crow8response16static_file_infoD2Ev.exit.i161
  %i.je = getelementptr inbounds nuw i8, ptr %12, i64 136 ; 2 uses
  %i.jf = invoke noundef zeroext i1 %i.jd(ptr noundef nonnull align 8 dereferenceable(32) %i.je, ptr noundef nonnull align 8 dereferenceable(32) %i.je, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i163 unwind label %bb.am ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  call void @__clang_call_terminate(ptr %i.jh) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i163:              ; preds = %bb.al, %_ZN4crow8response16static_file_infoD2Ev.exit.i161
  %i.ji = getelementptr inbounds nuw i8, ptr %12, i64 120
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !246 ; 2 uses
  %.not.i1.i164 = icmp eq ptr %i.jj, null
  br i1 %.not.i1.i164, label %_ZNSt14_Function_baseD2Ev.exit2.i165, label %bb.an

bb.an:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i163
  %i.jk = invoke noundef zeroext i1 %i.jj(ptr noundef nonnull align 8 dereferenceable(32) %i.it, ptr noundef nonnull align 8 dereferenceable(32) %i.it, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i165 unwind label %bb.ao ; 0 uses

bb.ao:                                            ; preds = %bb.an
end_hunk_1
