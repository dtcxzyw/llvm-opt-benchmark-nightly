Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSParserImpl?download=true
inline.NumInlined: 6237
inline.NumDeleted: 1653
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6hermes6parser6detail12JSParserImpl16checkDeclarationEv:bb.a
  %i.k = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.j, i64 0) #17
  %i.l = and i64 %i.k, 8589934591
  %i.m = icmp eq i64 %i.l, 4294967300
  br i1 %i.m, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread, label %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread_crit_edge

._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !426 ; 2 uses
  %.pre38 = load i32, ptr %.pre, align 8, !tbaa !477
  br label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread: ; preds = %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread_crit_edge, %bb.b
  %i.n = phi i32 [ %.pre38, %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread_crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %i.o = phi ptr [ %.pre, %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread_crit_edge ], [ %i.b, %bb.b ] ; 2 uses
  %i.p = icmp eq i32 %i.n, 1
  br i1 %i.p, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit2, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit2.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit2: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread
  %i.q = phi ptr [ %i.o, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread ], [ %i.b, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !440
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !503
  %i.v = icmp eq ptr %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit2.thread

bb.d:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load i8, ptr %i.w, align 8, !tbaa !472, !range !379, !noundef !375
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = tail call noundef zeroext i1 @_ZN6hermes6parser7JSLexer24isLetFollowedByDeclStartEv(ptr noundef nonnull align 8 dereferenceable(1160) %i.z) #17
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit2.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit2
  %i.ab = phi ptr [ %i.o, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread ], [ %i.q, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit2 ]
  %i.ac = phi i32 [ %i.n, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread ], [ 1, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit2 ]
  %i.ad = load ptr, ptr %0, align 8, !tbaa !478, !nonnull !375, !align !376 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 188
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !508
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %.thread28, label %bb.f

bb.f:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit2.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !573, !range !379, !noundef !375
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.g, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit3.thread

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17
  br i1 %i.aj, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !426 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !477
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit3, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit3.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit3: ; preds = %bb.h
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !456
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !503
  %i.aq = icmp eq ptr %i.ap, %i.an
  br i1 %i.aq, label %bb.i, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit3.thread

bb.i:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit3
  %i.ar = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl23checkAsyncComponentFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17
  br i1 %i.ar, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit3.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit3.thread: ; preds = %bb.h, %bb.i, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit3, %bb.f
  %i.as = load ptr, ptr %0, align 8, !tbaa !478, !nonnull !375, !align !376
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 184
  %i.au = load i8, ptr %i.at, align 8, !tbaa !573, !range !379, !noundef !375
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.j, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4.thread

bb.j:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit3.thread
  %i.aw = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17
  br i1 %i.aw, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !426 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !477
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4: ; preds = %bb.k
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !456
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !503
  %i.bd = icmp eq ptr %i.bc, %i.ba
  br i1 %i.bd, label %bb.l, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4.thread

bb.l:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4
  %i.be = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl18checkAsyncHookFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17
  br i1 %i.be, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4.thread: ; preds = %bb.k, %bb.l, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit3.thread
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !426 ; 4 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !477 ; 2 uses
  switch i32 %i.bg, label %.thread28 [
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit5
    i32 42, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread
    i32 40, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread
  ]

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit5: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !461
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !503 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, %i.bi
  br i1 %i.bl, label %bb.m, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_EEEbT_DpT0_.exit

bb.m:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit5
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.bm, i64 0) #17 ; 2 uses
  %i.bo = and i64 %i.bn, 4294967296
  %.not37.a = icmp eq i64 %i.bo, 0
  br i1 %.not37.a, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = and i64 %i.bn, 4294967295
  %i.bq = icmp eq i64 %i.bp, 1
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_EEEbT_DpT0_.exit: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit5
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !455
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !445
  %i.bv = icmp eq ptr %i.bk, %i.bs
  %i.bw = icmp eq ptr %i.bk, %i.bu
  %spec.select.i = or i1 %i.bv, %i.bw
  br i1 %spec.select.i, label %bb.o, label %.thread28

bb.o:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_EEEbT_DpT0_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.bx, i64 0) #17 ; 2 uses
  %i.bz = and i64 %i.by, 4294967296
  %.not35 = icmp eq i64 %i.bz, 0
  br i1 %.not35, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = and i64 %i.by, 4294967295
  %i.cb = icmp eq i64 %i.ca, 1
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread

.thread28:                                        ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_EEEbT_DpT0_.exit, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit2.thread
  %i.cc = phi i32 [ %i.bg, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4.thread ], [ 1, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_EEEbT_DpT0_.exit ], [ %i.ac, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit2.thread ]
  %i.cd = phi ptr [ %i.bf, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4.thread ], [ %i.bf, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_EEEbT_DpT0_.exit ], [ %i.ab, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit2.thread ]
  %i.ce = load ptr, ptr %0, align 8, !tbaa !478, !nonnull !375, !align !376
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 192
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !509, !range !379, !noundef !375
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.q, label %.thread31

bb.q:                                             ; preds = %.thread28
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !445
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !465
  switch i32 %i.cc, label %.thread31 [
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i6
    i32 42, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread
    i32 40, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread
  ]

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i6: ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !455
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !503 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, %i.cn
  br i1 %i.cq, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_S5_EEEbT_DpT0_.exit.thread, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_S5_EEEbT_DpT0_.exit

_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_S5_EEEbT_DpT0_.exit: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i6
  %i.cr = icmp eq ptr %i.cp, %i.cj
  %i.cs = icmp eq ptr %i.cp, %i.cl
  %spec.select.i.i7 = or i1 %i.cr, %i.cs
  br i1 %spec.select.i.i7, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_S5_EEEbT_DpT0_.exit.thread, label %.thread31

_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_S5_EEEbT_DpT0_.exit.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i6, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_S5_EEEbT_DpT0_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cu = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.ct, i64 0) #17 ; 2 uses
  %i.cv = and i64 %i.cu, 4294967296
  %.not33 = icmp eq i64 %i.cv, 0
  br i1 %.not33, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_S5_EEEbT_DpT0_.exit.thread
  %i.cw = and i64 %i.cu, 4294967295
  %i.cx = icmp eq i64 %i.cw, 1
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread

.thread31:                                        ; preds = %bb.q, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_S5_EEEbT_DpT0_.exit, %.thread28
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread: ; preds = %bb.a, %bb.a, %bb.a, %bb.q, %bb.q, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4.thread, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_S5_EEEbT_DpT0_.exit.thread, %bb.r, %bb.o, %bb.p, %bb.m, %bb.n, %bb.j, %bb.l, %bb.g, %bb.i, %bb.d, %bb.c, %.thread31, %bb.e
  %.0 = phi i1 [ false, %.thread31 ], [ true, %bb.a ], [ %i.aa, %bb.e ], [ true, %bb.d ], [ true, %bb.g ], [ %i.cx, %bb.r ], [ %i.bq, %bb.n ], [ true, %bb.j ], [ true, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4.thread ], [ %i.cb, %bb.p ], [ true, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit4.thread ], [ true, %bb.q ], [ true, %bb.c ], [ true, %bb.i ], [ true, %bb.l ], [ true, %bb.q ], [ false, %bb.m ], [ false, %bb.o ], [ false, %_ZNK6hermes6parser6detail12JSParserImpl6checkNIPNS_12UniqueStringEJS5_S5_EEEbT_DpT0_.exit.thread ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl16parseDeclareFLowEN4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824), ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseImportDeclarationEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 !guid !958 {
bb.a:
  %1 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::simple_ilist", align 8 ; 11 uses
  %4 = alloca %"class.llvh::simple_ilist", align 8 ; 12 uses
  %5 = alloca %"class.llvh::simple_ilist", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !426
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !tbaa !471 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 0) #17 ; 5 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !426
  %i.f = load i32, ptr %i.e, align 8, !tbaa !477
  %i.g = icmp eq i32 %i.f, 112
  br i1 %i.g, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !478, !nonnull !375, !align !376 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !479  ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !485
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !486
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !488
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !489  ; 2 uses
  %i.s = add i64 %i.p, 7
  %i.t = add i64 %i.s, %i.r
  %i.u = and i64 %i.t, 7
  %.neg42 = add i64 %i.r, 7
  %i.v = sub i64 %.neg42, %i.u                    ; 3 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !489
  %i.w = add i64 %i.v, 56                         ; 2 uses
  %i.x = icmp ugt i64 %i.w, 262144
  br i1 %i.x, label %.critedge.i.i.i, label %bb.c, !prof !490

