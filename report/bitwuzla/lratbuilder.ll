Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/lratbuilder?download=true
inline.NumInlined: 1064
inline.NumDeleted: 403
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL11LratBuilder23build_chain_if_possibleEv:bb.a
.lr.ph.i39:                                       ; preds = %bb.u
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i39
  %i.hd = phi ptr [ %i.gu, %.lr.ph.i39 ], [ %i.hs, %bb.v ]
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !65 ; 3 uses
  %i.hg = tail call noundef i32 @llvm.abs.i32(i32 %i.hf, i1 true)
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = load ptr, ptr %i.hb, align 8, !tbaa !73
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hh
  store ptr null, ptr %i.hj, align 8, !tbaa !72
  %i.hk = load ptr, ptr %i.hc, align 8, !tbaa !68
  %i.hl = sub nsw i32 0, %i.hf
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds i8, ptr %i.hk, i64 %i.hm
  store i8 0, ptr %i.hn, align 1, !tbaa !69
  %i.ho = load ptr, ptr %i.hc, align 8, !tbaa !68
  %i.hp = sext i32 %i.hf to i64
  %i.hq = getelementptr inbounds i8, ptr %i.ho, i64 %i.hp
  store i8 0, ptr %i.hq, align 1, !tbaa !69
  %i.hr = load ptr, ptr %i.bo, align 8, !tbaa !22
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -4 ; 3 uses
  store ptr %i.hs, ptr %i.bo, align 8, !tbaa !22
  %i.ht = load ptr, ptr %i.bn, align 8, !tbaa !23
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = sub i64 %i.hu, %i.hv
  %i.hx = ashr exact i64 %i.hw, 2                 ; 2 uses
  %i.hy = icmp ugt i64 %i.hx, %i.gt
  br i1 %i.hy, label %bb.v, label %._crit_edge.i37, !llvm.loop !5

._crit_edge.i37:                                  ; preds = %bb.v, %bb.u
  %.lcssa4.i38 = phi i64 [ %i.gz, %bb.u ], [ %i.hx, %bb.v ] ; 2 uses
  %i.hz = icmp samesign ult i64 %.lcssa4.i38, %i.gt
  br i1 %i.hz, label %bb.w, label %_ZN7CaDiCaL11LratBuilder9backtrackEj.exit40

bb.w:                                             ; preds = %._crit_edge.i37
  %i.ia = sub nuw nsw i64 %i.gt, %.lcssa4.i38
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef %i.ia)
  br label %_ZN7CaDiCaL11LratBuilder9backtrackEj.exit40

_ZN7CaDiCaL11LratBuilder9backtrackEj.exit40:      ; preds = %._crit_edge.i37, %bb.w
  store i32 %i.bm, ptr %i.bl, align 8, !tbaa !109
  br label %bb.x

bb.x:                                             ; preds = %bb.q, %_ZNSt6vectorImSaImEE5clearEv.exit, %_ZN7CaDiCaL11LratBuilder9backtrackEj.exit36, %_ZN7CaDiCaL11LratBuilder9backtrackEj.exit40, %bb.c
  %.4 = phi i1 [ true, %bb.q ], [ true, %bb.c ], [ false, %_ZN7CaDiCaL11LratBuilder9backtrackEj.exit36 ], [ true, %_ZN7CaDiCaL11LratBuilder9backtrackEj.exit40 ], [ true, %_ZNSt6vectorImSaImEE5clearEv.exit ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7CaDiCaL11LratBuilder5cleanEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) initializes((224, 232), (308, 309)) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %.not.i.i1 = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i1, label %_ZNSt6vectorIiSaIiEE5clearEv.exit3, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i2

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i2:       ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.f, ptr %i.g, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit3

