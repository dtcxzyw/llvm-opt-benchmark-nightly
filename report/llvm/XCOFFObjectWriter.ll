Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XCOFFObjectWriter?download=true
inline.NumInlined: 2256
inline.NumDeleted: 1071
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN12_GLOBAL__N_111XCOFFWriter11writeObjectEv:bb.a

bb.s:                                             ; preds = %._crit_edge.2.i, %bb.m
  %.045.ptr.3.i = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 4 uses
  %i.fe = load ptr, ptr %.045.ptr.3.i, align 8, !tbaa !161 ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  %i.fg = load i16, ptr %i.ff, align 8, !tbaa !163
  %i.fh = icmp eq i16 %i.fg, -3
  br i1 %i.fh, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 80
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !168, !noalias !619 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 112
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !168, !noalias !620 ; 2 uses
  %.not129143.3.i = icmp eq ptr %i.fj, %i.fl
  br i1 %.not129143.3.i, label %._crit_edge.3.i, label %.lr.ph.preheader.3.i

.lr.ph.preheader.3.i:                             ; preds = %bb.t
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 104
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !153, !noalias !619
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 96
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !155, !noalias !619
  br label %.lr.ph.3.i

.lr.ph.3.i:                                       ; preds = %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.3.i, %.lr.ph.preheader.3.i
  %.047147.3.i = phi i64 [ %.2.3.i, %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.3.i ], [ 0, %.lr.ph.preheader.3.i ] ; 2 uses
  %.sroa.0121.0146.3.i = phi ptr [ %.sroa.0121.1.3.i, %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.3.i ], [ %i.fj, %.lr.ph.preheader.3.i ] ; 2 uses
  %.sroa.10123.0145.3.i = phi ptr [ %.sroa.10123.1.3.i, %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.3.i ], [ %i.fp, %.lr.ph.preheader.3.i ] ; 2 uses
  %.sroa.13124.0144.3.i = phi ptr [ %.sroa.13124.1.3.i, %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.3.i ], [ %i.fn, %.lr.ph.preheader.3.i ] ; 2 uses
  %i.fq = load ptr, ptr %.sroa.0121.0146.3.i, align 8, !tbaa !159 ; 4 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  %.val62.3.i = load ptr, ptr %i.fr, align 8, !tbaa !195 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fq, i64 48
  %.val63.3.i = load ptr, ptr %i.fs, align 8, !tbaa !195 ; 2 uses
  %i.ft = icmp eq ptr %.val63.3.i, %.val62.3.i
  br i1 %i.ft, label %.loopexit136.3.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.3.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !148, !noalias !621
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !146, !noalias !621
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.3.i, %bb.u
  %.1142.3.i = phi i64 [ %.047147.3.i, %bb.u ], [ %i.gb, %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.3.i ]
  %.sroa.0116.0141.3.i = phi ptr [ %.val62.3.i, %bb.u ], [ %.sroa.0116.1.3.i, %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.3.i ] ; 2 uses
  %.sroa.10.0140.3.i = phi ptr [ %i.fv, %bb.u ], [ %.sroa.10.1.3.i, %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.3.i ] ; 2 uses
  %.sroa.13.0139.3.i = phi ptr [ %i.fx, %bb.u ], [ %.sroa.13.1.3.i, %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.3.i ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0116.0141.3.i, i64 72
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !54
  %i.ga = zext i32 %i.fz to i64
  %i.gb = add i64 %.1142.3.i, %i.ga               ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0116.0141.3.i, i64 96 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %.sroa.10.0140.3.i
  br i1 %i.gd, label %bb.w, label %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.3.i

bb.w:                                             ; preds = %bb.v
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.13.0139.3.i, i64 8 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !145 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 480
  br label %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.3.i

_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.3.i: ; preds = %bb.w, %bb.v
  %.sroa.13.1.3.i = phi ptr [ %i.ge, %bb.w ], [ %.sroa.13.0139.3.i, %bb.v ]
  %.sroa.10.1.3.i = phi ptr [ %i.gg, %bb.w ], [ %.sroa.10.0140.3.i, %bb.v ]
  %.sroa.0116.1.3.i = phi ptr [ %i.gf, %bb.w ], [ %i.gc, %bb.v ] ; 2 uses
  %.not130.3.i = icmp eq ptr %.sroa.0116.1.3.i, %.val63.3.i
  br i1 %.not130.3.i, label %.loopexit136.3.i, label %bb.v

.loopexit136.3.i:                                 ; preds = %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.3.i, %.lr.ph.3.i
  %.2.3.i = phi i64 [ %.047147.3.i, %.lr.ph.3.i ], [ %i.gb, %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.3.i ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0121.0146.3.i, i64 8 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %.sroa.10123.0145.3.i
  br i1 %i.gi, label %bb.x, label %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.3.i

bb.x:                                             ; preds = %.loopexit136.3.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.13124.0144.3.i, i64 8 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !152 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 512
  br label %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.3.i

_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.3.i: ; preds = %bb.x, %.loopexit136.3.i
  %.sroa.13124.1.3.i = phi ptr [ %i.gj, %bb.x ], [ %.sroa.13124.0144.3.i, %.loopexit136.3.i ]
  %.sroa.10123.1.3.i = phi ptr [ %i.gl, %bb.x ], [ %.sroa.10123.0145.3.i, %.loopexit136.3.i ]
  %.sroa.0121.1.3.i = phi ptr [ %i.gk, %bb.x ], [ %i.gh, %.loopexit136.3.i ] ; 2 uses
  %.not129.3.i = icmp eq ptr %.sroa.0121.1.3.i, %i.fl
  br i1 %.not129.3.i, label %._crit_edge.3.i, label %.lr.ph.3.i

._crit_edge.3.i:                                  ; preds = %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.3.i, %bb.t
  %.047.lcssa.3.i = phi i64 [ 0, %bb.t ], [ %.2.3.i, %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.3.i ]
  tail call fastcc void @_ZN12_GLOBAL__N_111XCOFFWriter22finalizeRelocationInfoEPNS_12SectionEntryEm(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef %i.fe, i64 noundef %.047.lcssa.3.i)
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge.3.i, %bb.s
  %.045.ptr.4.i = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 4 uses
  %i.gm = load ptr, ptr %.045.ptr.4.i, align 8, !tbaa !161 ; 6 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 56
  %i.go = load i16, ptr %i.gn, align 8, !tbaa !163
  %i.gp = icmp eq i16 %i.go, -3
  br i1 %i.gp, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 80
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !168, !noalias !619 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 112
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !168, !noalias !620 ; 2 uses
  %.not129143.4.i = icmp eq ptr %i.gr, %i.gt
  br i1 %.not129143.4.i, label %._crit_edge.4.i, label %.lr.ph.preheader.4.i

.lr.ph.preheader.4.i:                             ; preds = %bb.z
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gm, i64 104
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !153, !noalias !619
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 96
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !155, !noalias !619
  br label %.lr.ph.4.i

.lr.ph.4.i:                                       ; preds = %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.4.i, %.lr.ph.preheader.4.i
  %.047147.4.i = phi i64 [ %.2.4.i, %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.4.i ], [ 0, %.lr.ph.preheader.4.i ] ; 2 uses
  %.sroa.0121.0146.4.i = phi ptr [ %.sroa.0121.1.4.i, %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.4.i ], [ %i.gr, %.lr.ph.preheader.4.i ] ; 2 uses
  %.sroa.10123.0145.4.i = phi ptr [ %.sroa.10123.1.4.i, %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.4.i ], [ %i.gx, %.lr.ph.preheader.4.i ] ; 2 uses
  %.sroa.13124.0144.4.i = phi ptr [ %.sroa.13124.1.4.i, %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.4.i ], [ %i.gv, %.lr.ph.preheader.4.i ] ; 2 uses
  %i.gy = load ptr, ptr %.sroa.0121.0146.4.i, align 8, !tbaa !159 ; 4 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 16
  %.val62.4.i = load ptr, ptr %i.gz, align 8, !tbaa !195 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gy, i64 48
  %.val63.4.i = load ptr, ptr %i.ha, align 8, !tbaa !195 ; 2 uses
  %i.hb = icmp eq ptr %.val63.4.i, %.val62.4.i
  br i1 %i.hb, label %.loopexit136.4.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.4.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !148, !noalias !621
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !146, !noalias !621
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.4.i, %bb.aa
  %.1142.4.i = phi i64 [ %.047147.4.i, %bb.aa ], [ %i.hj, %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.4.i ]
  %.sroa.0116.0141.4.i = phi ptr [ %.val62.4.i, %bb.aa ], [ %.sroa.0116.1.4.i, %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.4.i ] ; 2 uses
  %.sroa.10.0140.4.i = phi ptr [ %i.hd, %bb.aa ], [ %.sroa.10.1.4.i, %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.4.i ] ; 2 uses
  %.sroa.13.0139.4.i = phi ptr [ %i.hf, %bb.aa ], [ %.sroa.13.1.4.i, %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.4.i ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0116.0141.4.i, i64 72
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !54
  %i.hi = zext i32 %i.hh to i64
  %i.hj = add i64 %.1142.4.i, %i.hi               ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0116.0141.4.i, i64 96 ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %.sroa.10.0140.4.i
  br i1 %i.hl, label %bb.ac, label %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.4.i

bb.ac:                                            ; preds = %bb.ab
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.13.0139.4.i, i64 8 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !145 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 480
  br label %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.4.i

_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.4.i: ; preds = %bb.ac, %bb.ab
  %.sroa.13.1.4.i = phi ptr [ %i.hm, %bb.ac ], [ %.sroa.13.0139.4.i, %bb.ab ]
  %.sroa.10.1.4.i = phi ptr [ %i.ho, %bb.ac ], [ %.sroa.10.0140.4.i, %bb.ab ]
  %.sroa.0116.1.4.i = phi ptr [ %i.hn, %bb.ac ], [ %i.hk, %bb.ab ] ; 2 uses
  %.not130.4.i = icmp eq ptr %.sroa.0116.1.4.i, %.val63.4.i
  br i1 %.not130.4.i, label %.loopexit136.4.i, label %bb.ab

.loopexit136.4.i:                                 ; preds = %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.4.i, %.lr.ph.4.i
  %.2.4.i = phi i64 [ %.047147.4.i, %.lr.ph.4.i ], [ %i.hj, %_ZNSt15_Deque_iteratorIN12_GLOBAL__N_112XCOFFSectionERKS1_PS2_EppEv.exit.4.i ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0121.0146.4.i, i64 8 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %.sroa.10123.0145.4.i
  br i1 %i.hq, label %bb.ad, label %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.4.i

bb.ad:                                            ; preds = %.loopexit136.4.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.13124.0144.4.i, i64 8 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !152 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 512
  br label %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.4.i

_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.4.i: ; preds = %bb.ad, %.loopexit136.4.i
  %.sroa.13124.1.4.i = phi ptr [ %i.hr, %bb.ad ], [ %.sroa.13124.0144.4.i, %.loopexit136.4.i ]
  %.sroa.10123.1.4.i = phi ptr [ %i.ht, %bb.ad ], [ %.sroa.10123.0145.4.i, %.loopexit136.4.i ]
  %.sroa.0121.1.4.i = phi ptr [ %i.hs, %bb.ad ], [ %i.hp, %.loopexit136.4.i ] ; 2 uses
  %.not129.4.i = icmp eq ptr %.sroa.0121.1.4.i, %i.gt
  br i1 %.not129.4.i, label %._crit_edge.4.i, label %.lr.ph.4.i

._crit_edge.4.i:                                  ; preds = %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.4.i, %bb.z
  %.047.lcssa.4.i = phi i64 [ 0, %bb.z ], [ %.2.4.i, %_ZNSt15_Deque_iteratorIPSt5dequeIN12_GLOBAL__N_112XCOFFSectionESaIS2_EERS5_PS5_EppEv.exit.4.i ]
  tail call fastcc void @_ZN12_GLOBAL__N_111XCOFFWriter22finalizeRelocationInfoEPNS_12SectionEntryEm(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef %i.gm, i64 noundef %.047.lcssa.4.i)
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.4.i, %bb.y
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 7 uses
  %.val57.i = load ptr, ptr %i.hu, align 8, !tbaa !197 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1808 ; 7 uses
  %.val60.i = load ptr, ptr %i.hv, align 8, !tbaa !197 ; 2 uses
  %.not131149.i = icmp eq ptr %.val57.i, %.val60.i
  br i1 %.not131149.i, label %._crit_edge153.i, label %.lr.ph152.i

._crit_edge153.i:                                 ; preds = %.lr.ph152.i, %bb.ae
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 28 uses
  %.val61.i = load ptr, ptr %i.hw, align 8, !tbaa !29
  %i.hx = getelementptr i8, ptr %.val61.i, i64 16
  %.val61.val.i = load i8, ptr %i.hx, align 8, !tbaa !139, !range !140, !noundef !141
  %i.hy = trunc nuw i8 %.val61.val.i to i1        ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ia = load i16, ptr %i.hz, align 8, !tbaa !133
  %i.ib = zext i16 %i.ia to i64
  %..i = select i1 %i.hy, i64 72, i64 40
  %.220.i.a = select i1 %i.hy, i64 24, i64 20
  %i.ic = mul nuw nsw i64 %..i, %i.ib
  %9 = add nuw nsw i64 %i.ic, %.220.i.a
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %.val77.i = load i8, ptr %i.id, align 8, !tbaa !135, !range !140, !noundef !141
  %i.ie = trunc nuw i8 %.val77.i to i1
  %10 = xor i1 %i.hy, true
  %11 = select i1 %i.ie, i1 %10, i1 false
  %spec.select.i.a = select i1 %11, i64 28, i64 0
  %i.if = add nuw nsw i64 %9, %spec.select.i.a    ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 14 uses
  %i.ih = load ptr, ptr %.045.ptr.i, align 8, !tbaa !161 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 56
  %i.ij = load i16, ptr %i.ii, align 8, !tbaa !163
  %i.ik = icmp eq i16 %i.ij, -3
  br i1 %i.ik, label %bb.ah, label %bb.af

.lr.ph152.i:                                      ; preds = %bb.ae, %.lr.ph152.i
  %.sroa.0114.0150.i = phi ptr [ %i.ip, %.lr.ph152.i ], [ %.val57.i, %bb.ae ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0114.0150.i, i64 64
  %.val76.i = load ptr, ptr %i.il, align 8, !tbaa !145
  %i.im = getelementptr inbounds nuw i8, ptr %.val76.i, i64 72
  %i.in = load i32, ptr %i.im, align 8, !tbaa !54
  %i.io = zext i32 %i.in to i64
  tail call fastcc void @_ZN12_GLOBAL__N_111XCOFFWriter22finalizeRelocationInfoEPNS_12SectionEntryEm(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull %.sroa.0114.0150.i, i64 noundef %i.io)
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0114.0150.i, i64 80 ; 2 uses
  %.not131.i = icmp eq ptr %i.ip, %.val60.i
  br i1 %.not131.i, label %._crit_edge153.i, label %.lr.ph152.i

bb.af:                                            ; preds = %._crit_edge153.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ih, i64 58
  %i.ir = load i8, ptr %i.iq, align 2, !tbaa !167, !range !140, !noundef !141
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.it = load i64, ptr %i.ig, align 8, !tbaa !142
  %i.iu = load ptr, ptr %i.ih, align 8, !tbaa !60
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = tail call noundef i64 %i.iv(ptr noundef nonnull align 8 dereferenceable(58) %i.ih, i64 noundef %i.it, i64 noundef %i.if) #28, !inline_history !567
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge153.i
  %.1126.i = phi i64 [ %i.if, %._crit_edge153.i ], [ %i.if, %bb.af ], [ %i.iw, %bb.ag ] ; 3 uses
  %i.ix = load ptr, ptr %.045.ptr.1.i, align 8, !tbaa !161 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 56
  %i.iz = load i16, ptr %i.iy, align 8, !tbaa !163
  %i.ja = icmp eq i16 %i.iz, -3
  br i1 %i.ja, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 58
  %i.jc = load i8, ptr %i.jb, align 2, !tbaa !167, !range !140, !noundef !141
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.je = load i64, ptr %i.ig, align 8, !tbaa !142
  %i.jf = load ptr, ptr %i.ix, align 8, !tbaa !60
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = tail call noundef i64 %i.jg(ptr noundef nonnull align 8 dereferenceable(58) %i.ix, i64 noundef %i.je, i64 noundef %.1126.i) #28, !inline_history !567
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.1126.1.i = phi i64 [ %.1126.i, %bb.ah ], [ %.1126.i, %bb.ai ], [ %i.jh, %bb.aj ] ; 3 uses
  %i.ji = load ptr, ptr %.045.ptr.2.i, align 8, !tbaa !161 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 56
  %i.jk = load i16, ptr %i.jj, align 8, !tbaa !163
  %i.jl = icmp eq i16 %i.jk, -3
  br i1 %i.jl, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 58
  %i.jn = load i8, ptr %i.jm, align 2, !tbaa !167, !range !140, !noundef !141
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jp = load i64, ptr %i.ig, align 8, !tbaa !142
  %i.jq = load ptr, ptr %i.ji, align 8, !tbaa !60
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = tail call noundef i64 %i.jr(ptr noundef nonnull align 8 dereferenceable(58) %i.ji, i64 noundef %i.jp, i64 noundef %.1126.1.i) #28, !inline_history !567
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.1126.2.i = phi i64 [ %.1126.1.i, %bb.ak ], [ %.1126.1.i, %bb.al ], [ %i.js, %bb.am ] ; 3 uses
  %i.jt = load ptr, ptr %.045.ptr.3.i, align 8, !tbaa !161 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  %i.jv = load i16, ptr %i.ju, align 8, !tbaa !163
  %i.jw = icmp eq i16 %i.jv, -3
  br i1 %i.jw, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 58
  %i.jy = load i8, ptr %i.jx, align 2, !tbaa !167, !range !140, !noundef !141
  %i.jz = trunc nuw i8 %i.jy to i1
  br i1 %i.jz, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ka = load i64, ptr %i.ig, align 8, !tbaa !142
  %i.kb = load ptr, ptr %i.jt, align 8, !tbaa !60
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = tail call noundef i64 %i.kc(ptr noundef nonnull align 8 dereferenceable(58) %i.jt, i64 noundef %i.ka, i64 noundef %.1126.2.i) #28, !inline_history !567
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %.1126.3.i = phi i64 [ %.1126.2.i, %bb.an ], [ %.1126.2.i, %bb.ao ], [ %i.kd, %bb.ap ] ; 3 uses
  %i.ke = load ptr, ptr %.045.ptr.4.i, align 8, !tbaa !161 ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 56
  %i.kg = load i16, ptr %i.kf, align 8, !tbaa !163
  %i.kh = icmp eq i16 %i.kg, -3
  br i1 %i.kh, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 58
  %i.kj = load i8, ptr %i.ki, align 2, !tbaa !167, !range !140, !noundef !141
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kl = load i64, ptr %i.ig, align 8, !tbaa !142
  %i.km = load ptr, ptr %i.ke, align 8, !tbaa !60
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = tail call noundef i64 %i.kn(ptr noundef nonnull align 8 dereferenceable(58) %i.ke, i64 noundef %i.kl, i64 noundef %.1126.3.i) #28, !inline_history !567
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.1126.4.i = phi i64 [ %.1126.3.i, %bb.aq ], [ %.1126.3.i, %bb.ar ], [ %i.ko, %bb.as ] ; 2 uses
  %.val79.i = load ptr, ptr %i.hu, align 8, !tbaa !197 ; 2 uses
  %.val80.i = load ptr, ptr %i.hv, align 8, !tbaa !197 ; 2 uses
  %i.kp = icmp eq ptr %.val79.i, %.val80.i
  br i1 %i.kp, label %.loopexit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !134
  %i.ks = zext i32 %i.kr to i64
  %i.kt = add i64 %.1126.4.i, %i.ks
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %.sroa.0103.0157.i = phi ptr [ %.val79.i, %bb.au ], [ %i.ky, %bb.av ] ; 3 uses
  %.2127156.i = phi i64 [ %i.kt, %bb.au ], [ %i.kx, %bb.av ]
  %i.ku = load i64, ptr %i.ig, align 8, !tbaa !142
  %i.kv = load ptr, ptr %.sroa.0103.0157.i, align 8, !tbaa !60
  %i.kw = load ptr, ptr %i.kv, align 8
  %i.kx = tail call noundef i64 %i.kw(ptr noundef nonnull align 8 dereferenceable(76) %.sroa.0103.0157.i, i64 noundef %i.ku, i64 noundef %.2127156.i) #28, !inline_history !567 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0103.0157.i, i64 80 ; 2 uses
  %.not132.i = icmp eq ptr %i.ky, %.val80.i
  br i1 %.not132.i, label %.loopexit.i, label %bb.av

.loopexit.i:                                      ; preds = %bb.av, %bb.at
  %.3.i = phi i64 [ %.1126.4.i, %bb.at ], [ %i.kx, %bb.av ] ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 1952 ; 2 uses
  %.val81.i = load i64, ptr %i.kz, align 8, !tbaa !166
  %.not133.i = icmp eq i64 %.val81.i, 0
  br i1 %.not133.i, label %_ZN12_GLOBAL__N_112SectionEntry17advanceFileOffsetEmm.exit.i, label %bb.aw

bb.aw:                                            ; preds = %.loopexit.i
  %i.la = load i64, ptr %i.ig, align 8, !tbaa !142
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 1880
  store i64 %.3.i, ptr %i.lb, align 8, !tbaa !312
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !300
  %i.le = add i64 %i.ld, %.3.i                    ; 2 uses
  %i.lf = icmp ugt i64 %i.le, %i.la
  br i1 %i.lf, label %bb.ax, label %_ZN12_GLOBAL__N_112SectionEntry17advanceFileOffsetEmm.exit.i

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.8, i1 noundef zeroext true) #30
  unreachable

_ZN12_GLOBAL__N_112SectionEntry17advanceFileOffsetEmm.exit.i: ; preds = %bb.aw, %.loopexit.i
  %.4.i = phi i64 [ %.3.i, %.loopexit.i ], [ %i.le, %bb.aw ] ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 5 uses
  %.val82.i = load ptr, ptr %i.lg, align 8, !tbaa !171
  %.not134.i = icmp eq ptr %.val82.i, null
  br i1 %.not134.i, label %_ZN12_GLOBAL__N_112SectionEntry17advanceFileOffsetEmm.exit83.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_112SectionEntry17advanceFileOffsetEmm.exit.i
  %i.lh = load i64, ptr %i.ig, align 8, !tbaa !142
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 2000
  store i64 %.4.i, ptr %i.li, align 8, !tbaa !312
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 1992
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !300
  %i.ll = add i64 %i.lk, %.4.i                    ; 2 uses
  %i.lm = icmp ugt i64 %i.ll, %i.lh
  br i1 %i.lm, label %bb.az, label %_ZN12_GLOBAL__N_112SectionEntry17advanceFileOffsetEmm.exit83.i

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.8, i1 noundef zeroext true) #30
  unreachable

_ZN12_GLOBAL__N_112SectionEntry17advanceFileOffsetEmm.exit83.i: ; preds = %bb.ay, %_ZN12_GLOBAL__N_112SectionEntry17advanceFileOffsetEmm.exit.i
  %.5.i = phi i64 [ %.4.i, %_ZN12_GLOBAL__N_112SectionEntry17advanceFileOffsetEmm.exit.i ], [ %i.ll, %bb.ay ] ; 5 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 1824 ; 7 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 7 uses
  %i.lp = load ptr, ptr %.045.ptr.i, align 8, !tbaa !161 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 56
  %i.lr = load i16, ptr %i.lq, align 8, !tbaa !163 ; 2 uses
  %.not52.i = icmp eq i16 %i.lr, -3
  br i1 %.not52.i, label %_ZN12_GLOBAL__N_111XCOFFWriter23calcOffsetToRelocationsEPNS_12SectionEntryERm.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZN12_GLOBAL__N_112SectionEntry17advanceFileOffsetEmm.exit83.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !313 ; 3 uses
  %.not.i.i = icmp eq i32 %i.lt, 0
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_111XCOFFWriter23calcOffsetToRelocationsEPNS_12SectionEntryERm.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
end_hunk_0
