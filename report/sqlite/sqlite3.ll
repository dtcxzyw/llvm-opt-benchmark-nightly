Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@nodeAcquire:bb.a
  %i.bg = or disjoint i32 %i.be, %i.bf            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !2923
  %i.bi = icmp samesign ugt i32 %i.bg, 39
  br i1 %i.bi, label %.thread129, label %.thread158

bb.m:                                             ; preds = %bb.k
  %i.bj = icmp eq i32 %i.ax, 0
  br i1 %i.bj, label %.thread158, label %.thread129

.thread158:                                       ; preds = %bb.l, %bb.m
  %i.bk = load ptr, ptr %i.an, align 8, !tbaa !2917 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %.val = load i8, ptr %i.bl, align 1, !tbaa !733
  %i.bm = getelementptr i8, ptr %i.bk, i64 3
  %.val94 = load i8, ptr %i.bm, align 1, !tbaa !733
  %i.bn = zext i8 %.val to i32
  %i.bo = shl nuw nsw i32 %i.bn, 8
  %i.bp = zext i8 %.val94 to i32
  %i.bq = or disjoint i32 %i.bo, %i.bp
  %i.br = load i32, ptr %i.aa, align 8, !tbaa !2946
  %i.bs = add nsw i32 %i.br, -4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !2918
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sdiv i32 %i.bs, %i.bv
  %i.bx = icmp sgt i32 %i.bq, %i.bw
  br i1 %i.bx, label %.thread129, label %.thread125

.thread144:                                       ; preds = %bb.j, %.thread, %sqlite3_malloc64.exit, %.thread109
  %.4.ph = phi i32 [ 7, %bb.j ], [ 267, %.thread ], [ 7, %sqlite3_malloc64.exit ], [ %spec.store.select, %.thread109 ]
  tail call fastcc void @nodeBlobReset(ptr noundef nonnull %0)
  br label %.sink.split

.thread125:                                       ; preds = %.thread158
  %.not.i100 = icmp eq ptr %2, null
  br i1 %.not.i100, label %nodeReference.exit, label %bb.n

bb.n:                                             ; preds = %.thread125
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !2955
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !2955
  br label %nodeReference.exit

nodeReference.exit:                               ; preds = %.thread125, %bb.n
  %i.cb = load i64, ptr %i.as, align 8, !tbaa !2956
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = urem i32 %i.cc, 97
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ce ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2912
  store ptr %i.cg, ptr %i.au, align 8, !tbaa !2947
  store ptr %i.al, ptr %i.cf, align 8, !tbaa !2912
  br label %.sink.split

.thread129:                                       ; preds = %bb.m, %bb.l, %.thread158
  %.4133135 = phi i32 [ 267, %.thread158 ], [ %i.ax, %bb.m ], [ 267, %bb.l ] ; 3 uses
  tail call fastcc void @nodeBlobReset(ptr noundef nonnull %0)
  %i.ch = load i32, ptr %i.ap, align 4, !tbaa !2937
  %i.ci = add i32 %i.ch, -1
  store i32 %i.ci, ptr %i.ap, align 4, !tbaa !2937
  %i.cj = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i101 = icmp eq i32 %i.cj, 0
  br i1 %.not.i101, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.thread129
  %i.ck = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.cl(ptr noundef nonnull %i.ck) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.p, %bb.o
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.cn = tail call i32 %i.cm(ptr noundef nonnull %i.al) #58, !inline_history !13
  %i.co = sext i32 %i.cn to i64
  %i.cp = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.cq = sub nsw i64 %i.cp, %i.co
  store i64 %i.cq, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.cr = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.cs = add nsw i64 %i.cr, -1
  store i64 %i.cs, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ct(ptr noundef nonnull %i.al) #58, !inline_history !749
  %i.cu = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.cu, null
  br i1 %.not.i4.i, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.cv(ptr noundef nonnull %i.cu) #58, !inline_history !750
  br label %.sink.split

bb.r:                                             ; preds = %.thread129
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.cw(ptr noundef nonnull %i.al) #58, !inline_history !749
  br label %.sink.split