_ZNSt6vectorIiSaIiEE5clearEv.exit3:               ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i8 0, ptr %i.i, align 4, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.j, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL11LratBuilder10add_clauseEPKc(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load i64, ptr %i.a, align 8, !tbaa !304
  %i.c = uitofp i64 %i.b to double
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !88
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.g)
  %i.h = uitofp i64 %.sroa.speculated to double
  %i.i = fmul nnan double %i.h, 5.000000e-01
  %i.j = fcmp olt double %i.i, %i.c
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL11LratBuilder23collect_garbage_clausesEv(ptr noundef nonnull align 8 dereferenceable(616) %0)
  %.pre = load i64, ptr %i.d, align 8, !tbaa !85
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i64 [ %.pre, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !107
  %i.n = add nsw i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !107
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.p = load i64, ptr %i.o, align 8, !tbaa !63
  %i.q = icmp eq i64 %i.p, %i.k
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL11LratBuilder15enlarge_clausesEv(ptr noundef nonnull align 8 dereferenceable(616) %0)
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !85
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i64 [ %.pre.i, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.t = load i64, ptr %i.s, align 8, !tbaa !108  ; 2 uses
  %i.u = and i64 %i.t, 3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load i64, ptr %i.w, align 8, !tbaa !30
  %i.y = mul i64 %i.x, %i.t                       ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 %i.y, ptr %i.z, align 8, !tbaa !103
  %i.aa = icmp ult i64 %i.r, 4294967296
  br i1 %i.aa, label %.lr.ph.i.i, label %_ZN7CaDiCaL11LratBuilder6insertEv.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.ab = phi i64 [ %i.af, %.lr.ph.i.i ], [ 32, %bb.e ]
  %.014.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %i.y, %bb.e ] ; 2 uses
  %.01013.i.i = phi i32 [ %i.ae, %.lr.ph.i.i ], [ 32, %bb.e ]
  %i.ac = lshr i64 %.014.i.i, %i.ab
  %i.ad = xor i64 %i.ac, %.014.i.i                ; 2 uses
  %i.ae = lshr i32 %.01013.i.i, 1                 ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %.highbits.i.i = lshr i64 %i.r, %i.af
  %i.ag = icmp eq i64 %.highbits.i.i, 0
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZN7CaDiCaL11LratBuilder6insertEv.exit, !llvm.loop !1

_ZN7CaDiCaL11LratBuilder6insertEv.exit:           ; preds = %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi i64 [ %i.y, %bb.e ], [ %i.ad, %.lr.ph.i.i ]
  %i.ah = add i64 %i.r, -1
  %i.ai = and i64 %.0.lcssa.i.i, %i.ah
  %i.aj = tail call noundef ptr @_ZN7CaDiCaL11LratBuilder10new_clauseEv(ptr noundef nonnull align 8 dereferenceable(616) %0) ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !86
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ai ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !72
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !29
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !72
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 309 ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !97, !range !76, !noundef !77
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.v, label %bb.f

bb.f:                                             ; preds = %_ZN7CaDiCaL11LratBuilder6insertEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !31 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 3 uses
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %_ZN7CaDiCaL11LratBuilder16clause_satisfiedEPNS_17LratBuilderClauseE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !68
  %wide.trip.count.i = zext i32 %i.as to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph, label %bb.h, !llvm.loop !2

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !65
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !69
  %i.bb = icmp sgt i8 %i.ba, 0                    ; 2 uses
  br i1 %i.bb, label %_ZN7CaDiCaL11LratBuilder16clause_satisfiedEPNS_17LratBuilderClauseE.exit, label %bb.g

.lr.ph:                                           ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !68
  %wide.trip.count = zext i32 %i.as to i64
  br label %bb.i

2:                                                ; preds = %bb.i
  %spec.select31 = select i1 %exitcond.not.a, i32 %i.bf, i32 -2147483648
  %.2 = select i1 %.not27.a, i32 %.02539, i32 %spec.select31 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN7CaDiCaL11LratBuilder16clause_satisfiedEPNS_17LratBuilderClauseE.exit, label %bb.i, !llvm.loop !303

bb.i:                                             ; preds = %.lr.ph, %2
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %2 ] ; 2 uses
  %.02539 = phi i32 [ 0, %.lr.ph ], [ %.2, %2 ]   ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !65 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !69
  %.not27.a = icmp ne i8 %i.bi, 0                 ; 2 uses
  %exitcond.not.a = icmp eq i32 %.02539, 0        ; 2 uses
  %or.cond = select i1 %.not27.a, i1 true, i1 %exitcond.not.a
  br i1 %or.cond, label %2, label %_ZN7CaDiCaL11LratBuilder16clause_satisfiedEPNS_17LratBuilderClauseE.exit

_ZN7CaDiCaL11LratBuilder16clause_satisfiedEPNS_17LratBuilderClauseE.exit: ; preds = %bb.h, %2, %bb.i
  %.4 = phi i32 [ %.2, %2 ], [ -2147483648, %bb.i ], [ 0, %bb.h ] ; 6 uses
  switch i32 %i.as, label %bb.l [
    i32 1, label %bb.j
    i32 0, label %_ZN7CaDiCaL11LratBuilder16clause_satisfiedEPNS_17LratBuilderClauseE.exit.thread
  ]

bb.j:                                             ; preds = %_ZN7CaDiCaL11LratBuilder16clause_satisfiedEPNS_17LratBuilderClauseE.exit
  %i.bj = load i32, ptr %i.at, align 8, !tbaa !65 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !68
  %i.bm = sext i32 %i.bj to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !69
  %.not28 = icmp eq i8 %i.bo, 0
  br i1 %.not28, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bq = tail call noundef i32 @llvm.abs.i32(i32 %i.bj, i1 true)
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !73
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  store ptr %i.aj, ptr %i.bt, align 8, !tbaa !72
  br label %bb.l

_ZN7CaDiCaL11LratBuilder16clause_satisfiedEPNS_17LratBuilderClauseE.exit.thread: ; preds = %bb.f, %_ZN7CaDiCaL11LratBuilder16clause_satisfiedEPNS_17LratBuilderClauseE.exit
  store i8 1, ptr %i.ao, align 1, !tbaa !97
  br label %.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j, %_ZN7CaDiCaL11LratBuilder16clause_satisfiedEPNS_17LratBuilderClauseE.exit
  br i1 %i.bb, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i32 %.4, label %bb.o [
    i32 0, label %bb.n
    i32 -2147483648, label %bb.v
  ]

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.ao, align 1, !tbaa !97
  br label %.sink.split

