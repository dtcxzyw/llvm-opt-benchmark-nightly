Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 105
begin_hunk_0_@reparentPage:bb.a
  br i1 %.not3539.i.i.i.i35, label %.critedge.i.i.i.i41, label %.lr.ph.i.i.i.i36

.lr.ph.i.i.i.i36:                                 ; preds = %.preheader.i.i.i.i33, %bb.ad
  %.040.i.i.i.i37 = phi ptr [ %.0.i.i.i.i39, %bb.ad ], [ %.038.i.i.i.i34, %.preheader.i.i.i.i33 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.040.i.i.i.i37, i64 58
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !563
  %.not36.i.i.i.i38 = icmp eq i8 %i.bx, 0
  br i1 %.not36.i.i.i.i38, label %.critedge.i.i.i.i41, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i36
  %i.by = getelementptr inbounds nuw i8, ptr %.040.i.i.i.i37, i64 32
  %.0.i.i.i.i39 = load ptr, ptr %i.by, align 8, !tbaa !558 ; 2 uses
  %.not35.i.i.i.i40 = icmp eq ptr %.0.i.i.i.i39, null
  br i1 %.not35.i.i.i.i40, label %.critedge.i.i.i.i41, label %.lr.ph.i.i.i.i36, !llvm.loop !43

.critedge.i.i.i.i41:                              ; preds = %bb.ad, %.lr.ph.i.i.i.i36, %.preheader.i.i.i.i33
  %.0.lcssa.i.i.i.i42 = phi ptr [ null, %.preheader.i.i.i.i33 ], [ null, %bb.ad ], [ %.040.i.i.i.i37, %.lr.ph.i.i.i.i36 ]
  store ptr %.0.lcssa.i.i.i.i42, ptr %i.bt, align 8, !tbaa !562
  br label %_page_ref.exit.i32

_page_ref.exit.i32:                               ; preds = %.critedge.i.i.i.i41, %bb.ac
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 76 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !551
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !551
  br label %sqlite3PagerRef.exit

sqlite3PagerRef.exit:                             ; preds = %bb.u, %_page_ref.exit.i32
  %storemerge.i = add i16 %i.be, 1
  store i16 %storemerge.i, ptr %i.bd, align 2, !tbaa !557
  br label %bb.ae

bb.ae:                                            ; preds = %sqlite3PagerRef.exit, %bb.r
  %i.cc = trunc i32 %3 to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 104
  store i16 %i.cc, ptr %i.cd, align 8, !tbaa !673
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.q
  tail call fastcc void @sqlite3PagerUnref(ptr noundef nonnull %.014.i.i)
  br label %sqlite3PagerLookup.exit.thread

sqlite3PagerLookup.exit.thread:                   ; preds = %bb.f, %bb.d, %bb.e, %bb.c, %bb.b, %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !690
  %.not27 = icmp eq i8 %i.cf, 0
  br i1 %.not27, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %sqlite3PagerLookup.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !356
  %i.ci = tail call fastcc i32 @ptrmapPut(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext 5, i32 noundef %i.ch)
  br label %bb.ah

bb.ah:                                            ; preds = %sqlite3PagerLookup.exit.thread, %bb.a, %bb.ag
  %.0 = phi i32 [ 0, %bb.a ], [ %i.ci, %bb.ag ], [ 0, %sqlite3PagerLookup.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @balance_quick(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.CellInfo, align 8           ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.CellInfo, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !654  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i16, ptr %i.g, align 4, !tbaa !662
  %i.i = zext i16 %i.h to i32                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #43
  %i.j = call fastcc i32 @allocateBtreePage(ptr noundef %i.f, ptr noundef %i.a, ptr noundef %i.b, i32 noundef 0, i8 noundef zeroext 0) ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge.i, label %bb.s

._crit_edge.i:                                    ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !776  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call fastcc void @sqlite3BtreeParseCellPtr(ptr noundef nonnull readonly %0, ptr noundef %i.l, ptr noundef nonnull %2)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.n = load i16, ptr %i.m, align 2, !tbaa !688  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !657  ; 22 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !653
  %i.r = load i8, ptr %i.q, align 1, !tbaa !139   ; 4 uses
  %i.s = zext i8 %i.r to i32                      ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !653
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !654
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !655   ; 3 uses
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = zext i8 %i.y to i64                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aa ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 46 ; 4 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !680
  %i.ae = zext i16 %i.ad to i32
  %i.af = sub nsw i32 %i.ae, %i.z
  %i.ag = sext i32 %i.af to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ag, i1 false)
  store i8 %i.r, ptr %i.ab, align 1, !tbaa !139
  %i.ah = lshr i32 %i.s, 1
  %i.ai = and i32 %i.ah, 4
  %reass.sub.i = sub nsw i32 %i.z, %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i32 0, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 7
  store i8 0, ptr %i.ak, align 1, !tbaa !139
  %i.al = load i16, ptr %i.ac, align 2, !tbaa !680
  %i.am = lshr i16 %i.al, 8
  %i.an = trunc nuw i16 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !139
  %i.ap = load i16, ptr %i.ac, align 2, !tbaa !680
  %i.aq = trunc i16 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !139
  %i.as = load i16, ptr %i.ac, align 2, !tbaa !680
  %i.at = trunc nsw i32 %reass.sub.i to i16
  %i.au = add nsw i16 %i.at, 12                   ; 3 uses
  %i.av = sub i16 %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 18 ; 3 uses
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !682
  %i.ax = and i32 %i.s, 5
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !357
  %i.bb = lshr i8 %i.r, 1
  %i.bc = and i8 %i.bb, 1                         ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !676
  %i.be = lshr i8 %i.r, 3                         ; 2 uses
  %i.bf = and i8 %i.be, 1                         ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i8 %i.bf, ptr %i.bg, align 4, !tbaa !671
  %i.bh = shl nuw nsw i8 %i.bf, 2
  %i.bi = xor i8 %i.bh, 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !663
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !654 ; 2 uses
  %i.bl = and i32 %i.s, 4
  %.not.i.i = icmp eq i32 %i.bl, 0                ; 4 uses
  %..i.i = select i1 %.not.i.i, i64 48, i64 56
  %.29.i.i = select i1 %.not.i.i, i64 52, i64 60
  %not..not.i.i = xor i1 %.not.i.i, true
  %.30.i.i = zext i1 %not..not.i.i to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %..i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.29.i.i
  %.sink.in.i.i = load i32, ptr %i.bn, align 4, !tbaa !112
  %.sink.i.i = trunc i32 %.sink.in.i.i to i16
  %.sink25.in.i.i = load i32, ptr %i.bm, align 8, !tbaa !112
  %.sink25.i.i = trunc i32 %.sink25.in.i.i to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  store i8 %.30.i.i, ptr %i.bo, align 2, !tbaa !670
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  store i16 %.sink25.i.i, ptr %i.bp, align 2, !tbaa !677
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i16 %.sink.i.i, ptr %i.bq, align 4, !tbaa !678
  %.not23.i.i = icmp eq i8 %i.bc, 0
  %.not24.i.i = trunc i8 %i.be to i1
  %narrow.i.i = or i1 %.not.i.i, %.not24.i.i
  %narrow31.i.i = select i1 %.not23.i.i, i1 %narrow.i.i, i1 false
  %i.br = zext i1 %narrow31.i.i to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 7
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !664
  store i8 %i.y, ptr %i.x, align 8, !tbaa !655
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  store i16 %i.au, ptr %i.bt, align 2, !tbaa !660
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 0, ptr %i.bu, align 2, !tbaa !679
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 0, ptr %i.bv, align 1, !tbaa !674
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  store i16 0, ptr %i.bw, align 4, !tbaa !662
  store i8 1, ptr %i.o, align 8, !tbaa !672
  %i.bx = zext i16 %i.n to i32
  %i.by = load ptr, ptr %i.t, align 8, !tbaa !653 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.aa ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  store i8 0, ptr %i.ca, align 1, !tbaa !139
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i8 1, ptr %i.cb, align 1, !tbaa !139
  %i.cc = tail call fastcc i32 @allocateSpace(ptr noundef nonnull %i.o, i32 noundef %i.bx) ; 3 uses
  %i.cd = load i16, ptr %i.aw, align 2, !tbaa !682
  %i.ce = add i16 %i.cd, -2
  store i16 %i.ce, ptr %i.aw, align 2, !tbaa !682
  %i.cf = zext nneg i16 %i.au to i64
  %i.cg = zext i16 %i.n to i64
  %i.ch = lshr i32 %i.cc, 8
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cf ; 2 uses
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !139
  %i.ck = trunc i32 %i.cc to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !139
  %4 = sext i32 %i.cc to i64
  %i.cm = getelementptr inbounds i8, ptr %i.by, i64 %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr align 1 %i.l, i64 %i.cg, i1 false)
  store i16 1, ptr %i.bw, align 4, !tbaa !662
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.cn, align 2, !tbaa !679
  %i.co = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store ptr %1, ptr %i.co, align 8, !tbaa !675
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !548 ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 62 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !557 ; 2 uses
  %i.ct = icmp eq i16 %i.cs, 0
  br i1 %i.ct, label %bb.b, label %sqlite3PagerRef.exit

bb.b:                                             ; preds = %._crit_edge.i
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !556 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 168 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 32 ; 4 uses
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !561
  %i.cy = icmp eq ptr %i.cq, %i.cx
  br i1 %i.cy, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !558
  store ptr %i.cz, ptr %i.cv, align 8, !tbaa !561
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 176 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !559
  %i.dc = icmp eq ptr %i.cq, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !560 ; 4 uses
  br i1 %i.dc, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.de, ptr %i.da, align 8, !tbaa !559
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.de, null
  %.pre43.i.i.i.i = load ptr, ptr %i.cw, align 8, !tbaa !558 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store ptr %.pre43.i.i.i.i, ptr %i.df, align 8, !tbaa !558
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i
  %.not33.i.i.i.i = icmp eq ptr %.pre43.i.i.i.i, null
  br i1 %.not33.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %.pre43.i.i.i.i, i64 40
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !560
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 184 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !562
  %i.dj = icmp eq ptr %i.cq, %i.di
  br i1 %i.dj, label %.preheader.i.i.i.i, label %_page_ref.exit.i

.preheader.i.i.i.i:                               ; preds = %bb.i
  %.038.i.i.i.i = load ptr, ptr %i.cw, align 8, !tbaa !558 ; 2 uses
  %.not3539.i.i.i.i = icmp eq ptr %.038.i.i.i.i, null
  br i1 %.not3539.i.i.i.i, label %.critedge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.j
  %.040.i.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.j ], [ %.038.i.i.i.i, %.preheader.i.i.i.i ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.040.i.i.i.i, i64 58
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !563
  %.not36.i.i.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not36.i.i.i.i, label %.critedge.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.040.i.i.i.i, i64 32
  %.0.i.i.i.i = load ptr, ptr %i.dm, align 8, !tbaa !558 ; 2 uses
  %.not35.i.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not35.i.i.i.i, label %.critedge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !43

.critedge.i.i.i.i:                                ; preds = %bb.j, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi ptr [ null, %.preheader.i.i.i.i ], [ null, %bb.j ], [ %.040.i.i.i.i, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.dh, align 8, !tbaa !562
  br label %_page_ref.exit.i

_page_ref.exit.i:                                 ; preds = %.critedge.i.i.i.i, %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cu, i64 76 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !551
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !551
  br label %sqlite3PagerRef.exit

sqlite3PagerRef.exit:                             ; preds = %._crit_edge.i, %_page_ref.exit.i
  %storemerge.i = add i16 %i.cs, 1
  store i16 %storemerge.i, ptr %i.cr, align 2, !tbaa !557
  %i.dq = load ptr, ptr %i.p, align 8, !tbaa !653 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !660
  %i.dt = zext i16 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dv = load i16, ptr %i.du, align 4, !tbaa !662
  %i.dw = zext i16 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = add nsw i32 %i.dt, -2
  %i.dz = add nsw i32 %i.dy, %i.dx
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds i8, ptr %i.dq, i64 %i.ea ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !139
  %i.ed = zext i8 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !139
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ee
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eh
  call fastcc void @sqlite3BtreeParseCellPtr(ptr noundef nonnull %0, ptr noundef %i.ej, ptr noundef nonnull %3)
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !684
  %i.em = call fastcc i32 @fillInCell(ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef null, i64 noundef %i.el, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %i.c) ; 2 uses
  %.not43 = icmp eq i32 %i.em, 0
  br i1 %.not43, label %bb.k, label %bb.s

bb.k:                                             ; preds = %sqlite3PagerRef.exit
  %i.en = load i32, ptr %i.c, align 4, !tbaa !112
  %i.eo = call fastcc i32 @insertCell(ptr noundef %1, i32 noundef %i.i, ptr noundef nonnull %i.d, i32 noundef %i.en, ptr noundef null, i8 noundef zeroext 4) ; 2 uses
  %.not44 = icmp eq i32 %i.eo, 0
  br i1 %.not44, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !679 ; 2 uses
  %.not33.i = icmp eq i8 %i.eq, 0
  br i1 %.not33.i, label %._crit_edge.i50, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.l
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.es = zext i8 %i.eq to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph.i47
  %indvars.iv.i48 = phi i64 [ %i.es, %.lr.ph.i47 ], [ %indvars.iv.next.i49, %bb.p ] ; 2 uses
  %.02131.i = phi i32 [ %i.i, %.lr.ph.i47 ], [ %.2.i, %bb.p ] ; 4 uses
  %indvars.iv.next.i49 = add nsw i64 %indvars.iv.i48, -1 ; 2 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %indvars.iv.next.i49 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i16, ptr %i.eu, align 8, !tbaa !777
  %i.ew = zext i16 %i.ev to i32                   ; 2 uses
  %.not.i = icmp slt i32 %.02131.i, %i.ew
  br i1 %.not.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ex = icmp eq i32 %.02131.i, %i.ew
  br i1 %i.ex, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %bb.n
  %i.ey = load ptr, ptr %i.et, align 8, !tbaa !776
  br label %findOverflowCell.exit

bb.o:                                             ; preds = %bb.n
  %i.ez = add nsw i32 %.02131.i, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.2.i = phi i32 [ %.02131.i, %bb.m ], [ %i.ez, %bb.o ] ; 2 uses
  %i.fa = icmp samesign ugt i64 %indvars.iv.i48, 1
  br i1 %i.fa, label %bb.m, label %._crit_edge.i50, !llvm.loop !70

._crit_edge.i50:                                  ; preds = %bb.p, %bb.l
  %.021.lcssa.i = phi i32 [ %i.i, %bb.l ], [ %.2.i, %bb.p ]
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !653 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !660
  %i.ff = zext i16 %i.fe to i32
  %i.fg = shl nsw i32 %.021.lcssa.i, 1
  %i.fh = add nsw i32 %i.fg, %i.ff
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds i8, ptr %i.fc, i64 %i.fi ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !139
  %i.fl = zext i8 %i.fk to i64
  %i.fm = shl nuw nsw i64 %i.fl, 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !139
  %i.fp = zext i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fm
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fp
  br label %findOverflowCell.exit

findOverflowCell.exit:                            ; preds = %.thread.i, %._crit_edge.i50
  %.224.i = phi ptr [ %i.ey, %.thread.i ], [ %i.fr, %._crit_edge.i50 ] ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !356 ; 4 uses
  %i.fu = lshr i32 %i.ft, 24
  %i.fv = trunc nuw i32 %i.fu to i8
  store i8 %i.fv, ptr %.224.i, align 1, !tbaa !139
  %i.fw = lshr i32 %i.ft, 16
  %i.fx = trunc i32 %i.fw to i8
end_hunk_0