.sink.split:                                      ; preds = %nodeReference.exit, %sqlite3_mutex_enter.exit.i, %bb.q, %bb.r, %.thread144, %sqlite3_blob_bytes.exit, %bb.d
  %storemerge.sink = phi ptr [ %.09.i, %bb.d ], [ %i.al, %nodeReference.exit ], [ null, %.thread144 ], [ null, %bb.q ], [ null, %sqlite3_blob_bytes.exit ], [ null, %bb.r ], [ null, %sqlite3_mutex_enter.exit.i ]
  %.178.ph = phi i32 [ 0, %bb.d ], [ 0, %nodeReference.exit ], [ %.4.ph, %.thread144 ], [ %.4133135, %bb.q ], [ 267, %sqlite3_blob_bytes.exit ], [ %.4133135, %bb.r ], [ %.4133135, %sqlite3_mutex_enter.exit.i ]
  store ptr %storemerge.sink, ptr %3, align 8, !tbaa !2912
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.f, %bb.c
  %.178 = phi i32 [ 267, %bb.c ], [ 7, %bb.f ], [ %.178.ph, %.sink.split ]
  ret i32 %.178
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @rtreeStepToLeaf(ptr nofree noundef captures(address) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x double], align 16           ; 14 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2908   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !2922 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 38
  %i.g = load i8, ptr %i.f, align 2, !tbaa !2935
  %.not183 = icmp eq i8 %i.g, 1                   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 39 ; 2 uses
  %i.o = icmp sgt i32 %i.e, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.z = load i8, ptr %i.h, align 1, !tbaa !2932  ; 3 uses
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %bb.c, label %rtreeSearchPointFirst.exit.thread123

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !2933
  %.not4.i = icmp eq i32 %i.aa, 0
  br i1 %.not4.i, label %.critedge, label %rtreeSearchPointFirst.exit

rtreeSearchPointFirst.exit:                       ; preds = %bb.c
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !2934 ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %.critedge, label %rtreeSearchPointFirst.exit.thread123