bb.o:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !305
  %i.bw = add nsw i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !305
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.by = tail call noundef i32 @llvm.abs.i32(i32 %.4, i1 true)
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !73
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  store ptr %i.aj, ptr %i.cb, align 8, !tbaa !72
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !68
  %i.ce = sext i32 %.4 to i64
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  store i8 1, ptr %i.cf, align 1, !tbaa !69
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !68
  %i.ch = sub nsw i32 0, %.4
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 %i.ci
  store i8 -1, ptr %i.cj, align 1, !tbaa !69
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !22 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !102
  %.not.i.i.i = icmp eq ptr %i.cm, %i.co
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.4, ptr %i.cm, align 4, !tbaa !65
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store ptr %i.cp, ptr %i.cl, align 8, !tbaa !22
  br label %_ZN7CaDiCaL11LratBuilder13assign_reasonEiPNS_17LratBuilderClauseE.exit

bb.q:                                             ; preds = %bb.o
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !23 ; 4 uses
  %i.cr = ptrtoint ptr %i.cm to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 5 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775804
  br i1 %i.cu, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.q
  %i.cv = ashr exact i64 %i.ct, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 2305843009213693951)
  %i.cz = select i1 %i.cx, i64 2305843009213693951, i64 %i.cy ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.cz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.da = shl nuw nsw i64 %i.cz, 2
  %i.db = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #21 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.ct ; 2 uses
  store i32 %.4, ptr %i.dc, align 4, !tbaa !65
  %i.dd = icmp sgt i64 %i.ct, 0
  br i1 %i.dd, label %bb.s, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.db, ptr align 4 %i.cq, i64 %i.ct, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %.not.i17.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.cq) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.t, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.db, ptr %i.ck, align 8, !tbaa !23
  store ptr %i.de, ptr %i.cl, align 8, !tbaa !22
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.cz
  store ptr %i.df, ptr %i.cn, align 8, !tbaa !102
  br label %_ZN7CaDiCaL11LratBuilder13assign_reasonEiPNS_17LratBuilderClauseE.exit

_ZN7CaDiCaL11LratBuilder13assign_reasonEiPNS_17LratBuilderClauseE.exit: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i
  %i.dg = tail call noundef zeroext i1 @_ZN7CaDiCaL11LratBuilder9propagateEv(ptr noundef nonnull align 8 dereferenceable(616) %0)
  br i1 %i.dg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN7CaDiCaL11LratBuilder13assign_reasonEiPNS_17LratBuilderClauseE.exit
  store i8 1, ptr %i.ao, align 1, !tbaa !97
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !110
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %bb.n, %_ZN7CaDiCaL11LratBuilder16clause_satisfiedEPNS_17LratBuilderClauseE.exit.thread
  %.sink = phi ptr [ %i.aj, %_ZN7CaDiCaL11LratBuilder16clause_satisfiedEPNS_17LratBuilderClauseE.exit.thread ], [ %i.aj, %bb.n ], [ %i.di, %bb.u ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %.sink, ptr %i.dj, align 8, !tbaa !115
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %_ZN7CaDiCaL11LratBuilder13assign_reasonEiPNS_17LratBuilderClauseE.exit, %bb.l, %bb.m, %_ZN7CaDiCaL11LratBuilder6insertEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL11LratBuilder19add_original_clauseEmRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !94     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5760
  %i.c = load i32, ptr %i.b, align 8, !tbaa !243
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3608
  %i.e = load i32, ptr %i.d, align 8, !tbaa !244
  %.not = icmp sgt i32 %i.c, %i.e
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5728
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3620
  %i.h = load i32, ptr %i.g, align 4, !tbaa !245
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.a)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.a)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.c, %bb.d
  %i.k = phi double [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.a, ptr noundef nonnull align 8 dereferenceable(36) %i.f, double noundef %i.k)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.m = load <2 x i64>, ptr %i.l, align 8, !tbaa !30
  %i.n = add nsw <2 x i64> %i.m, splat (i64 1)
  store <2 x i64> %i.n, ptr %i.l, align 8, !tbaa !30
  %i.o = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !64   ; 2 uses
  %.not8.i = icmp eq ptr %i.o, %i.q
  br i1 %.not8.i, label %_ZN7CaDiCaL11LratBuilder13import_clauseERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.r = load i32, ptr %.sroa.05.09.i, align 4, !tbaa !65
  tail call void @_ZN7CaDiCaL11LratBuilder14import_literalEi(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %.not.i3 = icmp eq ptr %i.s, %i.q
  br i1 %.not.i3, label %_ZN7CaDiCaL11LratBuilder13import_clauseERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i

_ZN7CaDiCaL11LratBuilder13import_clauseERKSt6vectorIiSaIiEE.exit: ; preds = %.lr.ph.i, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 %1, ptr %i.t, align 8, !tbaa !108
  tail call void @_ZN7CaDiCaL11LratBuilder12tautologicalEv(ptr noundef nonnull align 8 dereferenceable(616) %0)
  tail call void @_ZN7CaDiCaL11LratBuilder10add_clauseEPKc(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr nonnull poison)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 376
end_hunk_0
