Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/Solver?download=true
inline.NumInlined: 2399
inline.NumDeleted: 491
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4cvc58internal7Minisat6Solver15propagateTheoryEv:bb.a
  br label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit69

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit69: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.w

_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit: ; preds = %.noexc54, %bb.g, %bb.j, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit64
  %i.ch = add nuw i32 %.023114, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !438

bb.w:                                             ; preds = %bb.i, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit69, %bb.e
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.e ], [ %.pn25.pn, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit69 ], [ %i.ba, %bb.i ]
  %i.ci = load ptr, ptr %3, align 8, !tbaa !94    ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i70, label %_ZN4cvc58internal7Minisat3vecINS1_3LitEED2Ev.exit72, label %.preheader.i.i71

.preheader.i.i71:                                 ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.cj, align 8, !tbaa !93
  call void @free(ptr noundef nonnull %i.ci) #33
  br label %_ZN4cvc58internal7Minisat3vecINS1_3LitEED2Ev.exit72

_ZN4cvc58internal7Minisat3vecINS1_3LitEED2Ev.exit72: ; preds = %bb.w, %.preheader.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.x

bb.x:                                             ; preds = %_ZN4cvc58internal7Minisat3vecINS1_3LitEED2Ev.exit72, %bb.d
  %.pn28.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn.pn, %_ZN4cvc58internal7Minisat3vecINS1_3LitEED2Ev.exit72 ], [ %i.x, %bb.d ]
  %i.ck = load ptr, ptr %2, align 8, !tbaa !364   ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit74, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !367
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #38
  br label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit74

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit74: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn28.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK4cvc58internal4prop11TheoryProxy15theoryNeedCheckEv(ptr noundef nonnull align 8 dereferenceable(521)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4cvc58internal7Minisat6Solver13propagateBoolEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(850) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cvc5::internal::prop::SatLiteral", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 464
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.f, %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !94
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN4cvc58internal7Minisat8OccListsINS1_3LitENS1_3vecINS1_6Solver7WatcherEEENS5_14WatcherDeletedEE8cleanAllEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i
  store i32 0, ptr %i.c, align 8, !tbaa !93
  br label %_ZN4cvc58internal7Minisat8OccListsINS1_3LitENS1_3vecINS1_6Solver7WatcherEEENS5_14WatcherDeletedEE8cleanAllEv.exit

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.i = phi i32 [ %i.d, %.lr.ph.i ], [ %i.at, %bb.f ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 4, !tbaa !68
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.m = sext i32 %.sroa.0.0.copyload.i to i64    ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !90
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.q = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.m ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !121  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i, label %_ZN4cvc58internal7Minisat8OccListsINS1_3LitENS1_3vecINS1_6Solver7WatcherEEENS5_14WatcherDeletedEE5cleanERKS3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %i.u = phi i32 [ %i.aj, %bb.e ], [ %i.s, %bb.c ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %.018.i.i = phi i32 [ %.1.i.i, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !118  ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i ; 2 uses
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !439, !nonnull !66, !align !128
  %i.y = load i32, ptr %i.w, align 4, !tbaa !395
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !99
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 4
  %i.ad = and i64 %i.ac, 3
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.af = add nsw i32 %.018.i.i, 1
  %i.ag = sext i32 %.018.i.i to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ag
  %i.ai = load i64, ptr %i.w, align 4
  store i64 %i.ai, ptr %i.ah, align 4
  %.pre.i.i = load i32, ptr %i.r, align 8, !tbaa !121
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.aj = phi i32 [ %i.u, %.lr.ph.i.i ], [ %.pre.i.i, %bb.d ] ; 3 uses
  %.1.i.i = phi i32 [ %.018.i.i, %.lr.ph.i.i ], [ %i.af, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next.i.i, %i.ak
  br i1 %i.al, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !440

._crit_edge.i.i:                                  ; preds = %bb.e
  %i.am = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.an = sub nsw i32 %i.am, %.1.i.i              ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i.i, label %_ZN4cvc58internal7Minisat8OccListsINS1_3LitENS1_3vecINS1_6Solver7WatcherEEENS5_14WatcherDeletedEE5cleanERKS3_.exit.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i
  %i.ap = sub i32 %i.aj, %i.an
  store i32 %i.ap, ptr %i.r, align 8, !tbaa !121
  br label %_ZN4cvc58internal7Minisat8OccListsINS1_3LitENS1_3vecINS1_6Solver7WatcherEEENS5_14WatcherDeletedEE5cleanERKS3_.exit.i

_ZN4cvc58internal7Minisat8OccListsINS1_3LitENS1_3vecINS1_6Solver7WatcherEEENS5_14WatcherDeletedEE5cleanERKS3_.exit.i: ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i, %bb.c
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.k, align 4, !tbaa !68
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.ar = sext i32 %.sroa.0.0.copyload.i.i to i64
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ar
  store i8 0, ptr %i.as, align 1, !tbaa !90
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !93
  br label %bb.f

bb.f:                                             ; preds = %_ZN4cvc58internal7Minisat8OccListsINS1_3LitENS1_3vecINS1_6Solver7WatcherEEENS5_14WatcherDeletedEE5cleanERKS3_.exit.i, %bb.b
  %i.at = phi i32 [ %i.i, %bb.b ], [ %.pre.i, %_ZN4cvc58internal7Minisat8OccListsINS1_3LitENS1_3vecINS1_6Solver7WatcherEEENS5_14WatcherDeletedEE5cleanERKS3_.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next.i, %i.au
  br i1 %i.av, label %bb.b, label %._crit_edge.i, !llvm.loop !441

_ZN4cvc58internal7Minisat8OccListsINS1_3LitENS1_3vecINS1_6Solver7WatcherEEENS5_14WatcherDeletedEE8cleanAllEv.exit: ; preds = %._crit_edge.i, %.preheader.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 6 uses
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !385 ; 2 uses
  %i.ba = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.bb = icmp slt i32 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph170, label %._crit_edge171

.lr.ph170:                                        ; preds = %_ZN4cvc58internal7Minisat8OccListsINS1_3LitENS1_3vecINS1_6Solver7WatcherEEENS5_14WatcherDeletedEE8cleanAllEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph170, %_ZN4cvc58internal7Minisat3vecINS1_6Solver7WatcherEE6shrinkEi.exit
  %i.bj = phi i32 [ %i.az, %.lr.ph170 ], [ %i.gt, %_ZN4cvc58internal7Minisat3vecINS1_6Solver7WatcherEE6shrinkEi.exit ] ; 2 uses
  %.0169 = phi i32 [ -1, %.lr.ph170 ], [ %.1.lcssa, %_ZN4cvc58internal7Minisat3vecINS1_6Solver7WatcherEE6shrinkEi.exit ] ; 2 uses
  %.067168 = phi i32 [ 0, %.lr.ph170 ], [ %i.bs, %_ZN4cvc58internal7Minisat3vecINS1_6Solver7WatcherEE6shrinkEi.exit ]
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.aw, align 8, !tbaa !385
  %i.bl = load ptr, ptr %i.ax, align 8, !tbaa !94
  %i.bm = sext i32 %i.bj to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !68 ; 2 uses
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds [16 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  %i.bs = add nuw nsw i32 %.067168, 1             ; 2 uses
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !118 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !121 ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %.idx = shl nsw i64 %i.bw, 3                    ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 %.idx ; 4 uses
  %.not158 = icmp eq i32 %i.bv, 0
  br i1 %.not158, label %._crit_edge164, label %.lr.ph163

.lr.ph163:                                        ; preds = %bb.g
  %i.by = xor i32 %i.bo, 1                        ; 3 uses
  %i.bz = ptrtoaddr ptr %i.bt to i64
  %i.ca = add i64 %.idx, %i.bz
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph163, %_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit
  %.1161 = phi i32 [ %.0169, %.lr.ph163 ], [ %.4, %_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit ] ; 5 uses
  %.068160 = phi ptr [ %i.bt, %.lr.ph163 ], [ %.472, %_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit ] ; 6 uses
  %.074159 = phi ptr [ %i.bt, %.lr.ph163 ], [ %.478, %_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit ] ; 8 uses
  %.074159215 = ptrtoaddr ptr %.074159 to i64
  %.068160216 = ptrtoaddr ptr %.068160 to i64     ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.068160, i64 4
  %.sroa.031.0.copyload = load i32, ptr %i.cb, align 4, !tbaa !68 ; 3 uses
  %i.cc = ashr i32 %.sroa.031.0.copyload, 1
  %i.cd = load ptr, ptr %i.bc, align 8, !tbaa !89 ; 3 uses
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  %i.cg = trunc i32 %.sroa.031.0.copyload to i8
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !378
  %i.ci = and i8 %i.cg, 1
  %i.cj = icmp eq i8 %i.ch, %i.ci
  br i1 %i.cj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %.068160, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.074159, i64 8
  %i.cm = load i64, ptr %.068160, align 4
  store i64 %i.cm, ptr %.074159, align 4
  br label %_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit, !llvm.loop !442

bb.j:                                             ; preds = %bb.h
  %i.cn = load i32, ptr %.068160, align 4, !tbaa !395 ; 5 uses
  %i.co = load ptr, ptr %i.bd, align 8, !tbaa !99
  %i.cp = zext i32 %i.cn to i64                   ; 4 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cp ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !376 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, %i.by
  br i1 %i.ct, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 12 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !68 ; 2 uses
  store i32 %i.cv, ptr %i.cr, align 4, !tbaa !68
  store i32 %i.by, ptr %i.cu, align 4, !tbaa !68
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cw = phi i32 [ %i.cv, %bb.k ], [ %i.cs, %bb.j ] ; 10 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.068160, i64 8 ; 9 uses
  %.not138 = icmp eq i32 %i.cw, %.sroa.031.0.copyload
  br i1 %.not138, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cy = ashr i32 %i.cw, 1
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %i.cd, i64 %i.cz
  %i.db = trunc i32 %i.cw to i8
  %i.dc = load i8, ptr %i.da, align 1, !tbaa !378
  %i.dd = and i8 %i.db, 1
  %i.de = icmp eq i8 %i.dc, %i.dd
  br i1 %i.de, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %.074159, i64 8
  %.sroa.6.0.insert.ext118 = zext i32 %i.cw to i64
  %.sroa.6.0.insert.shift119 = shl nuw i64 %.sroa.6.0.insert.ext118, 32
  %.sroa.0108.0.insert.insert112 = or disjoint i64 %.sroa.6.0.insert.shift119, %i.cp
  store i64 %.sroa.0108.0.insert.insert112, ptr %.074159, align 4
  br label %_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit, !llvm.loop !442

.critedge:                                        ; preds = %bb.l, %bb.m
  %i.dg = load i64, ptr %i.cq, align 4            ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = icmp ugt i32 %i.dh, 95
  br i1 %i.di, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.critedge
  %i.dj = lshr i64 %i.dg, 5
  %wide.trip.count = and i64 %i.dj, 134217727
  br label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !443

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv
  %.sroa.03.0.copyload = load i32, ptr %i.dk, align 4, !tbaa !68 ; 3 uses
  %i.dl = ashr i32 %.sroa.03.0.copyload, 1
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %i.cd, i64 %i.dm
  %i.do = trunc i32 %.sroa.03.0.copyload to i8
  %i.dp = load i8, ptr %i.dn, align 1, !tbaa !378
  %i.dq = and i8 %i.do, 1
  %i.dr = xor i8 %i.dq, %i.dp
  %.not139 = icmp eq i8 %i.dr, 1
  br i1 %.not139, label %bb.o, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cq, i64 12 ; 2 uses
  store i32 %.sroa.03.0.copyload, ptr %i.dt, align 4, !tbaa !68
  store i32 %i.by, ptr %i.ds, align 4, !tbaa !68
  %.sroa.02.0.copyload = load i32, ptr %i.dt, align 4, !tbaa !68
  %i.du = xor i32 %.sroa.02.0.copyload, 1
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.dw = sext i32 %i.du to i64
  %i.dx = getelementptr inbounds [16 x i8], ptr %i.dv, i64 %i.dw ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !121 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 12 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !374
  %i.ec = icmp eq i32 %i.dz, %i.eb
  br i1 %i.ec, label %bb.q, label %._ZN4cvc58internal7Minisat3vecINS1_6Solver7WatcherEE8capacityEi.exit_crit_edge.i

._ZN4cvc58internal7Minisat3vecINS1_6Solver7WatcherEE8capacityEi.exit_crit_edge.i: ; preds = %bb.p
  %.pre.i100 = load ptr, ptr %i.dx, align 8, !tbaa !118
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ed = ashr i32 %i.dz, 1
  %i.ee = and i32 %i.ed, -2
  %i.ef = call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %i.eg = add nuw nsw i32 %i.ef, 2                ; 2 uses
  %i.eh = sub nsw i32 2147483647, %i.dz
  %i.ei = icmp samesign ugt i32 %i.eg, %i.eh
  br i1 %i.ei, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ej = load ptr, ptr %i.dx, align 8, !tbaa !118
  %i.ek = add nsw i32 %i.eg, %i.dz                ; 2 uses
  store i32 %i.ek, ptr %i.ea, align 4, !tbaa !374
  %i.el = sext i32 %i.ek to i64
  %i.em = shl nsw i64 %i.el, 3
  %i.en = call ptr @realloc(ptr noundef %i.ej, i64 noundef %i.em) #34 ; 3 uses
  store ptr %i.en, ptr %i.dx, align 8, !tbaa !118
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %.loopexit, label %._crit_edge183

._crit_edge183:                                   ; preds = %bb.r
  %.pre = load i32, ptr %i.dy, align 8, !tbaa !121
  br label %bb.s

.loopexit:                                        ; preds = %bb.q, %bb.r
  %i.ep = call ptr @__cxa_allocate_exception(i64 1) #33
  call void @__cxa_throw(ptr %i.ep, ptr nonnull @_ZTIN4cvc58internal7Minisat20OutOfMemoryExceptionE, ptr null) #35
  unreachable

bb.s:                                             ; preds = %._crit_edge183, %._ZN4cvc58internal7Minisat3vecINS1_6Solver7WatcherEE8capacityEi.exit_crit_edge.i
  %i.eq = phi i32 [ %i.dz, %._ZN4cvc58internal7Minisat3vecINS1_6Solver7WatcherEE8capacityEi.exit_crit_edge.i ], [ %.pre, %._crit_edge183 ] ; 2 uses
  %i.er = phi ptr [ %.pre.i100, %._ZN4cvc58internal7Minisat3vecINS1_6Solver7WatcherEE8capacityEi.exit_crit_edge.i ], [ %i.en, %._crit_edge183 ]
  %i.es = add nsw i32 %i.eq, 1
  store i32 %i.es, ptr %i.dy, align 8, !tbaa !121
  %i.et = sext i32 %i.eq to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.et
  %.sroa.6.0.insert.ext123 = zext i32 %i.cw to i64
  %.sroa.6.0.insert.shift124 = shl nuw i64 %.sroa.6.0.insert.ext123, 32
  %.sroa.0108.0.insert.insert116 = or disjoint i64 %.sroa.6.0.insert.shift124, %i.cp
  store i64 %.sroa.0108.0.insert.insert116, ptr %i.eu, align 4
  br label %_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit

._crit_edge:                                      ; preds = %bb.o, %.critedge
  %i.ev = getelementptr inbounds nuw i8, ptr %.074159, i64 8 ; 6 uses
  %.sroa.6.0.insert.ext = zext i32 %i.cw to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0108.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %i.cp
  store i64 %.sroa.0108.0.insert.insert, ptr %.074159, align 4
  %i.ew = ashr i32 %i.cw, 1
  %i.ex = load ptr, ptr %i.bc, align 8, !tbaa !89
  %i.ey = sext i32 %i.ew to i64                   ; 3 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ex, i64 %i.ey ; 2 uses
  %i.fa = trunc i32 %i.cw to i8
  %i.fb = load i8, ptr %i.ez, align 1, !tbaa !378
  %i.fc = and i8 %i.fa, 1                         ; 2 uses
  %i.fd = xor i8 %i.fb, %i.fc
  %i.fe = icmp eq i8 %i.fd, 1
  br i1 %i.fe, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.ff = load i32, ptr %i.ay, align 8, !tbaa !93
  store i32 %i.ff, ptr %i.aw, align 8, !tbaa !385
  %i.fg = icmp ult ptr %i.cx, %i.bx
  br i1 %i.fg, label %.lr.ph156.preheader, label %_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit

.lr.ph156.preheader:                              ; preds = %bb.t
  %2 = add i64 %.068160216, 16
  %3 = call i64 @llvm.umax.i64(i64 %i.ca, i64 %2)
  %4 = add i64 %3, -9
  %i.fh = sub i64 %4, %.068160216                 ; 2 uses
  %i.fi = lshr i64 %i.fh, 3
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fh, 24
  %i.fk = sub i64 %.068160216, %.074159215
  %diff.check = icmp ugt i64 %i.fk, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph156.preheader220, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph156.preheader
  %n.vec = and i64 %i.fj, 4611686018427387900     ; 3 uses
  %i.fl = shl i64 %n.vec, 3                       ; 2 uses
  %i.fm = getelementptr i8, ptr %i.cx, i64 %i.fl  ; 2 uses
  %i.fn = getelementptr i8, ptr %i.ev, i64 %i.fl  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cx, i64 %i.fo ; 2 uses
  %next.gep217 = getelementptr i8, ptr %i.ev, i64 %i.fo ; 2 uses
  %i.fp = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 4
  %wide.load218 = load <2 x i64>, ptr %i.fp, align 4
  %i.fq = getelementptr i8, ptr %next.gep217, i64 16
  store <2 x i64> %wide.load, ptr %next.gep217, align 4
  store <2 x i64> %wide.load218, ptr %i.fq, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !444

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fj, %n.vec
  br i1 %cmp.n, label %_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit, label %.lr.ph156.preheader220

.lr.ph156.preheader220:                           ; preds = %.lr.ph156.preheader, %middle.block
  %.169154.ph = phi ptr [ %i.cx, %.lr.ph156.preheader ], [ %i.fm, %middle.block ]
  %.175153.ph = phi ptr [ %i.ev, %.lr.ph156.preheader ], [ %i.fn, %middle.block ]
  br label %.lr.ph156

.lr.ph156:                                        ; preds = %.lr.ph156.preheader220, %.lr.ph156
  %.169154 = phi ptr [ %i.fs, %.lr.ph156 ], [ %.169154.ph, %.lr.ph156.preheader220 ] ; 2 uses
  %.175153 = phi ptr [ %i.ft, %.lr.ph156 ], [ %.175153.ph, %.lr.ph156.preheader220 ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.169154, i64 8 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.175153, i64 8 ; 2 uses
  %i.fu = load i64, ptr %.169154, align 4
  store i64 %i.fu, ptr %.175153, align 4
  %i.fv = icmp ult ptr %i.fs, %i.bx
  br i1 %i.fv, label %.lr.ph156, label %_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit, !llvm.loop !445

bb.u:                                             ; preds = %._crit_edge
  store i8 %i.fc, ptr %i.ez, align 1, !tbaa !90
  %i.fw = load i32, ptr %i.be, align 8, !tbaa !91
  %i.fx = load i32, ptr %i.bf, align 8, !tbaa !55
  %i.fy = load ptr, ptr %i.bg, align 8, !tbaa !92
  %i.fz = getelementptr inbounds [20 x i8], ptr %i.fy, i64 %i.ey ; 4 uses
  %i.ga = load i32, ptr %i.ay, align 8, !tbaa !93
  store i32 %i.cn, ptr %i.fz, align 4, !tbaa !68
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store i32 %i.fw, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !68
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i32 %i.fx, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !68
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i32 %i.ga, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !68
  %i.gb = load ptr, ptr %i.ax, align 8, !tbaa !94
  %i.gc = load i32, ptr %i.ay, align 8, !tbaa !93 ; 2 uses
  %i.gd = add nsw i32 %i.gc, 1
  store i32 %i.gd, ptr %i.ay, align 8, !tbaa !93
  %i.ge = sext i32 %i.gc to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.ge
  store i32 %i.cw, ptr %i.gf, align 4, !tbaa !68
  %i.gg = load ptr, ptr %i.bh, align 8, !tbaa !95
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.ey
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !64, !range !65, !noundef !66
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.v, label %_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit

bb.v:                                             ; preds = %bb.u
  %i.gk = load ptr, ptr %i.bi, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.gl = call i64 @_ZN4cvc58internal4prop16MinisatSatSolver12toSatLiteralENS0_7Minisat3LitE(i32 %i.cw)
  store i64 %i.gl, ptr %1, align 8
  call void @_ZN4cvc58internal4prop11TheoryProxy20enqueueTheoryLiteralERKNS1_10SatLiteralE(ptr noundef nonnull align 8 dereferenceable(521) %i.gk, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit

_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit: ; preds = %.lr.ph156, %middle.block, %bb.t, %bb.n, %bb.s, %bb.u, %bb.v, %bb.i
  %.478 = phi ptr [ %i.cl, %bb.i ], [ %i.df, %bb.n ], [ %i.ev, %bb.v ], [ %.074159, %bb.s ], [ %i.ev, %bb.u ], [ %i.ev, %bb.t ], [ %i.fn, %middle.block ], [ %i.ft, %.lr.ph156 ] ; 2 uses
  %.472 = phi ptr [ %i.ck, %bb.i ], [ %i.cx, %bb.n ], [ %i.cx, %bb.v ], [ %i.cx, %bb.s ], [ %i.cx, %bb.u ], [ %i.cx, %bb.t ], [ %i.fm, %middle.block ], [ %i.fs, %.lr.ph156 ] ; 2 uses
  %.4 = phi i32 [ %.1161, %bb.i ], [ %.1161, %bb.n ], [ %.1161, %bb.v ], [ %.1161, %bb.s ], [ %.1161, %bb.u ], [ %i.cn, %bb.t ], [ %i.cn, %middle.block ], [ %i.cn, %.lr.ph156 ] ; 2 uses
  %.not = icmp eq ptr %.472, %i.bx
  br i1 %.not, label %._crit_edge164, label %bb.h

._crit_edge164:                                   ; preds = %_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit, %bb.g
  %.074.lcssa = phi ptr [ %i.bt, %bb.g ], [ %.478, %_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit ]
  %.068.lcssa = phi ptr [ %i.bt, %bb.g ], [ %i.bx, %_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit ]
  %.1.lcssa = phi i32 [ %.0169, %bb.g ], [ %.4, %_ZN4cvc58internal7Minisat6Solver16uncheckedEnqueueENS1_3LitEj.exit ] ; 2 uses
  %i.gm = ptrtoint ptr %.068.lcssa to i64
  %i.gn = ptrtoint ptr %.074.lcssa to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = lshr exact i64 %i.go, 3
  %i.gq = trunc i64 %i.gp to i32                  ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph.i101, label %_ZN4cvc58internal7Minisat3vecINS1_6Solver7WatcherEE6shrinkEi.exit

.lr.ph.i101:                                      ; preds = %._crit_edge164
  %.promoted.i = load i32, ptr %i.bu, align 8, !tbaa !121
  %i.gs = sub i32 %.promoted.i, %i.gq
  store i32 %i.gs, ptr %i.bu, align 8, !tbaa !121
  br label %_ZN4cvc58internal7Minisat3vecINS1_6Solver7WatcherEE6shrinkEi.exit

_ZN4cvc58internal7Minisat3vecINS1_6Solver7WatcherEE6shrinkEi.exit: ; preds = %._crit_edge164, %.lr.ph.i101
  %i.gt = load i32, ptr %i.aw, align 8, !tbaa !385 ; 2 uses
  %i.gu = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.gv = icmp slt i32 %i.gt, %i.gu
  br i1 %i.gv, label %bb.g, label %._crit_edge171.loopexit, !llvm.loop !446

._crit_edge171.loopexit:                          ; preds = %_ZN4cvc58internal7Minisat3vecINS1_6Solver7WatcherEE6shrinkEi.exit
  %i.gw = zext nneg i32 %i.bs to i64
  br label %._crit_edge171

._crit_edge171:                                   ; preds = %._crit_edge171.loopexit, %_ZN4cvc58internal7Minisat8OccListsINS1_3LitENS1_3vecINS1_6Solver7WatcherEEENS5_14WatcherDeletedEE8cleanAllEv.exit
  %.067.lcssa = phi i64 [ 0, %_ZN4cvc58internal7Minisat8OccListsINS1_3LitENS1_3vecINS1_6Solver7WatcherEEENS5_14WatcherDeletedEE8cleanAllEv.exit ], [ %i.gw, %._crit_edge171.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ -1, %_ZN4cvc58internal7Minisat8OccListsINS1_3LitENS1_3vecINS1_6Solver7WatcherEEENS5_14WatcherDeletedEE8cleanAllEv.exit ], [ %.1.lcssa, %._crit_edge171.loopexit ]
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !447
  %i.gz = add nsw i64 %i.gy, %.067.lcssa
  store i64 %i.gz, ptr %i.gx, align 8, !tbaa !447
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !448
  %i.hc = sub nsw i64 %i.hb, %.067.lcssa
  store i64 %i.hc, ptr %i.ha, align 8, !tbaa !448
  ret i32 %.0.lcssa
}

declare void @_ZN4cvc58internal4prop11TheoryProxy15theoryPropagateERSt6vectorINS1_10SatLiteralESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(521), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN4cvc58internal4prop11TheoryProxy11theoryCheckENS0_6theory6Theory6EffortE(ptr noundef nonnull align 8 dereferenceable(521), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal7Minisat6Solver8reduceDBEv(ptr noundef nonnull align 8 dereferenceable(850) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load double, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.f = sitofp i32 %i.e to double
  %i.g = fdiv double %i.b, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !105
  tail call void @_ZN4cvc58internal7Minisat4sortIjNS1_11reduceDB_ltEEEvPT_iT0_(ptr noundef %i.i, i32 noundef %i.e, ptr nonnull %i.h)
  %i.j = load i32, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %_ZN4cvc58internal7Minisat3vecIjE6shrinkEi.exit

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 600
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.n = phi i32 [ %i.j, %.lr.ph ], [ %i.aw, %bb.h ]
  %.018 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.h ]  ; 3 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !105  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !68   ; 4 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i64, ptr %i.t, align 4              ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = icmp ugt i32 %i.v, 95
  br i1 %i.w, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.x, align 4, !tbaa !68 ; 2 uses
  %i.y = ashr i32 %.sroa.0.0.copyload.i.i, 1
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !89
  %i.aa = sext i32 %i.y to i64                    ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 %i.aa
  %i.ac = trunc i32 %.sroa.0.0.copyload.i.i to i8
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !378
  %i.ae = and i8 %i.ac, 1
  %i.af = icmp eq i8 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNK4cvc58internal7Minisat6Solver6lockedERKNS1_6ClauseE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !92
  %i.ah = getelementptr inbounds [20 x i8], ptr %i.ag, i64 %i.aa
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !132 ; 2 uses
  %switch.i.i = icmp ult i32 %i.ai, -2
  %i.aj = icmp eq i32 %i.ai, %i.q
  %or.cond = and i1 %switch.i.i, %i.aj
  br i1 %or.cond, label %bb.g, label %_ZNK4cvc58internal7Minisat6Solver6lockedERKNS1_6ClauseE.exit.thread

_ZNK4cvc58internal7Minisat6Solver6lockedERKNS1_6ClauseE.exit.thread: ; preds = %bb.d, %bb.c
  %i.ak = sdiv i32 %i.n, 2
  %i.al = sext i32 %i.ak to i64
end_hunk_0