rtreeSearchPointFirst.exit.thread123:             ; preds = %bb.b, %rtreeSearchPointFirst.exit
  %i.ac = phi ptr [ %i.ab, %rtreeSearchPointFirst.exit ], [ %i.i, %bb.b ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 5 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !2960
  %.not81 = icmp eq i8 %i.ae, 0
  br i1 %.not81, label %.critedge, label %bb.d

bb.d:                                             ; preds = %rtreeSearchPointFirst.exit.thread123
  %i.af = zext i8 %i.z to i64
  %i.ag = sub nsw i64 1, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ag ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2912 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.e, label %rtreeNodeOfFirstSearchPoint.exit.thread

bb.e:                                             ; preds = %bb.d
  %.not.i88 = icmp eq i8 %i.z, 1
  br i1 %.not.i88, label %rtreeNodeOfFirstSearchPoint.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !2934
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  br label %rtreeNodeOfFirstSearchPoint.exit

rtreeNodeOfFirstSearchPoint.exit:                 ; preds = %bb.f, %bb.e
  %.in.i = phi ptr [ %i.al, %bb.f ], [ %i.m, %bb.e ]
  %i.am = load i64, ptr %.in.i, align 8, !tbaa !2914
  %i.an = load ptr, ptr %0, align 8, !tbaa !2908
  %i.ao = call fastcc i32 @nodeAcquire(ptr noundef %i.an, i64 noundef %i.am, ptr noundef null, ptr noundef nonnull %i.ah), !inline_history !528 ; 2 uses
  %.pre.i = load ptr, ptr %i.ah, align 8, !tbaa !2912
  %.not82 = icmp eq i32 %i.ao, 0
  br i1 %.not82, label %rtreeNodeOfFirstSearchPoint.exit.thread, label %.thread169

rtreeNodeOfFirstSearchPoint.exit.thread:          ; preds = %bb.d, %rtreeNodeOfFirstSearchPoint.exit
  %i.ap = phi ptr [ %.pre.i, %rtreeNodeOfFirstSearchPoint.exit ], [ %i.ai, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2917 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %.val = load i8, ptr %i.as, align 1, !tbaa !733
  %i.at = getelementptr i8, ptr %i.ar, i64 3
  %.val87 = load i8, ptr %i.at, align 1, !tbaa !733 ; 2 uses
  %i.au = zext i8 %.val to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = zext i8 %.val87 to i32
  %i.ax = or disjoint i32 %i.av, %i.aw            ; 4 uses
  %i.ay = icmp samesign ugt i32 %i.ax, 51
  br i1 %i.ay, label %.thread169, label %bb.g

bb.g:                                             ; preds = %rtreeNodeOfFirstSearchPoint.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 18 ; 5 uses
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !2919 ; 4 uses
  %i.bb = zext i8 %i.ba to i32
  %i.bc = icmp samesign ugt i32 %i.ax, %i.bb
  br i1 %i.bc, label %.preheader.lr.ph, label %.loopexit185

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.bd = zext i8 %i.ba to i64
  %i.be = load i8, ptr %i.n, align 1, !tbaa !2918
  %i.bf = zext i8 %i.be to i64
  %i.bg = mul nuw nsw i64 %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 17
  br i1 %i.o, label %.preheader, label %.preheader._crit_edge

.preheader:                                       ; preds = %.preheader.lr.ph, %rtreeLeafConstraint.exit.thread
  %.062205 = phi ptr [ %i.ul, %rtreeLeafConstraint.exit.thread ], [ %i.bi, %.preheader.lr.ph ] ; 46 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.062205, i64 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.062205, i64 2
  %i.bm = getelementptr inbounds nuw i8, ptr %.062205, i64 3
  %i.bn = getelementptr inbounds nuw i8, ptr %.062205, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.062205, i64 5
  %i.bp = getelementptr inbounds nuw i8, ptr %.062205, i64 6
  %i.bq = getelementptr inbounds nuw i8, ptr %.062205, i64 7
  %i.br = getelementptr inbounds nuw i8, ptr %.062205, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.062205, i64 44 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.062205, i64 45 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.062205, i64 46 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.062205, i64 47 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.062205, i64 40 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.062205, i64 41 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.062205, i64 42 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.062205, i64 43 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.062205, i64 36 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.062205, i64 37 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.062205, i64 38 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.062205, i64 39 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.062205, i64 32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.062205, i64 33 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.062205, i64 34 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.062205, i64 35 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.062205, i64 28 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.062205, i64 29 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.062205, i64 30 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.062205, i64 31 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.062205, i64 24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.062205, i64 25 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.062205, i64 26 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.062205, i64 27 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.062205, i64 20 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.062205, i64 21 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.062205, i64 22 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.062205, i64 23 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.062205, i64 16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.062205, i64 17 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.062205, i64 18 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.062205, i64 19 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.062205, i64 12 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %rtreeLeafConstraint.exit.thread175
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %rtreeLeafConstraint.exit.thread175 ] ; 2 uses
  %.097196 = phi double [ -1.000000e+00, %.preheader ], [ %.198181, %rtreeLeafConstraint.exit.thread175 ] ; 13 uses
  %.0112195 = phi i32 [ 2, %.preheader ], [ %.1113179, %rtreeLeafConstraint.exit.thread175 ] ; 12 uses
  %i.cz = load ptr, ptr %i.p, align 8, !tbaa !2921
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %indvars.iv ; 13 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !2926 ; 3 uses
  %i.dd = icmp sgt i32 %i.dc, 69
  br i1 %i.dd, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !2929 ; 10 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !2930 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.di = load i32, ptr %i.db, align 4, !tbaa !2926 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 71
  br i1 %i.dj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.dk = load i8, ptr %i.ad, align 8, !tbaa !2960
  %i.dl = icmp eq i8 %i.dk, 1
  br i1 %i.dl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dm = load i8, ptr %.062205, align 1, !tbaa !733
  %i.dn = zext i8 %i.dm to i64
  %i.do = shl nuw i64 %i.dn, 56
  %i.dp = load i8, ptr %i.bk, align 1, !tbaa !733
  %i.dq = zext i8 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 48
  %i.ds = or disjoint i64 %i.dr, %i.do
  %i.dt = load i8, ptr %i.bl, align 1, !tbaa !733
  %i.du = zext i8 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 40
  %i.dw = or disjoint i64 %i.ds, %i.dv
  %i.dx = load i8, ptr %i.bm, align 1, !tbaa !733
  %i.dy = zext i8 %i.dx to i64
  %i.dz = shl nuw nsw i64 %i.dy, 32
  %i.ea = or disjoint i64 %i.dw, %i.dz
  %i.eb = load i8, ptr %i.bn, align 1, !tbaa !733
  %i.ec = zext i8 %i.eb to i64
  %i.ed = shl nuw nsw i64 %i.ec, 24
  %i.ee = or disjoint i64 %i.ea, %i.ed
  %i.ef = load i8, ptr %i.bo, align 1, !tbaa !733
  %i.eg = zext i8 %i.ef to i64
  %i.eh = shl nuw nsw i64 %i.eg, 16
  %i.ei = or disjoint i64 %i.ee, %i.eh
  %i.ej = load i8, ptr %i.bp, align 1, !tbaa !733
  %i.ek = zext i8 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, 8
  %i.em = or disjoint i64 %i.ei, %i.el
  %i.en = load i8, ptr %i.bq, align 1, !tbaa !733
  %i.eo = zext i8 %i.en to i64
  %i.ep = add nuw i64 %i.em, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.df, i64 72
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !6635
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not183, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i32 %i.dh, label %bb.r [
    i32 10, label %bb.n
    i32 8, label %bb.o
    i32 6, label %bb.p
    i32 4, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.er = load i8, ptr %i.bs, align 1, !tbaa !733
  %i.es = zext i8 %i.er to i32
  %i.et = shl nuw i32 %i.es, 24
  %i.eu = load i8, ptr %i.bt, align 1, !tbaa !733
  %i.ev = zext i8 %i.eu to i32
  %i.ew = shl nuw nsw i32 %i.ev, 16
  %i.ex = or disjoint i32 %i.ew, %i.et
  %i.ey = load i8, ptr %i.bu, align 1, !tbaa !733
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 8
  %i.fb = or disjoint i32 %i.ex, %i.fa
  %i.fc = load i8, ptr %i.bv, align 1, !tbaa !733
  %i.fd = zext i8 %i.fc to i32
  %i.fe = or disjoint i32 %i.fb, %i.fd
  %i.ff = bitcast i32 %i.fe to float
  %i.fg = fpext float %i.ff to double
  store double %i.fg, ptr %i.q, align 8, !tbaa !782
  %i.fh = load i8, ptr %i.bw, align 1, !tbaa !733
  %i.fi = zext i8 %i.fh to i32
  %i.fj = shl nuw i32 %i.fi, 24
  %i.fk = load i8, ptr %i.bx, align 1, !tbaa !733
  %i.fl = zext i8 %i.fk to i32
  %i.fm = shl nuw nsw i32 %i.fl, 16
  %i.fn = or disjoint i32 %i.fm, %i.fj
  %i.fo = load i8, ptr %i.by, align 1, !tbaa !733
  %i.fp = zext i8 %i.fo to i32
  %i.fq = shl nuw nsw i32 %i.fp, 8
  %i.fr = or disjoint i32 %i.fn, %i.fq
  %i.fs = load i8, ptr %i.bz, align 1, !tbaa !733
  %i.ft = zext i8 %i.fs to i32
  %i.fu = or disjoint i32 %i.fr, %i.ft
  %i.fv = bitcast i32 %i.fu to float
  %i.fw = fpext float %i.fv to double
  store double %i.fw, ptr %i.r, align 16, !tbaa !782
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.fx = load i8, ptr %i.ca, align 1, !tbaa !733
  %i.fy = zext i8 %i.fx to i32
  %i.fz = shl nuw i32 %i.fy, 24
  %i.ga = load i8, ptr %i.cb, align 1, !tbaa !733
  %i.gb = zext i8 %i.ga to i32
  %i.gc = shl nuw nsw i32 %i.gb, 16
  %i.gd = or disjoint i32 %i.gc, %i.fz
  %i.ge = load i8, ptr %i.cc, align 1, !tbaa !733
  %i.gf = zext i8 %i.ge to i32
  %i.gg = shl nuw nsw i32 %i.gf, 8
  %i.gh = or disjoint i32 %i.gd, %i.gg
  %i.gi = load i8, ptr %i.cd, align 1, !tbaa !733
  %i.gj = zext i8 %i.gi to i32
  %i.gk = or disjoint i32 %i.gh, %i.gj
  %i.gl = bitcast i32 %i.gk to float
  %i.gm = fpext float %i.gl to double
  store double %i.gm, ptr %i.s, align 8, !tbaa !782
  %i.gn = load i8, ptr %i.ce, align 1, !tbaa !733
  %i.go = zext i8 %i.gn to i32
  %i.gp = shl nuw i32 %i.go, 24
  %i.gq = load i8, ptr %i.cf, align 1, !tbaa !733
  %i.gr = zext i8 %i.gq to i32
  %i.gs = shl nuw nsw i32 %i.gr, 16
  %i.gt = or disjoint i32 %i.gs, %i.gp
  %i.gu = load i8, ptr %i.cg, align 1, !tbaa !733
  %i.gv = zext i8 %i.gu to i32
  %i.gw = shl nuw nsw i32 %i.gv, 8
  %i.gx = or disjoint i32 %i.gt, %i.gw
  %i.gy = load i8, ptr %i.ch, align 1, !tbaa !733
  %i.gz = zext i8 %i.gy to i32
  %i.ha = or disjoint i32 %i.gx, %i.gz
  %i.hb = bitcast i32 %i.ha to float
  %i.hc = fpext float %i.hb to double
  store double %i.hc, ptr %i.t, align 16, !tbaa !782
end_hunk_0
begin_hunk_1_@rtreeStepToLeaf:bb.a
bb.ae:                                            ; preds = %bb.ad
  %i.qe = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !733
  %i.qg = fcmp ugt double %i.qd, %i.qf
  br i1 %i.qg, label %rtreeLeafConstraint.exit.thread, label %rtreeLeafConstraint.exit.thread175

bb.af:                                            ; preds = %bb.ad
  %i.qh = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !733
  %i.qj = fcmp olt double %i.qd, %i.qi
  br i1 %i.qj, label %rtreeLeafConstraint.exit.thread175, label %rtreeLeafConstraint.exit.thread

bb.ag:                                            ; preds = %bb.ad
  %i.qk = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !733
  %i.qm = fcmp ult double %i.qd, %i.ql
  br i1 %i.qm, label %rtreeLeafConstraint.exit.thread, label %rtreeLeafConstraint.exit.thread175

bb.ah:                                            ; preds = %bb.ad
  %i.qn = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !733
  %i.qp = fcmp ogt double %i.qd, %i.qo
  br i1 %i.qp, label %rtreeLeafConstraint.exit.thread175, label %rtreeLeafConstraint.exit.thread

bb.ai:                                            ; preds = %bb.ad
  %i.qq = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !733
  %i.qs = fcmp oeq double %i.qd, %i.qr
  br i1 %i.qs, label %rtreeLeafConstraint.exit.thread175, label %rtreeLeafConstraint.exit.thread

bb.aj:                                            ; preds = %bb.ac
  %i.qt = and i32 %i.pv, 1016
  %i.qu = zext nneg i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %.062205, i64 %i.qu ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8 ; 2 uses
  switch i32 %i.dc, label %bb.an [
    i32 63, label %rtreeLeafConstraint.exit.thread175
    i32 64, label %rtreeLeafConstraint.exit.thread
    i32 65, label %bb.ak
    i32 66, label %bb.am
    i32 67, label %bb.am
  ]

bb.ak:                                            ; preds = %bb.aj
  %.sroa.015.0.copyload41.i = load i32, ptr %i.qw, align 1
  %i.qx = call i32 @llvm.bswap.i32(i32 %.sroa.015.0.copyload41.i) ; 2 uses
  %i.qy = bitcast i32 %i.qx to float
  %i.qz = sitofp i32 %i.qx to double
  %i.ra = fpext float %i.qy to double
  %i.rb = select i1 %.not183, double %i.qz, double %i.ra
  %i.rc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !733 ; 2 uses
  %i.re = fcmp ult double %i.rd, %i.rb
  br i1 %i.re, label %rtreeLeafConstraint.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qv, i64 12
  %.sroa.010.0.copyload43.i = load i32, ptr %i.rf, align 1
  %i.rg = call i32 @llvm.bswap.i32(i32 %.sroa.010.0.copyload43.i) ; 2 uses
  %i.rh = bitcast i32 %i.rg to float
  %i.ri = sitofp i32 %i.rg to double
  %i.rj = fpext float %i.rh to double
  %i.rk = select i1 %.not183, double %i.ri, double %i.rj
  %i.rl = fcmp ugt double %i.rd, %i.rk
  br i1 %i.rl, label %rtreeLeafConstraint.exit.thread, label %rtreeLeafConstraint.exit.thread175

bb.am:                                            ; preds = %bb.aj, %bb.aj
  %.sroa.05.0.copyload40.i = load i32, ptr %i.qw, align 1
  %i.rm = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload40.i) ; 2 uses
  %i.rn = bitcast i32 %i.rm to float
  %i.ro = sitofp i32 %i.rm to double
  %i.rp = fpext float %i.rn to double
  %i.rq = select i1 %.not183, double %i.ro, double %i.rp
  %i.rr = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !733
  %i.rt = fcmp ult double %i.rs, %i.rq
  br i1 %i.rt, label %rtreeLeafConstraint.exit.thread, label %rtreeLeafConstraint.exit.thread175

bb.an:                                            ; preds = %bb.aj
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qv, i64 12
  %.sroa.0.0.copyload44.i = load i32, ptr %i.ru, align 1
  %i.rv = call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload44.i) ; 2 uses
  %i.rw = bitcast i32 %i.rv to float
  %i.rx = sitofp i32 %i.rv to double
  %i.ry = fpext float %i.rw to double
  %i.rz = select i1 %.not183, double %i.rx, double %i.ry
  %i.sa = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !733
  %i.sc = fcmp ugt double %i.sb, %i.rz
  br i1 %i.sc, label %rtreeLeafConstraint.exit.thread, label %rtreeLeafConstraint.exit.thread175

