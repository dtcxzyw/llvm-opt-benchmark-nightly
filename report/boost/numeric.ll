Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/numeric?download=true
inline.NumInlined: 1727
inline.NumDeleted: 449
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11IlEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a
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
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call noundef i32 %i.eg(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.0), !inline_history !21
  %i.ei = icmp eq i32 %i.eh, -1                   ; 2 uses
  %spec.select331.peel = select i1 %i.ei, ptr null, ptr %.sroa.0266.0
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175.peel
  %.sroa.0266.13.peel = phi ptr [ %spec.select331.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185.peel ], [ %.sroa.0266.0, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175.peel ] ; 10 uses
  %.0.i.i.i.i179.peel = phi i1 [ %i.ei, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185.peel ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175.peel ] ; 3 uses
  %.not.i.i2.i.i180.peel = icmp ne ptr %.sroa.0.0, null
  %or.cond.i.i3.i.i181.peel = select i1 %.not.i.i2.i.i180.peel, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i181.peel, label %bb.v, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178.peel
  %i.ej = xor i1 %i.w, %.0.i.i.i.i179.peel
  br i1 %i.ej, label %bb.w, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge

bb.v:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178.peel
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !139
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !140
  %i.eo = icmp ult ptr %i.el, %i.en
  br i1 %i.eo, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i183.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i183.peel: ; preds = %bb.v
  %i.ep = load ptr, ptr %.sroa.0.0, align 8, !tbaa !54
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call noundef i32 %i.er(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0), !inline_history !21
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %.split302.peel, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel

.split302.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i183.peel
  br i1 %.0.i.i.i.i179.peel, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge, label %bb.w

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i183.peel, %bb.v
  br i1 %.0.i.i.i.i179.peel, label %bb.w, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge

bb.w:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel, %.split302.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel
  %.sroa.0.7301.peel = phi ptr [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ null, %.split302.peel ]
  %.not.i.i188.not.peel = icmp eq ptr %.sroa.0266.13.peel, null
  br i1 %.not.i.i188.not.peel, label %.peel.next.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0266.13.peel, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !139 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0266.13.peel, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !140
  %i.ey = icmp ult ptr %i.ev, %i.ex
  br i1 %i.ey, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191.peel: ; preds = %bb.x
  %i.ez = load ptr, ptr %.sroa.0266.13.peel, align 8, !tbaa !54
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call noundef i32 %i.fb(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.13.peel), !inline_history !19 ; 2 uses
  %i.fd = icmp eq i32 %i.fc, -1
  %spec.select333.peel = select i1 %i.fd, ptr null, ptr %.sroa.0266.13.peel
  %i.fe = trunc i32 %i.fc to i8
  br label %.peel.next.preheader

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192.peel: ; preds = %bb.x
  %i.ff = load i8, ptr %i.ev, align 1, !tbaa !55
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191.peel, %bb.w
  %.1291363.ph = phi i8 [ -1, %bb.w ], [ %i.fe, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191.peel ], [ %i.ff, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192.peel ]
  %.sroa.0266.1360.ph = phi ptr [ null, %bb.w ], [ %spec.select333.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191.peel ], [ %.sroa.0266.13.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192.peel ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193
  %.0118367 = phi i32 [ %.1119, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %spec.select157.peel, %.peel.next.preheader ] ; 6 uses
  %.0125366 = phi i8 [ %.1126, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ 1, %.peel.next.preheader ] ; 3 uses
  %.0137364 = phi i32 [ %.3140, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %spec.select.peel, %.peel.next.preheader ] ; 9 uses
  %.1291363 = phi i8 [ %.0.i.i190, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %.1291363.ph, %.peel.next.preheader ] ; 13 uses
  %.sroa.0.1362 = phi ptr [ %.sroa.0.7301, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %.sroa.0.7301.peel, %.peel.next.preheader ] ; 14 uses
  %.sroa.0266.1360 = phi ptr [ %.sroa.0266.14, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %.sroa.0266.1360.ph, %.peel.next.preheader ] ; 13 uses
  %i.fg = load i8, ptr %i.de, align 8, !tbaa !100, !range !101, !noundef !102
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.peel.next
  %i.fi = load i8, ptr %i.dc, align 1, !tbaa !105
  %i.fj = icmp eq i8 %.1291363, %i.fi
  br i1 %i.fj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y, %.peel.next
  %i.fk = load i8, ptr %i.df, align 8, !tbaa !108
  %i.fl = icmp eq i8 %.1291363, %i.fk
  br i1 %i.fl, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fm = load i8, ptr %i.dg, align 2, !tbaa !55
  %i.fn = icmp ne i8 %.1291363, %i.fm
  %10 = trunc nuw i8 %.0125366 to i1              ; 2 uses
  %i.fo = icmp ne i32 %.0137364, 10
  %or.cond.not = and i1 %i.fo, %10
  %or.cond = select i1 %i.fn, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %12, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fp = add nsw i32 %.0118367, 1
  %spec.select = select i1 %i.dh, i32 8, i32 %.0137364 ; 2 uses
  %11 = icmp eq i32 %spec.select, 8
  %spec.select157 = select i1 %11, i32 0, i32 %i.fp
  br label %bb.af

12:                                               ; preds = %bb.aa
  br i1 %10, label %bb.ac, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit

bb.ac:                                            ; preds = %12
  %i.fq = load i8, ptr %i.di, align 8, !tbaa !55
  %i.fr = icmp eq i8 %.1291363, %i.fq
  br i1 %i.fr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fs = load i8, ptr %i.dd, align 1, !tbaa !55
  %i.ft = icmp eq i8 %.1291363, %i.fs
  %i.fu = icmp eq i32 %.0137364, 16
  %i.fv = select i1 %i.dh, i1 true, i1 %i.fu
  %or.cond501 = select i1 %i.ft, i1 %i.fv, i1 false
  br i1 %or.cond501, label %bb.af, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit

bb.ae:                                            ; preds = %bb.ac
  %.old = icmp eq i32 %.0137364, 16
  %.old500 = select i1 %i.dh, i1 true, i1 %.old
  br i1 %.old500, label %bb.af, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit

bb.af:                                            ; preds = %bb.ad, %bb.ab, %bb.ae
  %.3140 = phi i32 [ 16, %bb.ae ], [ %spec.select, %bb.ab ], [ 16, %bb.ad ] ; 5 uses
  %.1126 = phi i8 [ 0, %bb.ae ], [ 1, %bb.ab ], [ 0, %bb.ad ] ; 5 uses
  %.1119 = phi i32 [ 0, %bb.ae ], [ %spec.select157, %bb.ab ], [ 0, %bb.ad ] ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0266.1360, i64 16 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !139 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0266.1360, i64 24 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !140 ; 2 uses
  %i.ga = icmp ult ptr %i.fx, %i.fz
  br i1 %i.ga, label %bb.ag, label %bb.ah, !prof !78

bb.ag:                                            ; preds = %bb.af
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 2 uses
  store ptr %i.gb, ptr %i.fw, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175

bb.ah:                                            ; preds = %bb.af
  %i.gc = load ptr, ptr %.sroa.0266.1360, align 8, !tbaa !54
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 80
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = call noundef i32 %i.ge(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.1360), !inline_history !20 ; 0 uses
  %.pre530 = load ptr, ptr %i.fw, align 8, !tbaa !139
  %.pre531 = load ptr, ptr %i.fy, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175: ; preds = %bb.ah, %bb.ag
  %i.gg = phi ptr [ %.pre531, %bb.ah ], [ %i.fz, %bb.ag ]
  %i.gh = phi ptr [ %.pre530, %bb.ah ], [ %i.gb, %bb.ag ]
  %i.gi = icmp ult ptr %i.gh, %i.gg
  br i1 %i.gi, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175
  %i.gj = load ptr, ptr %.sroa.0266.1360, align 8, !tbaa !54
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 72
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call noundef i32 %i.gl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.1360), !inline_history !21
  %i.gn = icmp eq i32 %i.gm, -1                   ; 2 uses
  %spec.select331 = select i1 %i.gn, ptr null, ptr %.sroa.0266.1360
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185
  %.sroa.0266.13 = phi ptr [ %spec.select331, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185 ], [ %.sroa.0266.1360, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175 ] ; 10 uses
  %.0.i.i.i.i179 = phi i1 [ %i.gn, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185 ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175 ] ; 3 uses
  %.not.i.i2.i.i180 = icmp ne ptr %.sroa.0.1362, null
  %or.cond.i.i3.i.i181 = select i1 %.not.i.i2.i.i180, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i181, label %bb.ai, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187

bb.ai:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.1362, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !139
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.1362, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !140
  %i.gs = icmp ult ptr %i.gp, %i.gr
  br i1 %i.gs, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i183, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i183: ; preds = %bb.ai
  %i.gt = load ptr, ptr %.sroa.0.1362, align 8, !tbaa !54
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 72
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = call noundef i32 %i.gv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.1362), !inline_history !21
  %i.gx = icmp eq i32 %i.gw, -1
  br i1 %i.gx, label %.split302, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm

.split302:                                        ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i183
  br i1 %.0.i.i.i.i179, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit, label %bb.aj

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm: ; preds = %bb.ai, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i183
  br i1 %.0.i.i.i.i179, label %bb.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178
  %i.gy = xor i1 %i.w, %.0.i.i.i.i179
  br i1 %i.gy, label %bb.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit

bb.aj:                                            ; preds = %.split302, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187
  %.sroa.0.7301 = phi ptr [ %.sroa.0.1362, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm ], [ %.sroa.0.1362, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ null, %.split302 ] ; 2 uses
  %.not.i.i188.not = icmp eq ptr %.sroa.0266.13, null
  br i1 %.not.i.i188.not, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0266.13, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !139 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0266.13, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !140
  %i.hd = icmp ult ptr %i.ha, %i.hc
  br i1 %i.hd, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192: ; preds = %bb.ak
  %i.he = load i8, ptr %i.ha, align 1, !tbaa !55
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191: ; preds = %bb.ak
  %i.hf = load ptr, ptr %.sroa.0266.13, align 8, !tbaa !54
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = call noundef i32 %i.hh(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.13), !inline_history !19 ; 2 uses
  %i.hj = icmp eq i32 %i.hi, -1
  %spec.select333 = select i1 %i.hj, ptr null, ptr %.sroa.0266.13
  %i.hk = trunc i32 %i.hi to i8
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191, %bb.aj, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192
  %.sroa.0266.14 = phi ptr [ %.sroa.0266.13, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192 ], [ null, %bb.aj ], [ %spec.select333, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191 ] ; 2 uses
  %.0.i.i190 = phi i8 [ %i.he, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192 ], [ -1, %bb.aj ], [ %i.hk, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191 ] ; 2 uses
  %i.hl = trunc nuw i8 %.1126 to i1
  br i1 %i.hl, label %.peel.next, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit, !llvm.loop !282

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit: ; preds = %.split302, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187, %bb.z, %bb.y, %bb.ae, %bb.ad, %12, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193
  %.1130.lcssa.ph.ph = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ false, %12 ], [ false, %bb.ad ], [ false, %bb.ae ], [ false, %bb.y ], [ false, %bb.z ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm ], [ true, %.split302 ]
  %.sroa.0266.3.ph.ph = phi ptr [ %.sroa.0266.14, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %.sroa.0266.1360, %12 ], [ %.sroa.0266.1360, %bb.ad ], [ %.sroa.0266.1360, %bb.ae ], [ %.sroa.0266.1360, %bb.y ], [ %.sroa.0266.1360, %bb.z ], [ %.sroa.0266.13, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.sroa.0266.13, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm ], [ %.sroa.0266.13, %.split302 ]
  %.sroa.0.2.ph.ph = phi ptr [ %.sroa.0.7301, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %.sroa.0.1362, %12 ], [ %.sroa.0.1362, %bb.ad ], [ %.sroa.0.1362, %bb.ae ], [ %.sroa.0.1362, %bb.y ], [ %.sroa.0.1362, %bb.z ], [ %.sroa.0.1362, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.sroa.0.1362, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm ], [ null, %.split302 ]
  %.3.ph.ph = phi i8 [ %.0.i.i190, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %.1291363, %12 ], [ %.1291363, %bb.ad ], [ %.1291363, %bb.ae ], [ %.1291363, %bb.y ], [ %.1291363, %bb.z ], [ %.1291363, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.1291363, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm ], [ %.1291363, %.split302 ]
  %.4141.ph.ph = phi i32 [ %.3140, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %.0137364, %12 ], [ %.0137364, %bb.ad ], [ %.0137364, %bb.ae ], [ %.0137364, %bb.y ], [ %.0137364, %bb.z ], [ %.3140, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.3140, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm ], [ %.3140, %.split302 ]
  %.2127.ph.ph = phi i8 [ 0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ 0, %12 ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ %.0125366, %bb.y ], [ %.0125366, %bb.z ], [ %.1126, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.1126, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm ], [ %.1126, %.split302 ]
  %.2120.ph.ph = phi i32 [ %.1119, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %.0118367, %12 ], [ %.0118367, %bb.ad ], [ %.0118367, %bb.ae ], [ %.0118367, %bb.y ], [ %.0118367, %bb.z ], [ %.1119, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.1119, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm ], [ %.1119, %.split302 ]
  %i.hm = trunc nuw i8 %.2127.ph.ph to i1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge: ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel, %.split302.peel, %bb.p, %bb.q, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit, %bb.r, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread
  %i.hn = phi ptr [ %i.db, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ %i.dc, %bb.p ], [ %i.dc, %bb.r ], [ %i.dc, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %i.dc, %bb.q ], [ %i.dc, %.split302.peel ], [ %i.dc, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %i.dc, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 2 uses
  %.0128.shrunk583 = phi i1 [ %.0128.shrunk.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ %i.az, %bb.p ], [ %i.az, %bb.r ], [ %i.az, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %i.az, %bb.q ], [ %i.az, %.split302.peel ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 2 uses
  %.1130.lcssa = phi i1 [ true, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ false, %bb.p ], [ false, %bb.r ], [ %.1130.lcssa.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ false, %bb.q ], [ true, %.split302.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 2 uses
  %.sroa.0266.3 = phi ptr [ %.sroa.0266.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ %.sroa.0266.0, %bb.p ], [ %.sroa.0266.0, %bb.r ], [ %.sroa.0266.3.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %.sroa.0266.0, %bb.q ], [ %.sroa.0266.13.peel, %.split302.peel ], [ %.sroa.0266.13.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %.sroa.0266.13.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 24 uses
  %.sroa.26.2 = phi i32 [ %.sroa.26.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ %.sroa.26.0, %bb.p ], [ %.sroa.26.0, %bb.r ], [ -1, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %.sroa.26.0, %bb.q ], [ -1, %.split302.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 8 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ %.sroa.0.0, %bb.p ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.2.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %.sroa.0.0, %bb.q ], [ null, %.split302.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 14 uses
  %.3 = phi i8 [ %.0290.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ %.0290, %bb.p ], [ %.0290, %bb.r ], [ %.3.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %.0290, %bb.q ], [ %.0290, %.split302.peel ], [ %.0290, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %.0290, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 8 uses
  %.4141 = phi i32 [ %i.i, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ %i.i, %bb.p ], [ %i.i, %bb.r ], [ %.4141.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %i.i, %bb.q ], [ %spec.select.peel, %.split302.peel ], [ %spec.select.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %spec.select.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 3 uses
  %.2127 = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ false, %bb.p ], [ false, %bb.r ], [ %i.hm, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ false, %bb.q ], [ true, %.split302.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ]
  %.2120 = phi i32 [ 0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ 0, %bb.p ], [ 0, %bb.r ], [ %.2120.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ 0, %bb.q ], [ %spec.select157.peel, %.split302.peel ], [ %spec.select157.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %spec.select157.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 11 uses
  %i.ho = icmp eq i32 %.4141, 16
  %i.hp = select i1 %i.ho, i32 22, i32 %.4141     ; 3 uses
  %i.hq = zext nneg i32 %i.hp to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.hr, ptr %9, align 8, !tbaa !64
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i64 0, ptr %i.hs, align 8, !tbaa !67
  store i8 0, ptr %i.hr, align 8, !tbaa !55
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !100, !range !101, !noundef !102
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 32)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge
  %i.hw = select i1 %.0128.shrunk583, i64 -9223372036854775808, i64 9223372036854775807 ; 4 uses
  %i.hx = zext nneg i32 %.4141 to i64             ; 3 uses
  %i.hy = udiv i64 %i.hw, %i.hx                   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 114 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ib = load i8, ptr %i.ia, align 8, !tbaa !107, !range !101, !noundef !102
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %.preheader, label %.preheader345

.preheader345:                                    ; preds = %bb.am
  br i1 %.1130.lcssa, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %.lr.ph435

.lr.ph435:                                        ; preds = %.preheader345
  %i.id = icmp ult i32 %i.hp, 11                  ; 2 uses
  %i.ie = or disjoint i32 %i.hp, 48               ; 2 uses
  %i.if = sext i8 %.3 to i32                      ; 5 uses
  br i1 %i.id, label %bb.as, label %bb.an

bb.an:                                            ; preds = %.lr.ph435
  %i.ig = add i8 %.3, -48
  %or.cond.i.peel = icmp ult i8 %i.ig, 10
  br i1 %or.cond.i.peel, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ih = add i8 %.3, -97
  %or.cond5.i.peel = icmp ult i8 %i.ih, 6
  br i1 %or.cond5.i.peel, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ii = add i8 %.3, -65
  %or.cond8.i.peel = icmp ult i8 %i.ii, 6
  %i.ij = add nsw i32 %i.if, -55
  br i1 %or.cond8.i.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.aq:                                            ; preds = %bb.ao
  %i.ik = add nsw i32 %i.if, -87
  br label %bb.at

bb.ar:                                            ; preds = %bb.an
  %i.il = add nsw i32 %i.if, -48
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph435
  %i.im = icmp sgt i8 %.3, 47
  %i.in = icmp sgt i32 %i.ie, %i.if
  %or.cond28.i.peel = select i1 %i.im, i1 %i.in, i1 false
  %i.io = add nsw i32 %i.if, -48
  br i1 %or.cond28.i.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel: ; preds = %bb.as, %bb.ap
  %.0.i.peel = phi i32 [ %i.ij, %bb.ap ], [ %i.io, %bb.as ] ; 2 uses
  %i.ip = icmp eq i32 %.0.i.peel, -1
  br i1 %i.ip, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, %bb.ar, %bb.aq
  %.0.i308.peel = phi i32 [ %.0.i.peel, %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel ], [ %i.il, %bb.ar ], [ %i.ik, %bb.aq ]
  %i.iq = sext i32 %.0.i308.peel to i64           ; 4 uses
  %i.ir = add nsw i32 %.2120, 1                   ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0266.3, i64 16 ; 3 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !139 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0266.3, i64 24 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !140 ; 2 uses
  %i.iw = icmp ult ptr %i.it, %i.iv
  br i1 %i.iw, label %bb.av, label %bb.au, !prof !78

bb.au:                                            ; preds = %bb.at
  %i.ix = load ptr, ptr %.sroa.0266.3, align 8, !tbaa !54
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 80
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = invoke noundef i32 %i.iz(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.3)
          to label %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !22 ; 0 uses

._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel_crit_edge: ; preds = %bb.au
  %.pre532 = load ptr, ptr %i.is, align 8, !tbaa !139
  %.pre533 = load ptr, ptr %i.iu, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel

bb.av:                                            ; preds = %bb.at
  %i.jb = getelementptr inbounds nuw i8, ptr %i.it, i64 1 ; 2 uses
  store ptr %i.jb, ptr %i.is, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel: ; preds = %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel_crit_edge, %bb.av
  %i.jc = phi ptr [ %.pre533, %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel_crit_edge ], [ %i.iv, %bb.av ]
  %i.jd = phi ptr [ %.pre532, %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel_crit_edge ], [ %i.jb, %bb.av ]
  %i.je = icmp ult ptr %i.jd, %i.jc
  br i1 %i.je, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i197.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i204.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i204.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel
  %i.jf = load ptr, ptr %.sroa.0266.3, align 8, !tbaa !54
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 72
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = invoke noundef i32 %i.jh(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.3)
          to label %.noexc206.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23

.noexc206.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i204.peel
  %i.jj = icmp eq i32 %i.ji, -1                   ; 2 uses
  %spec.select335.peel = select i1 %i.jj, ptr null, ptr %.sroa.0266.3
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i197.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i197.peel: ; preds = %.noexc206.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel
  %.sroa.0266.15.peel = phi ptr [ %spec.select335.peel, %.noexc206.peel ], [ %.sroa.0266.3, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel ] ; 10 uses
  %.0.i.i.i.i198.peel = phi i1 [ %i.jj, %.noexc206.peel ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel ] ; 3 uses
  %.not.i.i2.i.i199.peel = icmp ne ptr %.sroa.0.2, null
  %or.cond.i.i3.i.i200.peel = select i1 %.not.i.i2.i.i199.peel, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i200.peel, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i197.peel
  %i.jk = xor i1 %i.w, %.0.i.i.i.i198.peel
  br i1 %i.jk, label %bb.ay, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.ax:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i197.peel
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !139
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !140
  %i.jp = icmp ult ptr %i.jm, %i.jo
  br i1 %i.jp, label %.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i202.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i202.peel: ; preds = %bb.ax
  %i.jq = load ptr, ptr %.sroa.0.2, align 8, !tbaa !54
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 72
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = invoke noundef i32 %i.js(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.2)
          to label %.noexc207.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23

.noexc207.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i202.peel
  %i.ju = icmp eq i32 %i.jt, -1
  br i1 %i.ju, label %.split311.peel, label %.thr_comm.peel

.split311.peel:                                   ; preds = %.noexc207.peel
  br i1 %.0.i.i.i.i198.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %bb.ay

.thr_comm.peel:                                   ; preds = %.noexc207.peel, %bb.ax
  br i1 %.0.i.i.i.i198.peel, label %bb.ay, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.ay:                                            ; preds = %.thr_comm.peel, %.split311.peel, %bb.aw
  %.sroa.0.8310.peel = phi ptr [ %.sroa.0.2, %.thr_comm.peel ], [ %.sroa.0.2, %bb.aw ], [ null, %.split311.peel ]
  %.not.i.i209.not.peel = icmp eq ptr %.sroa.0266.15.peel, null
  br i1 %.not.i.i209.not.peel, label %.peel.next514.preheader, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0266.15.peel, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !139 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0266.15.peel, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !140
  %i.jz = icmp ult ptr %i.jw, %i.jy
  br i1 %i.jz, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i213.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i212.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i212.peel: ; preds = %bb.az
  %i.ka = load ptr, ptr %.sroa.0266.15.peel, align 8, !tbaa !54
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 72
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = invoke noundef i32 %i.kc(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.15.peel)
          to label %.noexc214.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !24 ; 2 uses

.noexc214.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i212.peel
  %i.ke = icmp eq i32 %i.kd, -1
  %spec.select337.peel = select i1 %i.ke, ptr null, ptr %.sroa.0266.15.peel
  %i.kf = trunc i32 %i.kd to i8
  br label %.peel.next514.preheader

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i213.peel: ; preds = %bb.az
  %i.kg = load i8, ptr %i.jw, align 1, !tbaa !55
  br label %.peel.next514.preheader

.peel.next514.preheader:                          ; preds = %bb.ay, %.noexc214.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i213.peel
end_hunk_0
begin_hunk_1_@_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11ItEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a
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
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call noundef i32 %i.eg(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.0), !inline_history !21
  %i.ei = icmp eq i32 %i.eh, -1                   ; 2 uses
  %spec.select330.peel = select i1 %i.ei, ptr null, ptr %.sroa.0267.0
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i179.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i179.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i186.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit176.peel
  %.sroa.0267.13.peel = phi ptr [ %spec.select330.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i186.peel ], [ %.sroa.0267.0, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit176.peel ] ; 10 uses
  %.0.i.i.i.i180.peel = phi i1 [ %i.ei, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i186.peel ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit176.peel ] ; 3 uses
  %.not.i.i2.i.i181.peel = icmp ne ptr %.sroa.0.0, null
  %or.cond.i.i3.i.i182.peel = select i1 %.not.i.i2.i.i181.peel, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i182.peel, label %bb.v, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i179.peel
  %i.ej = xor i1 %i.w, %.0.i.i.i.i180.peel
  br i1 %i.ej, label %bb.w, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge

bb.v:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i179.peel
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !139
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !140
  %i.eo = icmp ult ptr %i.el, %i.en
  br i1 %i.eo, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i184.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i184.peel: ; preds = %bb.v
  %i.ep = load ptr, ptr %.sroa.0.0, align 8, !tbaa !54
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call noundef i32 %i.er(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0), !inline_history !21
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %.split303.peel, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm.peel

.split303.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i184.peel
  br i1 %.0.i.i.i.i180.peel, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge, label %bb.w

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i184.peel, %bb.v
  br i1 %.0.i.i.i.i180.peel, label %bb.w, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge

bb.w:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm.peel, %.split303.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel
  %.sroa.0.7302.peel = phi ptr [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ null, %.split303.peel ]
  %.not.i.i189.not.peel = icmp eq ptr %.sroa.0267.13.peel, null
  br i1 %.not.i.i189.not.peel, label %.peel.next.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0267.13.peel, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !139 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0267.13.peel, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !140
  %i.ey = icmp ult ptr %i.ev, %i.ex
  br i1 %i.ey, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i193.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i192.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i192.peel: ; preds = %bb.x
  %i.ez = load ptr, ptr %.sroa.0267.13.peel, align 8, !tbaa !54
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call noundef i32 %i.fb(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.13.peel), !inline_history !19 ; 2 uses
  %i.fd = icmp eq i32 %i.fc, -1
  %spec.select332.peel = select i1 %i.fd, ptr null, ptr %.sroa.0267.13.peel
  %i.fe = trunc i32 %i.fc to i8
  br label %.peel.next.preheader

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i193.peel: ; preds = %bb.x
  %i.ff = load i8, ptr %i.ev, align 1, !tbaa !55
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i193.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i192.peel, %bb.w
  %.1292361.ph = phi i8 [ -1, %bb.w ], [ %i.fe, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i192.peel ], [ %i.ff, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i193.peel ]
  %.sroa.0267.1358.ph = phi ptr [ null, %bb.w ], [ %spec.select332.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i192.peel ], [ %.sroa.0267.13.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i193.peel ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194
  %.0117365 = phi i32 [ %.1118, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194 ], [ %spec.select158.peel, %.peel.next.preheader ] ; 6 uses
  %.0124364 = phi i8 [ %.1125, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194 ], [ 1, %.peel.next.preheader ] ; 3 uses
  %.0136362 = phi i32 [ %.3139, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194 ], [ %spec.select.peel, %.peel.next.preheader ] ; 9 uses
  %.1292361 = phi i8 [ %.0.i.i191, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194 ], [ %.1292361.ph, %.peel.next.preheader ] ; 13 uses
  %.sroa.0.1360 = phi ptr [ %.sroa.0.7302, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194 ], [ %.sroa.0.7302.peel, %.peel.next.preheader ] ; 14 uses
  %.sroa.0267.1358 = phi ptr [ %.sroa.0267.14, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194 ], [ %.sroa.0267.1358.ph, %.peel.next.preheader ] ; 13 uses
  %i.fg = load i8, ptr %i.de, align 8, !tbaa !100, !range !101, !noundef !102
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.peel.next
  %i.fi = load i8, ptr %i.dc, align 1, !tbaa !105
  %i.fj = icmp eq i8 %.1292361, %i.fi
  br i1 %i.fj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y, %.peel.next
  %i.fk = load i8, ptr %i.df, align 8, !tbaa !108
  %i.fl = icmp eq i8 %.1292361, %i.fk
  br i1 %i.fl, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fm = load i8, ptr %i.dg, align 2, !tbaa !55
  %i.fn = icmp ne i8 %.1292361, %i.fm
  %10 = trunc nuw i8 %.0124364 to i1              ; 2 uses
  %i.fo = icmp ne i32 %.0136362, 10
  %or.cond.not = and i1 %i.fo, %10
  %or.cond = select i1 %i.fn, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %12, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fp = add nsw i32 %.0117365, 1
  %spec.select = select i1 %i.dh, i32 8, i32 %.0136362 ; 2 uses
  %11 = icmp eq i32 %spec.select, 8
  %spec.select158 = select i1 %11, i32 0, i32 %i.fp
  br label %bb.af

12:                                               ; preds = %bb.aa
  br i1 %10, label %bb.ac, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit

bb.ac:                                            ; preds = %12
  %i.fq = load i8, ptr %i.di, align 8, !tbaa !55
  %i.fr = icmp eq i8 %.1292361, %i.fq
  br i1 %i.fr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fs = load i8, ptr %i.dd, align 1, !tbaa !55
  %i.ft = icmp eq i8 %.1292361, %i.fs
  %i.fu = icmp eq i32 %.0136362, 16
  %i.fv = select i1 %i.dh, i1 true, i1 %i.fu
  %or.cond499 = select i1 %i.ft, i1 %i.fv, i1 false
  br i1 %or.cond499, label %bb.af, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit

bb.ae:                                            ; preds = %bb.ac
  %.old = icmp eq i32 %.0136362, 16
  %.old498 = select i1 %i.dh, i1 true, i1 %.old
  br i1 %.old498, label %bb.af, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit

bb.af:                                            ; preds = %bb.ad, %bb.ab, %bb.ae
  %.3139 = phi i32 [ 16, %bb.ae ], [ %spec.select, %bb.ab ], [ 16, %bb.ad ] ; 5 uses
  %.1125 = phi i8 [ 0, %bb.ae ], [ 1, %bb.ab ], [ 0, %bb.ad ] ; 5 uses
  %.1118 = phi i32 [ 0, %bb.ae ], [ %spec.select158, %bb.ab ], [ 0, %bb.ad ] ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0267.1358, i64 16 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !139 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0267.1358, i64 24 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !140 ; 2 uses
  %i.ga = icmp ult ptr %i.fx, %i.fz
  br i1 %i.ga, label %bb.ag, label %bb.ah, !prof !78

bb.ag:                                            ; preds = %bb.af
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 2 uses
  store ptr %i.gb, ptr %i.fw, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit176

bb.ah:                                            ; preds = %bb.af
  %i.gc = load ptr, ptr %.sroa.0267.1358, align 8, !tbaa !54
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 80
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = call noundef i32 %i.ge(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.1358), !inline_history !20 ; 0 uses
  %.pre528 = load ptr, ptr %i.fw, align 8, !tbaa !139
  %.pre529 = load ptr, ptr %i.fy, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit176

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit176: ; preds = %bb.ah, %bb.ag
  %i.gg = phi ptr [ %.pre529, %bb.ah ], [ %i.fz, %bb.ag ]
  %i.gh = phi ptr [ %.pre528, %bb.ah ], [ %i.gb, %bb.ag ]
  %i.gi = icmp ult ptr %i.gh, %i.gg
  br i1 %i.gi, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i179, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i186, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i186: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit176
  %i.gj = load ptr, ptr %.sroa.0267.1358, align 8, !tbaa !54
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 72
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call noundef i32 %i.gl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.1358), !inline_history !21
  %i.gn = icmp eq i32 %i.gm, -1                   ; 2 uses
  %spec.select330 = select i1 %i.gn, ptr null, ptr %.sroa.0267.1358
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i179

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i179: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit176, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i186
  %.sroa.0267.13 = phi ptr [ %spec.select330, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i186 ], [ %.sroa.0267.1358, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit176 ] ; 10 uses
  %.0.i.i.i.i180 = phi i1 [ %i.gn, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i186 ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit176 ] ; 3 uses
  %.not.i.i2.i.i181 = icmp ne ptr %.sroa.0.1360, null
  %or.cond.i.i3.i.i182 = select i1 %.not.i.i2.i.i181, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i182, label %bb.ai, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188

bb.ai:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i179
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.1360, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !139
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.1360, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !140
  %i.gs = icmp ult ptr %i.gp, %i.gr
  br i1 %i.gs, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i184, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i184: ; preds = %bb.ai
  %i.gt = load ptr, ptr %.sroa.0.1360, align 8, !tbaa !54
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 72
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = call noundef i32 %i.gv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.1360), !inline_history !21
  %i.gx = icmp eq i32 %i.gw, -1
  br i1 %i.gx, label %.split303, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm

.split303:                                        ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i184
  br i1 %.0.i.i.i.i180, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit, label %bb.aj

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm: ; preds = %bb.ai, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i184
  br i1 %.0.i.i.i.i180, label %bb.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i179
  %i.gy = xor i1 %i.w, %.0.i.i.i.i180
  br i1 %i.gy, label %bb.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit

bb.aj:                                            ; preds = %.split303, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188
  %.sroa.0.7302 = phi ptr [ %.sroa.0.1360, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm ], [ %.sroa.0.1360, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188 ], [ null, %.split303 ] ; 2 uses
  %.not.i.i189.not = icmp eq ptr %.sroa.0267.13, null
  br i1 %.not.i.i189.not, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0267.13, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !139 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0267.13, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !140
  %i.hd = icmp ult ptr %i.ha, %i.hc
  br i1 %i.hd, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i193, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i192, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i193: ; preds = %bb.ak
  %i.he = load i8, ptr %i.ha, align 1, !tbaa !55
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i192: ; preds = %bb.ak
  %i.hf = load ptr, ptr %.sroa.0267.13, align 8, !tbaa !54
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = call noundef i32 %i.hh(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.13), !inline_history !19 ; 2 uses
  %i.hj = icmp eq i32 %i.hi, -1
  %spec.select332 = select i1 %i.hj, ptr null, ptr %.sroa.0267.13
  %i.hk = trunc i32 %i.hi to i8
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i192, %bb.aj, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i193
  %.sroa.0267.14 = phi ptr [ %.sroa.0267.13, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i193 ], [ null, %bb.aj ], [ %spec.select332, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i192 ] ; 2 uses
  %.0.i.i191 = phi i8 [ %i.he, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i193 ], [ -1, %bb.aj ], [ %i.hk, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i192 ] ; 2 uses
  %i.hl = trunc nuw i8 %.1125 to i1
  br i1 %i.hl, label %.peel.next, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit, !llvm.loop !285

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit: ; preds = %.split303, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188, %bb.z, %bb.y, %bb.ae, %bb.ad, %12, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194
  %.1129.lcssa.ph.ph = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194 ], [ false, %12 ], [ false, %bb.ad ], [ false, %bb.ae ], [ false, %bb.y ], [ false, %bb.z ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188 ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm ], [ true, %.split303 ]
  %.sroa.0267.3.ph.ph = phi ptr [ %.sroa.0267.14, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194 ], [ %.sroa.0267.1358, %12 ], [ %.sroa.0267.1358, %bb.ad ], [ %.sroa.0267.1358, %bb.ae ], [ %.sroa.0267.1358, %bb.y ], [ %.sroa.0267.1358, %bb.z ], [ %.sroa.0267.13, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188 ], [ %.sroa.0267.13, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm ], [ %.sroa.0267.13, %.split303 ]
  %.sroa.0.2.ph.ph = phi ptr [ %.sroa.0.7302, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194 ], [ %.sroa.0.1360, %12 ], [ %.sroa.0.1360, %bb.ad ], [ %.sroa.0.1360, %bb.ae ], [ %.sroa.0.1360, %bb.y ], [ %.sroa.0.1360, %bb.z ], [ %.sroa.0.1360, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188 ], [ %.sroa.0.1360, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm ], [ null, %.split303 ]
  %.3.ph.ph = phi i8 [ %.0.i.i191, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194 ], [ %.1292361, %12 ], [ %.1292361, %bb.ad ], [ %.1292361, %bb.ae ], [ %.1292361, %bb.y ], [ %.1292361, %bb.z ], [ %.1292361, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188 ], [ %.1292361, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm ], [ %.1292361, %.split303 ]
  %.4140.ph.ph = phi i32 [ %.3139, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194 ], [ %.0136362, %12 ], [ %.0136362, %bb.ad ], [ %.0136362, %bb.ae ], [ %.0136362, %bb.y ], [ %.0136362, %bb.z ], [ %.3139, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188 ], [ %.3139, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm ], [ %.3139, %.split303 ]
  %.2126.ph.ph = phi i8 [ 0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194 ], [ 0, %12 ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ %.0124364, %bb.y ], [ %.0124364, %bb.z ], [ %.1125, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188 ], [ %.1125, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm ], [ %.1125, %.split303 ]
  %.2119.ph.ph = phi i32 [ %.1118, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194 ], [ %.0117365, %12 ], [ %.0117365, %bb.ad ], [ %.0117365, %bb.ae ], [ %.0117365, %bb.y ], [ %.0117365, %bb.z ], [ %.1118, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188 ], [ %.1118, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm ], [ %.1118, %.split303 ]
  %i.hm = trunc nuw i8 %.2126.ph.ph to i1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge: ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel, %.split303.peel, %bb.p, %bb.q, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit, %bb.r, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread
  %i.hn = phi ptr [ %i.db, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread ], [ %i.dc, %bb.p ], [ %i.dc, %bb.r ], [ %i.dc, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ %i.dc, %bb.q ], [ %i.dc, %.split303.peel ], [ %i.dc, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ %i.dc, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm.peel ] ; 2 uses
  %.0127.shrunk581 = phi i1 [ %.0127.shrunk.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread ], [ %i.az, %bb.p ], [ %i.az, %bb.r ], [ %i.az, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ %i.az, %bb.q ], [ %i.az, %.split303.peel ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm.peel ]
  %.1129.lcssa = phi i1 [ true, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread ], [ false, %bb.p ], [ false, %bb.r ], [ %.1129.lcssa.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ false, %bb.q ], [ true, %.split303.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm.peel ] ; 2 uses
  %.sroa.0267.3 = phi ptr [ %.sroa.0267.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread ], [ %.sroa.0267.0, %bb.p ], [ %.sroa.0267.0, %bb.r ], [ %.sroa.0267.3.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ %.sroa.0267.0, %bb.q ], [ %.sroa.0267.13.peel, %.split303.peel ], [ %.sroa.0267.13.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ %.sroa.0267.13.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm.peel ] ; 24 uses
  %.sroa.26.2 = phi i32 [ %.sroa.26.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread ], [ %.sroa.26.0, %bb.p ], [ %.sroa.26.0, %bb.r ], [ -1, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ %.sroa.26.0, %bb.q ], [ -1, %.split303.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm.peel ] ; 8 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread ], [ %.sroa.0.0, %bb.p ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.2.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ %.sroa.0.0, %bb.q ], [ null, %.split303.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm.peel ] ; 14 uses
  %.3 = phi i8 [ %.0291.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread ], [ %.0291, %bb.p ], [ %.0291, %bb.r ], [ %.3.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ %.0291, %bb.q ], [ %.0291, %.split303.peel ], [ %.0291, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ %.0291, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm.peel ] ; 8 uses
  %.4140 = phi i32 [ %i.i, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread ], [ %i.i, %bb.p ], [ %i.i, %bb.r ], [ %.4140.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ %i.i, %bb.q ], [ %spec.select.peel, %.split303.peel ], [ %spec.select.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ %spec.select.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm.peel ] ; 5 uses
  %.2126 = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread ], [ false, %bb.p ], [ false, %bb.r ], [ %i.hm, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ false, %bb.q ], [ true, %.split303.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm.peel ]
  %.2119 = phi i32 [ 0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit175.thread ], [ 0, %bb.p ], [ 0, %bb.r ], [ %.2119.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ 0, %bb.q ], [ %spec.select158.peel, %.split303.peel ], [ %spec.select158.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ %spec.select158.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.thr_comm.peel ] ; 11 uses
  %i.ho = icmp eq i32 %.4140, 16
  %i.hp = select i1 %i.ho, i32 22, i32 %.4140     ; 3 uses
  %i.hq = zext nneg i32 %i.hp to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.hr, ptr %9, align 8, !tbaa !64
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i64 0, ptr %i.hs, align 8, !tbaa !67
  store i8 0, ptr %i.hr, align 8, !tbaa !55
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !100, !range !101, !noundef !102
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 32)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit194._crit_edge
  %i.hw = udiv i32 65535, %.4140                  ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 114 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !107, !range !101, !noundef !102
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %.preheader, label %.preheader343

.preheader343:                                    ; preds = %bb.am
  br i1 %.1129.lcssa, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %.lr.ph433

.lr.ph433:                                        ; preds = %.preheader343
  %i.ib = icmp ult i32 %i.hp, 11                  ; 2 uses
  %i.ic = or disjoint i32 %i.hp, 48               ; 2 uses
  %i.id = trunc nuw nsw i32 %.4140 to i16
  %i.ie = sext i8 %.3 to i32                      ; 5 uses
  br i1 %i.ib, label %bb.as, label %bb.an

bb.an:                                            ; preds = %.lr.ph433
  %i.if = add i8 %.3, -48
  %or.cond.i.peel = icmp ult i8 %i.if, 10
  br i1 %or.cond.i.peel, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ig = add i8 %.3, -97
  %or.cond5.i.peel = icmp ult i8 %i.ig, 6
  br i1 %or.cond5.i.peel, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ih = add i8 %.3, -65
  %or.cond8.i.peel = icmp ult i8 %i.ih, 6
  %i.ii = add nsw i32 %i.ie, -55
  br i1 %or.cond8.i.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.aq:                                            ; preds = %bb.ao
  %i.ij = add nsw i32 %i.ie, -87
  br label %bb.at

bb.ar:                                            ; preds = %bb.an
  %i.ik = add nsw i32 %i.ie, -48
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph433
  %i.il = icmp sgt i8 %.3, 47
  %i.im = icmp sgt i32 %i.ic, %i.ie
  %or.cond28.i.peel = select i1 %i.il, i1 %i.im, i1 false
  %i.in = add nsw i32 %i.ie, -48
  br i1 %or.cond28.i.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel: ; preds = %bb.as, %bb.ap
  %.0.i.peel = phi i32 [ %i.ii, %bb.ap ], [ %i.in, %bb.as ] ; 2 uses
  %i.io = icmp eq i32 %.0.i.peel, -1
  br i1 %i.io, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, %bb.ar, %bb.aq
  %.0.i309.peel = phi i32 [ %.0.i.peel, %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel ], [ %i.ik, %bb.ar ], [ %i.ij, %bb.aq ]
  %i.ip = trunc nsw i32 %.0.i309.peel to i16      ; 4 uses
  %i.iq = add nsw i32 %.2119, 1                   ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0267.3, i64 16 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !139 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0267.3, i64 24 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !140 ; 2 uses
  %i.iv = icmp ult ptr %i.is, %i.iu
  br i1 %i.iv, label %bb.av, label %bb.au, !prof !78

bb.au:                                            ; preds = %bb.at
  %i.iw = load ptr, ptr %.sroa.0267.3, align 8, !tbaa !54
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 80
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = invoke noundef i32 %i.iy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.3)
          to label %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit195.peel_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !22 ; 0 uses

._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit195.peel_crit_edge: ; preds = %bb.au
  %.pre530 = load ptr, ptr %i.ir, align 8, !tbaa !139
  %.pre531 = load ptr, ptr %i.it, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit195.peel

bb.av:                                            ; preds = %bb.at
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 1 ; 2 uses
  store ptr %i.ja, ptr %i.ir, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit195.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit195.peel: ; preds = %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit195.peel_crit_edge, %bb.av
  %i.jb = phi ptr [ %.pre531, %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit195.peel_crit_edge ], [ %i.iu, %bb.av ]
  %i.jc = phi ptr [ %.pre530, %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit195.peel_crit_edge ], [ %i.ja, %bb.av ]
  %i.jd = icmp ult ptr %i.jc, %i.jb
  br i1 %i.jd, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i198.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i205.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i205.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit195.peel
  %i.je = load ptr, ptr %.sroa.0267.3, align 8, !tbaa !54
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 72
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = invoke noundef i32 %i.jg(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.3)
          to label %.noexc207.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23

.noexc207.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i205.peel
  %i.ji = icmp eq i32 %i.jh, -1                   ; 2 uses
  %spec.select334.peel = select i1 %i.ji, ptr null, ptr %.sroa.0267.3
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i198.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i198.peel: ; preds = %.noexc207.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit195.peel
  %.sroa.0267.15.peel = phi ptr [ %spec.select334.peel, %.noexc207.peel ], [ %.sroa.0267.3, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit195.peel ] ; 10 uses
  %.0.i.i.i.i199.peel = phi i1 [ %i.ji, %.noexc207.peel ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit195.peel ] ; 3 uses
  %.not.i.i2.i.i200.peel = icmp ne ptr %.sroa.0.2, null
  %or.cond.i.i3.i.i201.peel = select i1 %.not.i.i2.i.i200.peel, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i201.peel, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i198.peel
  %i.jj = xor i1 %i.w, %.0.i.i.i.i199.peel
  br i1 %i.jj, label %bb.ay, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.ax:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i198.peel
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !139
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !140
  %i.jo = icmp ult ptr %i.jl, %i.jn
  br i1 %i.jo, label %.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i203.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i203.peel: ; preds = %bb.ax
  %i.jp = load ptr, ptr %.sroa.0.2, align 8, !tbaa !54
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 72
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = invoke noundef i32 %i.jr(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.2)
          to label %.noexc208.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23

.noexc208.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i203.peel
  %i.jt = icmp eq i32 %i.js, -1
  br i1 %i.jt, label %.split312.peel, label %.thr_comm.peel

.split312.peel:                                   ; preds = %.noexc208.peel
  br i1 %.0.i.i.i.i199.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %bb.ay

.thr_comm.peel:                                   ; preds = %.noexc208.peel, %bb.ax
  br i1 %.0.i.i.i.i199.peel, label %bb.ay, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.ay:                                            ; preds = %.thr_comm.peel, %.split312.peel, %bb.aw
  %.sroa.0.8311.peel = phi ptr [ %.sroa.0.2, %.thr_comm.peel ], [ %.sroa.0.2, %bb.aw ], [ null, %.split312.peel ]
  %.not.i.i210.not.peel = icmp eq ptr %.sroa.0267.15.peel, null
  br i1 %.not.i.i210.not.peel, label %.peel.next512.preheader, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0267.15.peel, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !139 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0267.15.peel, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !140
  %i.jy = icmp ult ptr %i.jv, %i.jx
  br i1 %i.jy, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i214.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i213.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i213.peel: ; preds = %bb.az
  %i.jz = load ptr, ptr %.sroa.0267.15.peel, align 8, !tbaa !54
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 72
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = invoke noundef i32 %i.kb(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.15.peel)
          to label %.noexc215.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !24 ; 2 uses

.noexc215.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i213.peel
  %i.kd = icmp eq i32 %i.kc, -1
  %spec.select336.peel = select i1 %i.kd, ptr null, ptr %.sroa.0267.15.peel
  %i.ke = trunc i32 %i.kc to i8
  br label %.peel.next512.preheader

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i214.peel: ; preds = %bb.az
  %i.kf = load i8, ptr %i.jv, align 1, !tbaa !55
  br label %.peel.next512.preheader

.peel.next512.preheader:                          ; preds = %bb.ay, %.noexc215.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i214.peel
  %.4294429.ph = phi i8 [ %i.ke, %.noexc215.peel ], [ -1, %bb.ay ], [ %i.kf, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i214.peel ]
end_hunk_1
begin_hunk_2_@_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11IjEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a
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
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call noundef i32 %i.eg(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.0), !inline_history !21
  %i.ei = icmp eq i32 %i.eh, -1                   ; 2 uses
  %spec.select328.peel = select i1 %i.ei, ptr null, ptr %.sroa.0265.0
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel
  %.sroa.0265.13.peel = phi ptr [ %spec.select328.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184.peel ], [ %.sroa.0265.0, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel ] ; 10 uses
  %.0.i.i.i.i178.peel = phi i1 [ %i.ei, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184.peel ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel ] ; 3 uses
  %.not.i.i2.i.i179.peel = icmp ne ptr %.sroa.0.0, null
  %or.cond.i.i3.i.i180.peel = select i1 %.not.i.i2.i.i179.peel, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i180.peel, label %bb.v, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177.peel
  %i.ej = xor i1 %i.w, %.0.i.i.i.i178.peel
  br i1 %i.ej, label %bb.w, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge

bb.v:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177.peel
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !139
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !140
  %i.eo = icmp ult ptr %i.el, %i.en
  br i1 %i.eo, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182.peel: ; preds = %bb.v
  %i.ep = load ptr, ptr %.sroa.0.0, align 8, !tbaa !54
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call noundef i32 %i.er(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0), !inline_history !21
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %.split301.peel, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel

.split301.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182.peel
  br i1 %.0.i.i.i.i178.peel, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge, label %bb.w

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182.peel, %bb.v
  br i1 %.0.i.i.i.i178.peel, label %bb.w, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge

bb.w:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel, %.split301.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel
  %.sroa.0.7300.peel = phi ptr [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ null, %.split301.peel ]
  %.not.i.i187.not.peel = icmp eq ptr %.sroa.0265.13.peel, null
  br i1 %.not.i.i187.not.peel, label %.peel.next.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0265.13.peel, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !139 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0265.13.peel, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !140
  %i.ey = icmp ult ptr %i.ev, %i.ex
  br i1 %i.ey, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190.peel: ; preds = %bb.x
  %i.ez = load ptr, ptr %.sroa.0265.13.peel, align 8, !tbaa !54
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call noundef i32 %i.fb(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.13.peel), !inline_history !19 ; 2 uses
  %i.fd = icmp eq i32 %i.fc, -1
  %spec.select330.peel = select i1 %i.fd, ptr null, ptr %.sroa.0265.13.peel
  %i.fe = trunc i32 %i.fc to i8
  br label %.peel.next.preheader

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191.peel: ; preds = %bb.x
  %i.ff = load i8, ptr %i.ev, align 1, !tbaa !55
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190.peel, %bb.w
  %.1290359.ph = phi i8 [ -1, %bb.w ], [ %i.fe, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190.peel ], [ %i.ff, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191.peel ]
  %.sroa.0265.1356.ph = phi ptr [ null, %bb.w ], [ %spec.select330.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190.peel ], [ %.sroa.0265.13.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191.peel ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192
  %.0117363 = phi i32 [ %.1118, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %spec.select156.peel, %.peel.next.preheader ] ; 6 uses
  %.0124362 = phi i8 [ %.1125, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ 1, %.peel.next.preheader ] ; 3 uses
  %.0136360 = phi i32 [ %.3139, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %spec.select.peel, %.peel.next.preheader ] ; 9 uses
  %.1290359 = phi i8 [ %.0.i.i189, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.1290359.ph, %.peel.next.preheader ] ; 13 uses
  %.sroa.0.1358 = phi ptr [ %.sroa.0.7300, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.sroa.0.7300.peel, %.peel.next.preheader ] ; 14 uses
  %.sroa.0265.1356 = phi ptr [ %.sroa.0265.14, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.sroa.0265.1356.ph, %.peel.next.preheader ] ; 13 uses
  %i.fg = load i8, ptr %i.de, align 8, !tbaa !100, !range !101, !noundef !102
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.peel.next
  %i.fi = load i8, ptr %i.dc, align 1, !tbaa !105
  %i.fj = icmp eq i8 %.1290359, %i.fi
  br i1 %i.fj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y, %.peel.next
  %i.fk = load i8, ptr %i.df, align 8, !tbaa !108
  %i.fl = icmp eq i8 %.1290359, %i.fk
  br i1 %i.fl, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fm = load i8, ptr %i.dg, align 2, !tbaa !55
  %i.fn = icmp ne i8 %.1290359, %i.fm
  %10 = trunc nuw i8 %.0124362 to i1              ; 2 uses
  %i.fo = icmp ne i32 %.0136360, 10
  %or.cond.not = and i1 %i.fo, %10
  %or.cond = select i1 %i.fn, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %12, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fp = add nsw i32 %.0117363, 1
  %spec.select = select i1 %i.dh, i32 8, i32 %.0136360 ; 2 uses
  %11 = icmp eq i32 %spec.select, 8
  %spec.select156 = select i1 %11, i32 0, i32 %i.fp
  br label %bb.af

12:                                               ; preds = %bb.aa
  br i1 %10, label %bb.ac, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.ac:                                            ; preds = %12
  %i.fq = load i8, ptr %i.di, align 8, !tbaa !55
  %i.fr = icmp eq i8 %.1290359, %i.fq
  br i1 %i.fr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fs = load i8, ptr %i.dd, align 1, !tbaa !55
  %i.ft = icmp eq i8 %.1290359, %i.fs
  %i.fu = icmp eq i32 %.0136360, 16
  %i.fv = select i1 %i.dh, i1 true, i1 %i.fu
  %or.cond497 = select i1 %i.ft, i1 %i.fv, i1 false
  br i1 %or.cond497, label %bb.af, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.ae:                                            ; preds = %bb.ac
  %.old = icmp eq i32 %.0136360, 16
  %.old496 = select i1 %i.dh, i1 true, i1 %.old
  br i1 %.old496, label %bb.af, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.af:                                            ; preds = %bb.ad, %bb.ab, %bb.ae
  %.3139 = phi i32 [ 16, %bb.ae ], [ %spec.select, %bb.ab ], [ 16, %bb.ad ] ; 5 uses
  %.1125 = phi i8 [ 0, %bb.ae ], [ 1, %bb.ab ], [ 0, %bb.ad ] ; 5 uses
  %.1118 = phi i32 [ 0, %bb.ae ], [ %spec.select156, %bb.ab ], [ 0, %bb.ad ] ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0265.1356, i64 16 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !139 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0265.1356, i64 24 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !140 ; 2 uses
  %i.ga = icmp ult ptr %i.fx, %i.fz
  br i1 %i.ga, label %bb.ag, label %bb.ah, !prof !78

bb.ag:                                            ; preds = %bb.af
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 2 uses
  store ptr %i.gb, ptr %i.fw, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174

bb.ah:                                            ; preds = %bb.af
  %i.gc = load ptr, ptr %.sroa.0265.1356, align 8, !tbaa !54
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 80
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = call noundef i32 %i.ge(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.1356), !inline_history !20 ; 0 uses
  %.pre526 = load ptr, ptr %i.fw, align 8, !tbaa !139
  %.pre527 = load ptr, ptr %i.fy, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174: ; preds = %bb.ah, %bb.ag
  %i.gg = phi ptr [ %.pre527, %bb.ah ], [ %i.fz, %bb.ag ]
  %i.gh = phi ptr [ %.pre526, %bb.ah ], [ %i.gb, %bb.ag ]
  %i.gi = icmp ult ptr %i.gh, %i.gg
  br i1 %i.gi, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174
  %i.gj = load ptr, ptr %.sroa.0265.1356, align 8, !tbaa !54
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 72
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call noundef i32 %i.gl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.1356), !inline_history !21
  %i.gn = icmp eq i32 %i.gm, -1                   ; 2 uses
  %spec.select328 = select i1 %i.gn, ptr null, ptr %.sroa.0265.1356
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184
  %.sroa.0265.13 = phi ptr [ %spec.select328, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184 ], [ %.sroa.0265.1356, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174 ] ; 10 uses
  %.0.i.i.i.i178 = phi i1 [ %i.gn, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184 ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174 ] ; 3 uses
  %.not.i.i2.i.i179 = icmp ne ptr %.sroa.0.1358, null
  %or.cond.i.i3.i.i180 = select i1 %.not.i.i2.i.i179, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i180, label %bb.ai, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186

bb.ai:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.1358, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !139
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.1358, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !140
  %i.gs = icmp ult ptr %i.gp, %i.gr
  br i1 %i.gs, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182: ; preds = %bb.ai
  %i.gt = load ptr, ptr %.sroa.0.1358, align 8, !tbaa !54
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 72
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = call noundef i32 %i.gv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.1358), !inline_history !21
  %i.gx = icmp eq i32 %i.gw, -1
  br i1 %i.gx, label %.split301, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm

.split301:                                        ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182
  br i1 %.0.i.i.i.i178, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.aj

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm: ; preds = %bb.ai, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182
  br i1 %.0.i.i.i.i178, label %bb.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177
  %i.gy = xor i1 %i.w, %.0.i.i.i.i178
  br i1 %i.gy, label %bb.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.aj:                                            ; preds = %.split301, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186
  %.sroa.0.7300 = phi ptr [ %.sroa.0.1358, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.sroa.0.1358, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ null, %.split301 ] ; 2 uses
  %.not.i.i187.not = icmp eq ptr %.sroa.0265.13, null
  br i1 %.not.i.i187.not, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0265.13, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !139 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0265.13, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !140
  %i.hd = icmp ult ptr %i.ha, %i.hc
  br i1 %i.hd, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191: ; preds = %bb.ak
  %i.he = load i8, ptr %i.ha, align 1, !tbaa !55
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190: ; preds = %bb.ak
  %i.hf = load ptr, ptr %.sroa.0265.13, align 8, !tbaa !54
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = call noundef i32 %i.hh(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.13), !inline_history !19 ; 2 uses
  %i.hj = icmp eq i32 %i.hi, -1
  %spec.select330 = select i1 %i.hj, ptr null, ptr %.sroa.0265.13
  %i.hk = trunc i32 %i.hi to i8
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190, %bb.aj, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191
  %.sroa.0265.14 = phi ptr [ %.sroa.0265.13, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191 ], [ null, %bb.aj ], [ %spec.select330, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190 ] ; 2 uses
  %.0.i.i189 = phi i8 [ %i.he, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191 ], [ -1, %bb.aj ], [ %i.hk, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190 ] ; 2 uses
  %i.hl = trunc nuw i8 %.1125 to i1
  br i1 %i.hl, label %.peel.next, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit, !llvm.loop !288

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit: ; preds = %.split301, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186, %bb.z, %bb.y, %bb.ae, %bb.ad, %12, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192
  %.1129.lcssa.ph.ph = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ false, %12 ], [ false, %bb.ad ], [ false, %bb.ae ], [ false, %bb.y ], [ false, %bb.z ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ true, %.split301 ]
  %.sroa.0265.3.ph.ph = phi ptr [ %.sroa.0265.14, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.sroa.0265.1356, %12 ], [ %.sroa.0265.1356, %bb.ad ], [ %.sroa.0265.1356, %bb.ae ], [ %.sroa.0265.1356, %bb.y ], [ %.sroa.0265.1356, %bb.z ], [ %.sroa.0265.13, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.sroa.0265.13, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.sroa.0265.13, %.split301 ]
  %.sroa.0.2.ph.ph = phi ptr [ %.sroa.0.7300, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.sroa.0.1358, %12 ], [ %.sroa.0.1358, %bb.ad ], [ %.sroa.0.1358, %bb.ae ], [ %.sroa.0.1358, %bb.y ], [ %.sroa.0.1358, %bb.z ], [ %.sroa.0.1358, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.sroa.0.1358, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ null, %.split301 ]
  %.3.ph.ph = phi i8 [ %.0.i.i189, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.1290359, %12 ], [ %.1290359, %bb.ad ], [ %.1290359, %bb.ae ], [ %.1290359, %bb.y ], [ %.1290359, %bb.z ], [ %.1290359, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1290359, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.1290359, %.split301 ]
  %.4140.ph.ph = phi i32 [ %.3139, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.0136360, %12 ], [ %.0136360, %bb.ad ], [ %.0136360, %bb.ae ], [ %.0136360, %bb.y ], [ %.0136360, %bb.z ], [ %.3139, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.3139, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.3139, %.split301 ]
  %.2126.ph.ph = phi i8 [ 0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ 0, %12 ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ %.0124362, %bb.y ], [ %.0124362, %bb.z ], [ %.1125, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1125, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.1125, %.split301 ]
  %.2119.ph.ph = phi i32 [ %.1118, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.0117363, %12 ], [ %.0117363, %bb.ad ], [ %.0117363, %bb.ae ], [ %.0117363, %bb.y ], [ %.0117363, %bb.z ], [ %.1118, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1118, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.1118, %.split301 ]
  %i.hm = trunc nuw i8 %.2126.ph.ph to i1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge: ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel, %.split301.peel, %bb.p, %bb.q, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit, %bb.r, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread
  %i.hn = phi ptr [ %i.db, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %i.dc, %bb.p ], [ %i.dc, %bb.r ], [ %i.dc, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.dc, %bb.q ], [ %i.dc, %.split301.peel ], [ %i.dc, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %i.dc, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 2 uses
  %.0127.shrunk579 = phi i1 [ %.0127.shrunk.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %i.az, %bb.p ], [ %i.az, %bb.r ], [ %i.az, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.az, %bb.q ], [ %i.az, %.split301.peel ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ]
  %.1129.lcssa = phi i1 [ true, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ false, %bb.p ], [ false, %bb.r ], [ %.1129.lcssa.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ false, %bb.q ], [ true, %.split301.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 2 uses
  %.sroa.0265.3 = phi ptr [ %.sroa.0265.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %.sroa.0265.0, %bb.p ], [ %.sroa.0265.0, %bb.r ], [ %.sroa.0265.3.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.0265.0, %bb.q ], [ %.sroa.0265.13.peel, %.split301.peel ], [ %.sroa.0265.13.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.sroa.0265.13.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 24 uses
  %.sroa.26.2 = phi i32 [ %.sroa.26.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %.sroa.26.0, %bb.p ], [ %.sroa.26.0, %bb.r ], [ -1, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.26.0, %bb.q ], [ -1, %.split301.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 8 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %.sroa.0.0, %bb.p ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.2.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.0.0, %bb.q ], [ null, %.split301.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 14 uses
  %.3 = phi i8 [ %.0289.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %.0289, %bb.p ], [ %.0289, %bb.r ], [ %.3.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.0289, %bb.q ], [ %.0289, %.split301.peel ], [ %.0289, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.0289, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 8 uses
  %.4140 = phi i32 [ %i.i, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %i.i, %bb.p ], [ %i.i, %bb.r ], [ %.4140.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.i, %bb.q ], [ %spec.select.peel, %.split301.peel ], [ %spec.select.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %spec.select.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 5 uses
  %.2126 = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ false, %bb.p ], [ false, %bb.r ], [ %i.hm, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ false, %bb.q ], [ true, %.split301.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ]
  %.2119 = phi i32 [ 0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ 0, %bb.p ], [ 0, %bb.r ], [ %.2119.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ 0, %bb.q ], [ %spec.select156.peel, %.split301.peel ], [ %spec.select156.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %spec.select156.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 11 uses
  %i.ho = icmp eq i32 %.4140, 16
  %i.hp = select i1 %i.ho, i32 22, i32 %.4140     ; 3 uses
  %i.hq = zext nneg i32 %i.hp to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.hr, ptr %9, align 8, !tbaa !64
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i64 0, ptr %i.hs, align 8, !tbaa !67
  store i8 0, ptr %i.hr, align 8, !tbaa !55
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !100, !range !101, !noundef !102
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 32)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge
  %i.hw = udiv i32 -1, %.4140                     ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 114 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !107, !range !101, !noundef !102
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %.preheader, label %.preheader341

.preheader341:                                    ; preds = %bb.am
  br i1 %.1129.lcssa, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %.lr.ph431

.lr.ph431:                                        ; preds = %.preheader341
  %i.ib = icmp ult i32 %i.hp, 11                  ; 2 uses
  %i.ic = or disjoint i32 %i.hp, 48               ; 2 uses
  %i.id = sext i8 %.3 to i32                      ; 5 uses
  br i1 %i.ib, label %bb.as, label %bb.an

bb.an:                                            ; preds = %.lr.ph431
  %i.ie = add i8 %.3, -48
  %or.cond.i.peel = icmp ult i8 %i.ie, 10
  br i1 %or.cond.i.peel, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.if = add i8 %.3, -97
  %or.cond5.i.peel = icmp ult i8 %i.if, 6
  br i1 %or.cond5.i.peel, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ig = add i8 %.3, -65
  %or.cond8.i.peel = icmp ult i8 %i.ig, 6
  %i.ih = add nsw i32 %i.id, -55
  br i1 %or.cond8.i.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.aq:                                            ; preds = %bb.ao
  %i.ii = add nsw i32 %i.id, -87
  br label %bb.at

bb.ar:                                            ; preds = %bb.an
  %i.ij = add nsw i32 %i.id, -48
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph431
  %i.ik = icmp sgt i8 %.3, 47
  %i.il = icmp sgt i32 %i.ic, %i.id
  %or.cond28.i.peel = select i1 %i.ik, i1 %i.il, i1 false
  %i.im = add nsw i32 %i.id, -48
  br i1 %or.cond28.i.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel: ; preds = %bb.as, %bb.ap
  %.0.i.peel = phi i32 [ %i.ih, %bb.ap ], [ %i.im, %bb.as ] ; 2 uses
  %i.in = icmp eq i32 %.0.i.peel, -1
  br i1 %i.in, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, %bb.ar, %bb.aq
  %.0.i307.peel = phi i32 [ %.0.i.peel, %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel ], [ %i.ij, %bb.ar ], [ %i.ii, %bb.aq ] ; 4 uses
  %i.io = add nsw i32 %.2119, 1                   ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0265.3, i64 16 ; 3 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !139 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0265.3, i64 24 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !140 ; 2 uses
  %i.it = icmp ult ptr %i.iq, %i.is
  br i1 %i.it, label %bb.av, label %bb.au, !prof !78

bb.au:                                            ; preds = %bb.at
  %i.iu = load ptr, ptr %.sroa.0265.3, align 8, !tbaa !54
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 80
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = invoke noundef i32 %i.iw(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.3)
          to label %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !22 ; 0 uses

._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel_crit_edge: ; preds = %bb.au
  %.pre528 = load ptr, ptr %i.ip, align 8, !tbaa !139
  %.pre529 = load ptr, ptr %i.ir, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel

bb.av:                                            ; preds = %bb.at
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iq, i64 1 ; 2 uses
  store ptr %i.iy, ptr %i.ip, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel: ; preds = %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel_crit_edge, %bb.av
  %i.iz = phi ptr [ %.pre529, %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel_crit_edge ], [ %i.is, %bb.av ]
  %i.ja = phi ptr [ %.pre528, %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel_crit_edge ], [ %i.iy, %bb.av ]
  %i.jb = icmp ult ptr %i.ja, %i.iz
  br i1 %i.jb, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i196.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i203.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i203.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel
  %i.jc = load ptr, ptr %.sroa.0265.3, align 8, !tbaa !54
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 72
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = invoke noundef i32 %i.je(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.3)
          to label %.noexc205.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23

.noexc205.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i203.peel
  %i.jg = icmp eq i32 %i.jf, -1                   ; 2 uses
  %spec.select332.peel = select i1 %i.jg, ptr null, ptr %.sroa.0265.3
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i196.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i196.peel: ; preds = %.noexc205.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel
  %.sroa.0265.15.peel = phi ptr [ %spec.select332.peel, %.noexc205.peel ], [ %.sroa.0265.3, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel ] ; 10 uses
  %.0.i.i.i.i197.peel = phi i1 [ %i.jg, %.noexc205.peel ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel ] ; 3 uses
  %.not.i.i2.i.i198.peel = icmp ne ptr %.sroa.0.2, null
  %or.cond.i.i3.i.i199.peel = select i1 %.not.i.i2.i.i198.peel, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i199.peel, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i196.peel
  %i.jh = xor i1 %i.w, %.0.i.i.i.i197.peel
  br i1 %i.jh, label %bb.ay, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.ax:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i196.peel
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !139
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !140
  %i.jm = icmp ult ptr %i.jj, %i.jl
  br i1 %i.jm, label %.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i201.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i201.peel: ; preds = %bb.ax
  %i.jn = load ptr, ptr %.sroa.0.2, align 8, !tbaa !54
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 72
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = invoke noundef i32 %i.jp(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.2)
          to label %.noexc206.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23

.noexc206.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i201.peel
  %i.jr = icmp eq i32 %i.jq, -1
  br i1 %i.jr, label %.split310.peel, label %.thr_comm.peel

.split310.peel:                                   ; preds = %.noexc206.peel
  br i1 %.0.i.i.i.i197.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %bb.ay

.thr_comm.peel:                                   ; preds = %.noexc206.peel, %bb.ax
  br i1 %.0.i.i.i.i197.peel, label %bb.ay, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.ay:                                            ; preds = %.thr_comm.peel, %.split310.peel, %bb.aw
  %.sroa.0.8309.peel = phi ptr [ %.sroa.0.2, %.thr_comm.peel ], [ %.sroa.0.2, %bb.aw ], [ null, %.split310.peel ]
  %.not.i.i208.not.peel = icmp eq ptr %.sroa.0265.15.peel, null
  br i1 %.not.i.i208.not.peel, label %.peel.next510.preheader, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0265.15.peel, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !139 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0265.15.peel, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !140
  %i.jw = icmp ult ptr %i.jt, %i.jv
  br i1 %i.jw, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i212.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i211.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i211.peel: ; preds = %bb.az
  %i.jx = load ptr, ptr %.sroa.0265.15.peel, align 8, !tbaa !54
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 72
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = invoke noundef i32 %i.jz(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.15.peel)
          to label %.noexc213.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !24 ; 2 uses

.noexc213.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i211.peel
  %i.kb = icmp eq i32 %i.ka, -1
  %spec.select334.peel = select i1 %i.kb, ptr null, ptr %.sroa.0265.15.peel
  %i.kc = trunc i32 %i.ka to i8
  br label %.peel.next510.preheader

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i212.peel: ; preds = %bb.az
  %i.kd = load i8, ptr %i.jt, align 1, !tbaa !55
  br label %.peel.next510.preheader

.peel.next510.preheader:                          ; preds = %bb.ay, %.noexc213.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i212.peel
  %.4292427.ph = phi i8 [ %i.kc, %.noexc213.peel ], [ -1, %bb.ay ], [ %i.kd, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i212.peel ]
  %.sroa.0265.4424.ph = phi ptr [ %spec.select334.peel, %.noexc213.peel ], [ null, %bb.ay ], [ %.sroa.0265.15.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i212.peel ]
  br label %.peel.next510
end_hunk_2
begin_hunk_3_@_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11ImEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a
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
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call noundef i32 %i.eg(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.0), !inline_history !21
  %i.ei = icmp eq i32 %i.eh, -1                   ; 2 uses
  %spec.select330.peel = select i1 %i.ei, ptr null, ptr %.sroa.0265.0
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel
  %.sroa.0265.13.peel = phi ptr [ %spec.select330.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184.peel ], [ %.sroa.0265.0, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel ] ; 10 uses
  %.0.i.i.i.i178.peel = phi i1 [ %i.ei, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184.peel ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel ] ; 3 uses
  %.not.i.i2.i.i179.peel = icmp ne ptr %.sroa.0.0, null
  %or.cond.i.i3.i.i180.peel = select i1 %.not.i.i2.i.i179.peel, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i180.peel, label %bb.v, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177.peel
  %i.ej = xor i1 %i.w, %.0.i.i.i.i178.peel
  br i1 %i.ej, label %bb.w, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge

bb.v:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177.peel
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !139
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !140
  %i.eo = icmp ult ptr %i.el, %i.en
  br i1 %i.eo, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182.peel: ; preds = %bb.v
  %i.ep = load ptr, ptr %.sroa.0.0, align 8, !tbaa !54
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call noundef i32 %i.er(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0), !inline_history !21
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %.split301.peel, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel

.split301.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182.peel
  br i1 %.0.i.i.i.i178.peel, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge, label %bb.w

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182.peel, %bb.v
  br i1 %.0.i.i.i.i178.peel, label %bb.w, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge

bb.w:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel, %.split301.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel
  %.sroa.0.7300.peel = phi ptr [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ null, %.split301.peel ]
  %.not.i.i187.not.peel = icmp eq ptr %.sroa.0265.13.peel, null
  br i1 %.not.i.i187.not.peel, label %.peel.next.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0265.13.peel, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !139 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0265.13.peel, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !140
  %i.ey = icmp ult ptr %i.ev, %i.ex
  br i1 %i.ey, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190.peel: ; preds = %bb.x
  %i.ez = load ptr, ptr %.sroa.0265.13.peel, align 8, !tbaa !54
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call noundef i32 %i.fb(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.13.peel), !inline_history !19 ; 2 uses
  %i.fd = icmp eq i32 %i.fc, -1
  %spec.select332.peel = select i1 %i.fd, ptr null, ptr %.sroa.0265.13.peel
  %i.fe = trunc i32 %i.fc to i8
  br label %.peel.next.preheader

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191.peel: ; preds = %bb.x
  %i.ff = load i8, ptr %i.ev, align 1, !tbaa !55
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190.peel, %bb.w
  %.1290362.ph = phi i8 [ -1, %bb.w ], [ %i.fe, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190.peel ], [ %i.ff, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191.peel ]
  %.sroa.0265.1359.ph = phi ptr [ null, %bb.w ], [ %spec.select332.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190.peel ], [ %.sroa.0265.13.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191.peel ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192
  %.0117366 = phi i32 [ %.1118, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %spec.select156.peel, %.peel.next.preheader ] ; 6 uses
  %.0124365 = phi i8 [ %.1125, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ 1, %.peel.next.preheader ] ; 3 uses
  %.0136363 = phi i32 [ %.3139, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %spec.select.peel, %.peel.next.preheader ] ; 9 uses
  %.1290362 = phi i8 [ %.0.i.i189, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.1290362.ph, %.peel.next.preheader ] ; 13 uses
  %.sroa.0.1361 = phi ptr [ %.sroa.0.7300, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.sroa.0.7300.peel, %.peel.next.preheader ] ; 14 uses
  %.sroa.0265.1359 = phi ptr [ %.sroa.0265.14, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.sroa.0265.1359.ph, %.peel.next.preheader ] ; 13 uses
  %i.fg = load i8, ptr %i.de, align 8, !tbaa !100, !range !101, !noundef !102
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.peel.next
  %i.fi = load i8, ptr %i.dc, align 1, !tbaa !105
  %i.fj = icmp eq i8 %.1290362, %i.fi
  br i1 %i.fj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y, %.peel.next
  %i.fk = load i8, ptr %i.df, align 8, !tbaa !108
  %i.fl = icmp eq i8 %.1290362, %i.fk
  br i1 %i.fl, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fm = load i8, ptr %i.dg, align 2, !tbaa !55
  %i.fn = icmp ne i8 %.1290362, %i.fm
  %10 = trunc nuw i8 %.0124365 to i1              ; 2 uses
  %i.fo = icmp ne i32 %.0136363, 10
  %or.cond.not = and i1 %i.fo, %10
  %or.cond = select i1 %i.fn, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %12, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fp = add nsw i32 %.0117366, 1
  %spec.select = select i1 %i.dh, i32 8, i32 %.0136363 ; 2 uses
  %11 = icmp eq i32 %spec.select, 8
  %spec.select156 = select i1 %11, i32 0, i32 %i.fp
  br label %bb.af

12:                                               ; preds = %bb.aa
  br i1 %10, label %bb.ac, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.ac:                                            ; preds = %12
  %i.fq = load i8, ptr %i.di, align 8, !tbaa !55
  %i.fr = icmp eq i8 %.1290362, %i.fq
  br i1 %i.fr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fs = load i8, ptr %i.dd, align 1, !tbaa !55
  %i.ft = icmp eq i8 %.1290362, %i.fs
  %i.fu = icmp eq i32 %.0136363, 16
  %i.fv = select i1 %i.dh, i1 true, i1 %i.fu
  %or.cond500 = select i1 %i.ft, i1 %i.fv, i1 false
  br i1 %or.cond500, label %bb.af, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.ae:                                            ; preds = %bb.ac
  %.old = icmp eq i32 %.0136363, 16
  %.old499 = select i1 %i.dh, i1 true, i1 %.old
  br i1 %.old499, label %bb.af, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.af:                                            ; preds = %bb.ad, %bb.ab, %bb.ae
  %.3139 = phi i32 [ 16, %bb.ae ], [ %spec.select, %bb.ab ], [ 16, %bb.ad ] ; 5 uses
  %.1125 = phi i8 [ 0, %bb.ae ], [ 1, %bb.ab ], [ 0, %bb.ad ] ; 5 uses
  %.1118 = phi i32 [ 0, %bb.ae ], [ %spec.select156, %bb.ab ], [ 0, %bb.ad ] ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0265.1359, i64 16 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !139 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0265.1359, i64 24 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !140 ; 2 uses
  %i.ga = icmp ult ptr %i.fx, %i.fz
  br i1 %i.ga, label %bb.ag, label %bb.ah, !prof !78

bb.ag:                                            ; preds = %bb.af
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 2 uses
  store ptr %i.gb, ptr %i.fw, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174

bb.ah:                                            ; preds = %bb.af
  %i.gc = load ptr, ptr %.sroa.0265.1359, align 8, !tbaa !54
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 80
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = call noundef i32 %i.ge(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.1359), !inline_history !20 ; 0 uses
  %.pre529 = load ptr, ptr %i.fw, align 8, !tbaa !139
  %.pre530 = load ptr, ptr %i.fy, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174: ; preds = %bb.ah, %bb.ag
  %i.gg = phi ptr [ %.pre530, %bb.ah ], [ %i.fz, %bb.ag ]
  %i.gh = phi ptr [ %.pre529, %bb.ah ], [ %i.gb, %bb.ag ]
  %i.gi = icmp ult ptr %i.gh, %i.gg
  br i1 %i.gi, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174
  %i.gj = load ptr, ptr %.sroa.0265.1359, align 8, !tbaa !54
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 72
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call noundef i32 %i.gl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.1359), !inline_history !21
  %i.gn = icmp eq i32 %i.gm, -1                   ; 2 uses
  %spec.select330 = select i1 %i.gn, ptr null, ptr %.sroa.0265.1359
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184
  %.sroa.0265.13 = phi ptr [ %spec.select330, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184 ], [ %.sroa.0265.1359, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174 ] ; 10 uses
  %.0.i.i.i.i178 = phi i1 [ %i.gn, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184 ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174 ] ; 3 uses
  %.not.i.i2.i.i179 = icmp ne ptr %.sroa.0.1361, null
  %or.cond.i.i3.i.i180 = select i1 %.not.i.i2.i.i179, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i180, label %bb.ai, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186

bb.ai:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.1361, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !139
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.1361, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !140
  %i.gs = icmp ult ptr %i.gp, %i.gr
  br i1 %i.gs, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182: ; preds = %bb.ai
  %i.gt = load ptr, ptr %.sroa.0.1361, align 8, !tbaa !54
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 72
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = call noundef i32 %i.gv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.1361), !inline_history !21
  %i.gx = icmp eq i32 %i.gw, -1
  br i1 %i.gx, label %.split301, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm

.split301:                                        ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182
  br i1 %.0.i.i.i.i178, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.aj

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm: ; preds = %bb.ai, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182
  br i1 %.0.i.i.i.i178, label %bb.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177
  %i.gy = xor i1 %i.w, %.0.i.i.i.i178
  br i1 %i.gy, label %bb.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.aj:                                            ; preds = %.split301, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186
  %.sroa.0.7300 = phi ptr [ %.sroa.0.1361, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.sroa.0.1361, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ null, %.split301 ] ; 2 uses
  %.not.i.i187.not = icmp eq ptr %.sroa.0265.13, null
  br i1 %.not.i.i187.not, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0265.13, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !139 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0265.13, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !140
  %i.hd = icmp ult ptr %i.ha, %i.hc
  br i1 %i.hd, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191: ; preds = %bb.ak
  %i.he = load i8, ptr %i.ha, align 1, !tbaa !55
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190: ; preds = %bb.ak
  %i.hf = load ptr, ptr %.sroa.0265.13, align 8, !tbaa !54
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = call noundef i32 %i.hh(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.13), !inline_history !19 ; 2 uses
  %i.hj = icmp eq i32 %i.hi, -1
  %spec.select332 = select i1 %i.hj, ptr null, ptr %.sroa.0265.13
  %i.hk = trunc i32 %i.hi to i8
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190, %bb.aj, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191
  %.sroa.0265.14 = phi ptr [ %.sroa.0265.13, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191 ], [ null, %bb.aj ], [ %spec.select332, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190 ] ; 2 uses
  %.0.i.i189 = phi i8 [ %i.he, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191 ], [ -1, %bb.aj ], [ %i.hk, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190 ] ; 2 uses
  %i.hl = trunc nuw i8 %.1125 to i1
  br i1 %i.hl, label %.peel.next, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit, !llvm.loop !291

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit: ; preds = %.split301, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186, %bb.z, %bb.y, %bb.ae, %bb.ad, %12, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192
  %.1129.lcssa.ph.ph = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ false, %12 ], [ false, %bb.ad ], [ false, %bb.ae ], [ false, %bb.y ], [ false, %bb.z ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ true, %.split301 ]
  %.sroa.0265.3.ph.ph = phi ptr [ %.sroa.0265.14, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.sroa.0265.1359, %12 ], [ %.sroa.0265.1359, %bb.ad ], [ %.sroa.0265.1359, %bb.ae ], [ %.sroa.0265.1359, %bb.y ], [ %.sroa.0265.1359, %bb.z ], [ %.sroa.0265.13, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.sroa.0265.13, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.sroa.0265.13, %.split301 ]
  %.sroa.0.2.ph.ph = phi ptr [ %.sroa.0.7300, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.sroa.0.1361, %12 ], [ %.sroa.0.1361, %bb.ad ], [ %.sroa.0.1361, %bb.ae ], [ %.sroa.0.1361, %bb.y ], [ %.sroa.0.1361, %bb.z ], [ %.sroa.0.1361, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.sroa.0.1361, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ null, %.split301 ]
  %.3.ph.ph = phi i8 [ %.0.i.i189, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.1290362, %12 ], [ %.1290362, %bb.ad ], [ %.1290362, %bb.ae ], [ %.1290362, %bb.y ], [ %.1290362, %bb.z ], [ %.1290362, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1290362, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.1290362, %.split301 ]
  %.4140.ph.ph = phi i32 [ %.3139, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.0136363, %12 ], [ %.0136363, %bb.ad ], [ %.0136363, %bb.ae ], [ %.0136363, %bb.y ], [ %.0136363, %bb.z ], [ %.3139, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.3139, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.3139, %.split301 ]
  %.2126.ph.ph = phi i8 [ 0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ 0, %12 ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ %.0124365, %bb.y ], [ %.0124365, %bb.z ], [ %.1125, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1125, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.1125, %.split301 ]
  %.2119.ph.ph = phi i32 [ %.1118, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.0117366, %12 ], [ %.0117366, %bb.ad ], [ %.0117366, %bb.ae ], [ %.0117366, %bb.y ], [ %.0117366, %bb.z ], [ %.1118, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1118, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.1118, %.split301 ]
  %i.hm = trunc nuw i8 %.2126.ph.ph to i1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge: ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel, %.split301.peel, %bb.p, %bb.q, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit, %bb.r, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread
  %i.hn = phi ptr [ %i.db, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %i.dc, %bb.p ], [ %i.dc, %bb.r ], [ %i.dc, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.dc, %bb.q ], [ %i.dc, %.split301.peel ], [ %i.dc, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %i.dc, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 2 uses
  %.0127.shrunk582 = phi i1 [ %.0127.shrunk.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %i.az, %bb.p ], [ %i.az, %bb.r ], [ %i.az, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.az, %bb.q ], [ %i.az, %.split301.peel ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ]
  %.1129.lcssa = phi i1 [ true, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ false, %bb.p ], [ false, %bb.r ], [ %.1129.lcssa.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ false, %bb.q ], [ true, %.split301.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 2 uses
  %.sroa.0265.3 = phi ptr [ %.sroa.0265.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %.sroa.0265.0, %bb.p ], [ %.sroa.0265.0, %bb.r ], [ %.sroa.0265.3.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.0265.0, %bb.q ], [ %.sroa.0265.13.peel, %.split301.peel ], [ %.sroa.0265.13.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.sroa.0265.13.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 24 uses
  %.sroa.26.2 = phi i32 [ %.sroa.26.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %.sroa.26.0, %bb.p ], [ %.sroa.26.0, %bb.r ], [ -1, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.26.0, %bb.q ], [ -1, %.split301.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 8 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %.sroa.0.0, %bb.p ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.2.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.0.0, %bb.q ], [ null, %.split301.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 14 uses
  %.3 = phi i8 [ %.0289.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %.0289, %bb.p ], [ %.0289, %bb.r ], [ %.3.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.0289, %bb.q ], [ %.0289, %.split301.peel ], [ %.0289, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.0289, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 8 uses
  %.4140 = phi i32 [ %i.i, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %i.i, %bb.p ], [ %i.i, %bb.r ], [ %.4140.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.i, %bb.q ], [ %spec.select.peel, %.split301.peel ], [ %spec.select.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %spec.select.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 3 uses
  %.2126 = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ false, %bb.p ], [ false, %bb.r ], [ %i.hm, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ false, %bb.q ], [ true, %.split301.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ]
  %.2119 = phi i32 [ 0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ 0, %bb.p ], [ 0, %bb.r ], [ %.2119.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ 0, %bb.q ], [ %spec.select156.peel, %.split301.peel ], [ %spec.select156.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %spec.select156.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 11 uses
  %i.ho = icmp eq i32 %.4140, 16
  %i.hp = select i1 %i.ho, i32 22, i32 %.4140     ; 3 uses
  %i.hq = zext nneg i32 %i.hp to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.hr, ptr %9, align 8, !tbaa !64
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i64 0, ptr %i.hs, align 8, !tbaa !67
  store i8 0, ptr %i.hr, align 8, !tbaa !55
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !100, !range !101, !noundef !102
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 32)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge
  %i.hw = zext nneg i32 %.4140 to i64             ; 3 uses
  %i.hx = udiv i64 -1, %i.hw                      ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 114 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ia = load i8, ptr %i.hz, align 8, !tbaa !107, !range !101, !noundef !102
  %i.ib = trunc nuw i8 %i.ia to i1
  br i1 %i.ib, label %.preheader, label %.preheader344

.preheader344:                                    ; preds = %bb.am
  br i1 %.1129.lcssa, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %.lr.ph434

.lr.ph434:                                        ; preds = %.preheader344
  %i.ic = icmp ult i32 %i.hp, 11                  ; 2 uses
  %i.id = or disjoint i32 %i.hp, 48               ; 2 uses
  %i.ie = sext i8 %.3 to i32                      ; 5 uses
  br i1 %i.ic, label %bb.as, label %bb.an

bb.an:                                            ; preds = %.lr.ph434
  %i.if = add i8 %.3, -48
  %or.cond.i.peel = icmp ult i8 %i.if, 10
  br i1 %or.cond.i.peel, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ig = add i8 %.3, -97
  %or.cond5.i.peel = icmp ult i8 %i.ig, 6
  br i1 %or.cond5.i.peel, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ih = add i8 %.3, -65
  %or.cond8.i.peel = icmp ult i8 %i.ih, 6
  %i.ii = add nsw i32 %i.ie, -55
  br i1 %or.cond8.i.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.aq:                                            ; preds = %bb.ao
  %i.ij = add nsw i32 %i.ie, -87
  br label %bb.at

bb.ar:                                            ; preds = %bb.an
  %i.ik = add nsw i32 %i.ie, -48
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph434
  %i.il = icmp sgt i8 %.3, 47
  %i.im = icmp sgt i32 %i.id, %i.ie
  %or.cond28.i.peel = select i1 %i.il, i1 %i.im, i1 false
  %i.in = add nsw i32 %i.ie, -48
  br i1 %or.cond28.i.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel: ; preds = %bb.as, %bb.ap
  %.0.i.peel = phi i32 [ %i.ii, %bb.ap ], [ %i.in, %bb.as ] ; 2 uses
  %i.io = icmp eq i32 %.0.i.peel, -1
  br i1 %i.io, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, %bb.ar, %bb.aq
  %.0.i307.peel = phi i32 [ %.0.i.peel, %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel ], [ %i.ik, %bb.ar ], [ %i.ij, %bb.aq ]
  %i.ip = sext i32 %.0.i307.peel to i64           ; 4 uses
  %i.iq = add nsw i32 %.2119, 1                   ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0265.3, i64 16 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !139 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0265.3, i64 24 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !140 ; 2 uses
  %i.iv = icmp ult ptr %i.is, %i.iu
  br i1 %i.iv, label %bb.av, label %bb.au, !prof !78

bb.au:                                            ; preds = %bb.at
  %i.iw = load ptr, ptr %.sroa.0265.3, align 8, !tbaa !54
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 80
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = invoke noundef i32 %i.iy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.3)
          to label %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !22 ; 0 uses

._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel_crit_edge: ; preds = %bb.au
  %.pre531 = load ptr, ptr %i.ir, align 8, !tbaa !139
  %.pre532 = load ptr, ptr %i.it, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel

bb.av:                                            ; preds = %bb.at
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 1 ; 2 uses
  store ptr %i.ja, ptr %i.ir, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel: ; preds = %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel_crit_edge, %bb.av
  %i.jb = phi ptr [ %.pre532, %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel_crit_edge ], [ %i.iu, %bb.av ]
  %i.jc = phi ptr [ %.pre531, %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel_crit_edge ], [ %i.ja, %bb.av ]
  %i.jd = icmp ult ptr %i.jc, %i.jb
  br i1 %i.jd, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i196.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i203.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i203.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel
  %i.je = load ptr, ptr %.sroa.0265.3, align 8, !tbaa !54
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 72
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = invoke noundef i32 %i.jg(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.3)
          to label %.noexc205.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23

.noexc205.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i203.peel
  %i.ji = icmp eq i32 %i.jh, -1                   ; 2 uses
  %spec.select334.peel = select i1 %i.ji, ptr null, ptr %.sroa.0265.3
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i196.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i196.peel: ; preds = %.noexc205.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel
  %.sroa.0265.15.peel = phi ptr [ %spec.select334.peel, %.noexc205.peel ], [ %.sroa.0265.3, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel ] ; 10 uses
  %.0.i.i.i.i197.peel = phi i1 [ %i.ji, %.noexc205.peel ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel ] ; 3 uses
  %.not.i.i2.i.i198.peel = icmp ne ptr %.sroa.0.2, null
  %or.cond.i.i3.i.i199.peel = select i1 %.not.i.i2.i.i198.peel, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i199.peel, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i196.peel
  %i.jj = xor i1 %i.w, %.0.i.i.i.i197.peel
  br i1 %i.jj, label %bb.ay, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.ax:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i196.peel
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !139
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !140
  %i.jo = icmp ult ptr %i.jl, %i.jn
  br i1 %i.jo, label %.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i201.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i201.peel: ; preds = %bb.ax
  %i.jp = load ptr, ptr %.sroa.0.2, align 8, !tbaa !54
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 72
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = invoke noundef i32 %i.jr(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.2)
          to label %.noexc206.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23

.noexc206.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i201.peel
  %i.jt = icmp eq i32 %i.js, -1
  br i1 %i.jt, label %.split310.peel, label %.thr_comm.peel

.split310.peel:                                   ; preds = %.noexc206.peel
  br i1 %.0.i.i.i.i197.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %bb.ay

.thr_comm.peel:                                   ; preds = %.noexc206.peel, %bb.ax
  br i1 %.0.i.i.i.i197.peel, label %bb.ay, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.ay:                                            ; preds = %.thr_comm.peel, %.split310.peel, %bb.aw
  %.sroa.0.8309.peel = phi ptr [ %.sroa.0.2, %.thr_comm.peel ], [ %.sroa.0.2, %bb.aw ], [ null, %.split310.peel ]
  %.not.i.i208.not.peel = icmp eq ptr %.sroa.0265.15.peel, null
  br i1 %.not.i.i208.not.peel, label %.peel.next513.preheader, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0265.15.peel, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !139 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0265.15.peel, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !140
  %i.jy = icmp ult ptr %i.jv, %i.jx
  br i1 %i.jy, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i212.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i211.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i211.peel: ; preds = %bb.az
  %i.jz = load ptr, ptr %.sroa.0265.15.peel, align 8, !tbaa !54
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 72
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = invoke noundef i32 %i.kb(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.15.peel)
          to label %.noexc213.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !24 ; 2 uses

.noexc213.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i211.peel
  %i.kd = icmp eq i32 %i.kc, -1
  %spec.select336.peel = select i1 %i.kd, ptr null, ptr %.sroa.0265.15.peel
  %i.ke = trunc i32 %i.kc to i8
  br label %.peel.next513.preheader

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i212.peel: ; preds = %bb.az
  %i.kf = load i8, ptr %i.jv, align 1, !tbaa !55
  br label %.peel.next513.preheader

.peel.next513.preheader:                          ; preds = %bb.ay, %.noexc213.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i212.peel
  %.4292430.ph = phi i8 [ %i.ke, %.noexc213.peel ], [ -1, %bb.ay ], [ %i.kf, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i212.peel ]
end_hunk_3
begin_hunk_4_@_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11IxEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a
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
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call noundef i32 %i.eg(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.0), !inline_history !21
  %i.ei = icmp eq i32 %i.eh, -1                   ; 2 uses
  %spec.select331.peel = select i1 %i.ei, ptr null, ptr %.sroa.0266.0
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175.peel
  %.sroa.0266.13.peel = phi ptr [ %spec.select331.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185.peel ], [ %.sroa.0266.0, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175.peel ] ; 10 uses
  %.0.i.i.i.i179.peel = phi i1 [ %i.ei, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185.peel ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175.peel ] ; 3 uses
  %.not.i.i2.i.i180.peel = icmp ne ptr %.sroa.0.0, null
  %or.cond.i.i3.i.i181.peel = select i1 %.not.i.i2.i.i180.peel, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i181.peel, label %bb.v, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178.peel
  %i.ej = xor i1 %i.w, %.0.i.i.i.i179.peel
  br i1 %i.ej, label %bb.w, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge

bb.v:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178.peel
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !139
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !140
  %i.eo = icmp ult ptr %i.el, %i.en
  br i1 %i.eo, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i183.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i183.peel: ; preds = %bb.v
  %i.ep = load ptr, ptr %.sroa.0.0, align 8, !tbaa !54
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call noundef i32 %i.er(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0), !inline_history !21
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %.split302.peel, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel

.split302.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i183.peel
  br i1 %.0.i.i.i.i179.peel, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge, label %bb.w

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i183.peel, %bb.v
  br i1 %.0.i.i.i.i179.peel, label %bb.w, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge

bb.w:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel, %.split302.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel
  %.sroa.0.7301.peel = phi ptr [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ null, %.split302.peel ]
  %.not.i.i188.not.peel = icmp eq ptr %.sroa.0266.13.peel, null
  br i1 %.not.i.i188.not.peel, label %.peel.next.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0266.13.peel, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !139 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0266.13.peel, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !140
  %i.ey = icmp ult ptr %i.ev, %i.ex
  br i1 %i.ey, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191.peel: ; preds = %bb.x
  %i.ez = load ptr, ptr %.sroa.0266.13.peel, align 8, !tbaa !54
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call noundef i32 %i.fb(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.13.peel), !inline_history !19 ; 2 uses
  %i.fd = icmp eq i32 %i.fc, -1
  %spec.select333.peel = select i1 %i.fd, ptr null, ptr %.sroa.0266.13.peel
  %i.fe = trunc i32 %i.fc to i8
  br label %.peel.next.preheader

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192.peel: ; preds = %bb.x
  %i.ff = load i8, ptr %i.ev, align 1, !tbaa !55
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191.peel, %bb.w
  %.1291363.ph = phi i8 [ -1, %bb.w ], [ %i.fe, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191.peel ], [ %i.ff, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192.peel ]
  %.sroa.0266.1360.ph = phi ptr [ null, %bb.w ], [ %spec.select333.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191.peel ], [ %.sroa.0266.13.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192.peel ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193
  %.0118367 = phi i32 [ %.1119, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %spec.select157.peel, %.peel.next.preheader ] ; 6 uses
  %.0125366 = phi i8 [ %.1126, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ 1, %.peel.next.preheader ] ; 3 uses
  %.0137364 = phi i32 [ %.3140, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %spec.select.peel, %.peel.next.preheader ] ; 9 uses
  %.1291363 = phi i8 [ %.0.i.i190, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %.1291363.ph, %.peel.next.preheader ] ; 13 uses
  %.sroa.0.1362 = phi ptr [ %.sroa.0.7301, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %.sroa.0.7301.peel, %.peel.next.preheader ] ; 14 uses
  %.sroa.0266.1360 = phi ptr [ %.sroa.0266.14, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %.sroa.0266.1360.ph, %.peel.next.preheader ] ; 13 uses
  %i.fg = load i8, ptr %i.de, align 8, !tbaa !100, !range !101, !noundef !102
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.peel.next
  %i.fi = load i8, ptr %i.dc, align 1, !tbaa !105
  %i.fj = icmp eq i8 %.1291363, %i.fi
  br i1 %i.fj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y, %.peel.next
  %i.fk = load i8, ptr %i.df, align 8, !tbaa !108
  %i.fl = icmp eq i8 %.1291363, %i.fk
  br i1 %i.fl, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fm = load i8, ptr %i.dg, align 2, !tbaa !55
  %i.fn = icmp ne i8 %.1291363, %i.fm
  %10 = trunc nuw i8 %.0125366 to i1              ; 2 uses
  %i.fo = icmp ne i32 %.0137364, 10
  %or.cond.not = and i1 %i.fo, %10
  %or.cond = select i1 %i.fn, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %12, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fp = add nsw i32 %.0118367, 1
  %spec.select = select i1 %i.dh, i32 8, i32 %.0137364 ; 2 uses
  %11 = icmp eq i32 %spec.select, 8
  %spec.select157 = select i1 %11, i32 0, i32 %i.fp
  br label %bb.af

12:                                               ; preds = %bb.aa
  br i1 %10, label %bb.ac, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit

bb.ac:                                            ; preds = %12
  %i.fq = load i8, ptr %i.di, align 8, !tbaa !55
  %i.fr = icmp eq i8 %.1291363, %i.fq
  br i1 %i.fr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fs = load i8, ptr %i.dd, align 1, !tbaa !55
  %i.ft = icmp eq i8 %.1291363, %i.fs
  %i.fu = icmp eq i32 %.0137364, 16
  %i.fv = select i1 %i.dh, i1 true, i1 %i.fu
  %or.cond501 = select i1 %i.ft, i1 %i.fv, i1 false
  br i1 %or.cond501, label %bb.af, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit

bb.ae:                                            ; preds = %bb.ac
  %.old = icmp eq i32 %.0137364, 16
  %.old500 = select i1 %i.dh, i1 true, i1 %.old
  br i1 %.old500, label %bb.af, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit

bb.af:                                            ; preds = %bb.ad, %bb.ab, %bb.ae
  %.3140 = phi i32 [ 16, %bb.ae ], [ %spec.select, %bb.ab ], [ 16, %bb.ad ] ; 5 uses
  %.1126 = phi i8 [ 0, %bb.ae ], [ 1, %bb.ab ], [ 0, %bb.ad ] ; 5 uses
  %.1119 = phi i32 [ 0, %bb.ae ], [ %spec.select157, %bb.ab ], [ 0, %bb.ad ] ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0266.1360, i64 16 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !139 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0266.1360, i64 24 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !140 ; 2 uses
  %i.ga = icmp ult ptr %i.fx, %i.fz
  br i1 %i.ga, label %bb.ag, label %bb.ah, !prof !78

bb.ag:                                            ; preds = %bb.af
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 2 uses
  store ptr %i.gb, ptr %i.fw, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175

bb.ah:                                            ; preds = %bb.af
  %i.gc = load ptr, ptr %.sroa.0266.1360, align 8, !tbaa !54
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 80
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = call noundef i32 %i.ge(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.1360), !inline_history !20 ; 0 uses
  %.pre530 = load ptr, ptr %i.fw, align 8, !tbaa !139
  %.pre531 = load ptr, ptr %i.fy, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175: ; preds = %bb.ah, %bb.ag
  %i.gg = phi ptr [ %.pre531, %bb.ah ], [ %i.fz, %bb.ag ]
  %i.gh = phi ptr [ %.pre530, %bb.ah ], [ %i.gb, %bb.ag ]
  %i.gi = icmp ult ptr %i.gh, %i.gg
  br i1 %i.gi, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175
  %i.gj = load ptr, ptr %.sroa.0266.1360, align 8, !tbaa !54
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 72
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call noundef i32 %i.gl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.1360), !inline_history !21
  %i.gn = icmp eq i32 %i.gm, -1                   ; 2 uses
  %spec.select331 = select i1 %i.gn, ptr null, ptr %.sroa.0266.1360
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185
  %.sroa.0266.13 = phi ptr [ %spec.select331, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185 ], [ %.sroa.0266.1360, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175 ] ; 10 uses
  %.0.i.i.i.i179 = phi i1 [ %i.gn, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i185 ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit175 ] ; 3 uses
  %.not.i.i2.i.i180 = icmp ne ptr %.sroa.0.1362, null
  %or.cond.i.i3.i.i181 = select i1 %.not.i.i2.i.i180, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i181, label %bb.ai, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187

bb.ai:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.1362, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !139
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.1362, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !140
  %i.gs = icmp ult ptr %i.gp, %i.gr
  br i1 %i.gs, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i183, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i183: ; preds = %bb.ai
  %i.gt = load ptr, ptr %.sroa.0.1362, align 8, !tbaa !54
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 72
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = call noundef i32 %i.gv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.1362), !inline_history !21
  %i.gx = icmp eq i32 %i.gw, -1
  br i1 %i.gx, label %.split302, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm

.split302:                                        ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i183
  br i1 %.0.i.i.i.i179, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit, label %bb.aj

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm: ; preds = %bb.ai, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i183
  br i1 %.0.i.i.i.i179, label %bb.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i178
  %i.gy = xor i1 %i.w, %.0.i.i.i.i179
  br i1 %i.gy, label %bb.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit

bb.aj:                                            ; preds = %.split302, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187
  %.sroa.0.7301 = phi ptr [ %.sroa.0.1362, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm ], [ %.sroa.0.1362, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ null, %.split302 ] ; 2 uses
  %.not.i.i188.not = icmp eq ptr %.sroa.0266.13, null
  br i1 %.not.i.i188.not, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0266.13, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !139 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0266.13, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !140
  %i.hd = icmp ult ptr %i.ha, %i.hc
  br i1 %i.hd, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192: ; preds = %bb.ak
  %i.he = load i8, ptr %i.ha, align 1, !tbaa !55
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191: ; preds = %bb.ak
  %i.hf = load ptr, ptr %.sroa.0266.13, align 8, !tbaa !54
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = call noundef i32 %i.hh(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.13), !inline_history !19 ; 2 uses
  %i.hj = icmp eq i32 %i.hi, -1
  %spec.select333 = select i1 %i.hj, ptr null, ptr %.sroa.0266.13
  %i.hk = trunc i32 %i.hi to i8
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191, %bb.aj, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192
  %.sroa.0266.14 = phi ptr [ %.sroa.0266.13, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192 ], [ null, %bb.aj ], [ %spec.select333, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191 ] ; 2 uses
  %.0.i.i190 = phi i8 [ %i.he, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i192 ], [ -1, %bb.aj ], [ %i.hk, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i191 ] ; 2 uses
  %i.hl = trunc nuw i8 %.1126 to i1
  br i1 %i.hl, label %.peel.next, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit, !llvm.loop !294

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit: ; preds = %.split302, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187, %bb.z, %bb.y, %bb.ae, %bb.ad, %12, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193
  %.1130.lcssa.ph.ph = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ false, %12 ], [ false, %bb.ad ], [ false, %bb.ae ], [ false, %bb.y ], [ false, %bb.z ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm ], [ true, %.split302 ]
  %.sroa.0266.3.ph.ph = phi ptr [ %.sroa.0266.14, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %.sroa.0266.1360, %12 ], [ %.sroa.0266.1360, %bb.ad ], [ %.sroa.0266.1360, %bb.ae ], [ %.sroa.0266.1360, %bb.y ], [ %.sroa.0266.1360, %bb.z ], [ %.sroa.0266.13, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.sroa.0266.13, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm ], [ %.sroa.0266.13, %.split302 ]
  %.sroa.0.2.ph.ph = phi ptr [ %.sroa.0.7301, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %.sroa.0.1362, %12 ], [ %.sroa.0.1362, %bb.ad ], [ %.sroa.0.1362, %bb.ae ], [ %.sroa.0.1362, %bb.y ], [ %.sroa.0.1362, %bb.z ], [ %.sroa.0.1362, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.sroa.0.1362, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm ], [ null, %.split302 ]
  %.3.ph.ph = phi i8 [ %.0.i.i190, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %.1291363, %12 ], [ %.1291363, %bb.ad ], [ %.1291363, %bb.ae ], [ %.1291363, %bb.y ], [ %.1291363, %bb.z ], [ %.1291363, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.1291363, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm ], [ %.1291363, %.split302 ]
  %.4141.ph.ph = phi i32 [ %.3140, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %.0137364, %12 ], [ %.0137364, %bb.ad ], [ %.0137364, %bb.ae ], [ %.0137364, %bb.y ], [ %.0137364, %bb.z ], [ %.3140, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.3140, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm ], [ %.3140, %.split302 ]
  %.2127.ph.ph = phi i8 [ 0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ 0, %12 ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ %.0125366, %bb.y ], [ %.0125366, %bb.z ], [ %.1126, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.1126, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm ], [ %.1126, %.split302 ]
  %.2120.ph.ph = phi i32 [ %.1119, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193 ], [ %.0118367, %12 ], [ %.0118367, %bb.ad ], [ %.0118367, %bb.ae ], [ %.0118367, %bb.y ], [ %.0118367, %bb.z ], [ %.1119, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.1119, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm ], [ %.1119, %.split302 ]
  %i.hm = trunc nuw i8 %.2127.ph.ph to i1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge: ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel, %.split302.peel, %bb.p, %bb.q, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit, %bb.r, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread
  %i.hn = phi ptr [ %i.db, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ %i.dc, %bb.p ], [ %i.dc, %bb.r ], [ %i.dc, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %i.dc, %bb.q ], [ %i.dc, %.split302.peel ], [ %i.dc, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %i.dc, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 2 uses
  %.0128.shrunk583 = phi i1 [ %.0128.shrunk.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ %i.az, %bb.p ], [ %i.az, %bb.r ], [ %i.az, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %i.az, %bb.q ], [ %i.az, %.split302.peel ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 2 uses
  %.1130.lcssa = phi i1 [ true, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ false, %bb.p ], [ false, %bb.r ], [ %.1130.lcssa.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ false, %bb.q ], [ true, %.split302.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 2 uses
  %.sroa.0266.3 = phi ptr [ %.sroa.0266.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ %.sroa.0266.0, %bb.p ], [ %.sroa.0266.0, %bb.r ], [ %.sroa.0266.3.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %.sroa.0266.0, %bb.q ], [ %.sroa.0266.13.peel, %.split302.peel ], [ %.sroa.0266.13.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %.sroa.0266.13.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 24 uses
  %.sroa.26.2 = phi i32 [ %.sroa.26.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ %.sroa.26.0, %bb.p ], [ %.sroa.26.0, %bb.r ], [ -1, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %.sroa.26.0, %bb.q ], [ -1, %.split302.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 8 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ %.sroa.0.0, %bb.p ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.2.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %.sroa.0.0, %bb.q ], [ null, %.split302.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 14 uses
  %.3 = phi i8 [ %.0290.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ %.0290, %bb.p ], [ %.0290, %bb.r ], [ %.3.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %.0290, %bb.q ], [ %.0290, %.split302.peel ], [ %.0290, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %.0290, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 8 uses
  %.4141 = phi i32 [ %i.i, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ %i.i, %bb.p ], [ %i.i, %bb.r ], [ %.4141.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %i.i, %bb.q ], [ %spec.select.peel, %.split302.peel ], [ %spec.select.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %spec.select.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 3 uses
  %.2127 = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ false, %bb.p ], [ false, %bb.r ], [ %i.hm, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ false, %bb.q ], [ true, %.split302.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ]
  %.2120 = phi i32 [ 0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit174.thread ], [ 0, %bb.p ], [ 0, %bb.r ], [ %.2120.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ 0, %bb.q ], [ %spec.select157.peel, %.split302.peel ], [ %spec.select157.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %spec.select157.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.thr_comm.peel ] ; 11 uses
  %i.ho = icmp eq i32 %.4141, 16
  %i.hp = select i1 %i.ho, i32 22, i32 %.4141     ; 3 uses
  %i.hq = zext nneg i32 %i.hp to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.hr, ptr %9, align 8, !tbaa !64
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i64 0, ptr %i.hs, align 8, !tbaa !67
  store i8 0, ptr %i.hr, align 8, !tbaa !55
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !100, !range !101, !noundef !102
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 32)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit193._crit_edge
  %i.hw = select i1 %.0128.shrunk583, i64 -9223372036854775808, i64 9223372036854775807 ; 4 uses
  %i.hx = zext nneg i32 %.4141 to i64             ; 3 uses
  %i.hy = udiv i64 %i.hw, %i.hx                   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 114 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ib = load i8, ptr %i.ia, align 8, !tbaa !107, !range !101, !noundef !102
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %.preheader, label %.preheader345

.preheader345:                                    ; preds = %bb.am
  br i1 %.1130.lcssa, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %.lr.ph435

.lr.ph435:                                        ; preds = %.preheader345
  %i.id = icmp ult i32 %i.hp, 11                  ; 2 uses
  %i.ie = or disjoint i32 %i.hp, 48               ; 2 uses
  %i.if = sext i8 %.3 to i32                      ; 5 uses
  br i1 %i.id, label %bb.as, label %bb.an

bb.an:                                            ; preds = %.lr.ph435
  %i.ig = add i8 %.3, -48
  %or.cond.i.peel = icmp ult i8 %i.ig, 10
  br i1 %or.cond.i.peel, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ih = add i8 %.3, -97
  %or.cond5.i.peel = icmp ult i8 %i.ih, 6
  br i1 %or.cond5.i.peel, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ii = add i8 %.3, -65
  %or.cond8.i.peel = icmp ult i8 %i.ii, 6
  %i.ij = add nsw i32 %i.if, -55
  br i1 %or.cond8.i.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.aq:                                            ; preds = %bb.ao
  %i.ik = add nsw i32 %i.if, -87
  br label %bb.at

bb.ar:                                            ; preds = %bb.an
  %i.il = add nsw i32 %i.if, -48
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph435
  %i.im = icmp sgt i8 %.3, 47
  %i.in = icmp sgt i32 %i.ie, %i.if
  %or.cond28.i.peel = select i1 %i.im, i1 %i.in, i1 false
  %i.io = add nsw i32 %i.if, -48
  br i1 %or.cond28.i.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel: ; preds = %bb.as, %bb.ap
  %.0.i.peel = phi i32 [ %i.ij, %bb.ap ], [ %i.io, %bb.as ] ; 2 uses
  %i.ip = icmp eq i32 %.0.i.peel, -1
  br i1 %i.ip, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, %bb.ar, %bb.aq
  %.0.i308.peel = phi i32 [ %.0.i.peel, %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel ], [ %i.il, %bb.ar ], [ %i.ik, %bb.aq ]
  %i.iq = sext i32 %.0.i308.peel to i64           ; 4 uses
  %i.ir = add nsw i32 %.2120, 1                   ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0266.3, i64 16 ; 3 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !139 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0266.3, i64 24 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !140 ; 2 uses
  %i.iw = icmp ult ptr %i.it, %i.iv
  br i1 %i.iw, label %bb.av, label %bb.au, !prof !78

bb.au:                                            ; preds = %bb.at
  %i.ix = load ptr, ptr %.sroa.0266.3, align 8, !tbaa !54
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 80
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = invoke noundef i32 %i.iz(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.3)
          to label %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !22 ; 0 uses

._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel_crit_edge: ; preds = %bb.au
  %.pre532 = load ptr, ptr %i.is, align 8, !tbaa !139
  %.pre533 = load ptr, ptr %i.iu, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel

bb.av:                                            ; preds = %bb.at
  %i.jb = getelementptr inbounds nuw i8, ptr %i.it, i64 1 ; 2 uses
  store ptr %i.jb, ptr %i.is, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel: ; preds = %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel_crit_edge, %bb.av
  %i.jc = phi ptr [ %.pre533, %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel_crit_edge ], [ %i.iv, %bb.av ]
  %i.jd = phi ptr [ %.pre532, %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel_crit_edge ], [ %i.jb, %bb.av ]
  %i.je = icmp ult ptr %i.jd, %i.jc
  br i1 %i.je, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i197.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i204.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i204.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel
  %i.jf = load ptr, ptr %.sroa.0266.3, align 8, !tbaa !54
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 72
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = invoke noundef i32 %i.jh(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.3)
          to label %.noexc206.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23

.noexc206.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i204.peel
  %i.jj = icmp eq i32 %i.ji, -1                   ; 2 uses
  %spec.select335.peel = select i1 %i.jj, ptr null, ptr %.sroa.0266.3
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i197.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i197.peel: ; preds = %.noexc206.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel
  %.sroa.0266.15.peel = phi ptr [ %spec.select335.peel, %.noexc206.peel ], [ %.sroa.0266.3, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel ] ; 10 uses
  %.0.i.i.i.i198.peel = phi i1 [ %i.jj, %.noexc206.peel ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit194.peel ] ; 3 uses
  %.not.i.i2.i.i199.peel = icmp ne ptr %.sroa.0.2, null
  %or.cond.i.i3.i.i200.peel = select i1 %.not.i.i2.i.i199.peel, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i200.peel, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i197.peel
  %i.jk = xor i1 %i.w, %.0.i.i.i.i198.peel
  br i1 %i.jk, label %bb.ay, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.ax:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i197.peel
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !139
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !140
  %i.jp = icmp ult ptr %i.jm, %i.jo
  br i1 %i.jp, label %.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i202.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i202.peel: ; preds = %bb.ax
  %i.jq = load ptr, ptr %.sroa.0.2, align 8, !tbaa !54
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 72
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = invoke noundef i32 %i.js(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.2)
          to label %.noexc207.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23

.noexc207.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i202.peel
  %i.ju = icmp eq i32 %i.jt, -1
  br i1 %i.ju, label %.split311.peel, label %.thr_comm.peel

.split311.peel:                                   ; preds = %.noexc207.peel
  br i1 %.0.i.i.i.i198.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %bb.ay

.thr_comm.peel:                                   ; preds = %.noexc207.peel, %bb.ax
  br i1 %.0.i.i.i.i198.peel, label %bb.ay, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.ay:                                            ; preds = %.thr_comm.peel, %.split311.peel, %bb.aw
  %.sroa.0.8310.peel = phi ptr [ %.sroa.0.2, %.thr_comm.peel ], [ %.sroa.0.2, %bb.aw ], [ null, %.split311.peel ]
  %.not.i.i209.not.peel = icmp eq ptr %.sroa.0266.15.peel, null
  br i1 %.not.i.i209.not.peel, label %.peel.next514.preheader, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0266.15.peel, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !139 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0266.15.peel, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !140
  %i.jz = icmp ult ptr %i.jw, %i.jy
  br i1 %i.jz, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i213.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i212.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i212.peel: ; preds = %bb.az
  %i.ka = load ptr, ptr %.sroa.0266.15.peel, align 8, !tbaa !54
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 72
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = invoke noundef i32 %i.kc(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.15.peel)
          to label %.noexc214.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !24 ; 2 uses

.noexc214.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i212.peel
  %i.ke = icmp eq i32 %i.kd, -1
  %spec.select337.peel = select i1 %i.ke, ptr null, ptr %.sroa.0266.15.peel
  %i.kf = trunc i32 %i.kd to i8
  br label %.peel.next514.preheader

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i213.peel: ; preds = %bb.az
  %i.kg = load i8, ptr %i.jw, align 1, !tbaa !55
  br label %.peel.next514.preheader

.peel.next514.preheader:                          ; preds = %bb.ay, %.noexc214.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i213.peel
end_hunk_4
begin_hunk_5_@_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE14_M_extract_intB5cxx11IyEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a
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
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call noundef i32 %i.eg(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.0), !inline_history !21
  %i.ei = icmp eq i32 %i.eh, -1                   ; 2 uses
  %spec.select330.peel = select i1 %i.ei, ptr null, ptr %.sroa.0265.0
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel
  %.sroa.0265.13.peel = phi ptr [ %spec.select330.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184.peel ], [ %.sroa.0265.0, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel ] ; 10 uses
  %.0.i.i.i.i178.peel = phi i1 [ %i.ei, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184.peel ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174.peel ] ; 3 uses
  %.not.i.i2.i.i179.peel = icmp ne ptr %.sroa.0.0, null
  %or.cond.i.i3.i.i180.peel = select i1 %.not.i.i2.i.i179.peel, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i180.peel, label %bb.v, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177.peel
  %i.ej = xor i1 %i.w, %.0.i.i.i.i178.peel
  br i1 %i.ej, label %bb.w, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge

bb.v:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177.peel
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !139
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !140
  %i.eo = icmp ult ptr %i.el, %i.en
  br i1 %i.eo, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182.peel: ; preds = %bb.v
  %i.ep = load ptr, ptr %.sroa.0.0, align 8, !tbaa !54
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call noundef i32 %i.er(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0), !inline_history !21
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %.split301.peel, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel

.split301.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182.peel
  br i1 %.0.i.i.i.i178.peel, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge, label %bb.w

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182.peel, %bb.v
  br i1 %.0.i.i.i.i178.peel, label %bb.w, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge

bb.w:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel, %.split301.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel
  %.sroa.0.7300.peel = phi ptr [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ null, %.split301.peel ]
  %.not.i.i187.not.peel = icmp eq ptr %.sroa.0265.13.peel, null
  br i1 %.not.i.i187.not.peel, label %.peel.next.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0265.13.peel, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !139 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0265.13.peel, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !140
  %i.ey = icmp ult ptr %i.ev, %i.ex
  br i1 %i.ey, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190.peel: ; preds = %bb.x
  %i.ez = load ptr, ptr %.sroa.0265.13.peel, align 8, !tbaa !54
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call noundef i32 %i.fb(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.13.peel), !inline_history !19 ; 2 uses
  %i.fd = icmp eq i32 %i.fc, -1
  %spec.select332.peel = select i1 %i.fd, ptr null, ptr %.sroa.0265.13.peel
  %i.fe = trunc i32 %i.fc to i8
  br label %.peel.next.preheader

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191.peel: ; preds = %bb.x
  %i.ff = load i8, ptr %i.ev, align 1, !tbaa !55
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190.peel, %bb.w
  %.1290362.ph = phi i8 [ -1, %bb.w ], [ %i.fe, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190.peel ], [ %i.ff, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191.peel ]
  %.sroa.0265.1359.ph = phi ptr [ null, %bb.w ], [ %spec.select332.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190.peel ], [ %.sroa.0265.13.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191.peel ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192
  %.0117366 = phi i32 [ %.1118, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %spec.select156.peel, %.peel.next.preheader ] ; 6 uses
  %.0124365 = phi i8 [ %.1125, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ 1, %.peel.next.preheader ] ; 3 uses
  %.0136363 = phi i32 [ %.3139, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %spec.select.peel, %.peel.next.preheader ] ; 9 uses
  %.1290362 = phi i8 [ %.0.i.i189, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.1290362.ph, %.peel.next.preheader ] ; 13 uses
  %.sroa.0.1361 = phi ptr [ %.sroa.0.7300, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.sroa.0.7300.peel, %.peel.next.preheader ] ; 14 uses
  %.sroa.0265.1359 = phi ptr [ %.sroa.0265.14, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.sroa.0265.1359.ph, %.peel.next.preheader ] ; 13 uses
  %i.fg = load i8, ptr %i.de, align 8, !tbaa !100, !range !101, !noundef !102
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.peel.next
  %i.fi = load i8, ptr %i.dc, align 1, !tbaa !105
  %i.fj = icmp eq i8 %.1290362, %i.fi
  br i1 %i.fj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y, %.peel.next
  %i.fk = load i8, ptr %i.df, align 8, !tbaa !108
  %i.fl = icmp eq i8 %.1290362, %i.fk
  br i1 %i.fl, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fm = load i8, ptr %i.dg, align 2, !tbaa !55
  %i.fn = icmp ne i8 %.1290362, %i.fm
  %10 = trunc nuw i8 %.0124365 to i1              ; 2 uses
  %i.fo = icmp ne i32 %.0136363, 10
  %or.cond.not = and i1 %i.fo, %10
  %or.cond = select i1 %i.fn, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %12, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fp = add nsw i32 %.0117366, 1
  %spec.select = select i1 %i.dh, i32 8, i32 %.0136363 ; 2 uses
  %11 = icmp eq i32 %spec.select, 8
  %spec.select156 = select i1 %11, i32 0, i32 %i.fp
  br label %bb.af

12:                                               ; preds = %bb.aa
  br i1 %10, label %bb.ac, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.ac:                                            ; preds = %12
  %i.fq = load i8, ptr %i.di, align 8, !tbaa !55
  %i.fr = icmp eq i8 %.1290362, %i.fq
  br i1 %i.fr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fs = load i8, ptr %i.dd, align 1, !tbaa !55
  %i.ft = icmp eq i8 %.1290362, %i.fs
  %i.fu = icmp eq i32 %.0136363, 16
  %i.fv = select i1 %i.dh, i1 true, i1 %i.fu
  %or.cond500 = select i1 %i.ft, i1 %i.fv, i1 false
  br i1 %or.cond500, label %bb.af, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.ae:                                            ; preds = %bb.ac
  %.old = icmp eq i32 %.0136363, 16
  %.old499 = select i1 %i.dh, i1 true, i1 %.old
  br i1 %.old499, label %bb.af, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.af:                                            ; preds = %bb.ad, %bb.ab, %bb.ae
  %.3139 = phi i32 [ 16, %bb.ae ], [ %spec.select, %bb.ab ], [ 16, %bb.ad ] ; 5 uses
  %.1125 = phi i8 [ 0, %bb.ae ], [ 1, %bb.ab ], [ 0, %bb.ad ] ; 5 uses
  %.1118 = phi i32 [ 0, %bb.ae ], [ %spec.select156, %bb.ab ], [ 0, %bb.ad ] ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0265.1359, i64 16 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !139 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0265.1359, i64 24 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !140 ; 2 uses
  %i.ga = icmp ult ptr %i.fx, %i.fz
  br i1 %i.ga, label %bb.ag, label %bb.ah, !prof !78

bb.ag:                                            ; preds = %bb.af
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 2 uses
  store ptr %i.gb, ptr %i.fw, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174

bb.ah:                                            ; preds = %bb.af
  %i.gc = load ptr, ptr %.sroa.0265.1359, align 8, !tbaa !54
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 80
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = call noundef i32 %i.ge(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.1359), !inline_history !20 ; 0 uses
  %.pre529 = load ptr, ptr %i.fw, align 8, !tbaa !139
  %.pre530 = load ptr, ptr %i.fy, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174: ; preds = %bb.ah, %bb.ag
  %i.gg = phi ptr [ %.pre530, %bb.ah ], [ %i.fz, %bb.ag ]
  %i.gh = phi ptr [ %.pre529, %bb.ah ], [ %i.gb, %bb.ag ]
  %i.gi = icmp ult ptr %i.gh, %i.gg
  br i1 %i.gi, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174
  %i.gj = load ptr, ptr %.sroa.0265.1359, align 8, !tbaa !54
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 72
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call noundef i32 %i.gl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.1359), !inline_history !21
  %i.gn = icmp eq i32 %i.gm, -1                   ; 2 uses
  %spec.select330 = select i1 %i.gn, ptr null, ptr %.sroa.0265.1359
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184
  %.sroa.0265.13 = phi ptr [ %spec.select330, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184 ], [ %.sroa.0265.1359, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174 ] ; 10 uses
  %.0.i.i.i.i178 = phi i1 [ %i.gn, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i184 ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit174 ] ; 3 uses
  %.not.i.i2.i.i179 = icmp ne ptr %.sroa.0.1361, null
  %or.cond.i.i3.i.i180 = select i1 %.not.i.i2.i.i179, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i180, label %bb.ai, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186

bb.ai:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.1361, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !139
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.1361, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !140
  %i.gs = icmp ult ptr %i.gp, %i.gr
  br i1 %i.gs, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182: ; preds = %bb.ai
  %i.gt = load ptr, ptr %.sroa.0.1361, align 8, !tbaa !54
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 72
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = call noundef i32 %i.gv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.1361), !inline_history !21
  %i.gx = icmp eq i32 %i.gw, -1
  br i1 %i.gx, label %.split301, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm

.split301:                                        ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182
  br i1 %.0.i.i.i.i178, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.aj

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm: ; preds = %bb.ai, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i182
  br i1 %.0.i.i.i.i178, label %bb.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186: ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i177
  %i.gy = xor i1 %i.w, %.0.i.i.i.i178
  br i1 %i.gy, label %bb.aj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.aj:                                            ; preds = %.split301, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186
  %.sroa.0.7300 = phi ptr [ %.sroa.0.1361, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.sroa.0.1361, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ null, %.split301 ] ; 2 uses
  %.not.i.i187.not = icmp eq ptr %.sroa.0265.13, null
  br i1 %.not.i.i187.not, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0265.13, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !139 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0265.13, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !140
  %i.hd = icmp ult ptr %i.ha, %i.hc
  br i1 %i.hd, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191: ; preds = %bb.ak
  %i.he = load i8, ptr %i.ha, align 1, !tbaa !55
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190: ; preds = %bb.ak
  %i.hf = load ptr, ptr %.sroa.0265.13, align 8, !tbaa !54
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = call noundef i32 %i.hh(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.13), !inline_history !19 ; 2 uses
  %i.hj = icmp eq i32 %i.hi, -1
  %spec.select332 = select i1 %i.hj, ptr null, ptr %.sroa.0265.13
  %i.hk = trunc i32 %i.hi to i8
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190, %bb.aj, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191
  %.sroa.0265.14 = phi ptr [ %.sroa.0265.13, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191 ], [ null, %bb.aj ], [ %spec.select332, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190 ] ; 2 uses
  %.0.i.i189 = phi i8 [ %i.he, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i191 ], [ -1, %bb.aj ], [ %i.hk, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i190 ] ; 2 uses
  %i.hl = trunc nuw i8 %.1125 to i1
  br i1 %i.hl, label %.peel.next, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit, !llvm.loop !297

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit: ; preds = %.split301, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186, %bb.z, %bb.y, %bb.ae, %bb.ad, %12, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192
  %.1129.lcssa.ph.ph = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ false, %12 ], [ false, %bb.ad ], [ false, %bb.ae ], [ false, %bb.y ], [ false, %bb.z ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ true, %.split301 ]
  %.sroa.0265.3.ph.ph = phi ptr [ %.sroa.0265.14, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.sroa.0265.1359, %12 ], [ %.sroa.0265.1359, %bb.ad ], [ %.sroa.0265.1359, %bb.ae ], [ %.sroa.0265.1359, %bb.y ], [ %.sroa.0265.1359, %bb.z ], [ %.sroa.0265.13, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.sroa.0265.13, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.sroa.0265.13, %.split301 ]
  %.sroa.0.2.ph.ph = phi ptr [ %.sroa.0.7300, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.sroa.0.1361, %12 ], [ %.sroa.0.1361, %bb.ad ], [ %.sroa.0.1361, %bb.ae ], [ %.sroa.0.1361, %bb.y ], [ %.sroa.0.1361, %bb.z ], [ %.sroa.0.1361, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.sroa.0.1361, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ null, %.split301 ]
  %.3.ph.ph = phi i8 [ %.0.i.i189, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.1290362, %12 ], [ %.1290362, %bb.ad ], [ %.1290362, %bb.ae ], [ %.1290362, %bb.y ], [ %.1290362, %bb.z ], [ %.1290362, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1290362, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.1290362, %.split301 ]
  %.4140.ph.ph = phi i32 [ %.3139, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.0136363, %12 ], [ %.0136363, %bb.ad ], [ %.0136363, %bb.ae ], [ %.0136363, %bb.y ], [ %.0136363, %bb.z ], [ %.3139, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.3139, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.3139, %.split301 ]
  %.2126.ph.ph = phi i8 [ 0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ 0, %12 ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ %.0124365, %bb.y ], [ %.0124365, %bb.z ], [ %.1125, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1125, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.1125, %.split301 ]
  %.2119.ph.ph = phi i32 [ %.1118, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192 ], [ %.0117366, %12 ], [ %.0117366, %bb.ad ], [ %.0117366, %bb.ae ], [ %.0117366, %bb.y ], [ %.0117366, %bb.z ], [ %.1118, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1118, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm ], [ %.1118, %.split301 ]
  %i.hm = trunc nuw i8 %.2126.ph.ph to i1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge: ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel, %.split301.peel, %bb.p, %bb.q, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit, %bb.r, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread
  %i.hn = phi ptr [ %i.db, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %i.dc, %bb.p ], [ %i.dc, %bb.r ], [ %i.dc, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.dc, %bb.q ], [ %i.dc, %.split301.peel ], [ %i.dc, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %i.dc, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 2 uses
  %.0127.shrunk582 = phi i1 [ %.0127.shrunk.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %i.az, %bb.p ], [ %i.az, %bb.r ], [ %i.az, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.az, %bb.q ], [ %i.az, %.split301.peel ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %i.az, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ]
  %.1129.lcssa = phi i1 [ true, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ false, %bb.p ], [ false, %bb.r ], [ %.1129.lcssa.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ false, %bb.q ], [ true, %.split301.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 2 uses
  %.sroa.0265.3 = phi ptr [ %.sroa.0265.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %.sroa.0265.0, %bb.p ], [ %.sroa.0265.0, %bb.r ], [ %.sroa.0265.3.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.0265.0, %bb.q ], [ %.sroa.0265.13.peel, %.split301.peel ], [ %.sroa.0265.13.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.sroa.0265.13.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 24 uses
  %.sroa.26.2 = phi i32 [ %.sroa.26.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %.sroa.26.0, %bb.p ], [ %.sroa.26.0, %bb.r ], [ -1, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.26.0, %bb.q ], [ -1, %.split301.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 8 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %.sroa.0.0, %bb.p ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.2.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.0.0, %bb.q ], [ null, %.split301.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.sroa.0.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 14 uses
  %.3 = phi i8 [ %.0289.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %.0289, %bb.p ], [ %.0289, %bb.r ], [ %.3.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.0289, %bb.q ], [ %.0289, %.split301.peel ], [ %.0289, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.0289, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 8 uses
  %.4140 = phi i32 [ %i.i, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ %i.i, %bb.p ], [ %i.i, %bb.r ], [ %.4140.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.i, %bb.q ], [ %spec.select.peel, %.split301.peel ], [ %spec.select.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %spec.select.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 3 uses
  %.2126 = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ false, %bb.p ], [ false, %bb.r ], [ %i.hm, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ false, %bb.q ], [ true, %.split301.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ true, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ]
  %.2119 = phi i32 [ 0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit173.thread ], [ 0, %bb.p ], [ 0, %bb.r ], [ %.2119.ph.ph, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ 0, %bb.q ], [ %spec.select156.peel, %.split301.peel ], [ %spec.select156.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %spec.select156.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.thr_comm.peel ] ; 11 uses
  %i.ho = icmp eq i32 %.4140, 16
  %i.hp = select i1 %i.ho, i32 22, i32 %.4140     ; 3 uses
  %i.hq = zext nneg i32 %i.hp to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.hr, ptr %9, align 8, !tbaa !64
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i64 0, ptr %i.hs, align 8, !tbaa !67
  store i8 0, ptr %i.hr, align 8, !tbaa !55
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !100, !range !101, !noundef !102
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 32)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit192._crit_edge
  %i.hw = zext nneg i32 %.4140 to i64             ; 3 uses
  %i.hx = udiv i64 -1, %i.hw                      ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 114 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ia = load i8, ptr %i.hz, align 8, !tbaa !107, !range !101, !noundef !102
  %i.ib = trunc nuw i8 %i.ia to i1
  br i1 %i.ib, label %.preheader, label %.preheader344

.preheader344:                                    ; preds = %bb.am
  br i1 %.1129.lcssa, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %.lr.ph434

.lr.ph434:                                        ; preds = %.preheader344
  %i.ic = icmp ult i32 %i.hp, 11                  ; 2 uses
  %i.id = or disjoint i32 %i.hp, 48               ; 2 uses
  %i.ie = sext i8 %.3 to i32                      ; 5 uses
  br i1 %i.ic, label %bb.as, label %bb.an

bb.an:                                            ; preds = %.lr.ph434
  %i.if = add i8 %.3, -48
  %or.cond.i.peel = icmp ult i8 %i.if, 10
  br i1 %or.cond.i.peel, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ig = add i8 %.3, -97
  %or.cond5.i.peel = icmp ult i8 %i.ig, 6
  br i1 %or.cond5.i.peel, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ih = add i8 %.3, -65
  %or.cond8.i.peel = icmp ult i8 %i.ih, 6
  %i.ii = add nsw i32 %i.ie, -55
  br i1 %or.cond8.i.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.aq:                                            ; preds = %bb.ao
  %i.ij = add nsw i32 %i.ie, -87
  br label %bb.at

bb.ar:                                            ; preds = %bb.an
  %i.ik = add nsw i32 %i.ie, -48
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph434
  %i.il = icmp sgt i8 %.3, 47
  %i.im = icmp sgt i32 %i.id, %i.ie
  %or.cond28.i.peel = select i1 %i.il, i1 %i.im, i1 false
  %i.in = add nsw i32 %i.ie, -48
  br i1 %or.cond28.i.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel: ; preds = %bb.as, %bb.ap
  %.0.i.peel = phi i32 [ %i.ii, %bb.ap ], [ %i.in, %bb.as ] ; 2 uses
  %i.io = icmp eq i32 %.0.i.peel, -1
  br i1 %i.io, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel, %bb.ar, %bb.aq
  %.0.i307.peel = phi i32 [ %.0.i.peel, %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.peel ], [ %i.ik, %bb.ar ], [ %i.ij, %bb.aq ]
  %i.ip = sext i32 %.0.i307.peel to i64           ; 4 uses
  %i.iq = add nsw i32 %.2119, 1                   ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0265.3, i64 16 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !139 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0265.3, i64 24 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !140 ; 2 uses
  %i.iv = icmp ult ptr %i.is, %i.iu
  br i1 %i.iv, label %bb.av, label %bb.au, !prof !78

bb.au:                                            ; preds = %bb.at
  %i.iw = load ptr, ptr %.sroa.0265.3, align 8, !tbaa !54
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 80
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = invoke noundef i32 %i.iy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.3)
          to label %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !22 ; 0 uses

._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel_crit_edge: ; preds = %bb.au
  %.pre531 = load ptr, ptr %i.ir, align 8, !tbaa !139
  %.pre532 = load ptr, ptr %i.it, align 8, !tbaa !140
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel

bb.av:                                            ; preds = %bb.at
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 1 ; 2 uses
  store ptr %i.ja, ptr %i.ir, align 8, !tbaa !139
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel: ; preds = %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel_crit_edge, %bb.av
  %i.jb = phi ptr [ %.pre532, %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel_crit_edge ], [ %i.iu, %bb.av ]
  %i.jc = phi ptr [ %.pre531, %._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel_crit_edge ], [ %i.ja, %bb.av ]
  %i.jd = icmp ult ptr %i.jc, %i.jb
  br i1 %i.jd, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i196.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i203.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i203.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel
  %i.je = load ptr, ptr %.sroa.0265.3, align 8, !tbaa !54
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 72
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = invoke noundef i32 %i.jg(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.3)
          to label %.noexc205.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23

.noexc205.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i203.peel
  %i.ji = icmp eq i32 %i.jh, -1                   ; 2 uses
  %spec.select334.peel = select i1 %i.ji, ptr null, ptr %.sroa.0265.3
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i196.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i196.peel: ; preds = %.noexc205.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel
  %.sroa.0265.15.peel = phi ptr [ %spec.select334.peel, %.noexc205.peel ], [ %.sroa.0265.3, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel ] ; 10 uses
  %.0.i.i.i.i197.peel = phi i1 [ %i.ji, %.noexc205.peel ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit193.peel ] ; 3 uses
  %.not.i.i2.i.i198.peel = icmp ne ptr %.sroa.0.2, null
  %or.cond.i.i3.i.i199.peel = select i1 %.not.i.i2.i.i198.peel, i1 %i.w, i1 false
  br i1 %or.cond.i.i3.i.i199.peel, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i196.peel
  %i.jj = xor i1 %i.w, %.0.i.i.i.i197.peel
  br i1 %i.jj, label %bb.ay, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.ax:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i196.peel
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !139
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !140
  %i.jo = icmp ult ptr %i.jl, %i.jn
  br i1 %i.jo, label %.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i201.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i201.peel: ; preds = %bb.ax
  %i.jp = load ptr, ptr %.sroa.0.2, align 8, !tbaa !54
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 72
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = invoke noundef i32 %i.jr(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.2)
          to label %.noexc206.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23

.noexc206.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i201.peel
  %i.jt = icmp eq i32 %i.js, -1
  br i1 %i.jt, label %.split310.peel, label %.thr_comm.peel

.split310.peel:                                   ; preds = %.noexc206.peel
  br i1 %.0.i.i.i.i197.peel, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread, label %bb.ay

.thr_comm.peel:                                   ; preds = %.noexc206.peel, %bb.ax
  br i1 %.0.i.i.i.i197.peel, label %bb.ay, label %_ZNKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE7_M_findIcEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread

bb.ay:                                            ; preds = %.thr_comm.peel, %.split310.peel, %bb.aw
  %.sroa.0.8309.peel = phi ptr [ %.sroa.0.2, %.thr_comm.peel ], [ %.sroa.0.2, %bb.aw ], [ null, %.split310.peel ]
  %.not.i.i208.not.peel = icmp eq ptr %.sroa.0265.15.peel, null
  br i1 %.not.i.i208.not.peel, label %.peel.next513.preheader, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0265.15.peel, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !139 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0265.15.peel, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !140
  %i.jy = icmp ult ptr %i.jv, %i.jx
  br i1 %i.jy, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i212.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i211.peel, !prof !78

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i211.peel: ; preds = %bb.az
  %i.jz = load ptr, ptr %.sroa.0265.15.peel, align 8, !tbaa !54
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 72
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = invoke noundef i32 %i.kb(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.15.peel)
          to label %.noexc213.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !24 ; 2 uses

.noexc213.peel:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i211.peel
  %i.kd = icmp eq i32 %i.kc, -1
  %spec.select336.peel = select i1 %i.kd, ptr null, ptr %.sroa.0265.15.peel
  %i.ke = trunc i32 %i.kc to i8
  br label %.peel.next513.preheader

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i212.peel: ; preds = %bb.az
  %i.kf = load i8, ptr %i.jv, align 1, !tbaa !55
  br label %.peel.next513.preheader

.peel.next513.preheader:                          ; preds = %bb.ay, %.noexc213.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i212.peel
  %.4292430.ph = phi i8 [ %i.ke, %.noexc213.peel ], [ -1, %bb.ay ], [ %i.kf, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i212.peel ]
end_hunk_5
begin_hunk_6_@_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE14_M_extract_intB5cxx11IlEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a

.split:                                           ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i
  br i1 %i.ah, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread, label %bb.h

_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEE9_M_at_eofEv.exit.i.i
  %i.ai = icmp ne i32 %.0.i.i.i.i, -1
  %i.aj = xor i1 %i.v, %i.ai
  br i1 %i.aj, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread, label %bb.h

bb.h:                                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %.split, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.5297 = phi ptr [ null, %.split ], [ %3, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %3, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ] ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %.not.i.i = icmp ne ptr %.sroa.0266.9, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0266.9, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !148 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0266.9, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !149
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !78

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %.sroa.0266.9, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.9), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i32 [ %i.aq, %bb.j ], [ %i.au, %bb.k ] ; 2 uses
  %i.av = icmp eq i32 %.0.i.i.i, -1
  %spec.select331 = select i1 %i.av, ptr null, ptr %.sroa.0266.9
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i, %bb.h
  %.sroa.0266.10 = phi ptr [ %.sroa.0266.9, %bb.h ], [ %spec.select331, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i ] ; 13 uses
  %.0.i.i = phi i32 [ %2, %bb.h ], [ %.0.i.i.i, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i ] ; 10 uses
  %i.aw = load i32, ptr %i.ak, align 4, !tbaa !119
  %i.ax = icmp eq i32 %.0.i.i, %i.aw              ; 11 uses
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !119
  %i.ba = icmp eq i32 %.0.i.i, %i.az
  br i1 %i.ba, label %bb.m, label %.lr.ph

bb.m:                                             ; preds = %bb.l, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !125, !range !101, !noundef !102
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !128
  %i.bg = icmp eq i32 %.0.i.i, %i.bf
  br i1 %i.bg, label %.lr.ph, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !130
  %i.bj = icmp eq i32 %.0.i.i, %i.bi
  br i1 %i.bj, label %.lr.ph, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0266.10, i64 16 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !148 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0266.10, i64 24 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !149 ; 2 uses
  %i.bo = icmp ult ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.q, label %bb.r, !prof !78

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit

bb.r:                                             ; preds = %bb.p
  %i.bq = load ptr, ptr %.sroa.0266.10, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.10), !inline_history !28 ; 0 uses
  %.pre = load ptr, ptr %i.bk, align 8, !tbaa !148
  %.pre526 = load ptr, ptr %i.bm, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit: ; preds = %bb.r, %bb.q
  %i.bu = phi ptr [ %.pre526, %bb.r ], [ %i.bn, %bb.q ]
  %i.bv = phi ptr [ %.pre, %bb.r ], [ %i.bp, %bb.q ] ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.bu
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !78

bb.s:                                             ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i167

bb.t:                                             ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit
  %i.by = load ptr, ptr %.sroa.0266.10, align 8, !tbaa !54
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef i32 %i.ca(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.10), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i167

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i167: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i168 = phi i32 [ %i.bx, %bb.s ], [ %i.cb, %bb.t ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i168, -1        ; 4 uses
  %spec.select333 = select i1 %i.cc, ptr null, ptr %.sroa.0266.10 ; 3 uses
  %.not.i.i2.i.i162 = icmp ne ptr %.sroa.0.5297, null
  %or.cond.i.i3.i.i163 = select i1 %.not.i.i2.i.i162, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i163, label %bb.u, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.u:                                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i167
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.5297, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !148 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.5297, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !149
  %i.ch = icmp ult ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.v, label %bb.w, !prof !78

bb.v:                                             ; preds = %bb.u
  %i.ci = load i32, ptr %i.ce, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165

bb.w:                                             ; preds = %bb.u
  %i.cj = load ptr, ptr %.sroa.0.5297, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.5297), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165: ; preds = %bb.w, %bb.v
  %.0.i.i.i6.i.i166 = phi i32 [ %i.ci, %bb.v ], [ %i.cm, %bb.w ]
  %i.cn = icmp eq i32 %.0.i.i.i6.i.i166, -1
  br i1 %i.cn, label %.split299, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165
  br i1 %i.cc, label %bb.x, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread

.split299:                                        ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165
  br i1 %i.cc, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread, label %bb.x

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i167
  %i.co = xor i1 %i.v, %i.cc
  br i1 %i.co, label %bb.x, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread

bb.x:                                             ; preds = %.split299, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.6298 = phi ptr [ %.sroa.0.5297, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0.5297, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split299 ] ; 2 uses
  %.not.i.i169.not = icmp eq ptr %spec.select333, null
  br i1 %.not.i.i169.not, label %.lr.ph, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %i.bk, align 8, !tbaa !148 ; 2 uses
  %i.cq = load ptr, ptr %i.bm, align 8, !tbaa !149
  %i.cr = icmp ult ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.z, label %bb.aa, !prof !78

bb.z:                                             ; preds = %bb.y
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i172

bb.aa:                                            ; preds = %bb.y
  %i.ct = load ptr, ptr %.sroa.0266.10, align 8, !tbaa !54
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef i32 %i.cv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.10), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i172

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i172: ; preds = %bb.aa, %bb.z
  %.0.i.i.i173 = phi i32 [ %i.cs, %bb.z ], [ %i.cw, %bb.aa ] ; 2 uses
  %i.cx = icmp eq i32 %.0.i.i.i173, -1
  %spec.select334 = select i1 %i.cx, ptr null, ptr %spec.select333
  br label %.lr.ph

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread: ; preds = %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split299, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge
  %.sroa.0266.0.ph = phi ptr [ %.sroa.0266.10, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0266.9, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0266.9, %.split ], [ %spec.select333, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split299 ], [ %.sroa.0266.9, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.26.0.ph = phi i32 [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %2, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %2, %.split ], [ -1, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ -1, %.split299 ], [ %2, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.5297, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %3, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ null, %.split ], [ %.sroa.0.5297, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split299 ], [ %3, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0290.ph = phi i32 [ %.0.i.i, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ 0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ 0, %.split ], [ %.0.i.i, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %.0.i.i, %.split299 ], [ 0, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0128.shrunk.ph = phi i1 [ %i.ax, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ false, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ false, %.split ], [ %i.ax, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.ax, %.split299 ], [ false, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge

.lr.ph:                                           ; preds = %bb.o, %bb.n, %bb.l, %bb.x, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i172
  %.sroa.0266.0 = phi ptr [ %.sroa.0266.10, %bb.l ], [ %.sroa.0266.10, %bb.n ], [ %.sroa.0266.10, %bb.o ], [ %spec.select334, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i172 ], [ null, %bb.x ] ; 13 uses
  %.sroa.26.0 = phi i32 [ %2, %bb.l ], [ %2, %bb.n ], [ %2, %bb.o ], [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i172 ], [ -1, %bb.x ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.5297, %bb.l ], [ %.sroa.0.5297, %bb.n ], [ %.sroa.0.5297, %bb.o ], [ %.sroa.0.6298, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i172 ], [ %.sroa.0.6298, %bb.x ] ; 12 uses
  %.0290 = phi i32 [ %.0.i.i, %bb.l ], [ %.0.i.i, %bb.n ], [ %.0.i.i, %bb.o ], [ %.0.i.i.i173, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i172 ], [ -1, %bb.x ] ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %i.de = icmp eq i32 %i.e, 0                     ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.dg = load i8, ptr %i.db, align 8, !tbaa !125, !range !101, !noundef !102
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph
  %i.di = load i32, ptr %i.cz, align 4, !tbaa !128
  %i.dj = icmp eq i32 %.0290, %i.di
  br i1 %i.dj, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph
  %i.dk = load i32, ptr %i.dc, align 8, !tbaa !130
  %i.dl = icmp eq i32 %.0290, %i.dk
  br i1 %i.dl, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load i32, ptr %i.dd, align 8, !tbaa !119
  %.not590 = icmp eq i32 %.0290, %i.dm
  br i1 %.not590, label %bb.ae, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge

bb.ae:                                            ; preds = %bb.ad
  %spec.select.peel = select i1 %i.de, i32 8, i32 %i.i ; 4 uses
  %i.dn = or i1 %i.de, %i.f
  %not. = xor i1 %i.dn, true
  %spec.select157.peel = zext i1 %not. to i32     ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0266.0, i64 16 ; 4 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !148 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0266.0, i64 24 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !149 ; 2 uses
  %i.ds = icmp ult ptr %i.dp, %i.dr
  br i1 %i.ds, label %bb.ag, label %bb.af, !prof !78

bb.af:                                            ; preds = %bb.ae
  %i.dt = load ptr, ptr %.sroa.0266.0, align 8, !tbaa !54
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.0), !inline_history !28 ; 0 uses
  %.pre529 = load ptr, ptr %i.do, align 8, !tbaa !148
  %.pre530 = load ptr, ptr %i.dq, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175.peel

bb.ag:                                            ; preds = %bb.ae
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  store ptr %i.dx, ptr %i.do, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175.peel

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175.peel: ; preds = %bb.ag, %bb.af
  %i.dy = phi ptr [ %i.dr, %bb.ag ], [ %.pre530, %bb.af ]
  %i.dz = phi ptr [ %i.dx, %bb.ag ], [ %.pre529, %bb.af ] ; 2 uses
  %i.ea = icmp ult ptr %i.dz, %i.dy
  br i1 %i.ea, label %bb.ai, label %bb.ah, !prof !78

bb.ah:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175.peel
  %i.eb = load ptr, ptr %.sroa.0266.0, align 8, !tbaa !54
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef i32 %i.ed(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.0), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185.peel

bb.ai:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175.peel
  %i.ef = load i32, ptr %i.dz, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185.peel: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i186.peel = phi i32 [ %i.ef, %bb.ai ], [ %i.ee, %bb.ah ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i186.peel, -1   ; 4 uses
  %spec.select336.peel = select i1 %i.eg, ptr null, ptr %.sroa.0266.0 ; 3 uses
  %.not.i.i2.i.i180.peel = icmp ne ptr %.sroa.0.0, null
  %or.cond.i.i3.i.i181.peel = select i1 %.not.i.i2.i.i180.peel, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i181.peel, label %bb.aj, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185.peel
  %i.eh = xor i1 %i.v, %i.eg
  br i1 %i.eh, label %bb.am, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge

bb.aj:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185.peel
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !148 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !149
  %i.em = icmp ult ptr %i.ej, %i.el
  br i1 %i.em, label %bb.al, label %bb.ak, !prof !78

bb.ak:                                            ; preds = %bb.aj
  %i.en = load ptr, ptr %.sroa.0.0, align 8, !tbaa !54
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call noundef i32 %i.ep(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183.peel

bb.al:                                            ; preds = %bb.aj
  %i.er = load i32, ptr %i.ej, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183.peel: ; preds = %bb.al, %bb.ak
  %.0.i.i.i6.i.i184.peel = phi i32 [ %i.er, %bb.al ], [ %i.eq, %bb.ak ]
  %i.es = icmp eq i32 %.0.i.i.i6.i.i184.peel, -1
  br i1 %i.es, label %.split304.peel, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183.peel
  br i1 %i.eg, label %bb.am, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge

.split304.peel:                                   ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183.peel
  br i1 %i.eg, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge, label %bb.am

bb.am:                                            ; preds = %.split304.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel
  %.sroa.0.7303.peel = phi ptr [ %.sroa.0.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ], [ %.sroa.0.0, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ null, %.split304.peel ]
  %.not.i.i188.not.peel = icmp eq ptr %spec.select336.peel, null
  br i1 %.not.i.i188.not.peel, label %.peel.next.preheader, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.et = load ptr, ptr %i.do, align 8, !tbaa !148 ; 2 uses
  %i.eu = load ptr, ptr %i.dq, align 8, !tbaa !149
  %i.ev = icmp ult ptr %i.et, %i.eu
  br i1 %i.ev, label %bb.ap, label %bb.ao, !prof !78

bb.ao:                                            ; preds = %bb.an
  %i.ew = load ptr, ptr %.sroa.0266.0, align 8, !tbaa !54
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call noundef i32 %i.ey(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.0), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191.peel

bb.ap:                                            ; preds = %bb.an
  %i.fa = load i32, ptr %i.et, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191.peel: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i192.peel = phi i32 [ %i.fa, %bb.ap ], [ %i.ez, %bb.ao ] ; 2 uses
  %i.fb = icmp eq i32 %.0.i.i.i192.peel, -1
  %spec.select337.peel = select i1 %i.fb, ptr null, ptr %spec.select336.peel
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191.peel, %bb.am
  %.1291370.ph = phi i32 [ -1, %bb.am ], [ %.0.i.i.i192.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191.peel ]
  %.sroa.0266.1367.ph = phi ptr [ null, %bb.am ], [ %spec.select337.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191.peel ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193
  %.0118374 = phi i32 [ %.1119, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %spec.select157.peel, %.peel.next.preheader ] ; 6 uses
  %.0125373 = phi i8 [ %.1126, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ 1, %.peel.next.preheader ] ; 3 uses
  %.0137371 = phi i32 [ %.3140, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %spec.select.peel, %.peel.next.preheader ] ; 9 uses
  %.1291370 = phi i32 [ %.0.i.i190, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %.1291370.ph, %.peel.next.preheader ] ; 13 uses
  %.sroa.0.1369 = phi ptr [ %.sroa.0.7303, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %.sroa.0.7303.peel, %.peel.next.preheader ] ; 14 uses
  %.sroa.0266.1367 = phi ptr [ %.sroa.0266.14, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %.sroa.0266.1367.ph, %.peel.next.preheader ] ; 15 uses
  %i.fc = load i8, ptr %i.db, align 8, !tbaa !125, !range !101, !noundef !102
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.peel.next
  %i.fe = load i32, ptr %i.cz, align 4, !tbaa !128
  %i.ff = icmp eq i32 %.1291370, %i.fe
  br i1 %i.ff, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.peel.next
  %i.fg = load i32, ptr %i.dc, align 8, !tbaa !130
  %i.fh = icmp eq i32 %.1291370, %i.fg
  br i1 %i.fh, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fi = load i32, ptr %i.dd, align 8, !tbaa !119
  %i.fj = icmp ne i32 %.1291370, %i.fi
  %10 = trunc nuw i8 %.0125373 to i1              ; 2 uses
  %i.fk = icmp ne i32 %.0137371, 10
  %or.cond.not = and i1 %i.fk, %10
  %or.cond = select i1 %i.fj, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %12, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fl = add nsw i32 %.0118374, 1
  %spec.select = select i1 %i.de, i32 8, i32 %.0137371 ; 2 uses
  %11 = icmp eq i32 %spec.select, 8
  %spec.select157 = select i1 %11, i32 0, i32 %i.fl
  br label %bb.ax

12:                                               ; preds = %bb.as
  br i1 %10, label %bb.au, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit

bb.au:                                            ; preds = %12
  %i.fm = load i32, ptr %i.df, align 8, !tbaa !119
  %i.fn = icmp eq i32 %.1291370, %i.fm
  br i1 %i.fn, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fo = load i32, ptr %i.da, align 4, !tbaa !119
  %i.fp = icmp eq i32 %.1291370, %i.fo
  %i.fq = icmp eq i32 %.0137371, 16
  %i.fr = select i1 %i.de, i1 true, i1 %i.fq
  %or.cond502 = select i1 %i.fp, i1 %i.fr, i1 false
  br i1 %or.cond502, label %bb.ax, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit

bb.aw:                                            ; preds = %bb.au
  %.old = icmp eq i32 %.0137371, 16
  %.old501 = select i1 %i.de, i1 true, i1 %.old
  br i1 %.old501, label %bb.ax, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit

bb.ax:                                            ; preds = %bb.av, %bb.at, %bb.aw
  %.3140 = phi i32 [ 16, %bb.aw ], [ %spec.select, %bb.at ], [ 16, %bb.av ] ; 5 uses
  %.1126 = phi i8 [ 0, %bb.aw ], [ 1, %bb.at ], [ 0, %bb.av ] ; 5 uses
  %.1119 = phi i32 [ 0, %bb.aw ], [ %spec.select157, %bb.at ], [ 0, %bb.av ] ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0266.1367, i64 16 ; 4 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !148 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0266.1367, i64 24 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !149 ; 2 uses
  %i.fw = icmp ult ptr %i.ft, %i.fv
  br i1 %i.fw, label %bb.ay, label %bb.az, !prof !78

bb.ay:                                            ; preds = %bb.ax
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 2 uses
  store ptr %i.fx, ptr %i.fs, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175

bb.az:                                            ; preds = %bb.ax
  %i.fy = load ptr, ptr %.sroa.0266.1367, align 8, !tbaa !54
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 80
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = call noundef i32 %i.ga(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.1367), !inline_history !28 ; 0 uses
  %.pre531 = load ptr, ptr %i.fs, align 8, !tbaa !148
  %.pre532 = load ptr, ptr %i.fu, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175: ; preds = %bb.az, %bb.ay
  %i.gc = phi ptr [ %.pre532, %bb.az ], [ %i.fv, %bb.ay ]
  %i.gd = phi ptr [ %.pre531, %bb.az ], [ %i.fx, %bb.ay ] ; 2 uses
  %i.ge = icmp ult ptr %i.gd, %i.gc
  br i1 %i.ge, label %bb.ba, label %bb.bb, !prof !78

bb.ba:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185

bb.bb:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175
  %i.gg = load ptr, ptr %.sroa.0266.1367, align 8, !tbaa !54
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 72
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = call noundef i32 %i.gi(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.1367), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i186 = phi i32 [ %i.gf, %bb.ba ], [ %i.gj, %bb.bb ]
  %i.gk = icmp eq i32 %.0.i.i.i.i.i186, -1        ; 4 uses
  %spec.select336 = select i1 %i.gk, ptr null, ptr %.sroa.0266.1367 ; 3 uses
  %.not.i.i2.i.i180 = icmp ne ptr %.sroa.0.1369, null
  %or.cond.i.i3.i.i181 = select i1 %.not.i.i2.i.i180, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i181, label %bb.bc, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187

bb.bc:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.1369, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !148 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.1369, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !149
  %i.gp = icmp ult ptr %i.gm, %i.go
  br i1 %i.gp, label %bb.bd, label %bb.be, !prof !78

bb.bd:                                            ; preds = %bb.bc
  %i.gq = load i32, ptr %i.gm, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183

bb.be:                                            ; preds = %bb.bc
  %i.gr = load ptr, ptr %.sroa.0.1369, align 8, !tbaa !54
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = call noundef i32 %i.gt(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.1369), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183: ; preds = %bb.be, %bb.bd
  %.0.i.i.i6.i.i184 = phi i32 [ %i.gq, %bb.bd ], [ %i.gu, %bb.be ]
  %i.gv = icmp eq i32 %.0.i.i.i6.i.i184, -1
  br i1 %i.gv, label %.split304, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183
  br i1 %i.gk, label %bb.bf, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit

.split304:                                        ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183
  br i1 %i.gk, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit, label %bb.bf

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185
  %i.gw = xor i1 %i.v, %i.gk
  br i1 %i.gw, label %bb.bf, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit

bb.bf:                                            ; preds = %.split304, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187
  %.sroa.0.7303 = phi ptr [ %.sroa.0.1369, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge ], [ %.sroa.0.1369, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ null, %.split304 ] ; 2 uses
  %.not.i.i188.not = icmp eq ptr %spec.select336, null
  br i1 %.not.i.i188.not, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gx = load ptr, ptr %i.fs, align 8, !tbaa !148 ; 2 uses
  %i.gy = load ptr, ptr %i.fu, align 8, !tbaa !149
  %i.gz = icmp ult ptr %i.gx, %i.gy
  br i1 %i.gz, label %bb.bh, label %bb.bi, !prof !78

bb.bh:                                            ; preds = %bb.bg
  %i.ha = load i32, ptr %i.gx, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191

bb.bi:                                            ; preds = %bb.bg
  %i.hb = load ptr, ptr %.sroa.0266.1367, align 8, !tbaa !54
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = call noundef i32 %i.hd(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.1367), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i192 = phi i32 [ %i.ha, %bb.bh ], [ %i.he, %bb.bi ] ; 2 uses
  %i.hf = icmp eq i32 %.0.i.i.i192, -1
  %spec.select337 = select i1 %i.hf, ptr null, ptr %spec.select336
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191, %bb.bf
  %.sroa.0266.14 = phi ptr [ null, %bb.bf ], [ %spec.select337, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191 ] ; 2 uses
  %.0.i.i190 = phi i32 [ -1, %bb.bf ], [ %.0.i.i.i192, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191 ] ; 2 uses
  %i.hg = trunc nuw i8 %.1126 to i1
  br i1 %i.hg, label %.peel.next, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit, !llvm.loop !306

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit: ; preds = %.split304, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187, %bb.ar, %bb.aq, %bb.aw, %bb.av, %12, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193
  %.1130.lcssa.ph.ph = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ false, %12 ], [ false, %bb.av ], [ false, %bb.aw ], [ false, %bb.aq ], [ false, %bb.ar ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge ], [ true, %.split304 ]
  %.sroa.0266.3.ph.ph = phi ptr [ %.sroa.0266.14, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %.sroa.0266.1367, %12 ], [ %.sroa.0266.1367, %bb.av ], [ %.sroa.0266.1367, %bb.aw ], [ %.sroa.0266.1367, %bb.aq ], [ %.sroa.0266.1367, %bb.ar ], [ %spec.select336, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.sroa.0266.1367, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge ], [ null, %.split304 ]
  %.sroa.0.2.ph.ph = phi ptr [ %.sroa.0.7303, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %.sroa.0.1369, %12 ], [ %.sroa.0.1369, %bb.av ], [ %.sroa.0.1369, %bb.aw ], [ %.sroa.0.1369, %bb.aq ], [ %.sroa.0.1369, %bb.ar ], [ %.sroa.0.1369, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.sroa.0.1369, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge ], [ null, %.split304 ]
  %.3.ph.ph = phi i32 [ %.0.i.i190, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %.1291370, %12 ], [ %.1291370, %bb.av ], [ %.1291370, %bb.aw ], [ %.1291370, %bb.aq ], [ %.1291370, %bb.ar ], [ %.1291370, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.1291370, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge ], [ %.1291370, %.split304 ]
  %.4141.ph.ph = phi i32 [ %.3140, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %.0137371, %12 ], [ %.0137371, %bb.av ], [ %.0137371, %bb.aw ], [ %.0137371, %bb.aq ], [ %.0137371, %bb.ar ], [ %.3140, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.3140, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge ], [ %.3140, %.split304 ]
  %.2127.ph.ph = phi i8 [ 0, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ 0, %12 ], [ 1, %bb.av ], [ 1, %bb.aw ], [ %.0125373, %bb.aq ], [ %.0125373, %bb.ar ], [ %.1126, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.1126, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge ], [ %.1126, %.split304 ]
  %.2120.ph.ph = phi i32 [ %.1119, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %.0118374, %12 ], [ %.0118374, %bb.av ], [ %.0118374, %bb.aw ], [ %.0118374, %bb.aq ], [ %.0118374, %bb.ar ], [ %.1119, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.1119, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge ], [ %.1119, %.split304 ]
  %i.hh = trunc nuw i8 %.2127.ph.ph to i1
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel, %.split304.peel, %bb.ab, %bb.ac, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit, %bb.ad, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread
  %i.hi = phi ptr [ %i.cy, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ %i.cz, %bb.ab ], [ %i.cz, %bb.ad ], [ %i.cz, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %i.cz, %bb.ac ], [ %i.cz, %.split304.peel ], [ %i.cz, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %i.cz, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 2 uses
  %.0128.shrunk597 = phi i1 [ %.0128.shrunk.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ %i.ax, %bb.ab ], [ %i.ax, %bb.ad ], [ %i.ax, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %i.ax, %bb.ac ], [ %i.ax, %.split304.peel ], [ %i.ax, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %i.ax, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 2 uses
  %.1130.lcssa = phi i1 [ true, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ false, %bb.ab ], [ false, %bb.ad ], [ %.1130.lcssa.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ false, %bb.ac ], [ true, %.split304.peel ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 2 uses
  %.sroa.0266.3 = phi ptr [ %.sroa.0266.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ %.sroa.0266.0, %bb.ab ], [ %.sroa.0266.0, %bb.ad ], [ %.sroa.0266.3.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %.sroa.0266.0, %bb.ac ], [ null, %.split304.peel ], [ %spec.select336.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %.sroa.0266.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 27 uses
  %.sroa.26.2 = phi i32 [ %.sroa.26.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ %.sroa.26.0, %bb.ab ], [ %.sroa.26.0, %bb.ad ], [ -1, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %.sroa.26.0, %bb.ac ], [ -1, %.split304.peel ], [ -1, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 7 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ %.sroa.0.0, %bb.ab ], [ %.sroa.0.0, %bb.ad ], [ %.sroa.0.2.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %.sroa.0.0, %bb.ac ], [ null, %.split304.peel ], [ %.sroa.0.0, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %.sroa.0.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 14 uses
  %.3 = phi i32 [ %.0290.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ %.0290, %bb.ab ], [ %.0290, %bb.ad ], [ %.3.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %.0290, %bb.ac ], [ %.0290, %.split304.peel ], [ %.0290, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %.0290, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 11 uses
  %.4141 = phi i32 [ %i.i, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ %i.i, %bb.ab ], [ %i.i, %bb.ad ], [ %.4141.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %i.i, %bb.ac ], [ %spec.select.peel, %.split304.peel ], [ %spec.select.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %spec.select.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 3 uses
  %.2127 = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ false, %bb.ab ], [ false, %bb.ad ], [ %i.hh, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ false, %bb.ac ], [ true, %.split304.peel ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ]
  %.2120 = phi i32 [ 0, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ 0, %bb.ab ], [ 0, %bb.ad ], [ %.2120.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ 0, %bb.ac ], [ %spec.select157.peel, %.split304.peel ], [ %spec.select157.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %spec.select157.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 10 uses
  %i.hj = icmp eq i32 %.4141, 16
  %i.hk = select i1 %i.hj, i32 22, i32 %.4141     ; 3 uses
  %i.hl = zext nneg i32 %i.hk to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.hm, ptr %9, align 8, !tbaa !64
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i64 0, ptr %i.hn, align 8, !tbaa !67
  store i8 0, ptr %i.hm, align 8, !tbaa !55
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !125, !range !101, !noundef !102
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 32)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge
  %i.hr = select i1 %.0128.shrunk597, i64 -9223372036854775808, i64 9223372036854775807 ; 4 uses
  %i.hs = zext nneg i32 %.4141 to i64             ; 3 uses
  %i.ht = udiv i64 %i.hr, %i.hs                   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.hw = load i8, ptr %i.hv, align 8, !tbaa !129, !range !101, !noundef !102
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %.preheader, label %.preheader352

.preheader352:                                    ; preds = %bb.bk
  br i1 %.1130.lcssa, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread311, label %.lr.ph442

.lr.ph442:                                        ; preds = %.preheader352
  %i.hy = icmp ult i32 %i.hk, 11                  ; 2 uses
  %i.hz = or disjoint i32 %i.hk, 48               ; 2 uses
  br i1 %i.hy, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph442
  %i.ia = add i32 %.3, -48                        ; 2 uses
  %or.cond.i.peel = icmp ult i32 %i.ia, 10
  br i1 %or.cond.i.peel, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ib = add i32 %.3, -97
  %or.cond3.i.peel = icmp ult i32 %i.ib, 6
  br i1 %or.cond3.i.peel, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ic = add nsw i32 %.3, -55
  %i.id = add i32 %.3, -71
  %or.cond339.peel = icmp ult i32 %i.id, -6
  br i1 %or.cond339.peel, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread311, label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  %i.ie = add nsw i32 %.3, -87
  br label %bb.bq

bb.bp:                                            ; preds = %.lr.ph442
  %i.if = icmp sgt i32 %.3, 47
  %i.ig = icmp samesign ult i32 %.3, %i.hz
  %or.cond24.i.peel = select i1 %i.if, i1 %i.ig, i1 false
  %i.ih = add nsw i32 %.3, -48
  br i1 %or.cond24.i.peel, label %bb.bq, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread311

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bl
  %.0.i309.peel = phi i32 [ %i.ic, %bb.bn ], [ %i.ie, %bb.bo ], [ %i.ia, %bb.bl ], [ %i.ih, %bb.bp ]
  %i.ii = sext i32 %.0.i309.peel to i64           ; 4 uses
  %i.ij = add nsw i32 %.2120, 1                   ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0266.3, i64 16 ; 4 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !148 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0266.3, i64 24 ; 3 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !149 ; 2 uses
  %i.io = icmp ult ptr %i.il, %i.in
  br i1 %i.io, label %bb.bs, label %bb.br, !prof !78

bb.br:                                            ; preds = %bb.bq
  %i.ip = load ptr, ptr %.sroa.0266.3, align 8, !tbaa !54
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 80
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = invoke noundef i32 %i.ir(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.3)
          to label %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !30 ; 0 uses

._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel_crit_edge: ; preds = %bb.br
  %.pre533 = load ptr, ptr %i.ik, align 8, !tbaa !148
  %.pre534 = load ptr, ptr %i.im, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel

bb.bs:                                            ; preds = %bb.bq
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 4 ; 2 uses
  store ptr %i.it, ptr %i.ik, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel: ; preds = %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel_crit_edge, %bb.bs
  %i.iu = phi ptr [ %.pre534, %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel_crit_edge ], [ %i.in, %bb.bs ]
  %i.iv = phi ptr [ %.pre533, %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel_crit_edge ], [ %i.it, %bb.bs ] ; 2 uses
  %i.iw = icmp ult ptr %i.iv, %i.iu
  br i1 %i.iw, label %bb.bu, label %bb.bt, !prof !78

bb.bt:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel
  %i.ix = load ptr, ptr %.sroa.0266.3, align 8, !tbaa !54
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 72
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = invoke noundef i32 %i.iz(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.3)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i204.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !31

bb.bu:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel
  %i.jb = load i32, ptr %i.iv, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i204.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i204.peel: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i205.peel = phi i32 [ %i.jb, %bb.bu ], [ %i.ja, %bb.bt ]
  %i.jc = icmp eq i32 %.0.i.i.i.i.i205.peel, -1   ; 4 uses
  %spec.select340.peel = select i1 %i.jc, ptr null, ptr %.sroa.0266.3 ; 3 uses
  %.not.i.i2.i.i199.peel = icmp ne ptr %.sroa.0.2, null
  %or.cond.i.i3.i.i200.peel = select i1 %.not.i.i2.i.i199.peel, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i200.peel, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i204.peel
  %i.jd = xor i1 %i.v, %i.jc
  br i1 %i.jd, label %bb.bz, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread311

bb.bw:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i204.peel
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !148 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !149
  %i.ji = icmp ult ptr %i.jf, %i.jh
  br i1 %i.ji, label %bb.by, label %bb.bx, !prof !78

bb.bx:                                            ; preds = %bb.bw
  %i.jj = load ptr, ptr %.sroa.0.2, align 8, !tbaa !54
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 72
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = invoke noundef i32 %i.jl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.2)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !31

bb.by:                                            ; preds = %bb.bw
  %i.jn = load i32, ptr %i.jf, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202.peel: ; preds = %bb.by, %bb.bx
  %.0.i.i.i6.i.i203.peel = phi i32 [ %i.jn, %bb.by ], [ %i.jm, %bb.bx ]
  %i.jo = icmp eq i32 %.0.i.i.i6.i.i203.peel, -1
  br i1 %i.jo, label %.split315.peel, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202._crit_edge.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202._crit_edge.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202.peel
  br i1 %i.jc, label %bb.bz, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread311

.split315.peel:                                   ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202.peel
  br i1 %i.jc, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread311, label %bb.bz

bb.bz:                                            ; preds = %.split315.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202._crit_edge.peel, %bb.bv
  %.sroa.0.8314.peel = phi ptr [ %.sroa.0.2, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202._crit_edge.peel ], [ %.sroa.0.2, %bb.bv ], [ null, %.split315.peel ]
  %.not.i.i209.not.peel = icmp eq ptr %spec.select340.peel, null
  br i1 %.not.i.i209.not.peel, label %.peel.next515.preheader, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jp = load ptr, ptr %i.ik, align 8, !tbaa !148 ; 2 uses
  %i.jq = load ptr, ptr %i.im, align 8, !tbaa !149
  %i.jr = icmp ult ptr %i.jp, %i.jq
  br i1 %i.jr, label %bb.cc, label %bb.cb, !prof !78

bb.cb:                                            ; preds = %bb.ca
  %i.js = load ptr, ptr %.sroa.0266.3, align 8, !tbaa !54
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 72
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = invoke noundef i32 %i.ju(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.3)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i212.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !32

bb.cc:                                            ; preds = %bb.ca
  %i.jw = load i32, ptr %i.jp, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i212.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i212.peel: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i213.peel = phi i32 [ %i.jw, %bb.cc ], [ %i.jv, %bb.cb ] ; 2 uses
  %i.jx = icmp eq i32 %.0.i.i.i213.peel, -1
  %spec.select341.peel = select i1 %i.jx, ptr null, ptr %spec.select340.peel
  br label %.peel.next515.preheader

.peel.next515.preheader:                          ; preds = %bb.bz, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i212.peel
  %.4293438.ph = phi i32 [ -1, %bb.bz ], [ %.0.i.i.i213.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i212.peel ]
  %.sroa.0266.4435.ph = phi ptr [ null, %bb.bz ], [ %spec.select341.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i212.peel ]
  br label %.peel.next515

.preheader:                                       ; preds = %bb.bk
  br i1 %.1130.lcssa, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread311, label %.lr.ph470

end_hunk_6
begin_hunk_7_@_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE14_M_extract_intB5cxx11ItEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a

.split:                                           ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i
  br i1 %i.ah, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread, label %bb.h

_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEE9_M_at_eofEv.exit.i.i
  %i.ai = icmp ne i32 %.0.i.i.i.i, -1
  %i.aj = xor i1 %i.v, %i.ai
  br i1 %i.aj, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread, label %bb.h

bb.h:                                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %.split, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.5298 = phi ptr [ null, %.split ], [ %3, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %3, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ] ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %.not.i.i = icmp ne ptr %.sroa.0267.9, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0267.9, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !148 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0267.9, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !149
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !78

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %.sroa.0267.9, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.9), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i32 [ %i.aq, %bb.j ], [ %i.au, %bb.k ] ; 2 uses
  %i.av = icmp eq i32 %.0.i.i.i, -1
  %spec.select330 = select i1 %i.av, ptr null, ptr %.sroa.0267.9
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i, %bb.h
  %.sroa.0267.10 = phi ptr [ %.sroa.0267.9, %bb.h ], [ %spec.select330, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i ] ; 13 uses
  %.0.i.i = phi i32 [ %2, %bb.h ], [ %.0.i.i.i, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i ] ; 10 uses
  %i.aw = load i32, ptr %i.ak, align 4, !tbaa !119
  %i.ax = icmp eq i32 %.0.i.i, %i.aw              ; 11 uses
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !119
  %i.ba = icmp eq i32 %.0.i.i, %i.az
  br i1 %i.ba, label %bb.m, label %.lr.ph

bb.m:                                             ; preds = %bb.l, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !125, !range !101, !noundef !102
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !128
  %i.bg = icmp eq i32 %.0.i.i, %i.bf
  br i1 %i.bg, label %.lr.ph, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !130
  %i.bj = icmp eq i32 %.0.i.i, %i.bi
  br i1 %i.bj, label %.lr.ph, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0267.10, i64 16 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !148 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0267.10, i64 24 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !149 ; 2 uses
  %i.bo = icmp ult ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.q, label %bb.r, !prof !78

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit

bb.r:                                             ; preds = %bb.p
  %i.bq = load ptr, ptr %.sroa.0267.10, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.10), !inline_history !28 ; 0 uses
  %.pre = load ptr, ptr %i.bk, align 8, !tbaa !148
  %.pre524 = load ptr, ptr %i.bm, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit: ; preds = %bb.r, %bb.q
  %i.bu = phi ptr [ %.pre524, %bb.r ], [ %i.bn, %bb.q ]
  %i.bv = phi ptr [ %.pre, %bb.r ], [ %i.bp, %bb.q ] ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.bu
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !78

bb.s:                                             ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i168

bb.t:                                             ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit
  %i.by = load ptr, ptr %.sroa.0267.10, align 8, !tbaa !54
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef i32 %i.ca(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.10), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i168

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i168: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i169 = phi i32 [ %i.bx, %bb.s ], [ %i.cb, %bb.t ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i169, -1        ; 4 uses
  %spec.select332 = select i1 %i.cc, ptr null, ptr %.sroa.0267.10 ; 3 uses
  %.not.i.i2.i.i163 = icmp ne ptr %.sroa.0.5298, null
  %or.cond.i.i3.i.i164 = select i1 %.not.i.i2.i.i163, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i164, label %bb.u, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.u:                                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i168
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.5298, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !148 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.5298, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !149
  %i.ch = icmp ult ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.v, label %bb.w, !prof !78

bb.v:                                             ; preds = %bb.u
  %i.ci = load i32, ptr %i.ce, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i166

bb.w:                                             ; preds = %bb.u
  %i.cj = load ptr, ptr %.sroa.0.5298, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.5298), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i166

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i166: ; preds = %bb.w, %bb.v
  %.0.i.i.i6.i.i167 = phi i32 [ %i.ci, %bb.v ], [ %i.cm, %bb.w ]
  %i.cn = icmp eq i32 %.0.i.i.i6.i.i167, -1
  br i1 %i.cn, label %.split300, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i166._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i166._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i166
  br i1 %i.cc, label %bb.x, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread

.split300:                                        ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i166
  br i1 %i.cc, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread, label %bb.x

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i168
  %i.co = xor i1 %i.v, %i.cc
  br i1 %i.co, label %bb.x, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread

bb.x:                                             ; preds = %.split300, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i166._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.6299 = phi ptr [ %.sroa.0.5298, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i166._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0.5298, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split300 ] ; 2 uses
  %.not.i.i170.not = icmp eq ptr %spec.select332, null
  br i1 %.not.i.i170.not, label %.lr.ph, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %i.bk, align 8, !tbaa !148 ; 2 uses
  %i.cq = load ptr, ptr %i.bm, align 8, !tbaa !149
  %i.cr = icmp ult ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.z, label %bb.aa, !prof !78

bb.z:                                             ; preds = %bb.y
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i173

bb.aa:                                            ; preds = %bb.y
  %i.ct = load ptr, ptr %.sroa.0267.10, align 8, !tbaa !54
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef i32 %i.cv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.10), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i173

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i173: ; preds = %bb.aa, %bb.z
  %.0.i.i.i174 = phi i32 [ %i.cs, %bb.z ], [ %i.cw, %bb.aa ] ; 2 uses
  %i.cx = icmp eq i32 %.0.i.i.i174, -1
  %spec.select333 = select i1 %i.cx, ptr null, ptr %spec.select332
  br label %.lr.ph

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread: ; preds = %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split300, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i166._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge
  %.sroa.0267.0.ph = phi ptr [ %.sroa.0267.10, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i166._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0267.9, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0267.9, %.split ], [ %spec.select332, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split300 ], [ %.sroa.0267.9, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.26.0.ph = phi i32 [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i166._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %2, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %2, %.split ], [ -1, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ -1, %.split300 ], [ %2, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.5298, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i166._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %3, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ null, %.split ], [ %.sroa.0.5298, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split300 ], [ %3, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0291.ph = phi i32 [ %.0.i.i, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i166._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ 0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ 0, %.split ], [ %.0.i.i, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %.0.i.i, %.split300 ], [ 0, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0127.shrunk.ph = phi i1 [ %i.ax, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i166._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ false, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ false, %.split ], [ %i.ax, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.ax, %.split300 ], [ false, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge

.lr.ph:                                           ; preds = %bb.o, %bb.n, %bb.l, %bb.x, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i173
  %.sroa.0267.0 = phi ptr [ %.sroa.0267.10, %bb.l ], [ %.sroa.0267.10, %bb.n ], [ %.sroa.0267.10, %bb.o ], [ %spec.select333, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i173 ], [ null, %bb.x ] ; 13 uses
  %.sroa.26.0 = phi i32 [ %2, %bb.l ], [ %2, %bb.n ], [ %2, %bb.o ], [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i173 ], [ -1, %bb.x ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.5298, %bb.l ], [ %.sroa.0.5298, %bb.n ], [ %.sroa.0.5298, %bb.o ], [ %.sroa.0.6299, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i173 ], [ %.sroa.0.6299, %bb.x ] ; 12 uses
  %.0291 = phi i32 [ %.0.i.i, %bb.l ], [ %.0.i.i, %bb.n ], [ %.0.i.i, %bb.o ], [ %.0.i.i.i174, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i173 ], [ -1, %bb.x ] ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %i.de = icmp eq i32 %i.e, 0                     ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.dg = load i8, ptr %i.db, align 8, !tbaa !125, !range !101, !noundef !102
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph
  %i.di = load i32, ptr %i.cz, align 4, !tbaa !128
  %i.dj = icmp eq i32 %.0291, %i.di
  br i1 %i.dj, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph
  %i.dk = load i32, ptr %i.dc, align 8, !tbaa !130
  %i.dl = icmp eq i32 %.0291, %i.dk
  br i1 %i.dl, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load i32, ptr %i.dd, align 8, !tbaa !119
  %.not588 = icmp eq i32 %.0291, %i.dm
  br i1 %.not588, label %bb.ae, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge

bb.ae:                                            ; preds = %bb.ad
  %spec.select.peel = select i1 %i.de, i32 8, i32 %i.i ; 4 uses
  %i.dn = or i1 %i.de, %i.f
  %not. = xor i1 %i.dn, true
  %spec.select158.peel = zext i1 %not. to i32     ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0267.0, i64 16 ; 4 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !148 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0267.0, i64 24 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !149 ; 2 uses
  %i.ds = icmp ult ptr %i.dp, %i.dr
  br i1 %i.ds, label %bb.ag, label %bb.af, !prof !78

bb.af:                                            ; preds = %bb.ae
  %i.dt = load ptr, ptr %.sroa.0267.0, align 8, !tbaa !54
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.0), !inline_history !28 ; 0 uses
  %.pre527 = load ptr, ptr %i.do, align 8, !tbaa !148
  %.pre528 = load ptr, ptr %i.dq, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit176.peel

bb.ag:                                            ; preds = %bb.ae
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  store ptr %i.dx, ptr %i.do, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit176.peel

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit176.peel: ; preds = %bb.ag, %bb.af
  %i.dy = phi ptr [ %i.dr, %bb.ag ], [ %.pre528, %bb.af ]
  %i.dz = phi ptr [ %i.dx, %bb.ag ], [ %.pre527, %bb.af ] ; 2 uses
  %i.ea = icmp ult ptr %i.dz, %i.dy
  br i1 %i.ea, label %bb.ai, label %bb.ah, !prof !78

bb.ah:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit176.peel
  %i.eb = load ptr, ptr %.sroa.0267.0, align 8, !tbaa !54
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef i32 %i.ed(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.0), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i186.peel

bb.ai:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit176.peel
  %i.ef = load i32, ptr %i.dz, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i186.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i186.peel: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i187.peel = phi i32 [ %i.ef, %bb.ai ], [ %i.ee, %bb.ah ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i187.peel, -1   ; 4 uses
  %spec.select335.peel = select i1 %i.eg, ptr null, ptr %.sroa.0267.0 ; 3 uses
  %.not.i.i2.i.i181.peel = icmp ne ptr %.sroa.0.0, null
  %or.cond.i.i3.i.i182.peel = select i1 %.not.i.i2.i.i181.peel, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i182.peel, label %bb.aj, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i186.peel
  %i.eh = xor i1 %i.v, %i.eg
  br i1 %i.eh, label %bb.am, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge

bb.aj:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i186.peel
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !148 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !149
  %i.em = icmp ult ptr %i.ej, %i.el
  br i1 %i.em, label %bb.al, label %bb.ak, !prof !78

bb.ak:                                            ; preds = %bb.aj
  %i.en = load ptr, ptr %.sroa.0.0, align 8, !tbaa !54
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call noundef i32 %i.ep(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184.peel

bb.al:                                            ; preds = %bb.aj
  %i.er = load i32, ptr %i.ej, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184.peel: ; preds = %bb.al, %bb.ak
  %.0.i.i.i6.i.i185.peel = phi i32 [ %i.er, %bb.al ], [ %i.eq, %bb.ak ]
  %i.es = icmp eq i32 %.0.i.i.i6.i.i185.peel, -1
  br i1 %i.es, label %.split305.peel, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184.peel
  br i1 %i.eg, label %bb.am, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge

.split305.peel:                                   ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184.peel
  br i1 %i.eg, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge, label %bb.am

bb.am:                                            ; preds = %.split305.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel
  %.sroa.0.7304.peel = phi ptr [ %.sroa.0.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge.peel ], [ %.sroa.0.0, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ null, %.split305.peel ]
  %.not.i.i189.not.peel = icmp eq ptr %spec.select335.peel, null
  br i1 %.not.i.i189.not.peel, label %.peel.next.preheader, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.et = load ptr, ptr %i.do, align 8, !tbaa !148 ; 2 uses
  %i.eu = load ptr, ptr %i.dq, align 8, !tbaa !149
  %i.ev = icmp ult ptr %i.et, %i.eu
  br i1 %i.ev, label %bb.ap, label %bb.ao, !prof !78

bb.ao:                                            ; preds = %bb.an
  %i.ew = load ptr, ptr %.sroa.0267.0, align 8, !tbaa !54
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call noundef i32 %i.ey(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.0), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i192.peel

bb.ap:                                            ; preds = %bb.an
  %i.fa = load i32, ptr %i.et, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i192.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i192.peel: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i193.peel = phi i32 [ %i.fa, %bb.ap ], [ %i.ez, %bb.ao ] ; 2 uses
  %i.fb = icmp eq i32 %.0.i.i.i193.peel, -1
  %spec.select336.peel = select i1 %i.fb, ptr null, ptr %spec.select335.peel
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i192.peel, %bb.am
  %.1292368.ph = phi i32 [ -1, %bb.am ], [ %.0.i.i.i193.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i192.peel ]
  %.sroa.0267.1365.ph = phi ptr [ null, %bb.am ], [ %spec.select336.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i192.peel ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194
  %.0117372 = phi i32 [ %.1118, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194 ], [ %spec.select158.peel, %.peel.next.preheader ] ; 6 uses
  %.0124371 = phi i8 [ %.1125, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194 ], [ 1, %.peel.next.preheader ] ; 3 uses
  %.0136369 = phi i32 [ %.3139, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194 ], [ %spec.select.peel, %.peel.next.preheader ] ; 9 uses
  %.1292368 = phi i32 [ %.0.i.i191, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194 ], [ %.1292368.ph, %.peel.next.preheader ] ; 13 uses
  %.sroa.0.1367 = phi ptr [ %.sroa.0.7304, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194 ], [ %.sroa.0.7304.peel, %.peel.next.preheader ] ; 14 uses
  %.sroa.0267.1365 = phi ptr [ %.sroa.0267.14, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194 ], [ %.sroa.0267.1365.ph, %.peel.next.preheader ] ; 15 uses
  %i.fc = load i8, ptr %i.db, align 8, !tbaa !125, !range !101, !noundef !102
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.peel.next
  %i.fe = load i32, ptr %i.cz, align 4, !tbaa !128
  %i.ff = icmp eq i32 %.1292368, %i.fe
  br i1 %i.ff, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.peel.next
  %i.fg = load i32, ptr %i.dc, align 8, !tbaa !130
  %i.fh = icmp eq i32 %.1292368, %i.fg
  br i1 %i.fh, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fi = load i32, ptr %i.dd, align 8, !tbaa !119
  %i.fj = icmp ne i32 %.1292368, %i.fi
  %10 = trunc nuw i8 %.0124371 to i1              ; 2 uses
  %i.fk = icmp ne i32 %.0136369, 10
  %or.cond.not = and i1 %i.fk, %10
  %or.cond = select i1 %i.fj, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %12, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fl = add nsw i32 %.0117372, 1
  %spec.select = select i1 %i.de, i32 8, i32 %.0136369 ; 2 uses
  %11 = icmp eq i32 %spec.select, 8
  %spec.select158 = select i1 %11, i32 0, i32 %i.fl
  br label %bb.ax

12:                                               ; preds = %bb.as
  br i1 %10, label %bb.au, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit

bb.au:                                            ; preds = %12
  %i.fm = load i32, ptr %i.df, align 8, !tbaa !119
  %i.fn = icmp eq i32 %.1292368, %i.fm
  br i1 %i.fn, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fo = load i32, ptr %i.da, align 4, !tbaa !119
  %i.fp = icmp eq i32 %.1292368, %i.fo
  %i.fq = icmp eq i32 %.0136369, 16
  %i.fr = select i1 %i.de, i1 true, i1 %i.fq
  %or.cond500 = select i1 %i.fp, i1 %i.fr, i1 false
  br i1 %or.cond500, label %bb.ax, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit

bb.aw:                                            ; preds = %bb.au
  %.old = icmp eq i32 %.0136369, 16
  %.old499 = select i1 %i.de, i1 true, i1 %.old
  br i1 %.old499, label %bb.ax, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit

bb.ax:                                            ; preds = %bb.av, %bb.at, %bb.aw
  %.3139 = phi i32 [ 16, %bb.aw ], [ %spec.select, %bb.at ], [ 16, %bb.av ] ; 5 uses
  %.1125 = phi i8 [ 0, %bb.aw ], [ 1, %bb.at ], [ 0, %bb.av ] ; 5 uses
  %.1118 = phi i32 [ 0, %bb.aw ], [ %spec.select158, %bb.at ], [ 0, %bb.av ] ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0267.1365, i64 16 ; 4 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !148 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0267.1365, i64 24 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !149 ; 2 uses
  %i.fw = icmp ult ptr %i.ft, %i.fv
  br i1 %i.fw, label %bb.ay, label %bb.az, !prof !78

bb.ay:                                            ; preds = %bb.ax
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 2 uses
  store ptr %i.fx, ptr %i.fs, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit176

bb.az:                                            ; preds = %bb.ax
  %i.fy = load ptr, ptr %.sroa.0267.1365, align 8, !tbaa !54
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 80
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = call noundef i32 %i.ga(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.1365), !inline_history !28 ; 0 uses
  %.pre529 = load ptr, ptr %i.fs, align 8, !tbaa !148
  %.pre530 = load ptr, ptr %i.fu, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit176

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit176: ; preds = %bb.az, %bb.ay
  %i.gc = phi ptr [ %.pre530, %bb.az ], [ %i.fv, %bb.ay ]
  %i.gd = phi ptr [ %.pre529, %bb.az ], [ %i.fx, %bb.ay ] ; 2 uses
  %i.ge = icmp ult ptr %i.gd, %i.gc
  br i1 %i.ge, label %bb.ba, label %bb.bb, !prof !78

bb.ba:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit176
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i186

bb.bb:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit176
  %i.gg = load ptr, ptr %.sroa.0267.1365, align 8, !tbaa !54
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 72
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = call noundef i32 %i.gi(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.1365), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i186

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i186: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i187 = phi i32 [ %i.gf, %bb.ba ], [ %i.gj, %bb.bb ]
  %i.gk = icmp eq i32 %.0.i.i.i.i.i187, -1        ; 4 uses
  %spec.select335 = select i1 %i.gk, ptr null, ptr %.sroa.0267.1365 ; 3 uses
  %.not.i.i2.i.i181 = icmp ne ptr %.sroa.0.1367, null
  %or.cond.i.i3.i.i182 = select i1 %.not.i.i2.i.i181, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i182, label %bb.bc, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188

bb.bc:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i186
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.1367, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !148 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.1367, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !149
  %i.gp = icmp ult ptr %i.gm, %i.go
  br i1 %i.gp, label %bb.bd, label %bb.be, !prof !78

bb.bd:                                            ; preds = %bb.bc
  %i.gq = load i32, ptr %i.gm, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184

bb.be:                                            ; preds = %bb.bc
  %i.gr = load ptr, ptr %.sroa.0.1367, align 8, !tbaa !54
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = call noundef i32 %i.gt(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.1367), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184: ; preds = %bb.be, %bb.bd
  %.0.i.i.i6.i.i185 = phi i32 [ %i.gq, %bb.bd ], [ %i.gu, %bb.be ]
  %i.gv = icmp eq i32 %.0.i.i.i6.i.i185, -1
  br i1 %i.gv, label %.split305, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184
  br i1 %i.gk, label %bb.bf, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit

.split305:                                        ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184
  br i1 %i.gk, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit, label %bb.bf

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i186
  %i.gw = xor i1 %i.v, %i.gk
  br i1 %i.gw, label %bb.bf, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit

bb.bf:                                            ; preds = %.split305, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188
  %.sroa.0.7304 = phi ptr [ %.sroa.0.1367, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge ], [ %.sroa.0.1367, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188 ], [ null, %.split305 ] ; 2 uses
  %.not.i.i189.not = icmp eq ptr %spec.select335, null
  br i1 %.not.i.i189.not, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gx = load ptr, ptr %i.fs, align 8, !tbaa !148 ; 2 uses
  %i.gy = load ptr, ptr %i.fu, align 8, !tbaa !149
  %i.gz = icmp ult ptr %i.gx, %i.gy
  br i1 %i.gz, label %bb.bh, label %bb.bi, !prof !78

bb.bh:                                            ; preds = %bb.bg
  %i.ha = load i32, ptr %i.gx, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i192

bb.bi:                                            ; preds = %bb.bg
  %i.hb = load ptr, ptr %.sroa.0267.1365, align 8, !tbaa !54
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = call noundef i32 %i.hd(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.1365), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i192

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i192: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i193 = phi i32 [ %i.ha, %bb.bh ], [ %i.he, %bb.bi ] ; 2 uses
  %i.hf = icmp eq i32 %.0.i.i.i193, -1
  %spec.select336 = select i1 %i.hf, ptr null, ptr %spec.select335
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i192, %bb.bf
  %.sroa.0267.14 = phi ptr [ null, %bb.bf ], [ %spec.select336, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i192 ] ; 2 uses
  %.0.i.i191 = phi i32 [ -1, %bb.bf ], [ %.0.i.i.i193, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i192 ] ; 2 uses
  %i.hg = trunc nuw i8 %.1125 to i1
  br i1 %i.hg, label %.peel.next, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit, !llvm.loop !309

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit: ; preds = %.split305, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188, %bb.ar, %bb.aq, %bb.aw, %bb.av, %12, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194
  %.1129.lcssa.ph.ph = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194 ], [ false, %12 ], [ false, %bb.av ], [ false, %bb.aw ], [ false, %bb.aq ], [ false, %bb.ar ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188 ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge ], [ true, %.split305 ]
  %.sroa.0267.3.ph.ph = phi ptr [ %.sroa.0267.14, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194 ], [ %.sroa.0267.1365, %12 ], [ %.sroa.0267.1365, %bb.av ], [ %.sroa.0267.1365, %bb.aw ], [ %.sroa.0267.1365, %bb.aq ], [ %.sroa.0267.1365, %bb.ar ], [ %spec.select335, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188 ], [ %.sroa.0267.1365, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge ], [ null, %.split305 ]
  %.sroa.0.2.ph.ph = phi ptr [ %.sroa.0.7304, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194 ], [ %.sroa.0.1367, %12 ], [ %.sroa.0.1367, %bb.av ], [ %.sroa.0.1367, %bb.aw ], [ %.sroa.0.1367, %bb.aq ], [ %.sroa.0.1367, %bb.ar ], [ %.sroa.0.1367, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188 ], [ %.sroa.0.1367, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge ], [ null, %.split305 ]
  %.3.ph.ph = phi i32 [ %.0.i.i191, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194 ], [ %.1292368, %12 ], [ %.1292368, %bb.av ], [ %.1292368, %bb.aw ], [ %.1292368, %bb.aq ], [ %.1292368, %bb.ar ], [ %.1292368, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188 ], [ %.1292368, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge ], [ %.1292368, %.split305 ]
  %.4140.ph.ph = phi i32 [ %.3139, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194 ], [ %.0136369, %12 ], [ %.0136369, %bb.av ], [ %.0136369, %bb.aw ], [ %.0136369, %bb.aq ], [ %.0136369, %bb.ar ], [ %.3139, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188 ], [ %.3139, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge ], [ %.3139, %.split305 ]
  %.2126.ph.ph = phi i8 [ 0, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194 ], [ 0, %12 ], [ 1, %bb.av ], [ 1, %bb.aw ], [ %.0124371, %bb.aq ], [ %.0124371, %bb.ar ], [ %.1125, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188 ], [ %.1125, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge ], [ %.1125, %.split305 ]
  %.2119.ph.ph = phi i32 [ %.1118, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194 ], [ %.0117372, %12 ], [ %.0117372, %bb.av ], [ %.0117372, %bb.aw ], [ %.0117372, %bb.aq ], [ %.0117372, %bb.ar ], [ %.1118, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188 ], [ %.1118, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge ], [ %.1118, %.split305 ]
  %i.hh = trunc nuw i8 %.2126.ph.ph to i1
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel, %.split305.peel, %bb.ab, %bb.ac, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit, %bb.ad, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread
  %i.hi = phi ptr [ %i.cy, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread ], [ %i.cz, %bb.ab ], [ %i.cz, %bb.ad ], [ %i.cz, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ %i.cz, %bb.ac ], [ %i.cz, %.split305.peel ], [ %i.cz, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ %i.cz, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge.peel ] ; 2 uses
  %.0127.shrunk595 = phi i1 [ %.0127.shrunk.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread ], [ %i.ax, %bb.ab ], [ %i.ax, %bb.ad ], [ %i.ax, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ %i.ax, %bb.ac ], [ %i.ax, %.split305.peel ], [ %i.ax, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ %i.ax, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge.peel ]
  %.1129.lcssa = phi i1 [ true, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread ], [ false, %bb.ab ], [ false, %bb.ad ], [ %.1129.lcssa.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ false, %bb.ac ], [ true, %.split305.peel ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge.peel ] ; 2 uses
  %.sroa.0267.3 = phi ptr [ %.sroa.0267.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread ], [ %.sroa.0267.0, %bb.ab ], [ %.sroa.0267.0, %bb.ad ], [ %.sroa.0267.3.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ %.sroa.0267.0, %bb.ac ], [ null, %.split305.peel ], [ %spec.select335.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ %.sroa.0267.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge.peel ] ; 27 uses
  %.sroa.26.2 = phi i32 [ %.sroa.26.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread ], [ %.sroa.26.0, %bb.ab ], [ %.sroa.26.0, %bb.ad ], [ -1, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ %.sroa.26.0, %bb.ac ], [ -1, %.split305.peel ], [ -1, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge.peel ] ; 7 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread ], [ %.sroa.0.0, %bb.ab ], [ %.sroa.0.0, %bb.ad ], [ %.sroa.0.2.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ %.sroa.0.0, %bb.ac ], [ null, %.split305.peel ], [ %.sroa.0.0, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ %.sroa.0.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge.peel ] ; 14 uses
  %.3 = phi i32 [ %.0291.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread ], [ %.0291, %bb.ab ], [ %.0291, %bb.ad ], [ %.3.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ %.0291, %bb.ac ], [ %.0291, %.split305.peel ], [ %.0291, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ %.0291, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge.peel ] ; 11 uses
  %.4140 = phi i32 [ %i.i, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread ], [ %i.i, %bb.ab ], [ %i.i, %bb.ad ], [ %.4140.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ %i.i, %bb.ac ], [ %spec.select.peel, %.split305.peel ], [ %spec.select.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ %spec.select.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge.peel ] ; 5 uses
  %.2126 = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread ], [ false, %bb.ab ], [ false, %bb.ad ], [ %i.hh, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ false, %bb.ac ], [ true, %.split305.peel ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge.peel ]
  %.2119 = phi i32 [ 0, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit175.thread ], [ 0, %bb.ab ], [ 0, %bb.ad ], [ %.2119.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge.loopexit.loopexit ], [ 0, %bb.ac ], [ %spec.select158.peel, %.split305.peel ], [ %spec.select158.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188.peel ], [ %spec.select158.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i184._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit188_crit_edge.peel ] ; 10 uses
  %i.hj = icmp eq i32 %.4140, 16
  %i.hk = select i1 %i.hj, i32 22, i32 %.4140     ; 3 uses
  %i.hl = zext nneg i32 %i.hk to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.hm, ptr %9, align 8, !tbaa !64
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i64 0, ptr %i.hn, align 8, !tbaa !67
  store i8 0, ptr %i.hm, align 8, !tbaa !55
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !125, !range !101, !noundef !102
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 32)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit194._crit_edge
  %i.hr = udiv i32 65535, %.4140                  ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !129, !range !101, !noundef !102
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %.preheader, label %.preheader350

.preheader350:                                    ; preds = %bb.bk
  br i1 %.1129.lcssa, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread312, label %.lr.ph440

.lr.ph440:                                        ; preds = %.preheader350
  %i.hw = icmp ult i32 %i.hk, 11                  ; 2 uses
  %i.hx = or disjoint i32 %i.hk, 48               ; 2 uses
  %i.hy = trunc nuw nsw i32 %.4140 to i16
  br i1 %i.hw, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph440
  %i.hz = add i32 %.3, -48                        ; 2 uses
  %or.cond.i.peel = icmp ult i32 %i.hz, 10
  br i1 %or.cond.i.peel, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ia = add i32 %.3, -97
  %or.cond3.i.peel = icmp ult i32 %i.ia, 6
  br i1 %or.cond3.i.peel, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ib = add nsw i32 %.3, -55
  %i.ic = add i32 %.3, -71
  %or.cond338.peel = icmp ult i32 %i.ic, -6
  br i1 %or.cond338.peel, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread312, label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  %i.id = add nsw i32 %.3, -87
  br label %bb.bq

bb.bp:                                            ; preds = %.lr.ph440
  %i.ie = icmp sgt i32 %.3, 47
  %i.if = icmp samesign ult i32 %.3, %i.hx
  %or.cond24.i.peel = select i1 %i.ie, i1 %i.if, i1 false
  %i.ig = add nsw i32 %.3, -48
  br i1 %or.cond24.i.peel, label %bb.bq, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread312

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bl
  %.0.i310.peel = phi i32 [ %i.ib, %bb.bn ], [ %i.id, %bb.bo ], [ %i.hz, %bb.bl ], [ %i.ig, %bb.bp ] ; 2 uses
  %i.ih = icmp sgt i32 %.0.i310.peel, 65535       ; 4 uses
  %i.ii = trunc i32 %.0.i310.peel to i16          ; 4 uses
  %i.ij = add nsw i32 %.2119, 1                   ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0267.3, i64 16 ; 4 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !148 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0267.3, i64 24 ; 3 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !149 ; 2 uses
  %i.io = icmp ult ptr %i.il, %i.in
  br i1 %i.io, label %bb.bs, label %bb.br, !prof !78

bb.br:                                            ; preds = %bb.bq
  %i.ip = load ptr, ptr %.sroa.0267.3, align 8, !tbaa !54
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 80
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = invoke noundef i32 %i.ir(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.3)
          to label %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit195.peel_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !30 ; 0 uses

._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit195.peel_crit_edge: ; preds = %bb.br
  %.pre531 = load ptr, ptr %i.ik, align 8, !tbaa !148
  %.pre532 = load ptr, ptr %i.im, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit195.peel

bb.bs:                                            ; preds = %bb.bq
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 4 ; 2 uses
  store ptr %i.it, ptr %i.ik, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit195.peel

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit195.peel: ; preds = %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit195.peel_crit_edge, %bb.bs
  %i.iu = phi ptr [ %.pre532, %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit195.peel_crit_edge ], [ %i.in, %bb.bs ]
  %i.iv = phi ptr [ %.pre531, %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit195.peel_crit_edge ], [ %i.it, %bb.bs ] ; 2 uses
  %i.iw = icmp ult ptr %i.iv, %i.iu
  br i1 %i.iw, label %bb.bu, label %bb.bt, !prof !78

bb.bt:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit195.peel
  %i.ix = load ptr, ptr %.sroa.0267.3, align 8, !tbaa !54
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 72
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = invoke noundef i32 %i.iz(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.3)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i205.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !31

bb.bu:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit195.peel
  %i.jb = load i32, ptr %i.iv, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i205.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i205.peel: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i206.peel = phi i32 [ %i.jb, %bb.bu ], [ %i.ja, %bb.bt ]
  %i.jc = icmp eq i32 %.0.i.i.i.i.i206.peel, -1   ; 4 uses
  %spec.select339.peel = select i1 %i.jc, ptr null, ptr %.sroa.0267.3 ; 3 uses
  %.not.i.i2.i.i200.peel = icmp ne ptr %.sroa.0.2, null
  %or.cond.i.i3.i.i201.peel = select i1 %.not.i.i2.i.i200.peel, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i201.peel, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i205.peel
  %i.jd = xor i1 %i.v, %i.jc
  br i1 %i.jd, label %bb.bz, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread312

bb.bw:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i205.peel
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !148 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !149
  %i.ji = icmp ult ptr %i.jf, %i.jh
  br i1 %i.ji, label %bb.by, label %bb.bx, !prof !78

bb.bx:                                            ; preds = %bb.bw
  %i.jj = load ptr, ptr %.sroa.0.2, align 8, !tbaa !54
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 72
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = invoke noundef i32 %i.jl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.2)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i203.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !31

bb.by:                                            ; preds = %bb.bw
  %i.jn = load i32, ptr %i.jf, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i203.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i203.peel: ; preds = %bb.by, %bb.bx
  %.0.i.i.i6.i.i204.peel = phi i32 [ %i.jn, %bb.by ], [ %i.jm, %bb.bx ]
  %i.jo = icmp eq i32 %.0.i.i.i6.i.i204.peel, -1
  br i1 %i.jo, label %.split316.peel, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i203._crit_edge.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i203._crit_edge.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i203.peel
  br i1 %i.jc, label %bb.bz, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread312

.split316.peel:                                   ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i203.peel
  br i1 %i.jc, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread312, label %bb.bz

bb.bz:                                            ; preds = %.split316.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i203._crit_edge.peel, %bb.bv
  %.sroa.0.8315.peel = phi ptr [ %.sroa.0.2, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i203._crit_edge.peel ], [ %.sroa.0.2, %bb.bv ], [ null, %.split316.peel ]
  %.not.i.i210.not.peel = icmp eq ptr %spec.select339.peel, null
  br i1 %.not.i.i210.not.peel, label %.peel.next513.preheader, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jp = load ptr, ptr %i.ik, align 8, !tbaa !148 ; 2 uses
  %i.jq = load ptr, ptr %i.im, align 8, !tbaa !149
  %i.jr = icmp ult ptr %i.jp, %i.jq
  br i1 %i.jr, label %bb.cc, label %bb.cb, !prof !78

bb.cb:                                            ; preds = %bb.ca
  %i.js = load ptr, ptr %.sroa.0267.3, align 8, !tbaa !54
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 72
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = invoke noundef i32 %i.ju(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0267.3)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i213.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !32

bb.cc:                                            ; preds = %bb.ca
  %i.jw = load i32, ptr %i.jp, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i213.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i213.peel: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i214.peel = phi i32 [ %i.jw, %bb.cc ], [ %i.jv, %bb.cb ] ; 2 uses
  %i.jx = icmp eq i32 %.0.i.i.i214.peel, -1
  %spec.select340.peel = select i1 %i.jx, ptr null, ptr %spec.select339.peel
  br label %.peel.next513.preheader

.peel.next513.preheader:                          ; preds = %bb.bz, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i213.peel
  %.4294436.ph = phi i32 [ -1, %bb.bz ], [ %.0.i.i.i214.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i213.peel ]
  %.sroa.0267.4433.ph = phi ptr [ null, %bb.bz ], [ %spec.select340.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i213.peel ]
  br label %.peel.next513

.preheader:                                       ; preds = %bb.bk
  br i1 %.1129.lcssa, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread312, label %.lr.ph468

end_hunk_7
begin_hunk_8_@_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE14_M_extract_intB5cxx11IjEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a

.split:                                           ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i
  br i1 %i.ah, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread, label %bb.h

_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEE9_M_at_eofEv.exit.i.i
  %i.ai = icmp ne i32 %.0.i.i.i.i, -1
  %i.aj = xor i1 %i.v, %i.ai
  br i1 %i.aj, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread, label %bb.h

bb.h:                                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %.split, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.5296 = phi ptr [ null, %.split ], [ %3, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %3, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ] ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %.not.i.i = icmp ne ptr %.sroa.0265.9, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0265.9, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !148 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0265.9, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !149
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !78

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %.sroa.0265.9, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.9), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i32 [ %i.aq, %bb.j ], [ %i.au, %bb.k ] ; 2 uses
  %i.av = icmp eq i32 %.0.i.i.i, -1
  %spec.select328 = select i1 %i.av, ptr null, ptr %.sroa.0265.9
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i, %bb.h
  %.sroa.0265.10 = phi ptr [ %.sroa.0265.9, %bb.h ], [ %spec.select328, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i ] ; 13 uses
  %.0.i.i = phi i32 [ %2, %bb.h ], [ %.0.i.i.i, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i ] ; 10 uses
  %i.aw = load i32, ptr %i.ak, align 4, !tbaa !119
  %i.ax = icmp eq i32 %.0.i.i, %i.aw              ; 11 uses
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !119
  %i.ba = icmp eq i32 %.0.i.i, %i.az
  br i1 %i.ba, label %bb.m, label %.lr.ph

bb.m:                                             ; preds = %bb.l, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !125, !range !101, !noundef !102
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !128
  %i.bg = icmp eq i32 %.0.i.i, %i.bf
  br i1 %i.bg, label %.lr.ph, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !130
  %i.bj = icmp eq i32 %.0.i.i, %i.bi
  br i1 %i.bj, label %.lr.ph, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0265.10, i64 16 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !148 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0265.10, i64 24 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !149 ; 2 uses
  %i.bo = icmp ult ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.q, label %bb.r, !prof !78

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit

bb.r:                                             ; preds = %bb.p
  %i.bq = load ptr, ptr %.sroa.0265.10, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.10), !inline_history !28 ; 0 uses
  %.pre = load ptr, ptr %i.bk, align 8, !tbaa !148
  %.pre522 = load ptr, ptr %i.bm, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit: ; preds = %bb.r, %bb.q
  %i.bu = phi ptr [ %.pre522, %bb.r ], [ %i.bn, %bb.q ]
  %i.bv = phi ptr [ %.pre, %bb.r ], [ %i.bp, %bb.q ] ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.bu
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !78

bb.s:                                             ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i166

bb.t:                                             ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit
  %i.by = load ptr, ptr %.sroa.0265.10, align 8, !tbaa !54
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef i32 %i.ca(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.10), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i166

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i166: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i167 = phi i32 [ %i.bx, %bb.s ], [ %i.cb, %bb.t ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i167, -1        ; 4 uses
  %spec.select330 = select i1 %i.cc, ptr null, ptr %.sroa.0265.10 ; 3 uses
  %.not.i.i2.i.i161 = icmp ne ptr %.sroa.0.5296, null
  %or.cond.i.i3.i.i162 = select i1 %.not.i.i2.i.i161, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i162, label %bb.u, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.u:                                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i166
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.5296, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !148 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.5296, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !149
  %i.ch = icmp ult ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.v, label %bb.w, !prof !78

bb.v:                                             ; preds = %bb.u
  %i.ci = load i32, ptr %i.ce, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164

bb.w:                                             ; preds = %bb.u
  %i.cj = load ptr, ptr %.sroa.0.5296, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.5296), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164: ; preds = %bb.w, %bb.v
  %.0.i.i.i6.i.i165 = phi i32 [ %i.ci, %bb.v ], [ %i.cm, %bb.w ]
  %i.cn = icmp eq i32 %.0.i.i.i6.i.i165, -1
  br i1 %i.cn, label %.split298, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164
  br i1 %i.cc, label %bb.x, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread

.split298:                                        ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164
  br i1 %i.cc, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread, label %bb.x

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i166
  %i.co = xor i1 %i.v, %i.cc
  br i1 %i.co, label %bb.x, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread

bb.x:                                             ; preds = %.split298, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.6297 = phi ptr [ %.sroa.0.5296, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0.5296, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split298 ] ; 2 uses
  %.not.i.i168.not = icmp eq ptr %spec.select330, null
  br i1 %.not.i.i168.not, label %.lr.ph, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %i.bk, align 8, !tbaa !148 ; 2 uses
  %i.cq = load ptr, ptr %i.bm, align 8, !tbaa !149
  %i.cr = icmp ult ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.z, label %bb.aa, !prof !78

bb.z:                                             ; preds = %bb.y
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171

bb.aa:                                            ; preds = %bb.y
  %i.ct = load ptr, ptr %.sroa.0265.10, align 8, !tbaa !54
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef i32 %i.cv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.10), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171: ; preds = %bb.aa, %bb.z
  %.0.i.i.i172 = phi i32 [ %i.cs, %bb.z ], [ %i.cw, %bb.aa ] ; 2 uses
  %i.cx = icmp eq i32 %.0.i.i.i172, -1
  %spec.select331 = select i1 %i.cx, ptr null, ptr %spec.select330
  br label %.lr.ph

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread: ; preds = %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split298, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge
  %.sroa.0265.0.ph = phi ptr [ %.sroa.0265.10, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0265.9, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0265.9, %.split ], [ %spec.select330, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split298 ], [ %.sroa.0265.9, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.26.0.ph = phi i32 [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %2, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %2, %.split ], [ -1, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ -1, %.split298 ], [ %2, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.5296, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %3, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ null, %.split ], [ %.sroa.0.5296, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split298 ], [ %3, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0289.ph = phi i32 [ %.0.i.i, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ 0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ 0, %.split ], [ %.0.i.i, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %.0.i.i, %.split298 ], [ 0, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0127.shrunk.ph = phi i1 [ %i.ax, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ false, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ false, %.split ], [ %i.ax, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.ax, %.split298 ], [ false, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge

.lr.ph:                                           ; preds = %bb.o, %bb.n, %bb.l, %bb.x, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171
  %.sroa.0265.0 = phi ptr [ %.sroa.0265.10, %bb.l ], [ %.sroa.0265.10, %bb.n ], [ %.sroa.0265.10, %bb.o ], [ %spec.select331, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171 ], [ null, %bb.x ] ; 13 uses
  %.sroa.26.0 = phi i32 [ %2, %bb.l ], [ %2, %bb.n ], [ %2, %bb.o ], [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171 ], [ -1, %bb.x ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.5296, %bb.l ], [ %.sroa.0.5296, %bb.n ], [ %.sroa.0.5296, %bb.o ], [ %.sroa.0.6297, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171 ], [ %.sroa.0.6297, %bb.x ] ; 12 uses
  %.0289 = phi i32 [ %.0.i.i, %bb.l ], [ %.0.i.i, %bb.n ], [ %.0.i.i, %bb.o ], [ %.0.i.i.i172, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171 ], [ -1, %bb.x ] ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %i.de = icmp eq i32 %i.e, 0                     ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.dg = load i8, ptr %i.db, align 8, !tbaa !125, !range !101, !noundef !102
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph
  %i.di = load i32, ptr %i.cz, align 4, !tbaa !128
  %i.dj = icmp eq i32 %.0289, %i.di
  br i1 %i.dj, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph
  %i.dk = load i32, ptr %i.dc, align 8, !tbaa !130
  %i.dl = icmp eq i32 %.0289, %i.dk
  br i1 %i.dl, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load i32, ptr %i.dd, align 8, !tbaa !119
  %.not586 = icmp eq i32 %.0289, %i.dm
  br i1 %.not586, label %bb.ae, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge

bb.ae:                                            ; preds = %bb.ad
  %spec.select.peel = select i1 %i.de, i32 8, i32 %i.i ; 4 uses
  %i.dn = or i1 %i.de, %i.f
  %not. = xor i1 %i.dn, true
  %spec.select156.peel = zext i1 %not. to i32     ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0265.0, i64 16 ; 4 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !148 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0265.0, i64 24 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !149 ; 2 uses
  %i.ds = icmp ult ptr %i.dp, %i.dr
  br i1 %i.ds, label %bb.ag, label %bb.af, !prof !78

bb.af:                                            ; preds = %bb.ae
  %i.dt = load ptr, ptr %.sroa.0265.0, align 8, !tbaa !54
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.0), !inline_history !28 ; 0 uses
  %.pre525 = load ptr, ptr %i.do, align 8, !tbaa !148
  %.pre526 = load ptr, ptr %i.dq, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174.peel

bb.ag:                                            ; preds = %bb.ae
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  store ptr %i.dx, ptr %i.do, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174.peel

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174.peel: ; preds = %bb.ag, %bb.af
  %i.dy = phi ptr [ %i.dr, %bb.ag ], [ %.pre526, %bb.af ]
  %i.dz = phi ptr [ %i.dx, %bb.ag ], [ %.pre525, %bb.af ] ; 2 uses
  %i.ea = icmp ult ptr %i.dz, %i.dy
  br i1 %i.ea, label %bb.ai, label %bb.ah, !prof !78

bb.ah:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174.peel
  %i.eb = load ptr, ptr %.sroa.0265.0, align 8, !tbaa !54
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef i32 %i.ed(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.0), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184.peel

bb.ai:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174.peel
  %i.ef = load i32, ptr %i.dz, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184.peel: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i185.peel = phi i32 [ %i.ef, %bb.ai ], [ %i.ee, %bb.ah ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i185.peel, -1   ; 4 uses
  %spec.select333.peel = select i1 %i.eg, ptr null, ptr %.sroa.0265.0 ; 3 uses
  %.not.i.i2.i.i179.peel = icmp ne ptr %.sroa.0.0, null
  %or.cond.i.i3.i.i180.peel = select i1 %.not.i.i2.i.i179.peel, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i180.peel, label %bb.aj, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184.peel
  %i.eh = xor i1 %i.v, %i.eg
  br i1 %i.eh, label %bb.am, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge

bb.aj:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184.peel
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !148 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !149
  %i.em = icmp ult ptr %i.ej, %i.el
  br i1 %i.em, label %bb.al, label %bb.ak, !prof !78

bb.ak:                                            ; preds = %bb.aj
  %i.en = load ptr, ptr %.sroa.0.0, align 8, !tbaa !54
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call noundef i32 %i.ep(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182.peel

bb.al:                                            ; preds = %bb.aj
  %i.er = load i32, ptr %i.ej, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182.peel: ; preds = %bb.al, %bb.ak
  %.0.i.i.i6.i.i183.peel = phi i32 [ %i.er, %bb.al ], [ %i.eq, %bb.ak ]
  %i.es = icmp eq i32 %.0.i.i.i6.i.i183.peel, -1
  br i1 %i.es, label %.split303.peel, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182.peel
  br i1 %i.eg, label %bb.am, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge

.split303.peel:                                   ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182.peel
  br i1 %i.eg, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge, label %bb.am

bb.am:                                            ; preds = %.split303.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel
  %.sroa.0.7302.peel = phi ptr [ %.sroa.0.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ], [ %.sroa.0.0, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ null, %.split303.peel ]
  %.not.i.i187.not.peel = icmp eq ptr %spec.select333.peel, null
  br i1 %.not.i.i187.not.peel, label %.peel.next.preheader, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.et = load ptr, ptr %i.do, align 8, !tbaa !148 ; 2 uses
  %i.eu = load ptr, ptr %i.dq, align 8, !tbaa !149
  %i.ev = icmp ult ptr %i.et, %i.eu
  br i1 %i.ev, label %bb.ap, label %bb.ao, !prof !78

bb.ao:                                            ; preds = %bb.an
  %i.ew = load ptr, ptr %.sroa.0265.0, align 8, !tbaa !54
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call noundef i32 %i.ey(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.0), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel

bb.ap:                                            ; preds = %bb.an
  %i.fa = load i32, ptr %i.et, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i191.peel = phi i32 [ %i.fa, %bb.ap ], [ %i.ez, %bb.ao ] ; 2 uses
  %i.fb = icmp eq i32 %.0.i.i.i191.peel, -1
  %spec.select334.peel = select i1 %i.fb, ptr null, ptr %spec.select333.peel
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel, %bb.am
  %.1290366.ph = phi i32 [ -1, %bb.am ], [ %.0.i.i.i191.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel ]
  %.sroa.0265.1363.ph = phi ptr [ null, %bb.am ], [ %spec.select334.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192
  %.0117370 = phi i32 [ %.1118, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %spec.select156.peel, %.peel.next.preheader ] ; 6 uses
  %.0124369 = phi i8 [ %.1125, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ 1, %.peel.next.preheader ] ; 3 uses
  %.0136367 = phi i32 [ %.3139, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %spec.select.peel, %.peel.next.preheader ] ; 9 uses
  %.1290366 = phi i32 [ %.0.i.i189, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.1290366.ph, %.peel.next.preheader ] ; 13 uses
  %.sroa.0.1365 = phi ptr [ %.sroa.0.7302, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.sroa.0.7302.peel, %.peel.next.preheader ] ; 14 uses
  %.sroa.0265.1363 = phi ptr [ %.sroa.0265.14, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.sroa.0265.1363.ph, %.peel.next.preheader ] ; 15 uses
  %i.fc = load i8, ptr %i.db, align 8, !tbaa !125, !range !101, !noundef !102
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.peel.next
  %i.fe = load i32, ptr %i.cz, align 4, !tbaa !128
  %i.ff = icmp eq i32 %.1290366, %i.fe
  br i1 %i.ff, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.peel.next
  %i.fg = load i32, ptr %i.dc, align 8, !tbaa !130
  %i.fh = icmp eq i32 %.1290366, %i.fg
  br i1 %i.fh, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fi = load i32, ptr %i.dd, align 8, !tbaa !119
  %i.fj = icmp ne i32 %.1290366, %i.fi
  %10 = trunc nuw i8 %.0124369 to i1              ; 2 uses
  %i.fk = icmp ne i32 %.0136367, 10
  %or.cond.not = and i1 %i.fk, %10
  %or.cond = select i1 %i.fj, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %12, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fl = add nsw i32 %.0117370, 1
  %spec.select = select i1 %i.de, i32 8, i32 %.0136367 ; 2 uses
  %11 = icmp eq i32 %spec.select, 8
  %spec.select156 = select i1 %11, i32 0, i32 %i.fl
  br label %bb.ax

12:                                               ; preds = %bb.as
  br i1 %10, label %bb.au, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.au:                                            ; preds = %12
  %i.fm = load i32, ptr %i.df, align 8, !tbaa !119
  %i.fn = icmp eq i32 %.1290366, %i.fm
  br i1 %i.fn, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fo = load i32, ptr %i.da, align 4, !tbaa !119
  %i.fp = icmp eq i32 %.1290366, %i.fo
  %i.fq = icmp eq i32 %.0136367, 16
  %i.fr = select i1 %i.de, i1 true, i1 %i.fq
  %or.cond498 = select i1 %i.fp, i1 %i.fr, i1 false
  br i1 %or.cond498, label %bb.ax, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.aw:                                            ; preds = %bb.au
  %.old = icmp eq i32 %.0136367, 16
  %.old497 = select i1 %i.de, i1 true, i1 %.old
  br i1 %.old497, label %bb.ax, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.ax:                                            ; preds = %bb.av, %bb.at, %bb.aw
  %.3139 = phi i32 [ 16, %bb.aw ], [ %spec.select, %bb.at ], [ 16, %bb.av ] ; 5 uses
  %.1125 = phi i8 [ 0, %bb.aw ], [ 1, %bb.at ], [ 0, %bb.av ] ; 5 uses
  %.1118 = phi i32 [ 0, %bb.aw ], [ %spec.select156, %bb.at ], [ 0, %bb.av ] ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0265.1363, i64 16 ; 4 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !148 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0265.1363, i64 24 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !149 ; 2 uses
  %i.fw = icmp ult ptr %i.ft, %i.fv
  br i1 %i.fw, label %bb.ay, label %bb.az, !prof !78

bb.ay:                                            ; preds = %bb.ax
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 2 uses
  store ptr %i.fx, ptr %i.fs, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174

bb.az:                                            ; preds = %bb.ax
  %i.fy = load ptr, ptr %.sroa.0265.1363, align 8, !tbaa !54
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 80
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = call noundef i32 %i.ga(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.1363), !inline_history !28 ; 0 uses
  %.pre527 = load ptr, ptr %i.fs, align 8, !tbaa !148
  %.pre528 = load ptr, ptr %i.fu, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174: ; preds = %bb.az, %bb.ay
  %i.gc = phi ptr [ %.pre528, %bb.az ], [ %i.fv, %bb.ay ]
  %i.gd = phi ptr [ %.pre527, %bb.az ], [ %i.fx, %bb.ay ] ; 2 uses
  %i.ge = icmp ult ptr %i.gd, %i.gc
  br i1 %i.ge, label %bb.ba, label %bb.bb, !prof !78

bb.ba:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184

bb.bb:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174
  %i.gg = load ptr, ptr %.sroa.0265.1363, align 8, !tbaa !54
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 72
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = call noundef i32 %i.gi(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.1363), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i185 = phi i32 [ %i.gf, %bb.ba ], [ %i.gj, %bb.bb ]
  %i.gk = icmp eq i32 %.0.i.i.i.i.i185, -1        ; 4 uses
  %spec.select333 = select i1 %i.gk, ptr null, ptr %.sroa.0265.1363 ; 3 uses
  %.not.i.i2.i.i179 = icmp ne ptr %.sroa.0.1365, null
  %or.cond.i.i3.i.i180 = select i1 %.not.i.i2.i.i179, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i180, label %bb.bc, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186

bb.bc:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.1365, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !148 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.1365, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !149
  %i.gp = icmp ult ptr %i.gm, %i.go
  br i1 %i.gp, label %bb.bd, label %bb.be, !prof !78

bb.bd:                                            ; preds = %bb.bc
  %i.gq = load i32, ptr %i.gm, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182

bb.be:                                            ; preds = %bb.bc
  %i.gr = load ptr, ptr %.sroa.0.1365, align 8, !tbaa !54
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = call noundef i32 %i.gt(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.1365), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182: ; preds = %bb.be, %bb.bd
  %.0.i.i.i6.i.i183 = phi i32 [ %i.gq, %bb.bd ], [ %i.gu, %bb.be ]
  %i.gv = icmp eq i32 %.0.i.i.i6.i.i183, -1
  br i1 %i.gv, label %.split303, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182
  br i1 %i.gk, label %bb.bf, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit

.split303:                                        ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182
  br i1 %i.gk, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.bf

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184
  %i.gw = xor i1 %i.v, %i.gk
  br i1 %i.gw, label %bb.bf, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.bf:                                            ; preds = %.split303, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186
  %.sroa.0.7302 = phi ptr [ %.sroa.0.1365, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ %.sroa.0.1365, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ null, %.split303 ] ; 2 uses
  %.not.i.i187.not = icmp eq ptr %spec.select333, null
  br i1 %.not.i.i187.not, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gx = load ptr, ptr %i.fs, align 8, !tbaa !148 ; 2 uses
  %i.gy = load ptr, ptr %i.fu, align 8, !tbaa !149
  %i.gz = icmp ult ptr %i.gx, %i.gy
  br i1 %i.gz, label %bb.bh, label %bb.bi, !prof !78

bb.bh:                                            ; preds = %bb.bg
  %i.ha = load i32, ptr %i.gx, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190

bb.bi:                                            ; preds = %bb.bg
  %i.hb = load ptr, ptr %.sroa.0265.1363, align 8, !tbaa !54
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = call noundef i32 %i.hd(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.1363), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i191 = phi i32 [ %i.ha, %bb.bh ], [ %i.he, %bb.bi ] ; 2 uses
  %i.hf = icmp eq i32 %.0.i.i.i191, -1
  %spec.select334 = select i1 %i.hf, ptr null, ptr %spec.select333
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190, %bb.bf
  %.sroa.0265.14 = phi ptr [ null, %bb.bf ], [ %spec.select334, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190 ] ; 2 uses
  %.0.i.i189 = phi i32 [ -1, %bb.bf ], [ %.0.i.i.i191, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190 ] ; 2 uses
  %i.hg = trunc nuw i8 %.1125 to i1
  br i1 %i.hg, label %.peel.next, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit, !llvm.loop !312

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit: ; preds = %.split303, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186, %bb.ar, %bb.aq, %bb.aw, %bb.av, %12, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192
  %.1129.lcssa.ph.ph = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ false, %12 ], [ false, %bb.av ], [ false, %bb.aw ], [ false, %bb.aq ], [ false, %bb.ar ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ true, %.split303 ]
  %.sroa.0265.3.ph.ph = phi ptr [ %.sroa.0265.14, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.sroa.0265.1363, %12 ], [ %.sroa.0265.1363, %bb.av ], [ %.sroa.0265.1363, %bb.aw ], [ %.sroa.0265.1363, %bb.aq ], [ %.sroa.0265.1363, %bb.ar ], [ %spec.select333, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.sroa.0265.1363, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ null, %.split303 ]
  %.sroa.0.2.ph.ph = phi ptr [ %.sroa.0.7302, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.sroa.0.1365, %12 ], [ %.sroa.0.1365, %bb.av ], [ %.sroa.0.1365, %bb.aw ], [ %.sroa.0.1365, %bb.aq ], [ %.sroa.0.1365, %bb.ar ], [ %.sroa.0.1365, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.sroa.0.1365, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ null, %.split303 ]
  %.3.ph.ph = phi i32 [ %.0.i.i189, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.1290366, %12 ], [ %.1290366, %bb.av ], [ %.1290366, %bb.aw ], [ %.1290366, %bb.aq ], [ %.1290366, %bb.ar ], [ %.1290366, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1290366, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ %.1290366, %.split303 ]
  %.4140.ph.ph = phi i32 [ %.3139, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.0136367, %12 ], [ %.0136367, %bb.av ], [ %.0136367, %bb.aw ], [ %.0136367, %bb.aq ], [ %.0136367, %bb.ar ], [ %.3139, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.3139, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ %.3139, %.split303 ]
  %.2126.ph.ph = phi i8 [ 0, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ 0, %12 ], [ 1, %bb.av ], [ 1, %bb.aw ], [ %.0124369, %bb.aq ], [ %.0124369, %bb.ar ], [ %.1125, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1125, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ %.1125, %.split303 ]
  %.2119.ph.ph = phi i32 [ %.1118, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.0117370, %12 ], [ %.0117370, %bb.av ], [ %.0117370, %bb.aw ], [ %.0117370, %bb.aq ], [ %.0117370, %bb.ar ], [ %.1118, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1118, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ %.1118, %.split303 ]
  %i.hh = trunc nuw i8 %.2126.ph.ph to i1
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel, %.split303.peel, %bb.ab, %bb.ac, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit, %bb.ad, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread
  %i.hi = phi ptr [ %i.cy, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %i.cz, %bb.ab ], [ %i.cz, %bb.ad ], [ %i.cz, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.cz, %bb.ac ], [ %i.cz, %.split303.peel ], [ %i.cz, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %i.cz, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 2 uses
  %.0127.shrunk593 = phi i1 [ %.0127.shrunk.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %i.ax, %bb.ab ], [ %i.ax, %bb.ad ], [ %i.ax, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.ax, %bb.ac ], [ %i.ax, %.split303.peel ], [ %i.ax, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %i.ax, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ]
  %.1129.lcssa = phi i1 [ true, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ false, %bb.ab ], [ false, %bb.ad ], [ %.1129.lcssa.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ false, %bb.ac ], [ true, %.split303.peel ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 2 uses
  %.sroa.0265.3 = phi ptr [ %.sroa.0265.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %.sroa.0265.0, %bb.ab ], [ %.sroa.0265.0, %bb.ad ], [ %.sroa.0265.3.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.0265.0, %bb.ac ], [ null, %.split303.peel ], [ %spec.select333.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.sroa.0265.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 27 uses
  %.sroa.26.2 = phi i32 [ %.sroa.26.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %.sroa.26.0, %bb.ab ], [ %.sroa.26.0, %bb.ad ], [ -1, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.26.0, %bb.ac ], [ -1, %.split303.peel ], [ -1, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 7 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %.sroa.0.0, %bb.ab ], [ %.sroa.0.0, %bb.ad ], [ %.sroa.0.2.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.0.0, %bb.ac ], [ null, %.split303.peel ], [ %.sroa.0.0, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.sroa.0.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 14 uses
  %.3 = phi i32 [ %.0289.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %.0289, %bb.ab ], [ %.0289, %bb.ad ], [ %.3.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.0289, %bb.ac ], [ %.0289, %.split303.peel ], [ %.0289, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.0289, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 11 uses
  %.4140 = phi i32 [ %i.i, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %i.i, %bb.ab ], [ %i.i, %bb.ad ], [ %.4140.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.i, %bb.ac ], [ %spec.select.peel, %.split303.peel ], [ %spec.select.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %spec.select.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 5 uses
  %.2126 = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ false, %bb.ab ], [ false, %bb.ad ], [ %i.hh, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ false, %bb.ac ], [ true, %.split303.peel ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ]
  %.2119 = phi i32 [ 0, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ 0, %bb.ab ], [ 0, %bb.ad ], [ %.2119.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ 0, %bb.ac ], [ %spec.select156.peel, %.split303.peel ], [ %spec.select156.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %spec.select156.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 10 uses
  %i.hj = icmp eq i32 %.4140, 16
  %i.hk = select i1 %i.hj, i32 22, i32 %.4140     ; 3 uses
  %i.hl = zext nneg i32 %i.hk to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.hm, ptr %9, align 8, !tbaa !64
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i64 0, ptr %i.hn, align 8, !tbaa !67
  store i8 0, ptr %i.hm, align 8, !tbaa !55
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !125, !range !101, !noundef !102
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 32)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge
  %i.hr = udiv i32 -1, %.4140                     ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !129, !range !101, !noundef !102
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %.preheader, label %.preheader348

.preheader348:                                    ; preds = %bb.bk
  br i1 %.1129.lcssa, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310, label %.lr.ph438

.lr.ph438:                                        ; preds = %.preheader348
  %i.hw = icmp ult i32 %i.hk, 11                  ; 2 uses
  %i.hx = or disjoint i32 %i.hk, 48               ; 2 uses
  br i1 %i.hw, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph438
  %i.hy = add i32 %.3, -48                        ; 2 uses
  %or.cond.i.peel = icmp ult i32 %i.hy, 10
  br i1 %or.cond.i.peel, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hz = add i32 %.3, -97
  %or.cond3.i.peel = icmp ult i32 %i.hz, 6
  br i1 %or.cond3.i.peel, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ia = add nsw i32 %.3, -55
  %i.ib = add i32 %.3, -71
  %or.cond336.peel = icmp ult i32 %i.ib, -6
  br i1 %or.cond336.peel, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310, label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  %i.ic = add nsw i32 %.3, -87
  br label %bb.bq

bb.bp:                                            ; preds = %.lr.ph438
  %i.id = icmp sgt i32 %.3, 47
  %i.ie = icmp samesign ult i32 %.3, %i.hx
  %or.cond24.i.peel = select i1 %i.id, i1 %i.ie, i1 false
  %i.if = add nsw i32 %.3, -48
  br i1 %or.cond24.i.peel, label %bb.bq, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bl
  %.0.i308.peel = phi i32 [ %i.ia, %bb.bn ], [ %i.ic, %bb.bo ], [ %i.hy, %bb.bl ], [ %i.if, %bb.bp ] ; 4 uses
  %i.ig = add nsw i32 %.2119, 1                   ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0265.3, i64 16 ; 4 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !148 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0265.3, i64 24 ; 3 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !149 ; 2 uses
  %i.il = icmp ult ptr %i.ii, %i.ik
  br i1 %i.il, label %bb.bs, label %bb.br, !prof !78

bb.br:                                            ; preds = %bb.bq
  %i.im = load ptr, ptr %.sroa.0265.3, align 8, !tbaa !54
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 80
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = invoke noundef i32 %i.io(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.3)
          to label %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !30 ; 0 uses

._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel_crit_edge: ; preds = %bb.br
  %.pre529 = load ptr, ptr %i.ih, align 8, !tbaa !148
  %.pre530 = load ptr, ptr %i.ij, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel

bb.bs:                                            ; preds = %bb.bq
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 4 ; 2 uses
  store ptr %i.iq, ptr %i.ih, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel: ; preds = %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel_crit_edge, %bb.bs
  %i.ir = phi ptr [ %.pre530, %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel_crit_edge ], [ %i.ik, %bb.bs ]
  %i.is = phi ptr [ %.pre529, %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel_crit_edge ], [ %i.iq, %bb.bs ] ; 2 uses
  %i.it = icmp ult ptr %i.is, %i.ir
  br i1 %i.it, label %bb.bu, label %bb.bt, !prof !78

bb.bt:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel
  %i.iu = load ptr, ptr %.sroa.0265.3, align 8, !tbaa !54
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 72
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = invoke noundef i32 %i.iw(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.3)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i203.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !31

bb.bu:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel
  %i.iy = load i32, ptr %i.is, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i203.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i203.peel: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i204.peel = phi i32 [ %i.iy, %bb.bu ], [ %i.ix, %bb.bt ]
  %i.iz = icmp eq i32 %.0.i.i.i.i.i204.peel, -1   ; 4 uses
  %spec.select337.peel = select i1 %i.iz, ptr null, ptr %.sroa.0265.3 ; 3 uses
  %.not.i.i2.i.i198.peel = icmp ne ptr %.sroa.0.2, null
  %or.cond.i.i3.i.i199.peel = select i1 %.not.i.i2.i.i198.peel, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i199.peel, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i203.peel
  %i.ja = xor i1 %i.v, %i.iz
  br i1 %i.ja, label %bb.bz, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310

bb.bw:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i203.peel
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !148 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !149
  %i.jf = icmp ult ptr %i.jc, %i.je
  br i1 %i.jf, label %bb.by, label %bb.bx, !prof !78

bb.bx:                                            ; preds = %bb.bw
  %i.jg = load ptr, ptr %.sroa.0.2, align 8, !tbaa !54
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 72
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = invoke noundef i32 %i.ji(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.2)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !31

bb.by:                                            ; preds = %bb.bw
  %i.jk = load i32, ptr %i.jc, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201.peel: ; preds = %bb.by, %bb.bx
  %.0.i.i.i6.i.i202.peel = phi i32 [ %i.jk, %bb.by ], [ %i.jj, %bb.bx ]
  %i.jl = icmp eq i32 %.0.i.i.i6.i.i202.peel, -1
  br i1 %i.jl, label %.split314.peel, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201._crit_edge.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201._crit_edge.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201.peel
  br i1 %i.iz, label %bb.bz, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310

.split314.peel:                                   ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201.peel
  br i1 %i.iz, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310, label %bb.bz

bb.bz:                                            ; preds = %.split314.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201._crit_edge.peel, %bb.bv
  %.sroa.0.8313.peel = phi ptr [ %.sroa.0.2, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201._crit_edge.peel ], [ %.sroa.0.2, %bb.bv ], [ null, %.split314.peel ]
  %.not.i.i208.not.peel = icmp eq ptr %spec.select337.peel, null
  br i1 %.not.i.i208.not.peel, label %.peel.next511.preheader, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jm = load ptr, ptr %i.ih, align 8, !tbaa !148 ; 2 uses
  %i.jn = load ptr, ptr %i.ij, align 8, !tbaa !149
  %i.jo = icmp ult ptr %i.jm, %i.jn
  br i1 %i.jo, label %bb.cc, label %bb.cb, !prof !78

bb.cb:                                            ; preds = %bb.ca
  %i.jp = load ptr, ptr %.sroa.0265.3, align 8, !tbaa !54
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 72
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = invoke noundef i32 %i.jr(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.3)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !32

bb.cc:                                            ; preds = %bb.ca
  %i.jt = load i32, ptr %i.jm, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i212.peel = phi i32 [ %i.jt, %bb.cc ], [ %i.js, %bb.cb ] ; 2 uses
  %i.ju = icmp eq i32 %.0.i.i.i212.peel, -1
  %spec.select338.peel = select i1 %i.ju, ptr null, ptr %spec.select337.peel
  br label %.peel.next511.preheader

.peel.next511.preheader:                          ; preds = %bb.bz, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel
  %.4292434.ph = phi i32 [ -1, %bb.bz ], [ %.0.i.i.i212.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel ]
  %.sroa.0265.4431.ph = phi ptr [ null, %bb.bz ], [ %spec.select338.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel ]
  br label %.peel.next511

.preheader:                                       ; preds = %bb.bk
  br i1 %.1129.lcssa, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310, label %.lr.ph466

.lr.ph466:                                        ; preds = %.preheader
  %i.jv = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.jw = ptrtoint ptr %i.hs to i64               ; 2 uses
end_hunk_8
begin_hunk_9_@_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE14_M_extract_intB5cxx11ImEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a

.split:                                           ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i
  br i1 %i.ah, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread, label %bb.h

_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEE9_M_at_eofEv.exit.i.i
  %i.ai = icmp ne i32 %.0.i.i.i.i, -1
  %i.aj = xor i1 %i.v, %i.ai
  br i1 %i.aj, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread, label %bb.h

bb.h:                                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %.split, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.5296 = phi ptr [ null, %.split ], [ %3, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %3, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ] ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %.not.i.i = icmp ne ptr %.sroa.0265.9, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0265.9, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !148 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0265.9, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !149
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !78

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %.sroa.0265.9, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.9), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i32 [ %i.aq, %bb.j ], [ %i.au, %bb.k ] ; 2 uses
  %i.av = icmp eq i32 %.0.i.i.i, -1
  %spec.select330 = select i1 %i.av, ptr null, ptr %.sroa.0265.9
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i, %bb.h
  %.sroa.0265.10 = phi ptr [ %.sroa.0265.9, %bb.h ], [ %spec.select330, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i ] ; 13 uses
  %.0.i.i = phi i32 [ %2, %bb.h ], [ %.0.i.i.i, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i ] ; 10 uses
  %i.aw = load i32, ptr %i.ak, align 4, !tbaa !119
  %i.ax = icmp eq i32 %.0.i.i, %i.aw              ; 11 uses
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !119
  %i.ba = icmp eq i32 %.0.i.i, %i.az
  br i1 %i.ba, label %bb.m, label %.lr.ph

bb.m:                                             ; preds = %bb.l, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !125, !range !101, !noundef !102
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !128
  %i.bg = icmp eq i32 %.0.i.i, %i.bf
  br i1 %i.bg, label %.lr.ph, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !130
  %i.bj = icmp eq i32 %.0.i.i, %i.bi
  br i1 %i.bj, label %.lr.ph, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0265.10, i64 16 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !148 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0265.10, i64 24 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !149 ; 2 uses
  %i.bo = icmp ult ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.q, label %bb.r, !prof !78

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit

bb.r:                                             ; preds = %bb.p
  %i.bq = load ptr, ptr %.sroa.0265.10, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.10), !inline_history !28 ; 0 uses
  %.pre = load ptr, ptr %i.bk, align 8, !tbaa !148
  %.pre525 = load ptr, ptr %i.bm, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit: ; preds = %bb.r, %bb.q
  %i.bu = phi ptr [ %.pre525, %bb.r ], [ %i.bn, %bb.q ]
  %i.bv = phi ptr [ %.pre, %bb.r ], [ %i.bp, %bb.q ] ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.bu
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !78

bb.s:                                             ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i166

bb.t:                                             ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit
  %i.by = load ptr, ptr %.sroa.0265.10, align 8, !tbaa !54
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef i32 %i.ca(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.10), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i166

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i166: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i167 = phi i32 [ %i.bx, %bb.s ], [ %i.cb, %bb.t ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i167, -1        ; 4 uses
  %spec.select332 = select i1 %i.cc, ptr null, ptr %.sroa.0265.10 ; 3 uses
  %.not.i.i2.i.i161 = icmp ne ptr %.sroa.0.5296, null
  %or.cond.i.i3.i.i162 = select i1 %.not.i.i2.i.i161, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i162, label %bb.u, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.u:                                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i166
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.5296, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !148 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.5296, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !149
  %i.ch = icmp ult ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.v, label %bb.w, !prof !78

bb.v:                                             ; preds = %bb.u
  %i.ci = load i32, ptr %i.ce, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164

bb.w:                                             ; preds = %bb.u
  %i.cj = load ptr, ptr %.sroa.0.5296, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.5296), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164: ; preds = %bb.w, %bb.v
  %.0.i.i.i6.i.i165 = phi i32 [ %i.ci, %bb.v ], [ %i.cm, %bb.w ]
  %i.cn = icmp eq i32 %.0.i.i.i6.i.i165, -1
  br i1 %i.cn, label %.split298, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164
  br i1 %i.cc, label %bb.x, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread

.split298:                                        ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164
  br i1 %i.cc, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread, label %bb.x

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i166
  %i.co = xor i1 %i.v, %i.cc
  br i1 %i.co, label %bb.x, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread

bb.x:                                             ; preds = %.split298, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.6297 = phi ptr [ %.sroa.0.5296, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0.5296, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split298 ] ; 2 uses
  %.not.i.i168.not = icmp eq ptr %spec.select332, null
  br i1 %.not.i.i168.not, label %.lr.ph, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %i.bk, align 8, !tbaa !148 ; 2 uses
  %i.cq = load ptr, ptr %i.bm, align 8, !tbaa !149
  %i.cr = icmp ult ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.z, label %bb.aa, !prof !78

bb.z:                                             ; preds = %bb.y
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171

bb.aa:                                            ; preds = %bb.y
  %i.ct = load ptr, ptr %.sroa.0265.10, align 8, !tbaa !54
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef i32 %i.cv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.10), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171: ; preds = %bb.aa, %bb.z
  %.0.i.i.i172 = phi i32 [ %i.cs, %bb.z ], [ %i.cw, %bb.aa ] ; 2 uses
  %i.cx = icmp eq i32 %.0.i.i.i172, -1
  %spec.select333 = select i1 %i.cx, ptr null, ptr %spec.select332
  br label %.lr.ph

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread: ; preds = %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split298, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge
  %.sroa.0265.0.ph = phi ptr [ %.sroa.0265.10, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0265.9, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0265.9, %.split ], [ %spec.select332, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split298 ], [ %.sroa.0265.9, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.26.0.ph = phi i32 [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %2, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %2, %.split ], [ -1, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ -1, %.split298 ], [ %2, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.5296, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %3, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ null, %.split ], [ %.sroa.0.5296, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split298 ], [ %3, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0289.ph = phi i32 [ %.0.i.i, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ 0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ 0, %.split ], [ %.0.i.i, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %.0.i.i, %.split298 ], [ 0, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0127.shrunk.ph = phi i1 [ %i.ax, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ false, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ false, %.split ], [ %i.ax, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.ax, %.split298 ], [ false, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge

.lr.ph:                                           ; preds = %bb.o, %bb.n, %bb.l, %bb.x, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171
  %.sroa.0265.0 = phi ptr [ %.sroa.0265.10, %bb.l ], [ %.sroa.0265.10, %bb.n ], [ %.sroa.0265.10, %bb.o ], [ %spec.select333, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171 ], [ null, %bb.x ] ; 13 uses
  %.sroa.26.0 = phi i32 [ %2, %bb.l ], [ %2, %bb.n ], [ %2, %bb.o ], [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171 ], [ -1, %bb.x ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.5296, %bb.l ], [ %.sroa.0.5296, %bb.n ], [ %.sroa.0.5296, %bb.o ], [ %.sroa.0.6297, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171 ], [ %.sroa.0.6297, %bb.x ] ; 12 uses
  %.0289 = phi i32 [ %.0.i.i, %bb.l ], [ %.0.i.i, %bb.n ], [ %.0.i.i, %bb.o ], [ %.0.i.i.i172, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171 ], [ -1, %bb.x ] ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %i.de = icmp eq i32 %i.e, 0                     ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.dg = load i8, ptr %i.db, align 8, !tbaa !125, !range !101, !noundef !102
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph
  %i.di = load i32, ptr %i.cz, align 4, !tbaa !128
  %i.dj = icmp eq i32 %.0289, %i.di
  br i1 %i.dj, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph
  %i.dk = load i32, ptr %i.dc, align 8, !tbaa !130
  %i.dl = icmp eq i32 %.0289, %i.dk
  br i1 %i.dl, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load i32, ptr %i.dd, align 8, !tbaa !119
  %.not589 = icmp eq i32 %.0289, %i.dm
  br i1 %.not589, label %bb.ae, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge

bb.ae:                                            ; preds = %bb.ad
  %spec.select.peel = select i1 %i.de, i32 8, i32 %i.i ; 4 uses
  %i.dn = or i1 %i.de, %i.f
  %not. = xor i1 %i.dn, true
  %spec.select156.peel = zext i1 %not. to i32     ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0265.0, i64 16 ; 4 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !148 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0265.0, i64 24 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !149 ; 2 uses
  %i.ds = icmp ult ptr %i.dp, %i.dr
  br i1 %i.ds, label %bb.ag, label %bb.af, !prof !78

bb.af:                                            ; preds = %bb.ae
  %i.dt = load ptr, ptr %.sroa.0265.0, align 8, !tbaa !54
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.0), !inline_history !28 ; 0 uses
  %.pre528 = load ptr, ptr %i.do, align 8, !tbaa !148
  %.pre529 = load ptr, ptr %i.dq, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174.peel

bb.ag:                                            ; preds = %bb.ae
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  store ptr %i.dx, ptr %i.do, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174.peel

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174.peel: ; preds = %bb.ag, %bb.af
  %i.dy = phi ptr [ %i.dr, %bb.ag ], [ %.pre529, %bb.af ]
  %i.dz = phi ptr [ %i.dx, %bb.ag ], [ %.pre528, %bb.af ] ; 2 uses
  %i.ea = icmp ult ptr %i.dz, %i.dy
  br i1 %i.ea, label %bb.ai, label %bb.ah, !prof !78

bb.ah:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174.peel
  %i.eb = load ptr, ptr %.sroa.0265.0, align 8, !tbaa !54
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef i32 %i.ed(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.0), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184.peel

bb.ai:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174.peel
  %i.ef = load i32, ptr %i.dz, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184.peel: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i185.peel = phi i32 [ %i.ef, %bb.ai ], [ %i.ee, %bb.ah ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i185.peel, -1   ; 4 uses
  %spec.select335.peel = select i1 %i.eg, ptr null, ptr %.sroa.0265.0 ; 3 uses
  %.not.i.i2.i.i179.peel = icmp ne ptr %.sroa.0.0, null
  %or.cond.i.i3.i.i180.peel = select i1 %.not.i.i2.i.i179.peel, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i180.peel, label %bb.aj, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184.peel
  %i.eh = xor i1 %i.v, %i.eg
  br i1 %i.eh, label %bb.am, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge

bb.aj:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184.peel
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !148 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !149
  %i.em = icmp ult ptr %i.ej, %i.el
  br i1 %i.em, label %bb.al, label %bb.ak, !prof !78

bb.ak:                                            ; preds = %bb.aj
  %i.en = load ptr, ptr %.sroa.0.0, align 8, !tbaa !54
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call noundef i32 %i.ep(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182.peel

bb.al:                                            ; preds = %bb.aj
  %i.er = load i32, ptr %i.ej, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182.peel: ; preds = %bb.al, %bb.ak
  %.0.i.i.i6.i.i183.peel = phi i32 [ %i.er, %bb.al ], [ %i.eq, %bb.ak ]
  %i.es = icmp eq i32 %.0.i.i.i6.i.i183.peel, -1
  br i1 %i.es, label %.split303.peel, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182.peel
  br i1 %i.eg, label %bb.am, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge

.split303.peel:                                   ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182.peel
  br i1 %i.eg, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge, label %bb.am

bb.am:                                            ; preds = %.split303.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel
  %.sroa.0.7302.peel = phi ptr [ %.sroa.0.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ], [ %.sroa.0.0, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ null, %.split303.peel ]
  %.not.i.i187.not.peel = icmp eq ptr %spec.select335.peel, null
  br i1 %.not.i.i187.not.peel, label %.peel.next.preheader, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.et = load ptr, ptr %i.do, align 8, !tbaa !148 ; 2 uses
  %i.eu = load ptr, ptr %i.dq, align 8, !tbaa !149
  %i.ev = icmp ult ptr %i.et, %i.eu
  br i1 %i.ev, label %bb.ap, label %bb.ao, !prof !78

bb.ao:                                            ; preds = %bb.an
  %i.ew = load ptr, ptr %.sroa.0265.0, align 8, !tbaa !54
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call noundef i32 %i.ey(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.0), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel

bb.ap:                                            ; preds = %bb.an
  %i.fa = load i32, ptr %i.et, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i191.peel = phi i32 [ %i.fa, %bb.ap ], [ %i.ez, %bb.ao ] ; 2 uses
  %i.fb = icmp eq i32 %.0.i.i.i191.peel, -1
  %spec.select336.peel = select i1 %i.fb, ptr null, ptr %spec.select335.peel
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel, %bb.am
  %.1290369.ph = phi i32 [ -1, %bb.am ], [ %.0.i.i.i191.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel ]
  %.sroa.0265.1366.ph = phi ptr [ null, %bb.am ], [ %spec.select336.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192
  %.0117373 = phi i32 [ %.1118, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %spec.select156.peel, %.peel.next.preheader ] ; 6 uses
  %.0124372 = phi i8 [ %.1125, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ 1, %.peel.next.preheader ] ; 3 uses
  %.0136370 = phi i32 [ %.3139, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %spec.select.peel, %.peel.next.preheader ] ; 9 uses
  %.1290369 = phi i32 [ %.0.i.i189, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.1290369.ph, %.peel.next.preheader ] ; 13 uses
  %.sroa.0.1368 = phi ptr [ %.sroa.0.7302, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.sroa.0.7302.peel, %.peel.next.preheader ] ; 14 uses
  %.sroa.0265.1366 = phi ptr [ %.sroa.0265.14, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.sroa.0265.1366.ph, %.peel.next.preheader ] ; 15 uses
  %i.fc = load i8, ptr %i.db, align 8, !tbaa !125, !range !101, !noundef !102
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.peel.next
  %i.fe = load i32, ptr %i.cz, align 4, !tbaa !128
  %i.ff = icmp eq i32 %.1290369, %i.fe
  br i1 %i.ff, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.peel.next
  %i.fg = load i32, ptr %i.dc, align 8, !tbaa !130
  %i.fh = icmp eq i32 %.1290369, %i.fg
  br i1 %i.fh, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fi = load i32, ptr %i.dd, align 8, !tbaa !119
  %i.fj = icmp ne i32 %.1290369, %i.fi
  %10 = trunc nuw i8 %.0124372 to i1              ; 2 uses
  %i.fk = icmp ne i32 %.0136370, 10
  %or.cond.not = and i1 %i.fk, %10
  %or.cond = select i1 %i.fj, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %12, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fl = add nsw i32 %.0117373, 1
  %spec.select = select i1 %i.de, i32 8, i32 %.0136370 ; 2 uses
  %11 = icmp eq i32 %spec.select, 8
  %spec.select156 = select i1 %11, i32 0, i32 %i.fl
  br label %bb.ax

12:                                               ; preds = %bb.as
  br i1 %10, label %bb.au, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.au:                                            ; preds = %12
  %i.fm = load i32, ptr %i.df, align 8, !tbaa !119
  %i.fn = icmp eq i32 %.1290369, %i.fm
  br i1 %i.fn, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fo = load i32, ptr %i.da, align 4, !tbaa !119
  %i.fp = icmp eq i32 %.1290369, %i.fo
  %i.fq = icmp eq i32 %.0136370, 16
  %i.fr = select i1 %i.de, i1 true, i1 %i.fq
  %or.cond501 = select i1 %i.fp, i1 %i.fr, i1 false
  br i1 %or.cond501, label %bb.ax, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.aw:                                            ; preds = %bb.au
  %.old = icmp eq i32 %.0136370, 16
  %.old500 = select i1 %i.de, i1 true, i1 %.old
  br i1 %.old500, label %bb.ax, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.ax:                                            ; preds = %bb.av, %bb.at, %bb.aw
  %.3139 = phi i32 [ 16, %bb.aw ], [ %spec.select, %bb.at ], [ 16, %bb.av ] ; 5 uses
  %.1125 = phi i8 [ 0, %bb.aw ], [ 1, %bb.at ], [ 0, %bb.av ] ; 5 uses
  %.1118 = phi i32 [ 0, %bb.aw ], [ %spec.select156, %bb.at ], [ 0, %bb.av ] ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0265.1366, i64 16 ; 4 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !148 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0265.1366, i64 24 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !149 ; 2 uses
  %i.fw = icmp ult ptr %i.ft, %i.fv
  br i1 %i.fw, label %bb.ay, label %bb.az, !prof !78

bb.ay:                                            ; preds = %bb.ax
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 2 uses
  store ptr %i.fx, ptr %i.fs, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174

bb.az:                                            ; preds = %bb.ax
  %i.fy = load ptr, ptr %.sroa.0265.1366, align 8, !tbaa !54
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 80
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = call noundef i32 %i.ga(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.1366), !inline_history !28 ; 0 uses
  %.pre530 = load ptr, ptr %i.fs, align 8, !tbaa !148
  %.pre531 = load ptr, ptr %i.fu, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174: ; preds = %bb.az, %bb.ay
  %i.gc = phi ptr [ %.pre531, %bb.az ], [ %i.fv, %bb.ay ]
  %i.gd = phi ptr [ %.pre530, %bb.az ], [ %i.fx, %bb.ay ] ; 2 uses
  %i.ge = icmp ult ptr %i.gd, %i.gc
  br i1 %i.ge, label %bb.ba, label %bb.bb, !prof !78

bb.ba:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184

bb.bb:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174
  %i.gg = load ptr, ptr %.sroa.0265.1366, align 8, !tbaa !54
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 72
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = call noundef i32 %i.gi(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.1366), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i185 = phi i32 [ %i.gf, %bb.ba ], [ %i.gj, %bb.bb ]
  %i.gk = icmp eq i32 %.0.i.i.i.i.i185, -1        ; 4 uses
  %spec.select335 = select i1 %i.gk, ptr null, ptr %.sroa.0265.1366 ; 3 uses
  %.not.i.i2.i.i179 = icmp ne ptr %.sroa.0.1368, null
  %or.cond.i.i3.i.i180 = select i1 %.not.i.i2.i.i179, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i180, label %bb.bc, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186

bb.bc:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.1368, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !148 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.1368, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !149
  %i.gp = icmp ult ptr %i.gm, %i.go
  br i1 %i.gp, label %bb.bd, label %bb.be, !prof !78

bb.bd:                                            ; preds = %bb.bc
  %i.gq = load i32, ptr %i.gm, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182

bb.be:                                            ; preds = %bb.bc
  %i.gr = load ptr, ptr %.sroa.0.1368, align 8, !tbaa !54
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = call noundef i32 %i.gt(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.1368), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182: ; preds = %bb.be, %bb.bd
  %.0.i.i.i6.i.i183 = phi i32 [ %i.gq, %bb.bd ], [ %i.gu, %bb.be ]
  %i.gv = icmp eq i32 %.0.i.i.i6.i.i183, -1
  br i1 %i.gv, label %.split303, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182
  br i1 %i.gk, label %bb.bf, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit

.split303:                                        ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182
  br i1 %i.gk, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.bf

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184
  %i.gw = xor i1 %i.v, %i.gk
  br i1 %i.gw, label %bb.bf, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.bf:                                            ; preds = %.split303, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186
  %.sroa.0.7302 = phi ptr [ %.sroa.0.1368, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ %.sroa.0.1368, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ null, %.split303 ] ; 2 uses
  %.not.i.i187.not = icmp eq ptr %spec.select335, null
  br i1 %.not.i.i187.not, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gx = load ptr, ptr %i.fs, align 8, !tbaa !148 ; 2 uses
  %i.gy = load ptr, ptr %i.fu, align 8, !tbaa !149
  %i.gz = icmp ult ptr %i.gx, %i.gy
  br i1 %i.gz, label %bb.bh, label %bb.bi, !prof !78

bb.bh:                                            ; preds = %bb.bg
  %i.ha = load i32, ptr %i.gx, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190

bb.bi:                                            ; preds = %bb.bg
  %i.hb = load ptr, ptr %.sroa.0265.1366, align 8, !tbaa !54
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = call noundef i32 %i.hd(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.1366), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i191 = phi i32 [ %i.ha, %bb.bh ], [ %i.he, %bb.bi ] ; 2 uses
  %i.hf = icmp eq i32 %.0.i.i.i191, -1
  %spec.select336 = select i1 %i.hf, ptr null, ptr %spec.select335
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190, %bb.bf
  %.sroa.0265.14 = phi ptr [ null, %bb.bf ], [ %spec.select336, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190 ] ; 2 uses
  %.0.i.i189 = phi i32 [ -1, %bb.bf ], [ %.0.i.i.i191, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190 ] ; 2 uses
  %i.hg = trunc nuw i8 %.1125 to i1
  br i1 %i.hg, label %.peel.next, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit, !llvm.loop !315

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit: ; preds = %.split303, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186, %bb.ar, %bb.aq, %bb.aw, %bb.av, %12, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192
  %.1129.lcssa.ph.ph = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ false, %12 ], [ false, %bb.av ], [ false, %bb.aw ], [ false, %bb.aq ], [ false, %bb.ar ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ true, %.split303 ]
  %.sroa.0265.3.ph.ph = phi ptr [ %.sroa.0265.14, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.sroa.0265.1366, %12 ], [ %.sroa.0265.1366, %bb.av ], [ %.sroa.0265.1366, %bb.aw ], [ %.sroa.0265.1366, %bb.aq ], [ %.sroa.0265.1366, %bb.ar ], [ %spec.select335, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.sroa.0265.1366, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ null, %.split303 ]
  %.sroa.0.2.ph.ph = phi ptr [ %.sroa.0.7302, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.sroa.0.1368, %12 ], [ %.sroa.0.1368, %bb.av ], [ %.sroa.0.1368, %bb.aw ], [ %.sroa.0.1368, %bb.aq ], [ %.sroa.0.1368, %bb.ar ], [ %.sroa.0.1368, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.sroa.0.1368, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ null, %.split303 ]
  %.3.ph.ph = phi i32 [ %.0.i.i189, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.1290369, %12 ], [ %.1290369, %bb.av ], [ %.1290369, %bb.aw ], [ %.1290369, %bb.aq ], [ %.1290369, %bb.ar ], [ %.1290369, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1290369, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ %.1290369, %.split303 ]
  %.4140.ph.ph = phi i32 [ %.3139, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.0136370, %12 ], [ %.0136370, %bb.av ], [ %.0136370, %bb.aw ], [ %.0136370, %bb.aq ], [ %.0136370, %bb.ar ], [ %.3139, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.3139, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ %.3139, %.split303 ]
  %.2126.ph.ph = phi i8 [ 0, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ 0, %12 ], [ 1, %bb.av ], [ 1, %bb.aw ], [ %.0124372, %bb.aq ], [ %.0124372, %bb.ar ], [ %.1125, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1125, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ %.1125, %.split303 ]
  %.2119.ph.ph = phi i32 [ %.1118, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.0117373, %12 ], [ %.0117373, %bb.av ], [ %.0117373, %bb.aw ], [ %.0117373, %bb.aq ], [ %.0117373, %bb.ar ], [ %.1118, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1118, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ %.1118, %.split303 ]
  %i.hh = trunc nuw i8 %.2126.ph.ph to i1
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel, %.split303.peel, %bb.ab, %bb.ac, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit, %bb.ad, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread
  %i.hi = phi ptr [ %i.cy, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %i.cz, %bb.ab ], [ %i.cz, %bb.ad ], [ %i.cz, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.cz, %bb.ac ], [ %i.cz, %.split303.peel ], [ %i.cz, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %i.cz, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 2 uses
  %.0127.shrunk596 = phi i1 [ %.0127.shrunk.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %i.ax, %bb.ab ], [ %i.ax, %bb.ad ], [ %i.ax, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.ax, %bb.ac ], [ %i.ax, %.split303.peel ], [ %i.ax, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %i.ax, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ]
  %.1129.lcssa = phi i1 [ true, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ false, %bb.ab ], [ false, %bb.ad ], [ %.1129.lcssa.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ false, %bb.ac ], [ true, %.split303.peel ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 2 uses
  %.sroa.0265.3 = phi ptr [ %.sroa.0265.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %.sroa.0265.0, %bb.ab ], [ %.sroa.0265.0, %bb.ad ], [ %.sroa.0265.3.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.0265.0, %bb.ac ], [ null, %.split303.peel ], [ %spec.select335.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.sroa.0265.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 27 uses
  %.sroa.26.2 = phi i32 [ %.sroa.26.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %.sroa.26.0, %bb.ab ], [ %.sroa.26.0, %bb.ad ], [ -1, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.26.0, %bb.ac ], [ -1, %.split303.peel ], [ -1, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 7 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %.sroa.0.0, %bb.ab ], [ %.sroa.0.0, %bb.ad ], [ %.sroa.0.2.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.0.0, %bb.ac ], [ null, %.split303.peel ], [ %.sroa.0.0, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.sroa.0.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 14 uses
  %.3 = phi i32 [ %.0289.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %.0289, %bb.ab ], [ %.0289, %bb.ad ], [ %.3.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.0289, %bb.ac ], [ %.0289, %.split303.peel ], [ %.0289, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.0289, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 11 uses
  %.4140 = phi i32 [ %i.i, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %i.i, %bb.ab ], [ %i.i, %bb.ad ], [ %.4140.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.i, %bb.ac ], [ %spec.select.peel, %.split303.peel ], [ %spec.select.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %spec.select.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 3 uses
  %.2126 = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ false, %bb.ab ], [ false, %bb.ad ], [ %i.hh, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ false, %bb.ac ], [ true, %.split303.peel ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ]
  %.2119 = phi i32 [ 0, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ 0, %bb.ab ], [ 0, %bb.ad ], [ %.2119.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ 0, %bb.ac ], [ %spec.select156.peel, %.split303.peel ], [ %spec.select156.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %spec.select156.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 10 uses
  %i.hj = icmp eq i32 %.4140, 16
  %i.hk = select i1 %i.hj, i32 22, i32 %.4140     ; 3 uses
  %i.hl = zext nneg i32 %i.hk to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.hm, ptr %9, align 8, !tbaa !64
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i64 0, ptr %i.hn, align 8, !tbaa !67
  store i8 0, ptr %i.hm, align 8, !tbaa !55
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !125, !range !101, !noundef !102
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 32)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge
  %i.hr = zext nneg i32 %.4140 to i64             ; 3 uses
  %i.hs = udiv i64 -1, %i.hr                      ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.hv = load i8, ptr %i.hu, align 8, !tbaa !129, !range !101, !noundef !102
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %.preheader, label %.preheader351

.preheader351:                                    ; preds = %bb.bk
  br i1 %.1129.lcssa, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310, label %.lr.ph441

.lr.ph441:                                        ; preds = %.preheader351
  %i.hx = icmp ult i32 %i.hk, 11                  ; 2 uses
  %i.hy = or disjoint i32 %i.hk, 48               ; 2 uses
  br i1 %i.hx, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph441
  %i.hz = add i32 %.3, -48                        ; 2 uses
  %or.cond.i.peel = icmp ult i32 %i.hz, 10
  br i1 %or.cond.i.peel, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ia = add i32 %.3, -97
  %or.cond3.i.peel = icmp ult i32 %i.ia, 6
  br i1 %or.cond3.i.peel, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ib = add nsw i32 %.3, -55
  %i.ic = add i32 %.3, -71
  %or.cond338.peel = icmp ult i32 %i.ic, -6
  br i1 %or.cond338.peel, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310, label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  %i.id = add nsw i32 %.3, -87
  br label %bb.bq

bb.bp:                                            ; preds = %.lr.ph441
  %i.ie = icmp sgt i32 %.3, 47
  %i.if = icmp samesign ult i32 %.3, %i.hy
  %or.cond24.i.peel = select i1 %i.ie, i1 %i.if, i1 false
  %i.ig = add nsw i32 %.3, -48
  br i1 %or.cond24.i.peel, label %bb.bq, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bl
  %.0.i308.peel = phi i32 [ %i.ib, %bb.bn ], [ %i.id, %bb.bo ], [ %i.hz, %bb.bl ], [ %i.ig, %bb.bp ]
  %i.ih = sext i32 %.0.i308.peel to i64           ; 4 uses
  %i.ii = add nsw i32 %.2119, 1                   ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0265.3, i64 16 ; 4 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !148 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0265.3, i64 24 ; 3 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !149 ; 2 uses
  %i.in = icmp ult ptr %i.ik, %i.im
  br i1 %i.in, label %bb.bs, label %bb.br, !prof !78

bb.br:                                            ; preds = %bb.bq
  %i.io = load ptr, ptr %.sroa.0265.3, align 8, !tbaa !54
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 80
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = invoke noundef i32 %i.iq(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.3)
          to label %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !30 ; 0 uses

._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel_crit_edge: ; preds = %bb.br
  %.pre532 = load ptr, ptr %i.ij, align 8, !tbaa !148
  %.pre533 = load ptr, ptr %i.il, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel

bb.bs:                                            ; preds = %bb.bq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 4 ; 2 uses
  store ptr %i.is, ptr %i.ij, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel: ; preds = %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel_crit_edge, %bb.bs
  %i.it = phi ptr [ %.pre533, %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel_crit_edge ], [ %i.im, %bb.bs ]
  %i.iu = phi ptr [ %.pre532, %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel_crit_edge ], [ %i.is, %bb.bs ] ; 2 uses
  %i.iv = icmp ult ptr %i.iu, %i.it
  br i1 %i.iv, label %bb.bu, label %bb.bt, !prof !78

bb.bt:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel
  %i.iw = load ptr, ptr %.sroa.0265.3, align 8, !tbaa !54
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 72
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = invoke noundef i32 %i.iy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.3)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i203.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !31

bb.bu:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel
  %i.ja = load i32, ptr %i.iu, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i203.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i203.peel: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i204.peel = phi i32 [ %i.ja, %bb.bu ], [ %i.iz, %bb.bt ]
  %i.jb = icmp eq i32 %.0.i.i.i.i.i204.peel, -1   ; 4 uses
  %spec.select339.peel = select i1 %i.jb, ptr null, ptr %.sroa.0265.3 ; 3 uses
  %.not.i.i2.i.i198.peel = icmp ne ptr %.sroa.0.2, null
  %or.cond.i.i3.i.i199.peel = select i1 %.not.i.i2.i.i198.peel, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i199.peel, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i203.peel
  %i.jc = xor i1 %i.v, %i.jb
  br i1 %i.jc, label %bb.bz, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310

bb.bw:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i203.peel
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !148 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !149
  %i.jh = icmp ult ptr %i.je, %i.jg
  br i1 %i.jh, label %bb.by, label %bb.bx, !prof !78

bb.bx:                                            ; preds = %bb.bw
  %i.ji = load ptr, ptr %.sroa.0.2, align 8, !tbaa !54
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 72
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = invoke noundef i32 %i.jk(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.2)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !31

bb.by:                                            ; preds = %bb.bw
  %i.jm = load i32, ptr %i.je, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201.peel: ; preds = %bb.by, %bb.bx
  %.0.i.i.i6.i.i202.peel = phi i32 [ %i.jm, %bb.by ], [ %i.jl, %bb.bx ]
  %i.jn = icmp eq i32 %.0.i.i.i6.i.i202.peel, -1
  br i1 %i.jn, label %.split314.peel, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201._crit_edge.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201._crit_edge.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201.peel
  br i1 %i.jb, label %bb.bz, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310

.split314.peel:                                   ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201.peel
  br i1 %i.jb, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310, label %bb.bz

bb.bz:                                            ; preds = %.split314.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201._crit_edge.peel, %bb.bv
  %.sroa.0.8313.peel = phi ptr [ %.sroa.0.2, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201._crit_edge.peel ], [ %.sroa.0.2, %bb.bv ], [ null, %.split314.peel ]
  %.not.i.i208.not.peel = icmp eq ptr %spec.select339.peel, null
  br i1 %.not.i.i208.not.peel, label %.peel.next514.preheader, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jo = load ptr, ptr %i.ij, align 8, !tbaa !148 ; 2 uses
  %i.jp = load ptr, ptr %i.il, align 8, !tbaa !149
  %i.jq = icmp ult ptr %i.jo, %i.jp
  br i1 %i.jq, label %bb.cc, label %bb.cb, !prof !78

bb.cb:                                            ; preds = %bb.ca
  %i.jr = load ptr, ptr %.sroa.0265.3, align 8, !tbaa !54
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 72
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = invoke noundef i32 %i.jt(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.3)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !32

bb.cc:                                            ; preds = %bb.ca
  %i.jv = load i32, ptr %i.jo, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i212.peel = phi i32 [ %i.jv, %bb.cc ], [ %i.ju, %bb.cb ] ; 2 uses
  %i.jw = icmp eq i32 %.0.i.i.i212.peel, -1
  %spec.select340.peel = select i1 %i.jw, ptr null, ptr %spec.select339.peel
  br label %.peel.next514.preheader

.peel.next514.preheader:                          ; preds = %bb.bz, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel
  %.4292437.ph = phi i32 [ -1, %bb.bz ], [ %.0.i.i.i212.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel ]
  %.sroa.0265.4434.ph = phi ptr [ null, %bb.bz ], [ %spec.select340.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel ]
  br label %.peel.next514

.preheader:                                       ; preds = %bb.bk
  br i1 %.1129.lcssa, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310, label %.lr.ph469

.lr.ph469:                                        ; preds = %.preheader
end_hunk_9
begin_hunk_10_@_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE14_M_extract_intB5cxx11IxEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a

.split:                                           ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i
  br i1 %i.ah, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread, label %bb.h

_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEE9_M_at_eofEv.exit.i.i
  %i.ai = icmp ne i32 %.0.i.i.i.i, -1
  %i.aj = xor i1 %i.v, %i.ai
  br i1 %i.aj, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread, label %bb.h

bb.h:                                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %.split, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.5297 = phi ptr [ null, %.split ], [ %3, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %3, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ] ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %.not.i.i = icmp ne ptr %.sroa.0266.9, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0266.9, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !148 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0266.9, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !149
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !78

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %.sroa.0266.9, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.9), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i32 [ %i.aq, %bb.j ], [ %i.au, %bb.k ] ; 2 uses
  %i.av = icmp eq i32 %.0.i.i.i, -1
  %spec.select331 = select i1 %i.av, ptr null, ptr %.sroa.0266.9
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i, %bb.h
  %.sroa.0266.10 = phi ptr [ %.sroa.0266.9, %bb.h ], [ %spec.select331, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i ] ; 13 uses
  %.0.i.i = phi i32 [ %2, %bb.h ], [ %.0.i.i.i, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i ] ; 10 uses
  %i.aw = load i32, ptr %i.ak, align 4, !tbaa !119
  %i.ax = icmp eq i32 %.0.i.i, %i.aw              ; 11 uses
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !119
  %i.ba = icmp eq i32 %.0.i.i, %i.az
  br i1 %i.ba, label %bb.m, label %.lr.ph

bb.m:                                             ; preds = %bb.l, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !125, !range !101, !noundef !102
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !128
  %i.bg = icmp eq i32 %.0.i.i, %i.bf
  br i1 %i.bg, label %.lr.ph, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !130
  %i.bj = icmp eq i32 %.0.i.i, %i.bi
  br i1 %i.bj, label %.lr.ph, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0266.10, i64 16 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !148 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0266.10, i64 24 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !149 ; 2 uses
  %i.bo = icmp ult ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.q, label %bb.r, !prof !78

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit

bb.r:                                             ; preds = %bb.p
  %i.bq = load ptr, ptr %.sroa.0266.10, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.10), !inline_history !28 ; 0 uses
  %.pre = load ptr, ptr %i.bk, align 8, !tbaa !148
  %.pre526 = load ptr, ptr %i.bm, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit: ; preds = %bb.r, %bb.q
  %i.bu = phi ptr [ %.pre526, %bb.r ], [ %i.bn, %bb.q ]
  %i.bv = phi ptr [ %.pre, %bb.r ], [ %i.bp, %bb.q ] ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.bu
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !78

bb.s:                                             ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i167

bb.t:                                             ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit
  %i.by = load ptr, ptr %.sroa.0266.10, align 8, !tbaa !54
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef i32 %i.ca(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.10), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i167

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i167: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i168 = phi i32 [ %i.bx, %bb.s ], [ %i.cb, %bb.t ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i168, -1        ; 4 uses
  %spec.select333 = select i1 %i.cc, ptr null, ptr %.sroa.0266.10 ; 3 uses
  %.not.i.i2.i.i162 = icmp ne ptr %.sroa.0.5297, null
  %or.cond.i.i3.i.i163 = select i1 %.not.i.i2.i.i162, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i163, label %bb.u, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.u:                                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i167
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.5297, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !148 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.5297, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !149
  %i.ch = icmp ult ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.v, label %bb.w, !prof !78

bb.v:                                             ; preds = %bb.u
  %i.ci = load i32, ptr %i.ce, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165

bb.w:                                             ; preds = %bb.u
  %i.cj = load ptr, ptr %.sroa.0.5297, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.5297), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165: ; preds = %bb.w, %bb.v
  %.0.i.i.i6.i.i166 = phi i32 [ %i.ci, %bb.v ], [ %i.cm, %bb.w ]
  %i.cn = icmp eq i32 %.0.i.i.i6.i.i166, -1
  br i1 %i.cn, label %.split299, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165
  br i1 %i.cc, label %bb.x, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread

.split299:                                        ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165
  br i1 %i.cc, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread, label %bb.x

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i167
  %i.co = xor i1 %i.v, %i.cc
  br i1 %i.co, label %bb.x, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread

bb.x:                                             ; preds = %.split299, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.6298 = phi ptr [ %.sroa.0.5297, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0.5297, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split299 ] ; 2 uses
  %.not.i.i169.not = icmp eq ptr %spec.select333, null
  br i1 %.not.i.i169.not, label %.lr.ph, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %i.bk, align 8, !tbaa !148 ; 2 uses
  %i.cq = load ptr, ptr %i.bm, align 8, !tbaa !149
  %i.cr = icmp ult ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.z, label %bb.aa, !prof !78

bb.z:                                             ; preds = %bb.y
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i172

bb.aa:                                            ; preds = %bb.y
  %i.ct = load ptr, ptr %.sroa.0266.10, align 8, !tbaa !54
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef i32 %i.cv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.10), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i172

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i172: ; preds = %bb.aa, %bb.z
  %.0.i.i.i173 = phi i32 [ %i.cs, %bb.z ], [ %i.cw, %bb.aa ] ; 2 uses
  %i.cx = icmp eq i32 %.0.i.i.i173, -1
  %spec.select334 = select i1 %i.cx, ptr null, ptr %spec.select333
  br label %.lr.ph

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread: ; preds = %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split299, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge
  %.sroa.0266.0.ph = phi ptr [ %.sroa.0266.10, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0266.9, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0266.9, %.split ], [ %spec.select333, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split299 ], [ %.sroa.0266.9, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.26.0.ph = phi i32 [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %2, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %2, %.split ], [ -1, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ -1, %.split299 ], [ %2, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.5297, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %3, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ null, %.split ], [ %.sroa.0.5297, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split299 ], [ %3, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0290.ph = phi i32 [ %.0.i.i, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ 0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ 0, %.split ], [ %.0.i.i, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %.0.i.i, %.split299 ], [ 0, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0128.shrunk.ph = phi i1 [ %i.ax, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i165._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ false, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ false, %.split ], [ %i.ax, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.ax, %.split299 ], [ false, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge

.lr.ph:                                           ; preds = %bb.o, %bb.n, %bb.l, %bb.x, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i172
  %.sroa.0266.0 = phi ptr [ %.sroa.0266.10, %bb.l ], [ %.sroa.0266.10, %bb.n ], [ %.sroa.0266.10, %bb.o ], [ %spec.select334, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i172 ], [ null, %bb.x ] ; 13 uses
  %.sroa.26.0 = phi i32 [ %2, %bb.l ], [ %2, %bb.n ], [ %2, %bb.o ], [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i172 ], [ -1, %bb.x ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.5297, %bb.l ], [ %.sroa.0.5297, %bb.n ], [ %.sroa.0.5297, %bb.o ], [ %.sroa.0.6298, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i172 ], [ %.sroa.0.6298, %bb.x ] ; 12 uses
  %.0290 = phi i32 [ %.0.i.i, %bb.l ], [ %.0.i.i, %bb.n ], [ %.0.i.i, %bb.o ], [ %.0.i.i.i173, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i172 ], [ -1, %bb.x ] ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %i.de = icmp eq i32 %i.e, 0                     ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.dg = load i8, ptr %i.db, align 8, !tbaa !125, !range !101, !noundef !102
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph
  %i.di = load i32, ptr %i.cz, align 4, !tbaa !128
  %i.dj = icmp eq i32 %.0290, %i.di
  br i1 %i.dj, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph
  %i.dk = load i32, ptr %i.dc, align 8, !tbaa !130
  %i.dl = icmp eq i32 %.0290, %i.dk
  br i1 %i.dl, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load i32, ptr %i.dd, align 8, !tbaa !119
  %.not590 = icmp eq i32 %.0290, %i.dm
  br i1 %.not590, label %bb.ae, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge

bb.ae:                                            ; preds = %bb.ad
  %spec.select.peel = select i1 %i.de, i32 8, i32 %i.i ; 4 uses
  %i.dn = or i1 %i.de, %i.f
  %not. = xor i1 %i.dn, true
  %spec.select157.peel = zext i1 %not. to i32     ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0266.0, i64 16 ; 4 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !148 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0266.0, i64 24 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !149 ; 2 uses
  %i.ds = icmp ult ptr %i.dp, %i.dr
  br i1 %i.ds, label %bb.ag, label %bb.af, !prof !78

bb.af:                                            ; preds = %bb.ae
  %i.dt = load ptr, ptr %.sroa.0266.0, align 8, !tbaa !54
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.0), !inline_history !28 ; 0 uses
  %.pre529 = load ptr, ptr %i.do, align 8, !tbaa !148
  %.pre530 = load ptr, ptr %i.dq, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175.peel

bb.ag:                                            ; preds = %bb.ae
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  store ptr %i.dx, ptr %i.do, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175.peel

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175.peel: ; preds = %bb.ag, %bb.af
  %i.dy = phi ptr [ %i.dr, %bb.ag ], [ %.pre530, %bb.af ]
  %i.dz = phi ptr [ %i.dx, %bb.ag ], [ %.pre529, %bb.af ] ; 2 uses
  %i.ea = icmp ult ptr %i.dz, %i.dy
  br i1 %i.ea, label %bb.ai, label %bb.ah, !prof !78

bb.ah:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175.peel
  %i.eb = load ptr, ptr %.sroa.0266.0, align 8, !tbaa !54
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef i32 %i.ed(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.0), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185.peel

bb.ai:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175.peel
  %i.ef = load i32, ptr %i.dz, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185.peel: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i186.peel = phi i32 [ %i.ef, %bb.ai ], [ %i.ee, %bb.ah ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i186.peel, -1   ; 4 uses
  %spec.select336.peel = select i1 %i.eg, ptr null, ptr %.sroa.0266.0 ; 3 uses
  %.not.i.i2.i.i180.peel = icmp ne ptr %.sroa.0.0, null
  %or.cond.i.i3.i.i181.peel = select i1 %.not.i.i2.i.i180.peel, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i181.peel, label %bb.aj, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185.peel
  %i.eh = xor i1 %i.v, %i.eg
  br i1 %i.eh, label %bb.am, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge

bb.aj:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185.peel
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !148 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !149
  %i.em = icmp ult ptr %i.ej, %i.el
  br i1 %i.em, label %bb.al, label %bb.ak, !prof !78

bb.ak:                                            ; preds = %bb.aj
  %i.en = load ptr, ptr %.sroa.0.0, align 8, !tbaa !54
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call noundef i32 %i.ep(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183.peel

bb.al:                                            ; preds = %bb.aj
  %i.er = load i32, ptr %i.ej, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183.peel: ; preds = %bb.al, %bb.ak
  %.0.i.i.i6.i.i184.peel = phi i32 [ %i.er, %bb.al ], [ %i.eq, %bb.ak ]
  %i.es = icmp eq i32 %.0.i.i.i6.i.i184.peel, -1
  br i1 %i.es, label %.split304.peel, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183.peel
  br i1 %i.eg, label %bb.am, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge

.split304.peel:                                   ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183.peel
  br i1 %i.eg, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge, label %bb.am

bb.am:                                            ; preds = %.split304.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel
  %.sroa.0.7303.peel = phi ptr [ %.sroa.0.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ], [ %.sroa.0.0, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ null, %.split304.peel ]
  %.not.i.i188.not.peel = icmp eq ptr %spec.select336.peel, null
  br i1 %.not.i.i188.not.peel, label %.peel.next.preheader, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.et = load ptr, ptr %i.do, align 8, !tbaa !148 ; 2 uses
  %i.eu = load ptr, ptr %i.dq, align 8, !tbaa !149
  %i.ev = icmp ult ptr %i.et, %i.eu
  br i1 %i.ev, label %bb.ap, label %bb.ao, !prof !78

bb.ao:                                            ; preds = %bb.an
  %i.ew = load ptr, ptr %.sroa.0266.0, align 8, !tbaa !54
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call noundef i32 %i.ey(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.0), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191.peel

bb.ap:                                            ; preds = %bb.an
  %i.fa = load i32, ptr %i.et, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191.peel: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i192.peel = phi i32 [ %i.fa, %bb.ap ], [ %i.ez, %bb.ao ] ; 2 uses
  %i.fb = icmp eq i32 %.0.i.i.i192.peel, -1
  %spec.select337.peel = select i1 %i.fb, ptr null, ptr %spec.select336.peel
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191.peel, %bb.am
  %.1291370.ph = phi i32 [ -1, %bb.am ], [ %.0.i.i.i192.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191.peel ]
  %.sroa.0266.1367.ph = phi ptr [ null, %bb.am ], [ %spec.select337.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191.peel ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193
  %.0118374 = phi i32 [ %.1119, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %spec.select157.peel, %.peel.next.preheader ] ; 6 uses
  %.0125373 = phi i8 [ %.1126, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ 1, %.peel.next.preheader ] ; 3 uses
  %.0137371 = phi i32 [ %.3140, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %spec.select.peel, %.peel.next.preheader ] ; 9 uses
  %.1291370 = phi i32 [ %.0.i.i190, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %.1291370.ph, %.peel.next.preheader ] ; 13 uses
  %.sroa.0.1369 = phi ptr [ %.sroa.0.7303, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %.sroa.0.7303.peel, %.peel.next.preheader ] ; 14 uses
  %.sroa.0266.1367 = phi ptr [ %.sroa.0266.14, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %.sroa.0266.1367.ph, %.peel.next.preheader ] ; 15 uses
  %i.fc = load i8, ptr %i.db, align 8, !tbaa !125, !range !101, !noundef !102
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.peel.next
  %i.fe = load i32, ptr %i.cz, align 4, !tbaa !128
  %i.ff = icmp eq i32 %.1291370, %i.fe
  br i1 %i.ff, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.peel.next
  %i.fg = load i32, ptr %i.dc, align 8, !tbaa !130
  %i.fh = icmp eq i32 %.1291370, %i.fg
  br i1 %i.fh, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fi = load i32, ptr %i.dd, align 8, !tbaa !119
  %i.fj = icmp ne i32 %.1291370, %i.fi
  %10 = trunc nuw i8 %.0125373 to i1              ; 2 uses
  %i.fk = icmp ne i32 %.0137371, 10
  %or.cond.not = and i1 %i.fk, %10
  %or.cond = select i1 %i.fj, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %12, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fl = add nsw i32 %.0118374, 1
  %spec.select = select i1 %i.de, i32 8, i32 %.0137371 ; 2 uses
  %11 = icmp eq i32 %spec.select, 8
  %spec.select157 = select i1 %11, i32 0, i32 %i.fl
  br label %bb.ax

12:                                               ; preds = %bb.as
  br i1 %10, label %bb.au, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit

bb.au:                                            ; preds = %12
  %i.fm = load i32, ptr %i.df, align 8, !tbaa !119
  %i.fn = icmp eq i32 %.1291370, %i.fm
  br i1 %i.fn, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fo = load i32, ptr %i.da, align 4, !tbaa !119
  %i.fp = icmp eq i32 %.1291370, %i.fo
  %i.fq = icmp eq i32 %.0137371, 16
  %i.fr = select i1 %i.de, i1 true, i1 %i.fq
  %or.cond502 = select i1 %i.fp, i1 %i.fr, i1 false
  br i1 %or.cond502, label %bb.ax, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit

bb.aw:                                            ; preds = %bb.au
  %.old = icmp eq i32 %.0137371, 16
  %.old501 = select i1 %i.de, i1 true, i1 %.old
  br i1 %.old501, label %bb.ax, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit

bb.ax:                                            ; preds = %bb.av, %bb.at, %bb.aw
  %.3140 = phi i32 [ 16, %bb.aw ], [ %spec.select, %bb.at ], [ 16, %bb.av ] ; 5 uses
  %.1126 = phi i8 [ 0, %bb.aw ], [ 1, %bb.at ], [ 0, %bb.av ] ; 5 uses
  %.1119 = phi i32 [ 0, %bb.aw ], [ %spec.select157, %bb.at ], [ 0, %bb.av ] ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0266.1367, i64 16 ; 4 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !148 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0266.1367, i64 24 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !149 ; 2 uses
  %i.fw = icmp ult ptr %i.ft, %i.fv
  br i1 %i.fw, label %bb.ay, label %bb.az, !prof !78

bb.ay:                                            ; preds = %bb.ax
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 2 uses
  store ptr %i.fx, ptr %i.fs, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175

bb.az:                                            ; preds = %bb.ax
  %i.fy = load ptr, ptr %.sroa.0266.1367, align 8, !tbaa !54
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 80
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = call noundef i32 %i.ga(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.1367), !inline_history !28 ; 0 uses
  %.pre531 = load ptr, ptr %i.fs, align 8, !tbaa !148
  %.pre532 = load ptr, ptr %i.fu, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175: ; preds = %bb.az, %bb.ay
  %i.gc = phi ptr [ %.pre532, %bb.az ], [ %i.fv, %bb.ay ]
  %i.gd = phi ptr [ %.pre531, %bb.az ], [ %i.fx, %bb.ay ] ; 2 uses
  %i.ge = icmp ult ptr %i.gd, %i.gc
  br i1 %i.ge, label %bb.ba, label %bb.bb, !prof !78

bb.ba:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185

bb.bb:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit175
  %i.gg = load ptr, ptr %.sroa.0266.1367, align 8, !tbaa !54
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 72
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = call noundef i32 %i.gi(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.1367), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i186 = phi i32 [ %i.gf, %bb.ba ], [ %i.gj, %bb.bb ]
  %i.gk = icmp eq i32 %.0.i.i.i.i.i186, -1        ; 4 uses
  %spec.select336 = select i1 %i.gk, ptr null, ptr %.sroa.0266.1367 ; 3 uses
  %.not.i.i2.i.i180 = icmp ne ptr %.sroa.0.1369, null
  %or.cond.i.i3.i.i181 = select i1 %.not.i.i2.i.i180, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i181, label %bb.bc, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187

bb.bc:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.1369, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !148 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.1369, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !149
  %i.gp = icmp ult ptr %i.gm, %i.go
  br i1 %i.gp, label %bb.bd, label %bb.be, !prof !78

bb.bd:                                            ; preds = %bb.bc
  %i.gq = load i32, ptr %i.gm, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183

bb.be:                                            ; preds = %bb.bc
  %i.gr = load ptr, ptr %.sroa.0.1369, align 8, !tbaa !54
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = call noundef i32 %i.gt(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.1369), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183: ; preds = %bb.be, %bb.bd
  %.0.i.i.i6.i.i184 = phi i32 [ %i.gq, %bb.bd ], [ %i.gu, %bb.be ]
  %i.gv = icmp eq i32 %.0.i.i.i6.i.i184, -1
  br i1 %i.gv, label %.split304, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183
  br i1 %i.gk, label %bb.bf, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit

.split304:                                        ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183
  br i1 %i.gk, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit, label %bb.bf

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i185
  %i.gw = xor i1 %i.v, %i.gk
  br i1 %i.gw, label %bb.bf, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit

bb.bf:                                            ; preds = %.split304, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187
  %.sroa.0.7303 = phi ptr [ %.sroa.0.1369, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge ], [ %.sroa.0.1369, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ null, %.split304 ] ; 2 uses
  %.not.i.i188.not = icmp eq ptr %spec.select336, null
  br i1 %.not.i.i188.not, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gx = load ptr, ptr %i.fs, align 8, !tbaa !148 ; 2 uses
  %i.gy = load ptr, ptr %i.fu, align 8, !tbaa !149
  %i.gz = icmp ult ptr %i.gx, %i.gy
  br i1 %i.gz, label %bb.bh, label %bb.bi, !prof !78

bb.bh:                                            ; preds = %bb.bg
  %i.ha = load i32, ptr %i.gx, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191

bb.bi:                                            ; preds = %bb.bg
  %i.hb = load ptr, ptr %.sroa.0266.1367, align 8, !tbaa !54
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = call noundef i32 %i.hd(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.1367), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i192 = phi i32 [ %i.ha, %bb.bh ], [ %i.he, %bb.bi ] ; 2 uses
  %i.hf = icmp eq i32 %.0.i.i.i192, -1
  %spec.select337 = select i1 %i.hf, ptr null, ptr %spec.select336
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191, %bb.bf
  %.sroa.0266.14 = phi ptr [ null, %bb.bf ], [ %spec.select337, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191 ] ; 2 uses
  %.0.i.i190 = phi i32 [ -1, %bb.bf ], [ %.0.i.i.i192, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i191 ] ; 2 uses
  %i.hg = trunc nuw i8 %.1126 to i1
  br i1 %i.hg, label %.peel.next, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit, !llvm.loop !318

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit: ; preds = %.split304, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187, %bb.ar, %bb.aq, %bb.aw, %bb.av, %12, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193
  %.1130.lcssa.ph.ph = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ false, %12 ], [ false, %bb.av ], [ false, %bb.aw ], [ false, %bb.aq ], [ false, %bb.ar ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge ], [ true, %.split304 ]
  %.sroa.0266.3.ph.ph = phi ptr [ %.sroa.0266.14, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %.sroa.0266.1367, %12 ], [ %.sroa.0266.1367, %bb.av ], [ %.sroa.0266.1367, %bb.aw ], [ %.sroa.0266.1367, %bb.aq ], [ %.sroa.0266.1367, %bb.ar ], [ %spec.select336, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.sroa.0266.1367, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge ], [ null, %.split304 ]
  %.sroa.0.2.ph.ph = phi ptr [ %.sroa.0.7303, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %.sroa.0.1369, %12 ], [ %.sroa.0.1369, %bb.av ], [ %.sroa.0.1369, %bb.aw ], [ %.sroa.0.1369, %bb.aq ], [ %.sroa.0.1369, %bb.ar ], [ %.sroa.0.1369, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.sroa.0.1369, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge ], [ null, %.split304 ]
  %.3.ph.ph = phi i32 [ %.0.i.i190, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %.1291370, %12 ], [ %.1291370, %bb.av ], [ %.1291370, %bb.aw ], [ %.1291370, %bb.aq ], [ %.1291370, %bb.ar ], [ %.1291370, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.1291370, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge ], [ %.1291370, %.split304 ]
  %.4141.ph.ph = phi i32 [ %.3140, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %.0137371, %12 ], [ %.0137371, %bb.av ], [ %.0137371, %bb.aw ], [ %.0137371, %bb.aq ], [ %.0137371, %bb.ar ], [ %.3140, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.3140, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge ], [ %.3140, %.split304 ]
  %.2127.ph.ph = phi i8 [ 0, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ 0, %12 ], [ 1, %bb.av ], [ 1, %bb.aw ], [ %.0125373, %bb.aq ], [ %.0125373, %bb.ar ], [ %.1126, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.1126, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge ], [ %.1126, %.split304 ]
  %.2120.ph.ph = phi i32 [ %.1119, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193 ], [ %.0118374, %12 ], [ %.0118374, %bb.av ], [ %.0118374, %bb.aw ], [ %.0118374, %bb.aq ], [ %.0118374, %bb.ar ], [ %.1119, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187 ], [ %.1119, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge ], [ %.1119, %.split304 ]
  %i.hh = trunc nuw i8 %.2127.ph.ph to i1
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel, %.split304.peel, %bb.ab, %bb.ac, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit, %bb.ad, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread
  %i.hi = phi ptr [ %i.cy, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ %i.cz, %bb.ab ], [ %i.cz, %bb.ad ], [ %i.cz, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %i.cz, %bb.ac ], [ %i.cz, %.split304.peel ], [ %i.cz, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %i.cz, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 2 uses
  %.0128.shrunk597 = phi i1 [ %.0128.shrunk.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ %i.ax, %bb.ab ], [ %i.ax, %bb.ad ], [ %i.ax, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %i.ax, %bb.ac ], [ %i.ax, %.split304.peel ], [ %i.ax, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %i.ax, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 2 uses
  %.1130.lcssa = phi i1 [ true, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ false, %bb.ab ], [ false, %bb.ad ], [ %.1130.lcssa.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ false, %bb.ac ], [ true, %.split304.peel ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 2 uses
  %.sroa.0266.3 = phi ptr [ %.sroa.0266.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ %.sroa.0266.0, %bb.ab ], [ %.sroa.0266.0, %bb.ad ], [ %.sroa.0266.3.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %.sroa.0266.0, %bb.ac ], [ null, %.split304.peel ], [ %spec.select336.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %.sroa.0266.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 27 uses
  %.sroa.26.2 = phi i32 [ %.sroa.26.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ %.sroa.26.0, %bb.ab ], [ %.sroa.26.0, %bb.ad ], [ -1, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %.sroa.26.0, %bb.ac ], [ -1, %.split304.peel ], [ -1, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 7 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ %.sroa.0.0, %bb.ab ], [ %.sroa.0.0, %bb.ad ], [ %.sroa.0.2.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %.sroa.0.0, %bb.ac ], [ null, %.split304.peel ], [ %.sroa.0.0, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %.sroa.0.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 14 uses
  %.3 = phi i32 [ %.0290.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ %.0290, %bb.ab ], [ %.0290, %bb.ad ], [ %.3.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %.0290, %bb.ac ], [ %.0290, %.split304.peel ], [ %.0290, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %.0290, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 11 uses
  %.4141 = phi i32 [ %i.i, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ %i.i, %bb.ab ], [ %i.i, %bb.ad ], [ %.4141.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ %i.i, %bb.ac ], [ %spec.select.peel, %.split304.peel ], [ %spec.select.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %spec.select.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 3 uses
  %.2127 = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ false, %bb.ab ], [ false, %bb.ad ], [ %i.hh, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ false, %bb.ac ], [ true, %.split304.peel ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ]
  %.2120 = phi i32 [ 0, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit174.thread ], [ 0, %bb.ab ], [ 0, %bb.ad ], [ %.2120.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge.loopexit.loopexit ], [ 0, %bb.ac ], [ %spec.select157.peel, %.split304.peel ], [ %spec.select157.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187.peel ], [ %spec.select157.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i183._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit187_crit_edge.peel ] ; 10 uses
  %i.hj = icmp eq i32 %.4141, 16
  %i.hk = select i1 %i.hj, i32 22, i32 %.4141     ; 3 uses
  %i.hl = zext nneg i32 %i.hk to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.hm, ptr %9, align 8, !tbaa !64
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i64 0, ptr %i.hn, align 8, !tbaa !67
  store i8 0, ptr %i.hm, align 8, !tbaa !55
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !125, !range !101, !noundef !102
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 32)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit193._crit_edge
  %i.hr = select i1 %.0128.shrunk597, i64 -9223372036854775808, i64 9223372036854775807 ; 4 uses
  %i.hs = zext nneg i32 %.4141 to i64             ; 3 uses
  %i.ht = udiv i64 %i.hr, %i.hs                   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.hw = load i8, ptr %i.hv, align 8, !tbaa !129, !range !101, !noundef !102
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %.preheader, label %.preheader352

.preheader352:                                    ; preds = %bb.bk
  br i1 %.1130.lcssa, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread311, label %.lr.ph442

.lr.ph442:                                        ; preds = %.preheader352
  %i.hy = icmp ult i32 %i.hk, 11                  ; 2 uses
  %i.hz = or disjoint i32 %i.hk, 48               ; 2 uses
  br i1 %i.hy, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph442
  %i.ia = add i32 %.3, -48                        ; 2 uses
  %or.cond.i.peel = icmp ult i32 %i.ia, 10
  br i1 %or.cond.i.peel, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ib = add i32 %.3, -97
  %or.cond3.i.peel = icmp ult i32 %i.ib, 6
  br i1 %or.cond3.i.peel, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ic = add nsw i32 %.3, -55
  %i.id = add i32 %.3, -71
  %or.cond339.peel = icmp ult i32 %i.id, -6
  br i1 %or.cond339.peel, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread311, label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  %i.ie = add nsw i32 %.3, -87
  br label %bb.bq

bb.bp:                                            ; preds = %.lr.ph442
  %i.if = icmp sgt i32 %.3, 47
  %i.ig = icmp samesign ult i32 %.3, %i.hz
  %or.cond24.i.peel = select i1 %i.if, i1 %i.ig, i1 false
  %i.ih = add nsw i32 %.3, -48
  br i1 %or.cond24.i.peel, label %bb.bq, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread311

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bl
  %.0.i309.peel = phi i32 [ %i.ic, %bb.bn ], [ %i.ie, %bb.bo ], [ %i.ia, %bb.bl ], [ %i.ih, %bb.bp ]
  %i.ii = sext i32 %.0.i309.peel to i64           ; 4 uses
  %i.ij = add nsw i32 %.2120, 1                   ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0266.3, i64 16 ; 4 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !148 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0266.3, i64 24 ; 3 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !149 ; 2 uses
  %i.io = icmp ult ptr %i.il, %i.in
  br i1 %i.io, label %bb.bs, label %bb.br, !prof !78

bb.br:                                            ; preds = %bb.bq
  %i.ip = load ptr, ptr %.sroa.0266.3, align 8, !tbaa !54
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 80
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = invoke noundef i32 %i.ir(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.3)
          to label %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !30 ; 0 uses

._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel_crit_edge: ; preds = %bb.br
  %.pre533 = load ptr, ptr %i.ik, align 8, !tbaa !148
  %.pre534 = load ptr, ptr %i.im, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel

bb.bs:                                            ; preds = %bb.bq
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 4 ; 2 uses
  store ptr %i.it, ptr %i.ik, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel: ; preds = %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel_crit_edge, %bb.bs
  %i.iu = phi ptr [ %.pre534, %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel_crit_edge ], [ %i.in, %bb.bs ]
  %i.iv = phi ptr [ %.pre533, %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel_crit_edge ], [ %i.it, %bb.bs ] ; 2 uses
  %i.iw = icmp ult ptr %i.iv, %i.iu
  br i1 %i.iw, label %bb.bu, label %bb.bt, !prof !78

bb.bt:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel
  %i.ix = load ptr, ptr %.sroa.0266.3, align 8, !tbaa !54
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 72
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = invoke noundef i32 %i.iz(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.3)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i204.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !31

bb.bu:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit194.peel
  %i.jb = load i32, ptr %i.iv, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i204.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i204.peel: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i205.peel = phi i32 [ %i.jb, %bb.bu ], [ %i.ja, %bb.bt ]
  %i.jc = icmp eq i32 %.0.i.i.i.i.i205.peel, -1   ; 4 uses
  %spec.select340.peel = select i1 %i.jc, ptr null, ptr %.sroa.0266.3 ; 3 uses
  %.not.i.i2.i.i199.peel = icmp ne ptr %.sroa.0.2, null
  %or.cond.i.i3.i.i200.peel = select i1 %.not.i.i2.i.i199.peel, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i200.peel, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i204.peel
  %i.jd = xor i1 %i.v, %i.jc
  br i1 %i.jd, label %bb.bz, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread311

bb.bw:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i204.peel
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !148 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !149
  %i.ji = icmp ult ptr %i.jf, %i.jh
  br i1 %i.ji, label %bb.by, label %bb.bx, !prof !78

bb.bx:                                            ; preds = %bb.bw
  %i.jj = load ptr, ptr %.sroa.0.2, align 8, !tbaa !54
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 72
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = invoke noundef i32 %i.jl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.2)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !31

bb.by:                                            ; preds = %bb.bw
  %i.jn = load i32, ptr %i.jf, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202.peel: ; preds = %bb.by, %bb.bx
  %.0.i.i.i6.i.i203.peel = phi i32 [ %i.jn, %bb.by ], [ %i.jm, %bb.bx ]
  %i.jo = icmp eq i32 %.0.i.i.i6.i.i203.peel, -1
  br i1 %i.jo, label %.split315.peel, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202._crit_edge.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202._crit_edge.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202.peel
  br i1 %i.jc, label %bb.bz, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread311

.split315.peel:                                   ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202.peel
  br i1 %i.jc, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread311, label %bb.bz

bb.bz:                                            ; preds = %.split315.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202._crit_edge.peel, %bb.bv
  %.sroa.0.8314.peel = phi ptr [ %.sroa.0.2, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i202._crit_edge.peel ], [ %.sroa.0.2, %bb.bv ], [ null, %.split315.peel ]
  %.not.i.i209.not.peel = icmp eq ptr %spec.select340.peel, null
  br i1 %.not.i.i209.not.peel, label %.peel.next515.preheader, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jp = load ptr, ptr %i.ik, align 8, !tbaa !148 ; 2 uses
  %i.jq = load ptr, ptr %i.im, align 8, !tbaa !149
  %i.jr = icmp ult ptr %i.jp, %i.jq
  br i1 %i.jr, label %bb.cc, label %bb.cb, !prof !78

bb.cb:                                            ; preds = %bb.ca
  %i.js = load ptr, ptr %.sroa.0266.3, align 8, !tbaa !54
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 72
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = invoke noundef i32 %i.ju(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0266.3)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i212.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !32

bb.cc:                                            ; preds = %bb.ca
  %i.jw = load i32, ptr %i.jp, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i212.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i212.peel: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i213.peel = phi i32 [ %i.jw, %bb.cc ], [ %i.jv, %bb.cb ] ; 2 uses
  %i.jx = icmp eq i32 %.0.i.i.i213.peel, -1
  %spec.select341.peel = select i1 %i.jx, ptr null, ptr %spec.select340.peel
  br label %.peel.next515.preheader

.peel.next515.preheader:                          ; preds = %bb.bz, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i212.peel
  %.4293438.ph = phi i32 [ -1, %bb.bz ], [ %.0.i.i.i213.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i212.peel ]
  %.sroa.0266.4435.ph = phi ptr [ null, %bb.bz ], [ %spec.select341.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i212.peel ]
  br label %.peel.next515

.preheader:                                       ; preds = %bb.bk
  br i1 %.1130.lcssa, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread311, label %.lr.ph470

end_hunk_10
begin_hunk_11_@_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE14_M_extract_intB5cxx11IyEES3_S3_S3_RSt8ios_baseRSt12_Ios_IostateRT_:bb.a

.split:                                           ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i
  br i1 %i.ah, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread, label %bb.h

_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEE9_M_at_eofEv.exit.i.i
  %i.ai = icmp ne i32 %.0.i.i.i.i, -1
  %i.aj = xor i1 %i.v, %i.ai
  br i1 %i.aj, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread, label %bb.h

bb.h:                                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %.split, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.5296 = phi ptr [ null, %.split ], [ %3, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %3, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ] ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %.not.i.i = icmp ne ptr %.sroa.0265.9, null
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0265.9, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !148 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0265.9, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !149
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !78

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %.sroa.0265.9, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.9), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i32 [ %i.aq, %bb.j ], [ %i.au, %bb.k ] ; 2 uses
  %i.av = icmp eq i32 %.0.i.i.i, -1
  %spec.select330 = select i1 %i.av, ptr null, ptr %.sroa.0265.9
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i, %bb.h
  %.sroa.0265.10 = phi ptr [ %.sroa.0265.9, %bb.h ], [ %spec.select330, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i ] ; 13 uses
  %.0.i.i = phi i32 [ %2, %bb.h ], [ %.0.i.i.i, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i ] ; 10 uses
  %i.aw = load i32, ptr %i.ak, align 4, !tbaa !119
  %i.ax = icmp eq i32 %.0.i.i, %i.aw              ; 11 uses
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !119
  %i.ba = icmp eq i32 %.0.i.i, %i.az
  br i1 %i.ba, label %bb.m, label %.lr.ph

bb.m:                                             ; preds = %bb.l, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !125, !range !101, !noundef !102
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !128
  %i.bg = icmp eq i32 %.0.i.i, %i.bf
  br i1 %i.bg, label %.lr.ph, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !130
  %i.bj = icmp eq i32 %.0.i.i, %i.bi
  br i1 %i.bj, label %.lr.ph, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0265.10, i64 16 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !148 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0265.10, i64 24 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !149 ; 2 uses
  %i.bo = icmp ult ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.q, label %bb.r, !prof !78

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit

bb.r:                                             ; preds = %bb.p
  %i.bq = load ptr, ptr %.sroa.0265.10, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.10), !inline_history !28 ; 0 uses
  %.pre = load ptr, ptr %i.bk, align 8, !tbaa !148
  %.pre525 = load ptr, ptr %i.bm, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit: ; preds = %bb.r, %bb.q
  %i.bu = phi ptr [ %.pre525, %bb.r ], [ %i.bn, %bb.q ]
  %i.bv = phi ptr [ %.pre, %bb.r ], [ %i.bp, %bb.q ] ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.bu
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !78

bb.s:                                             ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i166

bb.t:                                             ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit
  %i.by = load ptr, ptr %.sroa.0265.10, align 8, !tbaa !54
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef i32 %i.ca(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.10), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i166

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i166: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i167 = phi i32 [ %i.bx, %bb.s ], [ %i.cb, %bb.t ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i167, -1        ; 4 uses
  %spec.select332 = select i1 %i.cc, ptr null, ptr %.sroa.0265.10 ; 3 uses
  %.not.i.i2.i.i161 = icmp ne ptr %.sroa.0.5296, null
  %or.cond.i.i3.i.i162 = select i1 %.not.i.i2.i.i161, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i162, label %bb.u, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.u:                                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i166
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.5296, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !148 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.5296, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !149
  %i.ch = icmp ult ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.v, label %bb.w, !prof !78

bb.v:                                             ; preds = %bb.u
  %i.ci = load i32, ptr %i.ce, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164

bb.w:                                             ; preds = %bb.u
  %i.cj = load ptr, ptr %.sroa.0.5296, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.5296), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164: ; preds = %bb.w, %bb.v
  %.0.i.i.i6.i.i165 = phi i32 [ %i.ci, %bb.v ], [ %i.cm, %bb.w ]
  %i.cn = icmp eq i32 %.0.i.i.i6.i.i165, -1
  br i1 %i.cn, label %.split298, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164
  br i1 %i.cc, label %bb.x, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread

.split298:                                        ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164
  br i1 %i.cc, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread, label %bb.x

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i166
  %i.co = xor i1 %i.v, %i.cc
  br i1 %i.co, label %bb.x, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread

bb.x:                                             ; preds = %.split298, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.sroa.0.6297 = phi ptr [ %.sroa.0.5296, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0.5296, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split298 ] ; 2 uses
  %.not.i.i168.not = icmp eq ptr %spec.select332, null
  br i1 %.not.i.i168.not, label %.lr.ph, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %i.bk, align 8, !tbaa !148 ; 2 uses
  %i.cq = load ptr, ptr %i.bm, align 8, !tbaa !149
  %i.cr = icmp ult ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.z, label %bb.aa, !prof !78

bb.z:                                             ; preds = %bb.y
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171

bb.aa:                                            ; preds = %bb.y
  %i.ct = load ptr, ptr %.sroa.0265.10, align 8, !tbaa !54
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef i32 %i.cv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.10), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171: ; preds = %bb.aa, %bb.z
  %.0.i.i.i172 = phi i32 [ %i.cs, %bb.z ], [ %i.cw, %bb.aa ] ; 2 uses
  %i.cx = icmp eq i32 %.0.i.i.i172, -1
  %spec.select333 = select i1 %i.cx, ptr null, ptr %spec.select332
  br label %.lr.ph

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread: ; preds = %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split298, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %.split, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge
  %.sroa.0265.0.ph = phi ptr [ %.sroa.0265.10, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0265.9, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %.sroa.0265.9, %.split ], [ %spec.select332, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split298 ], [ %.sroa.0265.9, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.26.0.ph = phi i32 [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %2, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %2, %.split ], [ -1, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ -1, %.split298 ], [ %2, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.5296, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ %3, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ null, %.split ], [ %.sroa.0.5296, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ null, %.split298 ], [ %3, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0289.ph = phi i32 [ %.0.i.i, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ 0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ 0, %.split ], [ %.0.i.i, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %.0.i.i, %.split298 ], [ 0, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %.0127.shrunk.ph = phi i1 [ %i.ax, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i164._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ false, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i._ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit_crit_edge ], [ false, %.split ], [ %i.ax, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ], [ %i.ax, %.split298 ], [ false, %_ZSteqIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge

.lr.ph:                                           ; preds = %bb.o, %bb.n, %bb.l, %bb.x, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171
  %.sroa.0265.0 = phi ptr [ %.sroa.0265.10, %bb.l ], [ %.sroa.0265.10, %bb.n ], [ %.sroa.0265.10, %bb.o ], [ %spec.select333, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171 ], [ null, %bb.x ] ; 13 uses
  %.sroa.26.0 = phi i32 [ %2, %bb.l ], [ %2, %bb.n ], [ %2, %bb.o ], [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171 ], [ -1, %bb.x ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.5296, %bb.l ], [ %.sroa.0.5296, %bb.n ], [ %.sroa.0.5296, %bb.o ], [ %.sroa.0.6297, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171 ], [ %.sroa.0.6297, %bb.x ] ; 12 uses
  %.0289 = phi i32 [ %.0.i.i, %bb.l ], [ %.0.i.i, %bb.n ], [ %.0.i.i, %bb.o ], [ %.0.i.i.i172, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i171 ], [ -1, %bb.x ] ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %i.de = icmp eq i32 %i.e, 0                     ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.dg = load i8, ptr %i.db, align 8, !tbaa !125, !range !101, !noundef !102
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph
  %i.di = load i32, ptr %i.cz, align 4, !tbaa !128
  %i.dj = icmp eq i32 %.0289, %i.di
  br i1 %i.dj, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph
  %i.dk = load i32, ptr %i.dc, align 8, !tbaa !130
  %i.dl = icmp eq i32 %.0289, %i.dk
  br i1 %i.dl, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load i32, ptr %i.dd, align 8, !tbaa !119
  %.not589 = icmp eq i32 %.0289, %i.dm
  br i1 %.not589, label %bb.ae, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge

bb.ae:                                            ; preds = %bb.ad
  %spec.select.peel = select i1 %i.de, i32 8, i32 %i.i ; 4 uses
  %i.dn = or i1 %i.de, %i.f
  %not. = xor i1 %i.dn, true
  %spec.select156.peel = zext i1 %not. to i32     ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0265.0, i64 16 ; 4 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !148 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0265.0, i64 24 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !149 ; 2 uses
  %i.ds = icmp ult ptr %i.dp, %i.dr
  br i1 %i.ds, label %bb.ag, label %bb.af, !prof !78

bb.af:                                            ; preds = %bb.ae
  %i.dt = load ptr, ptr %.sroa.0265.0, align 8, !tbaa !54
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.0), !inline_history !28 ; 0 uses
  %.pre528 = load ptr, ptr %i.do, align 8, !tbaa !148
  %.pre529 = load ptr, ptr %i.dq, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174.peel

bb.ag:                                            ; preds = %bb.ae
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  store ptr %i.dx, ptr %i.do, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174.peel

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174.peel: ; preds = %bb.ag, %bb.af
  %i.dy = phi ptr [ %i.dr, %bb.ag ], [ %.pre529, %bb.af ]
  %i.dz = phi ptr [ %i.dx, %bb.ag ], [ %.pre528, %bb.af ] ; 2 uses
  %i.ea = icmp ult ptr %i.dz, %i.dy
  br i1 %i.ea, label %bb.ai, label %bb.ah, !prof !78

bb.ah:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174.peel
  %i.eb = load ptr, ptr %.sroa.0265.0, align 8, !tbaa !54
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef i32 %i.ed(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.0), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184.peel

bb.ai:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174.peel
  %i.ef = load i32, ptr %i.dz, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184.peel: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i185.peel = phi i32 [ %i.ef, %bb.ai ], [ %i.ee, %bb.ah ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i185.peel, -1   ; 4 uses
  %spec.select335.peel = select i1 %i.eg, ptr null, ptr %.sroa.0265.0 ; 3 uses
  %.not.i.i2.i.i179.peel = icmp ne ptr %.sroa.0.0, null
  %or.cond.i.i3.i.i180.peel = select i1 %.not.i.i2.i.i179.peel, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i180.peel, label %bb.aj, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184.peel
  %i.eh = xor i1 %i.v, %i.eg
  br i1 %i.eh, label %bb.am, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge

bb.aj:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184.peel
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !148 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !149
  %i.em = icmp ult ptr %i.ej, %i.el
  br i1 %i.em, label %bb.al, label %bb.ak, !prof !78

bb.ak:                                            ; preds = %bb.aj
  %i.en = load ptr, ptr %.sroa.0.0, align 8, !tbaa !54
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call noundef i32 %i.ep(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182.peel

bb.al:                                            ; preds = %bb.aj
  %i.er = load i32, ptr %i.ej, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182.peel: ; preds = %bb.al, %bb.ak
  %.0.i.i.i6.i.i183.peel = phi i32 [ %i.er, %bb.al ], [ %i.eq, %bb.ak ]
  %i.es = icmp eq i32 %.0.i.i.i6.i.i183.peel, -1
  br i1 %i.es, label %.split303.peel, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182.peel
  br i1 %i.eg, label %bb.am, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge

.split303.peel:                                   ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182.peel
  br i1 %i.eg, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge, label %bb.am

bb.am:                                            ; preds = %.split303.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel
  %.sroa.0.7302.peel = phi ptr [ %.sroa.0.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ], [ %.sroa.0.0, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ null, %.split303.peel ]
  %.not.i.i187.not.peel = icmp eq ptr %spec.select335.peel, null
  br i1 %.not.i.i187.not.peel, label %.peel.next.preheader, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.et = load ptr, ptr %i.do, align 8, !tbaa !148 ; 2 uses
  %i.eu = load ptr, ptr %i.dq, align 8, !tbaa !149
  %i.ev = icmp ult ptr %i.et, %i.eu
  br i1 %i.ev, label %bb.ap, label %bb.ao, !prof !78

bb.ao:                                            ; preds = %bb.an
  %i.ew = load ptr, ptr %.sroa.0265.0, align 8, !tbaa !54
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call noundef i32 %i.ey(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.0), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel

bb.ap:                                            ; preds = %bb.an
  %i.fa = load i32, ptr %i.et, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i191.peel = phi i32 [ %i.fa, %bb.ap ], [ %i.ez, %bb.ao ] ; 2 uses
  %i.fb = icmp eq i32 %.0.i.i.i191.peel, -1
  %spec.select336.peel = select i1 %i.fb, ptr null, ptr %spec.select335.peel
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel, %bb.am
  %.1290369.ph = phi i32 [ -1, %bb.am ], [ %.0.i.i.i191.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel ]
  %.sroa.0265.1366.ph = phi ptr [ null, %bb.am ], [ %spec.select336.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190.peel ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192
  %.0117373 = phi i32 [ %.1118, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %spec.select156.peel, %.peel.next.preheader ] ; 6 uses
  %.0124372 = phi i8 [ %.1125, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ 1, %.peel.next.preheader ] ; 3 uses
  %.0136370 = phi i32 [ %.3139, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %spec.select.peel, %.peel.next.preheader ] ; 9 uses
  %.1290369 = phi i32 [ %.0.i.i189, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.1290369.ph, %.peel.next.preheader ] ; 13 uses
  %.sroa.0.1368 = phi ptr [ %.sroa.0.7302, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.sroa.0.7302.peel, %.peel.next.preheader ] ; 14 uses
  %.sroa.0265.1366 = phi ptr [ %.sroa.0265.14, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.sroa.0265.1366.ph, %.peel.next.preheader ] ; 15 uses
  %i.fc = load i8, ptr %i.db, align 8, !tbaa !125, !range !101, !noundef !102
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.peel.next
  %i.fe = load i32, ptr %i.cz, align 4, !tbaa !128
  %i.ff = icmp eq i32 %.1290369, %i.fe
  br i1 %i.ff, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.peel.next
  %i.fg = load i32, ptr %i.dc, align 8, !tbaa !130
  %i.fh = icmp eq i32 %.1290369, %i.fg
  br i1 %i.fh, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fi = load i32, ptr %i.dd, align 8, !tbaa !119
  %i.fj = icmp ne i32 %.1290369, %i.fi
  %10 = trunc nuw i8 %.0124372 to i1              ; 2 uses
  %i.fk = icmp ne i32 %.0136370, 10
  %or.cond.not = and i1 %i.fk, %10
  %or.cond = select i1 %i.fj, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %12, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fl = add nsw i32 %.0117373, 1
  %spec.select = select i1 %i.de, i32 8, i32 %.0136370 ; 2 uses
  %11 = icmp eq i32 %spec.select, 8
  %spec.select156 = select i1 %11, i32 0, i32 %i.fl
  br label %bb.ax

12:                                               ; preds = %bb.as
  br i1 %10, label %bb.au, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.au:                                            ; preds = %12
  %i.fm = load i32, ptr %i.df, align 8, !tbaa !119
  %i.fn = icmp eq i32 %.1290369, %i.fm
  br i1 %i.fn, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fo = load i32, ptr %i.da, align 4, !tbaa !119
  %i.fp = icmp eq i32 %.1290369, %i.fo
  %i.fq = icmp eq i32 %.0136370, 16
  %i.fr = select i1 %i.de, i1 true, i1 %i.fq
  %or.cond501 = select i1 %i.fp, i1 %i.fr, i1 false
  br i1 %or.cond501, label %bb.ax, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.aw:                                            ; preds = %bb.au
  %.old = icmp eq i32 %.0136370, 16
  %.old500 = select i1 %i.de, i1 true, i1 %.old
  br i1 %.old500, label %bb.ax, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.ax:                                            ; preds = %bb.av, %bb.at, %bb.aw
  %.3139 = phi i32 [ 16, %bb.aw ], [ %spec.select, %bb.at ], [ 16, %bb.av ] ; 5 uses
  %.1125 = phi i8 [ 0, %bb.aw ], [ 1, %bb.at ], [ 0, %bb.av ] ; 5 uses
  %.1118 = phi i32 [ 0, %bb.aw ], [ %spec.select156, %bb.at ], [ 0, %bb.av ] ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0265.1366, i64 16 ; 4 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !148 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0265.1366, i64 24 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !149 ; 2 uses
  %i.fw = icmp ult ptr %i.ft, %i.fv
  br i1 %i.fw, label %bb.ay, label %bb.az, !prof !78

bb.ay:                                            ; preds = %bb.ax
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 2 uses
  store ptr %i.fx, ptr %i.fs, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174

bb.az:                                            ; preds = %bb.ax
  %i.fy = load ptr, ptr %.sroa.0265.1366, align 8, !tbaa !54
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 80
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = call noundef i32 %i.ga(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.1366), !inline_history !28 ; 0 uses
  %.pre530 = load ptr, ptr %i.fs, align 8, !tbaa !148
  %.pre531 = load ptr, ptr %i.fu, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174: ; preds = %bb.az, %bb.ay
  %i.gc = phi ptr [ %.pre531, %bb.az ], [ %i.fv, %bb.ay ]
  %i.gd = phi ptr [ %.pre530, %bb.az ], [ %i.fx, %bb.ay ] ; 2 uses
  %i.ge = icmp ult ptr %i.gd, %i.gc
  br i1 %i.ge, label %bb.ba, label %bb.bb, !prof !78

bb.ba:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184

bb.bb:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit174
  %i.gg = load ptr, ptr %.sroa.0265.1366, align 8, !tbaa !54
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 72
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = call noundef i32 %i.gi(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.1366), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i185 = phi i32 [ %i.gf, %bb.ba ], [ %i.gj, %bb.bb ]
  %i.gk = icmp eq i32 %.0.i.i.i.i.i185, -1        ; 4 uses
  %spec.select335 = select i1 %i.gk, ptr null, ptr %.sroa.0265.1366 ; 3 uses
  %.not.i.i2.i.i179 = icmp ne ptr %.sroa.0.1368, null
  %or.cond.i.i3.i.i180 = select i1 %.not.i.i2.i.i179, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i180, label %bb.bc, label %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186

bb.bc:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.1368, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !148 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.1368, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !149
  %i.gp = icmp ult ptr %i.gm, %i.go
  br i1 %i.gp, label %bb.bd, label %bb.be, !prof !78

bb.bd:                                            ; preds = %bb.bc
  %i.gq = load i32, ptr %i.gm, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182

bb.be:                                            ; preds = %bb.bc
  %i.gr = load ptr, ptr %.sroa.0.1368, align 8, !tbaa !54
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = call noundef i32 %i.gt(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.1368), !inline_history !29
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182: ; preds = %bb.be, %bb.bd
  %.0.i.i.i6.i.i183 = phi i32 [ %i.gq, %bb.bd ], [ %i.gu, %bb.be ]
  %i.gv = icmp eq i32 %.0.i.i.i6.i.i183, -1
  br i1 %i.gv, label %.split303, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182
  br i1 %i.gk, label %bb.bf, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit

.split303:                                        ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182
  br i1 %i.gk, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit, label %bb.bf

_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i184
  %i.gw = xor i1 %i.v, %i.gk
  br i1 %i.gw, label %bb.bf, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit

bb.bf:                                            ; preds = %.split303, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186
  %.sroa.0.7302 = phi ptr [ %.sroa.0.1368, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ %.sroa.0.1368, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ null, %.split303 ] ; 2 uses
  %.not.i.i187.not = icmp eq ptr %spec.select335, null
  br i1 %.not.i.i187.not, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gx = load ptr, ptr %i.fs, align 8, !tbaa !148 ; 2 uses
  %i.gy = load ptr, ptr %i.fu, align 8, !tbaa !149
  %i.gz = icmp ult ptr %i.gx, %i.gy
  br i1 %i.gz, label %bb.bh, label %bb.bi, !prof !78

bb.bh:                                            ; preds = %bb.bg
  %i.ha = load i32, ptr %i.gx, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190

bb.bi:                                            ; preds = %bb.bg
  %i.hb = load ptr, ptr %.sroa.0265.1366, align 8, !tbaa !54
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = call noundef i32 %i.hd(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.1366), !inline_history !27
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i191 = phi i32 [ %i.ha, %bb.bh ], [ %i.he, %bb.bi ] ; 2 uses
  %i.hf = icmp eq i32 %.0.i.i.i191, -1
  %spec.select336 = select i1 %i.hf, ptr null, ptr %spec.select335
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190, %bb.bf
  %.sroa.0265.14 = phi ptr [ null, %bb.bf ], [ %spec.select336, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190 ] ; 2 uses
  %.0.i.i189 = phi i32 [ -1, %bb.bf ], [ %.0.i.i.i191, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i190 ] ; 2 uses
  %i.hg = trunc nuw i8 %.1125 to i1
  br i1 %i.hg, label %.peel.next, label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit, !llvm.loop !321

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit: ; preds = %.split303, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186, %bb.ar, %bb.aq, %bb.aw, %bb.av, %12, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192
  %.1129.lcssa.ph.ph = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ false, %12 ], [ false, %bb.av ], [ false, %bb.aw ], [ false, %bb.aq ], [ false, %bb.ar ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ true, %.split303 ]
  %.sroa.0265.3.ph.ph = phi ptr [ %.sroa.0265.14, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.sroa.0265.1366, %12 ], [ %.sroa.0265.1366, %bb.av ], [ %.sroa.0265.1366, %bb.aw ], [ %.sroa.0265.1366, %bb.aq ], [ %.sroa.0265.1366, %bb.ar ], [ %spec.select335, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.sroa.0265.1366, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ null, %.split303 ]
  %.sroa.0.2.ph.ph = phi ptr [ %.sroa.0.7302, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.sroa.0.1368, %12 ], [ %.sroa.0.1368, %bb.av ], [ %.sroa.0.1368, %bb.aw ], [ %.sroa.0.1368, %bb.aq ], [ %.sroa.0.1368, %bb.ar ], [ %.sroa.0.1368, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.sroa.0.1368, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ null, %.split303 ]
  %.3.ph.ph = phi i32 [ %.0.i.i189, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.1290369, %12 ], [ %.1290369, %bb.av ], [ %.1290369, %bb.aw ], [ %.1290369, %bb.aq ], [ %.1290369, %bb.ar ], [ %.1290369, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1290369, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ %.1290369, %.split303 ]
  %.4140.ph.ph = phi i32 [ %.3139, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.0136370, %12 ], [ %.0136370, %bb.av ], [ %.0136370, %bb.aw ], [ %.0136370, %bb.aq ], [ %.0136370, %bb.ar ], [ %.3139, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.3139, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ %.3139, %.split303 ]
  %.2126.ph.ph = phi i8 [ 0, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ 0, %12 ], [ 1, %bb.av ], [ 1, %bb.aw ], [ %.0124372, %bb.aq ], [ %.0124372, %bb.ar ], [ %.1125, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1125, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ %.1125, %.split303 ]
  %.2119.ph.ph = phi i32 [ %.1118, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192 ], [ %.0117373, %12 ], [ %.0117373, %bb.av ], [ %.0117373, %bb.aw ], [ %.0117373, %bb.aq ], [ %.0117373, %bb.ar ], [ %.1118, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186 ], [ %.1118, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge ], [ %.1118, %.split303 ]
  %i.hh = trunc nuw i8 %.2126.ph.ph to i1
  br label %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge

_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel, %.split303.peel, %bb.ab, %bb.ac, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit, %bb.ad, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread
  %i.hi = phi ptr [ %i.cy, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %i.cz, %bb.ab ], [ %i.cz, %bb.ad ], [ %i.cz, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.cz, %bb.ac ], [ %i.cz, %.split303.peel ], [ %i.cz, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %i.cz, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 2 uses
  %.0127.shrunk596 = phi i1 [ %.0127.shrunk.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %i.ax, %bb.ab ], [ %i.ax, %bb.ad ], [ %i.ax, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.ax, %bb.ac ], [ %i.ax, %.split303.peel ], [ %i.ax, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %i.ax, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ]
  %.1129.lcssa = phi i1 [ true, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ false, %bb.ab ], [ false, %bb.ad ], [ %.1129.lcssa.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ false, %bb.ac ], [ true, %.split303.peel ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 2 uses
  %.sroa.0265.3 = phi ptr [ %.sroa.0265.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %.sroa.0265.0, %bb.ab ], [ %.sroa.0265.0, %bb.ad ], [ %.sroa.0265.3.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.0265.0, %bb.ac ], [ null, %.split303.peel ], [ %spec.select335.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.sroa.0265.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 27 uses
  %.sroa.26.2 = phi i32 [ %.sroa.26.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %.sroa.26.0, %bb.ab ], [ %.sroa.26.0, %bb.ad ], [ -1, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.26.0, %bb.ac ], [ -1, %.split303.peel ], [ -1, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ -1, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 7 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %.sroa.0.0, %bb.ab ], [ %.sroa.0.0, %bb.ad ], [ %.sroa.0.2.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.sroa.0.0, %bb.ac ], [ null, %.split303.peel ], [ %.sroa.0.0, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.sroa.0.0, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 14 uses
  %.3 = phi i32 [ %.0289.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %.0289, %bb.ab ], [ %.0289, %bb.ad ], [ %.3.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %.0289, %bb.ac ], [ %.0289, %.split303.peel ], [ %.0289, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %.0289, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 11 uses
  %.4140 = phi i32 [ %i.i, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ %i.i, %bb.ab ], [ %i.i, %bb.ad ], [ %.4140.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ %i.i, %bb.ac ], [ %spec.select.peel, %.split303.peel ], [ %spec.select.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %spec.select.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 3 uses
  %.2126 = phi i1 [ false, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ false, %bb.ab ], [ false, %bb.ad ], [ %i.hh, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ false, %bb.ac ], [ true, %.split303.peel ], [ true, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ true, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ]
  %.2119 = phi i32 [ 0, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit173.thread ], [ 0, %bb.ab ], [ 0, %bb.ad ], [ %.2119.ph.ph, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge.loopexit.loopexit ], [ 0, %bb.ac ], [ %spec.select156.peel, %.split303.peel ], [ %spec.select156.peel, %_ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186.peel ], [ %spec.select156.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i182._ZStneIwSt11char_traitsIwEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit186_crit_edge.peel ] ; 10 uses
  %i.hj = icmp eq i32 %.4140, 16
  %i.hk = select i1 %i.hj, i32 22, i32 %.4140     ; 3 uses
  %i.hl = zext nneg i32 %i.hk to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.hm, ptr %9, align 8, !tbaa !64
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i64 0, ptr %i.hn, align 8, !tbaa !67
  store i8 0, ptr %i.hm, align 8, !tbaa !55
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !125, !range !101, !noundef !102
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 32)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj, %_ZNKSt19istreambuf_iteratorIwSt11char_traitsIwEEdeEv.exit192._crit_edge
  %i.hr = zext nneg i32 %.4140 to i64             ; 3 uses
  %i.hs = udiv i64 -1, %i.hr                      ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.hv = load i8, ptr %i.hu, align 8, !tbaa !129, !range !101, !noundef !102
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %.preheader, label %.preheader351

.preheader351:                                    ; preds = %bb.bk
  br i1 %.1129.lcssa, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310, label %.lr.ph441

.lr.ph441:                                        ; preds = %.preheader351
  %i.hx = icmp ult i32 %i.hk, 11                  ; 2 uses
  %i.hy = or disjoint i32 %i.hk, 48               ; 2 uses
  br i1 %i.hx, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph441
  %i.hz = add i32 %.3, -48                        ; 2 uses
  %or.cond.i.peel = icmp ult i32 %i.hz, 10
  br i1 %or.cond.i.peel, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ia = add i32 %.3, -97
  %or.cond3.i.peel = icmp ult i32 %i.ia, 6
  br i1 %or.cond3.i.peel, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ib = add nsw i32 %.3, -55
  %i.ic = add i32 %.3, -71
  %or.cond338.peel = icmp ult i32 %i.ic, -6
  br i1 %or.cond338.peel, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310, label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  %i.id = add nsw i32 %.3, -87
  br label %bb.bq

bb.bp:                                            ; preds = %.lr.ph441
  %i.ie = icmp sgt i32 %.3, 47
  %i.if = icmp samesign ult i32 %.3, %i.hy
  %or.cond24.i.peel = select i1 %i.ie, i1 %i.if, i1 false
  %i.ig = add nsw i32 %.3, -48
  br i1 %or.cond24.i.peel, label %bb.bq, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bl
  %.0.i308.peel = phi i32 [ %i.ib, %bb.bn ], [ %i.id, %bb.bo ], [ %i.hz, %bb.bl ], [ %i.ig, %bb.bp ]
  %i.ih = sext i32 %.0.i308.peel to i64           ; 4 uses
  %i.ii = add nsw i32 %.2119, 1                   ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0265.3, i64 16 ; 4 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !148 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0265.3, i64 24 ; 3 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !149 ; 2 uses
  %i.in = icmp ult ptr %i.ik, %i.im
  br i1 %i.in, label %bb.bs, label %bb.br, !prof !78

bb.br:                                            ; preds = %bb.bq
  %i.io = load ptr, ptr %.sroa.0265.3, align 8, !tbaa !54
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 80
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = invoke noundef i32 %i.iq(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.3)
          to label %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !30 ; 0 uses

._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel_crit_edge: ; preds = %bb.br
  %.pre532 = load ptr, ptr %i.ij, align 8, !tbaa !148
  %.pre533 = load ptr, ptr %i.il, align 8, !tbaa !149
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel

bb.bs:                                            ; preds = %bb.bq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 4 ; 2 uses
  store ptr %i.is, ptr %i.ij, align 8, !tbaa !148
  br label %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel

_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel: ; preds = %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel_crit_edge, %bb.bs
  %i.it = phi ptr [ %.pre533, %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel_crit_edge ], [ %i.im, %bb.bs ]
  %i.iu = phi ptr [ %.pre532, %._ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel_crit_edge ], [ %i.is, %bb.bs ] ; 2 uses
  %i.iv = icmp ult ptr %i.iu, %i.it
  br i1 %i.iv, label %bb.bu, label %bb.bt, !prof !78

bb.bt:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel
  %i.iw = load ptr, ptr %.sroa.0265.3, align 8, !tbaa !54
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 72
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = invoke noundef i32 %i.iy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.3)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i203.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !31

bb.bu:                                            ; preds = %_ZNSt19istreambuf_iteratorIwSt11char_traitsIwEEppEv.exit193.peel
  %i.ja = load i32, ptr %i.iu, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i203.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i203.peel: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i204.peel = phi i32 [ %i.ja, %bb.bu ], [ %i.iz, %bb.bt ]
  %i.jb = icmp eq i32 %.0.i.i.i.i.i204.peel, -1   ; 4 uses
  %spec.select339.peel = select i1 %i.jb, ptr null, ptr %.sroa.0265.3 ; 3 uses
  %.not.i.i2.i.i198.peel = icmp ne ptr %.sroa.0.2, null
  %or.cond.i.i3.i.i199.peel = select i1 %.not.i.i2.i.i198.peel, i1 %i.v, i1 false
  br i1 %or.cond.i.i3.i.i199.peel, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i203.peel
  %i.jc = xor i1 %i.v, %i.jb
  br i1 %i.jc, label %bb.bz, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310

bb.bw:                                            ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i.i.i203.peel
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !148 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !149
  %i.jh = icmp ult ptr %i.je, %i.jg
  br i1 %i.jh, label %bb.by, label %bb.bx, !prof !78

bb.bx:                                            ; preds = %bb.bw
  %i.ji = load ptr, ptr %.sroa.0.2, align 8, !tbaa !54
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 72
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = invoke noundef i32 %i.jk(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.2)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !31

bb.by:                                            ; preds = %bb.bw
  %i.jm = load i32, ptr %i.je, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201.peel: ; preds = %bb.by, %bb.bx
  %.0.i.i.i6.i.i202.peel = phi i32 [ %i.jm, %bb.by ], [ %i.jl, %bb.bx ]
  %i.jn = icmp eq i32 %.0.i.i.i6.i.i202.peel, -1
  br i1 %i.jn, label %.split314.peel, label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201._crit_edge.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201._crit_edge.peel: ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201.peel
  br i1 %i.jb, label %bb.bz, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310

.split314.peel:                                   ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201.peel
  br i1 %i.jb, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310, label %bb.bz

bb.bz:                                            ; preds = %.split314.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201._crit_edge.peel, %bb.bv
  %.sroa.0.8313.peel = phi ptr [ %.sroa.0.2, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i5.i.i201._crit_edge.peel ], [ %.sroa.0.2, %bb.bv ], [ null, %.split314.peel ]
  %.not.i.i208.not.peel = icmp eq ptr %spec.select339.peel, null
  br i1 %.not.i.i208.not.peel, label %.peel.next514.preheader, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jo = load ptr, ptr %i.ij, align 8, !tbaa !148 ; 2 uses
  %i.jp = load ptr, ptr %i.il, align 8, !tbaa !149
  %i.jq = icmp ult ptr %i.jo, %i.jp
  br i1 %i.jq, label %bb.cc, label %bb.cb, !prof !78

bb.cb:                                            ; preds = %bb.ca
  %i.jr = load ptr, ptr %.sroa.0265.3, align 8, !tbaa !54
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 72
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = invoke noundef i32 %i.jt(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0265.3)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !32

bb.cc:                                            ; preds = %bb.ca
  %i.jv = load i32, ptr %i.jo, align 4, !tbaa !119
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel

_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i212.peel = phi i32 [ %i.jv, %bb.cc ], [ %i.ju, %bb.cb ] ; 2 uses
  %i.jw = icmp eq i32 %.0.i.i.i212.peel, -1
  %spec.select340.peel = select i1 %i.jw, ptr null, ptr %spec.select339.peel
  br label %.peel.next514.preheader

.peel.next514.preheader:                          ; preds = %bb.bz, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel
  %.4292437.ph = phi i32 [ -1, %bb.bz ], [ %.0.i.i.i212.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel ]
  %.sroa.0265.4434.ph = phi ptr [ null, %bb.bz ], [ %spec.select340.peel, %_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv.exit.i.i211.peel ]
  br label %.peel.next514

.preheader:                                       ; preds = %bb.bk
  br i1 %.1129.lcssa, label %_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE7_M_findIwEEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEiE6__typeEPKS8_mS8_.exit.thread310, label %.lr.ph469

.lr.ph469:                                        ; preds = %.preheader
end_hunk_11
