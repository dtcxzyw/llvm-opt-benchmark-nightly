Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/misc?download=true
inline.NumInlined: 685
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i32 %2, ptr %3, i32 %4) local_unnamed_addr #0 comdat align 2 !guid !264 {
.peel.begin:
  %i.a = alloca i64, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 15, ptr %i.a, align 8, !tbaa !149
  %i.b = icmp eq i32 %4, -1                       ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %.not.i.i.i.i.peel = icmp ne ptr %1, null
  %i.d = icmp eq i32 %2, -1                       ; 2 uses
  %or.cond.i.i.i.i.peel = select i1 %.not.i.i.i.i.peel, i1 %i.d, i1 false
  br i1 %or.cond.i.i.i.i.peel, label %bb.a, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

bb.a:                                             ; preds = %.peel.begin
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !157  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel, !prof !159

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel: ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !109
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(64) %1) #23, !inline_history !259 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  %spec.select.peel = select i1 %i.n, ptr null, ptr %1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel: ; preds = %bb.a
  %i.o = load i8, ptr %i.f, align 1, !tbaa !139
  %i.p = zext i8 %i.o to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel, %.peel.begin
  %.sroa.032.2.peel = phi ptr [ %1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel ], [ %1, %.peel.begin ], [ %spec.select.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel ] ; 12 uses
  %.0.i.i.i.i.peel = phi i32 [ %i.p, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel ], [ %2, %.peel.begin ], [ %i.m, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel ] ; 2 uses
  %.not.i.i2.i.i.peel = icmp ne ptr %3, null
  %or.cond.i.i3.i.i.peel = select i1 %.not.i.i2.i.i.peel, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i.peel, label %bb.b, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel

bb.b:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !157
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !158
  %i.u = icmp ult ptr %i.r, %i.t
  br i1 %i.u, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel, !prof !159

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel: ; preds = %bb.b
  %i.v = load ptr, ptr %3, align 8, !tbaa !109
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(64) %3) #23, !inline_history !259 ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  %spec.select43.peel = select i1 %i.z, ptr null, ptr %3
  br label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel: ; preds = %bb.b
  %i.aa = icmp eq i32 %.0.i.i.i.i.peel, -1
  br i1 %i.aa, label %bb.c, label %.preheader

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
  %.sroa.029.2.peel = phi ptr [ %spec.select43.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel ], [ %3, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel ] ; 2 uses
  %.0.i.i4.i.i.peel = phi i32 [ %i.y, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel ], [ %4, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.peel, -1
  %i.ac = icmp eq i32 %.0.i.i4.i.i.peel, -1
  %i.ad = xor i1 %i.ab, %i.ac
  br i1 %i.ad, label %bb.c, label %.preheader

bb.c:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel
  %.sroa.029.2.peel77 = phi ptr [ %3, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.sroa.029.2.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ]
  %.not.i.i.peel = icmp ne ptr %.sroa.032.2.peel, null
  %or.cond.i.i.peel = select i1 %.not.i.i.peel, i1 %i.d, i1 false
  br i1 %or.cond.i.i.peel, label %bb.d, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.032.2.peel, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !157 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.2.peel, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !158
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel, !prof !159

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel: ; preds = %bb.d
  %i.aj = load ptr, ptr %.sroa.032.2.peel, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.032.2.peel) #23, !inline_history !260 ; 2 uses
  %i.an = icmp ne i32 %i.am, -1
  tail call void @llvm.assume(i1 %i.an)
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel: ; preds = %bb.d
  %i.ao = load i8, ptr %i.af, align 1, !tbaa !139
  %i.ap = zext i8 %i.ao to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel, %bb.c
  %.0.i.i.peel = phi i32 [ %2, %bb.c ], [ %i.am, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel ], [ %i.ap, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel ]
  %i.aq = trunc i32 %.0.i.i.peel to i8
  store i8 %i.aq, ptr %i.c, align 8, !tbaa !139
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.032.2.peel, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !157 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.032.2.peel, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !158
  %i.av = icmp ult ptr %i.as, %i.au
  br i1 %i.av, label %bb.f, label %bb.e, !prof !159

bb.e:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel
  %i.aw = load ptr, ptr %.sroa.032.2.peel, align 8, !tbaa !109
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.032.2.peel) #23, !inline_history !261 ; 0 uses
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader

bb.f:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.ba, ptr %i.ar, align 8, !tbaa !157
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader: ; preds = %bb.f, %bb.e
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader
  %.sroa.032.0 = phi ptr [ %.sroa.032.2.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %.sroa.032.2, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 6 uses
  %.sroa.029.0 = phi ptr [ %.sroa.029.2.peel77, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %.sroa.029.2, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 8 uses
  %.0 = phi i64 [ 1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %i.ey, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !157
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !158
  %i.bf = icmp ult ptr %i.bc, %i.be
  br i1 %i.bf, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, !prof !159

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel
  %i.bg = load ptr, ptr %.sroa.032.0, align 8, !tbaa !109
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef i32 %i.bi(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.032.0) #23, !inline_history !259 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, -1
  %spec.select = select i1 %i.bk, ptr null, ptr %.sroa.032.0
  %i.bl = icmp eq i32 %i.bj, -1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i
  %.sroa.032.2 = phi ptr [ %spec.select, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ], [ %.sroa.032.0, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel ] ; 11 uses
  %.0.i.i.i.i = phi i1 [ %i.bl, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel ]
  %.not.i.i2.i.i = icmp ne ptr %.sroa.029.0, null
  %or.cond.i.i3.i.i = select i1 %.not.i.i2.i.i, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i, label %bb.g, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.g:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.029.0, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !157 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.029.0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !158
  %i.bq = icmp ult ptr %i.bn, %i.bp
  br i1 %i.bq, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, !prof !159

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i: ; preds = %bb.g
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !139
  %i.bs = zext i8 %i.br to i32
  br label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i: ; preds = %bb.g
  %i.bt = load ptr, ptr %.sroa.029.0, align 8, !tbaa !109
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef i32 %i.bv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.029.0) #23, !inline_history !259 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, -1
  %spec.select43 = select i1 %i.bx, ptr null, ptr %.sroa.029.0
  br label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i
  %.sroa.029.2 = phi ptr [ %.sroa.029.0, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i ], [ %.sroa.029.0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i ], [ %spec.select43, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i ] ; 2 uses
  %.0.i.i4.i.i = phi i32 [ %i.bs, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i ], [ %4, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i ], [ %i.bw, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i ]
  %i.by = icmp eq i32 %.0.i.i4.i.i, -1
  %i.bz = xor i1 %.0.i.i.i.i, %i.by
  %i.ca = icmp samesign ult i64 %.0, 15
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %bb.r, label %.preheader

.preheader:                                       ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel
  %.sroa.029.2.lcssa = phi ptr [ %.sroa.029.2.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ %3, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.sroa.029.2, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 7 uses
  %.sroa.032.2.lcssa = phi ptr [ %.sroa.032.2.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ %.sroa.032.2.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.sroa.032.2, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 8 uses
  %.sroa.11.0.lcssa = phi i32 [ %2, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ %2, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 3 uses
  %.0.lcssa = phi i64 [ 0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ 0, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 10 uses
  %.not.i.i.i.i10.peel = icmp ne ptr %.sroa.032.2.lcssa, null
  %i.cc = icmp eq i32 %.sroa.11.0.lcssa, -1       ; 2 uses
  %or.cond.i.i.i.i11.peel = select i1 %.not.i.i.i.i10.peel, i1 %i.cc, i1 false
  br i1 %or.cond.i.i.i.i11.peel, label %bb.h, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i12.peel

bb.h:                                             ; preds = %.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.032.2.lcssa, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !157 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.032.2.lcssa, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !158
  %i.ch = icmp ult ptr %i.ce, %i.cg
  br i1 %i.ch, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i20.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i19.peel, !prof !159

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i19.peel: ; preds = %bb.h
  %i.ci = load ptr, ptr %.sroa.032.2.lcssa, align 8, !tbaa !109
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = tail call noundef i32 %i.ck(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.032.2.lcssa) #23, !inline_history !259 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, -1
  %spec.select45.peel = select i1 %i.cm, ptr null, ptr %.sroa.032.2.lcssa
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i12.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i20.peel: ; preds = %bb.h
  %i.cn = load i8, ptr %i.ce, align 1, !tbaa !139
  %i.co = zext i8 %i.cn to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i12.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i12.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i20.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i19.peel, %.preheader
  %.sroa.032.4.peel = phi ptr [ %.sroa.032.2.lcssa, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i20.peel ], [ %.sroa.032.2.lcssa, %.preheader ], [ %spec.select45.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i19.peel ] ; 10 uses
  %.0.i.i.i.i13.peel = phi i32 [ %i.co, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i20.peel ], [ %.sroa.11.0.lcssa, %.preheader ], [ %i.cl, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i19.peel ] ; 3 uses
  %.not.i.i2.i.i14.peel = icmp ne ptr %.sroa.029.2.lcssa, null
  %or.cond.i.i3.i.i15.peel = select i1 %.not.i.i2.i.i14.peel, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i15.peel, label %bb.i, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.peel

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.peel: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i12.peel
  %i.cp = icmp eq i32 %.0.i.i.i.i13.peel, -1
  %i.cq = xor i1 %i.b, %i.cp
  br i1 %i.cq, label %bb.j, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.i:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i12.peel
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.029.2.lcssa, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !157
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.029.2.lcssa, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !158
  %i.cv = icmp ult ptr %i.cs, %i.cu
  br i1 %i.cv, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i17.peel, !prof !159

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i17.peel: ; preds = %bb.i
  %i.cw = load ptr, ptr %.sroa.029.2.lcssa, align 8, !tbaa !109
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef i32 %i.cy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.029.2.lcssa) #23, !inline_history !259
  %i.da = icmp eq i32 %i.cz, -1
  br i1 %i.da, label %.split.peel, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.thr_comm.peel

.split.peel:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i17.peel
  %.not.peel = icmp eq i32 %.0.i.i.i.i13.peel, -1
  br i1 %.not.peel, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit, label %bb.j

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.thr_comm.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i17.peel, %bb.i
  %i.db = icmp eq i32 %.0.i.i.i.i13.peel, -1
  br i1 %i.db, label %bb.j, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.j:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.thr_comm.peel, %.split.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.peel
  %.sroa.029.341.peel = phi ptr [ %.sroa.029.2.lcssa, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.thr_comm.peel ], [ %.sroa.029.2.lcssa, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.peel ], [ null, %.split.peel ]
  %i.dc = load i64, ptr %i.a, align 8, !tbaa !149
  %i.dd = icmp eq i64 %.0.lcssa, %i.dc
  br i1 %i.dd, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre = load ptr, ptr %0, align 8, !tbaa !148
  %.pre54 = add nuw nsw i64 %.0.lcssa, 1
  br label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.de = add nuw nsw i64 %.0.lcssa, 1            ; 2 uses
  store i64 %i.de, ptr %i.a, align 8, !tbaa !149
  %i.df = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.0.lcssa) #23 ; 4 uses
  %i.dg = load ptr, ptr %0, align 8, !tbaa !148   ; 2 uses
  switch i64 %.0.lcssa, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
  ]

bb.l:                                             ; preds = %bb.k
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !139
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !139
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.dg, i64 %.0.lcssa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel: ; preds = %bb.m, %bb.l, %bb.k
  %i.di = load ptr, ptr %0, align 8, !tbaa !148   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.c
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !139
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel
  store ptr %i.df, ptr %0, align 8, !tbaa !148
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !149
  store i64 %i.dm, ptr %i.c, align 8, !tbaa !139
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel
  %.pre-phi = phi i64 [ %.pre54, %._crit_edge ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel ]
  %i.dn = phi ptr [ %.pre, %._crit_edge ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.0.lcssa
  %.not.i.i22.peel = icmp ne ptr %.sroa.032.4.peel, null
  %or.cond.i.i23.peel = select i1 %.not.i.i22.peel, i1 %i.cc, i1 false
  br i1 %or.cond.i.i23.peel, label %bb.o, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit27.peel

bb.o:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.032.4.peel, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !157 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.032.4.peel, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !158
  %i.dt = icmp ult ptr %i.dq, %i.ds
  br i1 %i.dt, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i26.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i25.peel, !prof !159

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i25.peel: ; preds = %bb.o
  %i.du = load ptr, ptr %.sroa.032.4.peel, align 8, !tbaa !109
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = call noundef i32 %i.dw(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.032.4.peel) #23, !inline_history !260 ; 2 uses
  %i.dy = icmp ne i32 %i.dx, -1
  call void @llvm.assume(i1 %i.dy)
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit27.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i26.peel: ; preds = %bb.o
  %i.dz = load i8, ptr %i.dq, align 1, !tbaa !139
  %i.ea = zext i8 %i.dz to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit27.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit27.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i26.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i25.peel, %bb.n
  %.0.i.i24.peel = phi i32 [ %.sroa.11.0.lcssa, %bb.n ], [ %i.dx, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i25.peel ], [ %i.ea, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i26.peel ]
  %i.eb = trunc i32 %.0.i.i24.peel to i8
  store i8 %i.eb, ptr %i.do, align 1, !tbaa !139
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.032.4.peel, i64 16 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !157 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.032.4.peel, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !158
  %i.eg = icmp ult ptr %i.ed, %i.ef
  br i1 %i.eg, label %bb.q, label %bb.p, !prof !159

bb.p:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit27.peel
  %i.eh = load ptr, ptr %.sroa.032.4.peel, align 8, !tbaa !109
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call noundef i32 %i.ej(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.032.4.peel) #23, !inline_history !261 ; 0 uses
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel.preheader

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel.preheader: ; preds = %bb.q, %bb.p
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel

bb.q:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit27.peel
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store ptr %i.el, ptr %i.ec, align 8, !tbaa !157
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel.preheader

bb.r:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.not.i.i.not = icmp eq ptr %.sroa.032.2, null
  br i1 %.not.i.i.not, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.032.2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !157 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.032.2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !158
  %i.eq = icmp ult ptr %i.en, %i.ep
  br i1 %i.eq, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, !prof !159

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i: ; preds = %bb.s
  %i.er = load i8, ptr %i.en, align 1, !tbaa !139
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i: ; preds = %bb.s
  %i.es = load ptr, ptr %.sroa.032.2, align 8, !tbaa !109
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = tail call noundef i32 %i.eu(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.032.2) #23, !inline_history !260 ; 2 uses
  %i.ew = icmp ne i32 %i.ev, -1
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = trunc i32 %i.ev to i8
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, %bb.r, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
  %.0.i.i = phi i8 [ -1, %bb.r ], [ %i.ex, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ], [ %i.er, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ]
  %i.ey = add nuw nsw i64 %.0, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0
  store i8 %.0.i.i, ptr %i.ez, align 1, !tbaa !139
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.032.2, i64 16 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !157 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.032.2, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !158
  %i.fe = icmp ult ptr %i.fb, %i.fd
  br i1 %i.fe, label %bb.t, label %bb.u, !prof !159

bb.t:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  store ptr %i.ff, ptr %i.fa, align 8, !tbaa !157
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge: ; preds = %bb.t, %bb.u
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel, !llvm.loop !262

bb.u:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.fg = load ptr, ptr %.sroa.032.2, align 8, !tbaa !109
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = tail call noundef i32 %i.fi(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.032.2) #23, !inline_history !261 ; 0 uses
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel.backedge, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel.preheader
  %.sroa.032.1 = phi ptr [ %.sroa.032.4.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel.preheader ], [ %.sroa.032.4, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel.backedge ] ; 6 uses
  %.sroa.029.1 = phi ptr [ %.sroa.029.341.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel.preheader ], [ %.sroa.029.341, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel.backedge ] ; 7 uses
  %.1 = phi i64 [ %.pre-phi, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel.preheader ], [ %.pre-phi56, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel.backedge ] ; 10 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !157
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !158
  %i.fo = icmp ult ptr %i.fl, %i.fn
  br i1 %i.fo, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i12, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i19, !prof !159

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i19: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel
  %i.fp = load ptr, ptr %.sroa.032.1, align 8, !tbaa !109
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = call noundef i32 %i.fr(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.032.1) #23, !inline_history !259 ; 2 uses
  %i.ft = icmp eq i32 %i.fs, -1
  %spec.select45 = select i1 %i.ft, ptr null, ptr %.sroa.032.1
  %i.fu = icmp eq i32 %i.fs, -1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i12

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i12: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i19
  %.sroa.032.4 = phi ptr [ %spec.select45, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i19 ], [ %.sroa.032.1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel ] ; 10 uses
  %.0.i.i.i.i13 = phi i1 [ %i.fu, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i19 ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel ] ; 3 uses
  %.not.i.i2.i.i14 = icmp ne ptr %.sroa.029.1, null
  %or.cond.i.i3.i.i15 = select i1 %.not.i.i2.i.i14, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i15, label %bb.v, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21

bb.v:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i12
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.029.1, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !157
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.029.1, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !158
  %i.fz = icmp ult ptr %i.fw, %i.fy
  br i1 %i.fz, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i17, !prof !159

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i17: ; preds = %bb.v
  %i.ga = load ptr, ptr %.sroa.029.1, align 8, !tbaa !109
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = call noundef i32 %i.gc(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.029.1) #23, !inline_history !259
  %i.ge = icmp eq i32 %i.gd, -1
  br i1 %i.ge, label %.split, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.thr_comm

.split:                                           ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i17
  br i1 %.0.i.i.i.i13, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit, label %bb.w

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.thr_comm: ; preds = %bb.v, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i17
  br i1 %.0.i.i.i.i13, label %bb.w, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i12
  %i.gf = xor i1 %i.b, %.0.i.i.i.i13
  br i1 %i.gf, label %bb.w, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.w:                                             ; preds = %.split, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21
  %.sroa.029.341 = phi ptr [ %.sroa.029.1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.thr_comm ], [ %.sroa.029.1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21 ], [ null, %.split ]
  %i.gg = load i64, ptr %i.a, align 8, !tbaa !149
  %i.gh = icmp eq i64 %.1, %i.gg
  br i1 %i.gh, label %bb.x, label %._crit_edge52

._crit_edge52:                                    ; preds = %bb.w
  %.pre53 = load ptr, ptr %0, align 8, !tbaa !148
  %.pre55 = add i64 %.1, 1
  br label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.gi = add i64 %.1, 1                          ; 2 uses
  store i64 %i.gi, ptr %i.a, align 8, !tbaa !149
  %i.gj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.1) #23 ; 4 uses
  %i.gk = load ptr, ptr %0, align 8, !tbaa !148   ; 2 uses
  switch i64 %.1, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.y:                                             ; preds = %bb.x
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !139
  store i8 %i.gl, ptr %i.gj, align 1, !tbaa !139
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gj, ptr align 1 %i.gk, i64 %.1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.x, %bb.y, %bb.z
  %i.gm = load ptr, ptr %0, align 8, !tbaa !148   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.c
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.go = load i64, ptr %i.c, align 8, !tbaa !139
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.gj, ptr %0, align 8, !tbaa !148
  %i.gq = load i64, ptr %i.a, align 8, !tbaa !149
  store i64 %i.gq, ptr %i.c, align 8, !tbaa !139
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  %.pre-phi56 = phi i64 [ %.pre55, %._crit_edge52 ], [ %i.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit ]
  %i.gr = phi ptr [ %.pre53, %._crit_edge52 ], [ %i.gj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.1
  %.not.i.i22.not = icmp eq ptr %.sroa.032.4, null
  br i1 %.not.i.i22.not, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit27, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.032.4, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !157 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.032.4, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !158
  %i.gx = icmp ult ptr %i.gu, %i.gw
  br i1 %i.gx, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i26, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i25, !prof !159

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i26: ; preds = %bb.ab
  %i.gy = load i8, ptr %i.gu, align 1, !tbaa !139
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit27

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i25: ; preds = %bb.ab
  %i.gz = load ptr, ptr %.sroa.032.4, align 8, !tbaa !109
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 72
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = call noundef i32 %i.hb(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.032.4) #23, !inline_history !260 ; 2 uses
  %i.hd = icmp ne i32 %i.hc, -1
  call void @llvm.assume(i1 %i.hd)
  %i.he = trunc i32 %i.hc to i8
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit27

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit27: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i25, %bb.aa, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i26
  %.0.i.i24 = phi i8 [ -1, %bb.aa ], [ %i.he, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i25 ], [ %i.gy, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i26 ]
  store i8 %.0.i.i24, ptr %i.gs, align 1, !tbaa !139
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.032.4, i64 16 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !157 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.032.4, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !158
  %i.hj = icmp ult ptr %i.hg, %i.hi
  br i1 %i.hj, label %bb.ac, label %bb.ad, !prof !159

bb.ac:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit27
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  store ptr %i.hk, ptr %i.hf, align 8, !tbaa !157
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel.backedge: ; preds = %bb.ac, %bb.ad
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel, !llvm.loop !263

bb.ad:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit27
  %i.hl = load ptr, ptr %.sroa.032.4, align 8, !tbaa !109
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 80
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = call noundef i32 %i.hn(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.032.4) #23, !inline_history !261 ; 0 uses
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit28.peel.backedge

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit: ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.thr_comm, %.split, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.thr_comm.peel, %.split.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.peel
  %.1.lcssa = phi i64 [ %.0.lcssa, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.peel ], [ %.0.lcssa, %.split.peel ], [ %.0.lcssa, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.thr_comm.peel ], [ %.1, %.split ], [ %.1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21.thr_comm ], [ %.1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit21 ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.1.lcssa, ptr %5, align 8, !tbaa !138
  %i.hp = load ptr, ptr %0, align 8, !tbaa !148
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.1.lcssa
  store i8 0, ptr %i.hq, align 1, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #11 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nofree nounwind }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}
!llvm.errno.tbaa = !{!22}

!0 = distinct !{}
!1 = distinct !{}
!2 = distinct !{}
!3 = distinct !{}
!4 = distinct !{}
!5 = distinct !{}
!6 = distinct !{}
!7 = distinct !{}
!8 = distinct !{}
!9 = distinct !{}
!10 = distinct !{null, null}
!11 = distinct !{null, null}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 1, !"ThinLTO", i32 0}
!16 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!17 = !{!"Ubuntu clang version 23.0.0 (++20260706082120+bf74249b5ecd-1~exp1~20260706082130.1707)"}
!18 = !{!"Simple C++ TBAA"}
!19 = !{!"omnipotent char", !18, i64 0}
!20 = !{!"int", !19, i64 0}
!21 = !{!"__libc_errno", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{i64 4935382419054602466}
!24 = !{i64 7665878768999745715}
!25 = !{i64 4532548363642905589}
!26 = !{i64 1588041309976231417}
!27 = !{i64 2643460940684254375}
!28 = !{i64 1231275296784834990}
!29 = !{i64 -8683029803189224040}
!30 = !{i64 -7669917447614957923}
!31 = !{i64 -3995665752422977333}
!32 = !{i64 -1922361070427464893}
!33 = !{i64 -5330878820286676210}
!34 = !{i64 -3783813498411351666}
!35 = !{i64 -7412451044346721562}
!36 = !{i64 3324611364397210489}
!37 = !{i64 7983994199488390327}
!38 = !{i64 7327342273063375512}
!39 = !{i64 2171632547497372316}
!40 = !{i64 38175920248855133}
!41 = !{i64 -4010873308053520230}
!42 = !{i64 -4535347029293306152}
!43 = !{i64 4105617115512440476}
!44 = !{i64 8749491063653106024}
!45 = !{i64 -7470780295322040329}
!46 = !{i64 5194588956943547931}
!47 = !{i64 -7546380479802548566}
!48 = !{i64 -2389778306695213704}
!49 = !{i64 8165021984450935471}
!50 = !{i64 8253572000134848183}
!51 = !{i64 -6489206311234861740}
!52 = !{i64 -424537041983353707}
!53 = !{i64 3397583890428101032}
!54 = !{i64 -2854976525120054619}
!55 = !{i64 8726773499563856263}
!56 = !{i64 -7055015413379184378}
!57 = !{i64 9218685314970104554}
!58 = !{i64 1722132149357238374}
!59 = !{i64 -7887942474760629774}
!60 = !{i64 334156317501055489}
!61 = !{i64 2125149022022788562}
!62 = !{i64 3560385398516936038}
!63 = !{i64 7199681213813291277}
!64 = !{i64 7735133925695038556}
!65 = !{i64 221389003513377858}
!66 = !{i64 -2389510389151265878}
!67 = !{i64 -8633653720723772078}
!68 = !{i64 -7863290196877244292}
!69 = !{i64 5416039874988165196}
!70 = !{i64 -3008063726978354147}
!71 = !{i64 -6054340926490958216}
!72 = !{i64 -2621124046697519078}
!73 = !{i64 132083289608037933}
!74 = !{i64 16, !0}
!75 = !{i64 32, !1}
!76 = !{i64 40, !2}
!77 = !{i64 48, !3}
!78 = !{i64 56, !4}
!79 = !{i64 64, !5}
!80 = !{i64 72, !6}
!81 = !{i64 80, !7}
!82 = !{i64 88, !5}
!83 = !{i64 96, !5}
!84 = !{i64 104, !8}
!85 = !{i64 112, !9}
!86 = !{i64 120, !8}
!87 = !{i64 16, !"_ZTSSt15basic_streambufIcSt11char_traitsIcEE"}
!88 = !{i64 32, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFvRKSt6localeE.virtual"}
!89 = !{i64 40, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFPS2_PclE.virtual"}
!90 = !{i64 48, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFSt4fposI11__mbstate_tElSt12_Ios_SeekdirSt13_Ios_OpenmodeE.virtual"}
!91 = !{i64 56, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFSt4fposI11__mbstate_tES5_St13_Ios_OpenmodeE.virtual"}
!92 = !{i64 64, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFivE.virtual"}
!93 = !{i64 72, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFlvE.virtual"}
!94 = !{i64 80, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFlPclE.virtual"}
!95 = !{i64 88, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFivE.virtual"}
!96 = !{i64 96, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFivE.virtual"}
!97 = !{i64 104, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFiiE.virtual"}
!98 = !{i64 112, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFlPKclE.virtual"}
!99 = !{i64 120, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFiiE.virtual"}
!100 = !{i64 -3097731162741087582}
!101 = !{i64 -8789044853101705559}
!102 = !{i64 -3485560879297809627}
!103 = !{i64 8047021879685696524}
!104 = !{i64 7838681347497651477}
!105 = !{i64 -3722069842359988547}
!106 = !{i64 -1547183612092156300}
!107 = !{i64 -1186640622619520302}
!108 = !{!"vtable pointer", !18, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!"long", !19, i64 0}
!111 = !{!"_ZTSSt13_Ios_Fmtflags", !19, i64 0}
!112 = !{!"_ZTSSt12_Ios_Iostate", !19, i64 0}
!113 = !{!"any pointer", !19, i64 0}
!114 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !113, i64 0}
!115 = !{!"_ZTSNSt8ios_base6_WordsE", !113, i64 0, !110, i64 8}
!116 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !113, i64 0}
!117 = !{!"p1 _ZTSNSt6locale5_ImplE", !113, i64 0}
!118 = !{!"_ZTSSt6locale", !117, i64 0}
!119 = !{!"_ZTSSt8ios_base", !110, i64 8, !110, i64 16, !111, i64 24, !112, i64 28, !112, i64 32, !114, i64 40, !115, i64 48, !19, i64 64, !20, i64 192, !116, i64 200, !118, i64 208}
!120 = !{!"p1 _ZTSSo", !113, i64 0}
!121 = !{!"bool", !19, i64 0}
!122 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !113, i64 0}
!123 = !{!"p1 _ZTSSt5ctypeIcE", !113, i64 0}
!124 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !113, i64 0}
!125 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !113, i64 0}
!126 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !119, i64 0, !120, i64 216, !19, i64 224, !121, i64 225, !122, i64 232, !123, i64 240, !124, i64 248, !125, i64 256}
!127 = !{!126, !120, i64 216}
!128 = !{!126, !19, i64 224}
!129 = !{!126, !121, i64 225}
!130 = !{!"_ZTSSi", !110, i64 8}
!131 = !{!130, !110, i64 8}
!132 = !{!"p1 omnipotent char", !113, i64 0}
!133 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !132, i64 8, !132, i64 16, !132, i64 24, !132, i64 32, !132, i64 40, !132, i64 48, !118, i64 56}
!134 = !{!"_ZTSSt13_Ios_Openmode", !19, i64 0}
!135 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !132, i64 0}
!136 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !135, i64 0, !110, i64 8, !19, i64 16}
!137 = !{!135, !132, i64 0}
!138 = !{!136, !110, i64 8}
end_hunk_0