rtreeLeafConstraint.exit:                         ; preds = %rtreeCallbackConstraint.exit
  %i.sd = icmp eq i32 %.6118, 0
  br i1 %i.sd, label %rtreeLeafConstraint.exit.thread, label %rtreeLeafConstraint.exit.thread175

rtreeLeafConstraint.exit.thread175:               ; preds = %bb.aj, %bb.an, %bb.am, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.al, %bb.ai, %bb.ah, %rtreeLeafConstraint.exit
  %.198181 = phi double [ %.5102, %rtreeLeafConstraint.exit ], [ %.097196, %bb.ah ], [ %.097196, %bb.ai ], [ %.097196, %bb.al ], [ %.097196, %bb.ad ], [ %.097196, %bb.ae ], [ %.097196, %bb.af ], [ %.097196, %bb.ag ], [ %.097196, %bb.am ], [ %.097196, %bb.an ], [ %.097196, %bb.aj ] ; 2 uses
  %.1113179 = phi i32 [ %.6118, %rtreeLeafConstraint.exit ], [ %.0112195, %bb.ah ], [ %.0112195, %bb.ai ], [ %.0112195, %bb.al ], [ %.0112195, %bb.ad ], [ %.0112195, %bb.ae ], [ %.0112195, %bb.af ], [ %.0112195, %bb.ag ], [ %.0112195, %bb.am ], [ %.0112195, %bb.an ], [ %.0112195, %bb.aj ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader._crit_edge.loopexit, label %bb.h, !llvm.loop !6632

.preheader._crit_edge.loopexit:                   ; preds = %rtreeLeafConstraint.exit.thread175
  %.pre = load i8, ptr %i.az, align 2, !tbaa !2919
  %i.se = trunc i32 %.1113179 to i8
  br label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader._crit_edge.loopexit, %.preheader.lr.ph
  %i.sf = phi i8 [ %i.ba, %.preheader.lr.ph ], [ %.pre, %.preheader._crit_edge.loopexit ] ; 2 uses
  %.062.lcssa193 = phi ptr [ %i.bi, %.preheader.lr.ph ], [ %.062205, %.preheader._crit_edge.loopexit ] ; 8 uses
  %.0112.lcssa = phi i8 [ 2, %.preheader.lr.ph ], [ %i.se, %.preheader._crit_edge.loopexit ]
  %.097.lcssa = phi double [ -1.000000e+00, %.preheader.lr.ph ], [ %.198181, %.preheader._crit_edge.loopexit ] ; 2 uses
  %i.sg = add i8 %i.sf, 1                         ; 2 uses
  store i8 %i.sg, ptr %i.az, align 2, !tbaa !2919
  %i.sh = load i8, ptr %i.ad, align 8, !tbaa !2960
  %i.si = add i8 %i.sh, -1                        ; 2 uses
  %.not84 = icmp eq i8 %i.si, 0
  br i1 %.not84, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %.preheader._crit_edge
  %i.sj = load i8, ptr %.062.lcssa193, align 1, !tbaa !733
  %i.sk = zext i8 %i.sj to i64
  %i.sl = shl nuw i64 %i.sk, 56
  %i.sm = getelementptr inbounds nuw i8, ptr %.062.lcssa193, i64 1
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !733
  %i.so = zext i8 %i.sn to i64
  %i.sp = shl nuw nsw i64 %i.so, 48
  %i.sq = or disjoint i64 %i.sp, %i.sl
  %i.sr = getelementptr inbounds nuw i8, ptr %.062.lcssa193, i64 2
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !733
  %i.st = zext i8 %i.ss to i64
  %i.su = shl nuw nsw i64 %i.st, 40
  %i.sv = or disjoint i64 %i.sq, %i.su
  %i.sw = getelementptr inbounds nuw i8, ptr %.062.lcssa193, i64 3
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !733
  %i.sy = zext i8 %i.sx to i64
  %i.sz = shl nuw nsw i64 %i.sy, 32
  %i.ta = or disjoint i64 %i.sv, %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %.062.lcssa193, i64 4
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !733
  %i.td = zext i8 %i.tc to i64
  %i.te = shl nuw nsw i64 %i.td, 24
  %i.tf = or disjoint i64 %i.ta, %i.te
  %i.tg = getelementptr inbounds nuw i8, ptr %.062.lcssa193, i64 5
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !733
  %i.ti = zext i8 %i.th to i64
  %i.tj = shl nuw nsw i64 %i.ti, 16
  %i.tk = or disjoint i64 %i.tf, %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %.062.lcssa193, i64 6
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !733
  %i.tn = zext i8 %i.tm to i64
  %i.to = shl nuw nsw i64 %i.tn, 8
  %i.tp = or disjoint i64 %i.tk, %i.to
  %i.tq = getelementptr inbounds nuw i8, ptr %.062.lcssa193, i64 7
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !733
  %i.ts = zext i8 %i.tr to i64
  %i.tt = add nuw i64 %i.tp, %i.ts                ; 3 uses
  %i.tu = load i32, ptr %i.j, align 4, !tbaa !2933 ; 2 uses
  %i.tv = icmp sgt i32 %i.tu, 0
  br i1 %i.tv, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ao
  %i.tw = load ptr, ptr %i.k, align 8, !tbaa !2934
  %wide.trip.count216 = zext nneg i32 %i.tu to i64
  br label %bb.aq

bb.ap:                                            ; preds = %bb.aq
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count216
  br i1 %exitcond217.not, label %.loopexit, label %bb.aq, !llvm.loop !6633

bb.aq:                                            ; preds = %.lr.ph, %bb.ap
  %indvars.iv213 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next214, %bb.ap ] ; 2 uses
  %i.tx = getelementptr inbounds nuw [24 x i8], ptr %i.tw, i64 %indvars.iv213
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !2914
  %i.ua = icmp eq i64 %i.tz, %i.tt
  br i1 %i.ua, label %.thread169, label %bb.ap