.critedge.i.i.i:                                  ; preds = %bb.b
  %i.y = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.h, i64 noundef 56, i64 noundef 8) #17
  %.pre47 = load ptr, ptr %i.a, align 8, !tbaa !426
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.c:                                             ; preds = %bb.b
  %i.z = add i64 %i.v, %i.p
  %i.aa = inttoptr i64 %i.z to ptr
  store i64 %i.w, ptr %i.q, align 8, !tbaa !489
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.c
  %i.ab = phi ptr [ %.pre47, %.critedge.i.i.i ], [ %i.e, %bb.c ]
  %.0.i.i.i = phi ptr [ %i.y, %.critedge.i.i.i ], [ %i.aa, %bb.c ] ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !574
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 36, ptr %i.ae, align 8, !tbaa !495
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.af, i8 0, i64 28, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !543
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !471
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ai, align 8, !tbaa !471
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.aj, align 8, !tbaa !471
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.ak, align 8, !tbaa !471
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %i.ah, align 8, !tbaa !471
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.al, align 8, !tbaa !471
  %i.am = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 0) #17 ; 6 uses
  store ptr %i.am, ptr %i.a, align 8, !tbaa !426
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %3, ptr %3, align 8, !tbaa !475
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %3, ptr %i.an, align 8, !tbaa !476
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !477 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !458
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !503
  %i.au = icmp eq ptr %i.at, %i.ar
  br i1 %i.au, label %bb.d, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread.thread

bb.d:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !504, !range !379, !noundef !375
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl17parseAssertClauseERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.ay, label %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread_crit_edge, label %bb.k

._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread_crit_edge: ; preds = %bb.e
  %.pre48 = load ptr, ptr %i.a, align 8, !tbaa !426 ; 2 uses
  %.pre49 = load i32, ptr %.pre48, align 8, !tbaa !477
  br label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread: ; preds = %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread_crit_edge, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.az = phi i32 [ %.pre49, %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread_crit_edge ], [ %i.ao, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ]
  %i.ba = phi ptr [ %.pre48, %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread_crit_edge ], [ %i.am, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ]
  switch i32 %i.az, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread.thread [
    i32 60, label %bb.f
    i32 51, label %bb.h
    i32 120, label %bb.h
  ]

bb.f:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread
  %i.bb = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 0) #17
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !426
  br label %bb.h

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit, %bb.d, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread
  %i.bc = phi ptr [ %i.ba, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread ], [ %i.am, %bb.d ], [ %i.am, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !504, !range !379, !noundef !375
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread.thread
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.0.0.copyload.i.i14 = load ptr, ptr %i.bg, align 8, !tbaa !471
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.bi, align 1, !tbaa !501
  store ptr @.str.82, ptr %2, align 8, !tbaa !502
  store i8 3, ptr %i.bh, align 8, !tbaa !500
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !497, !nonnull !375, !align !376
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bk, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i14, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i15 = load ptr, ptr %i.bl, align 8, !tbaa !471
  %i.bm = load ptr, ptr %0, align 8, !tbaa !478, !nonnull !375, !align !376 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !479 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !485
  %i.bq = zext i32 %i.bp to i64
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !486
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !488
  %i.bu = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !489 ; 2 uses
  %i.bx = add i64 %i.bu, 7
  %i.by = add i64 %i.bx, %i.bw
  %i.bz = and i64 %i.by, 7
  %.neg45 = add i64 %i.bw, 7
  %i.ca = sub i64 %.neg45, %i.bz                  ; 3 uses
  store i64 %i.ca, ptr %i.bv, align 8, !tbaa !489
  %i.cb = add i64 %i.ca, 96                       ; 2 uses
  %i.cc = icmp ugt i64 %i.cb, 262144
  br i1 %i.cc, label %.critedge.i.i.i17, label %bb.i, !prof !490

.critedge.i.i.i17:                                ; preds = %bb.h
  %i.cd = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.bm, i64 noundef 96, i64 noundef 8) #17
  br label %_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ce = add i64 %i.ca, %i.bu
  %i.cf = inttoptr i64 %i.ce to ptr
  store i64 %i.cb, ptr %i.bv, align 8, !tbaa !489
  br label %_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit.i

_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit.i: ; preds = %.critedge.i.i.i17, %bb.i
  %.0.i.i.i16 = phi ptr [ %i.cd, %.critedge.i.i.i17 ], [ %i.cf, %bb.i ] ; 13 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !454
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.0.i.i.i16, i8 0, i64 16, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 16
  store i32 83, ptr %i.ci, align 8, !tbaa !495
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cj, i8 0, i64 28, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 48 ; 3 uses
  store ptr %i.ck, ptr %i.ck, align 8, !tbaa !475
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 56
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !476
  %.pre50 = load ptr, ptr %i.an, align 8, !tbaa !476 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 64
  store ptr %.0.i.i.i, ptr %i.cm, align 8, !tbaa !960
end_hunk_0