bb.ar:                                            ; preds = %.preheader._crit_edge
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !2914
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ap, %bb.ao, %bb.ar
  %.sroa.913.0 = phi i8 [ %i.sf, %bb.ar ], [ 0, %bb.ao ], [ 0, %bb.ap ] ; 2 uses
  %.sroa.2.0 = phi i64 [ %i.uc, %bb.ar ], [ %i.tt, %bb.ao ], [ %i.tt, %bb.ap ]
  %i.ud = zext i8 %i.sg to i32
  %.not85 = icmp samesign ugt i32 %i.ax, %i.ud
  br i1 %.not85, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.loopexit
  call fastcc void @rtreeSearchPointPop(ptr noundef nonnull %0)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.loopexit
  %i.ue = fcmp olt double %.097.lcssa, 0.000000e+00
  %.4101 = select i1 %i.ue, double 0.000000e+00, double %.097.lcssa
  %i.uf = call fastcc ptr @rtreeSearchPointNew(ptr noundef nonnull %0, double noundef %.4101, i8 noundef zeroext %i.si) ; 4 uses
  %i.ug = icmp eq ptr %i.uf, null
  br i1 %i.ug, label %.thread169, label %.thread162

.thread162:                                       ; preds = %bb.at
  %1 = getelementptr inbounds nuw i8, ptr %i.uf, i64 17
  store i8 %.0112.lcssa, ptr %1, align 1, !tbaa !2915
  %2 = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  store i64 %.sroa.2.0, ptr %2, align 8, !tbaa !2914
  %3 = getelementptr inbounds nuw i8, ptr %i.uf, i64 18
  store i8 %.sroa.913.0, ptr %3, align 2, !tbaa !2919
  br label %.loopexit185

rtreeLeafConstraint.exit.thread:                  ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %rtreeLeafConstraint.exit
  %i.uh = load i8, ptr %i.az, align 2, !tbaa !2919
  %i.ui = add i8 %i.uh, 1                         ; 3 uses
  store i8 %i.ui, ptr %i.az, align 2, !tbaa !2919
  %i.uj = load i8, ptr %i.n, align 1, !tbaa !2918
  %i.uk = zext i8 %i.uj to i64
  %i.ul = getelementptr inbounds nuw i8, ptr %.062205, i64 %i.uk
  %i.um = icmp ugt i8 %.val87, %i.ui
  br i1 %i.um, label %.preheader, label %.loopexit185

.loopexit185:                                     ; preds = %rtreeLeafConstraint.exit.thread, %bb.g, %.thread162
  %4 = phi i8 [ %.sroa.913.0, %.thread162 ], [ %i.ba, %bb.g ], [ %i.ui, %rtreeLeafConstraint.exit.thread ]
  %.pre218 = zext i8 %4 to i32
  %i.un = icmp samesign ugt i32 %i.ax, %.pre218
  br i1 %i.un, label %.backedge, label %.loopexit185.thread

.backedge:                                        ; preds = %.loopexit185, %.loopexit185.thread
  br label %bb.b, !llvm.loop !6634

.loopexit185.thread:                              ; preds = %.loopexit185
  call fastcc void @rtreeSearchPointPop(ptr noundef nonnull %0)
  br label %.backedge

.critedge:                                        ; preds = %bb.c, %rtreeSearchPointFirst.exit, %rtreeSearchPointFirst.exit.thread123
  %.not122 = phi i8 [ 0, %rtreeSearchPointFirst.exit.thread123 ], [ 1, %rtreeSearchPointFirst.exit ], [ 1, %bb.c ]
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.not122, ptr %i.uo, align 8, !tbaa !2920
  br label %.thread169

.thread169:                                       ; preds = %bb.at, %rtreeNodeOfFirstSearchPoint.exit, %rtreeNodeOfFirstSearchPoint.exit.thread, %bb.aq, %rtreeCallbackConstraint.exit, %.critedge
  %.8 = phi i32 [ 0, %.critedge ], [ %.0.i, %rtreeCallbackConstraint.exit ], [ 267, %bb.aq ], [ 7, %bb.at ], [ %i.ao, %rtreeNodeOfFirstSearchPoint.exit ], [ 267, %rtreeNodeOfFirstSearchPoint.exit.thread ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rtreeEnqueue(ptr nofree noundef captures(none) %0, double noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.RtreeSearchPoint, align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2933 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !6642 ; 2 uses
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre54 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !2934
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = shl nsw i32 %i.d, 1
  %i.f = add nsw i32 %i.e, 8                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2934
  %i.i = tail call i32 @sqlite3_initialize(), !inline_history !1234
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %sqlite3_realloc64.exit, label %.critedge

sqlite3_realloc64.exit:                           ; preds = %bb.b
  %i.j = sext i32 %i.f to i64
  %i.k = mul nsw i64 %i.j, 24
  %i.l = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.h, i64 noundef %i.k), !inline_history !1234 ; 3 uses
  %.not39 = icmp eq ptr %i.l, null
  br i1 %.not39, label %.critedge, label %bb.c

bb.c:                                             ; preds = %sqlite3_realloc64.exit
  store ptr %i.l, ptr %i.g, align 8, !tbaa !2934
  store i32 %i.f, ptr %i.c, align 8, !tbaa !6642
  %.pre = load i32, ptr %i.a, align 4, !tbaa !2933
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.m = phi ptr [ %i.l, %bb.c ], [ %.pre54, %._crit_edge ]
  %i.n = phi i32 [ %.pre, %bb.c ], [ %i.b, %._crit_edge ] ; 4 uses
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.a, align 4, !tbaa !2933
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [24 x i8], ptr %i.m, i64 %i.q ; 4 uses
  store double %1, ptr %i.r, align 8, !tbaa !2959
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 %2, ptr %i.s, align 8, !tbaa !2960
  %i.t = icmp sgt i32 %i.n, 0
  br i1 %i.t, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %.03148 = phi ptr [ %i.r, %.lr.ph ], [ %i.z, %bb.k ] ; 4 uses
  %.03347 = phi i32 [ %i.n, %.lr.ph ], [ %i.w, %bb.k ] ; 4 uses
  %i.v = add nsw i32 %.03347, -1
  %i.w = lshr i32 %i.v, 1                         ; 4 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !2934 ; 2 uses
  %i.y = zext nneg i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.y ; 6 uses
  %i.aa = load double, ptr %.03148, align 8, !tbaa !2959 ; 2 uses
  %i.ab = load double, ptr %i.z, align 8, !tbaa !2959 ; 2 uses
  %i.ac = fcmp olt double %i.aa, %i.ab
  br i1 %i.ac, label %rtreeSearchPointCompare.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = fcmp ogt double %i.aa, %i.ab
  br i1 %i.ad, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.03148, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !2960
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !2960
  %i.ai = icmp ult i8 %i.af, %i.ah
  br i1 %i.ai, label %rtreeSearchPointCompare.exit, label %.critedge

rtreeSearchPointCompare.exit:                     ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !2961
  %i.aj = zext nneg i32 %.03347 to i64            ; 3 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !tbaa.struct !2961
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !2934
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !2961
  %i.an = add nuw nsw i32 %i.w, 1                 ; 2 uses
  %i.ao = icmp samesign ult i32 %.03347, 9
  br i1 %i.ao, label %bb.h, label %bb.k

bb.h:                                             ; preds = %rtreeSearchPointCompare.exit
  %i.ap = icmp samesign ugt i32 %.03347, 3
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %0, align 8, !tbaa !2908
  %i.ar = zext nneg i32 %i.an to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2912
  %i.au = tail call fastcc i32 @nodeRelease(ptr noundef %i.aq, ptr noundef %i.at), !inline_history !531 ; 0 uses
  store ptr null, ptr %i.as, align 8, !tbaa !2912
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.av = zext nneg i32 %i.an to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2912
  %i.ay = getelementptr [8 x i8], ptr %i.u, i64 %i.aj
  %i.az = getelementptr i8, ptr %i.ay, i64 8      ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !2912
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !2912
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !2912
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %rtreeSearchPointCompare.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not53 = icmp eq i32 %i.w, 0
  br i1 %.not53, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.k, %bb.g, %bb.f, %bb.d, %bb.b, %sqlite3_realloc64.exit
  %.136 = phi ptr [ null, %bb.b ], [ null, %sqlite3_realloc64.exit ], [ %i.r, %bb.d ], [ %i.z, %bb.k ], [ %.03148, %bb.g ], [ %.03148, %bb.f ]
  ret ptr %.136
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rtreeSearchPointPop(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.RtreeSearchPoint, align 8   ; 4 uses
  %2 = alloca %struct.RtreeSearchPoint, align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !2932  ; 2 uses
  %i.c = zext i8 %i.b to i64
  %i.d = sub nsw i64 1, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.d ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2912 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !2908
  %i.i = tail call fastcc i32 @nodeRelease(ptr noundef %i.h, ptr noundef nonnull %i.g) ; 0 uses
  store ptr null, ptr %i.f, align 8, !tbaa !2912
  %.pre = load i8, ptr %i.a, align 1, !tbaa !2932
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i8 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %.not53 = icmp eq i8 %i.j, 0
  br i1 %.not53, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load i8, ptr %i.l, align 8, !tbaa !2962
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !570
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !570
  store i8 0, ptr %i.a, align 1, !tbaa !2932
  br label %rtreeSearchPointCompare.exit57

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !2933 ; 5 uses
  %.not54 = icmp eq i32 %i.s, 0
  br i1 %.not54, label %rtreeSearchPointCompare.exit57, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2934 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i8, ptr %i.w, align 8, !tbaa !2960
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !570
  %i.ab = add i32 %i.aa, -1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !570
  %i.ac = add nsw i32 %i.s, -1                    ; 4 uses
  store i32 %i.ac, ptr %i.r, align 4, !tbaa !2933
end_hunk_1
