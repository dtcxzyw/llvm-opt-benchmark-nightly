Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/gindatapage?download=true
inline.NumInlined: 162
inline.NumDeleted: 40
begin_hunk_0_@GinDataPageAddPostingItem:bb.a
  %i.w = add i16 %i.f, 1                          ; 2 uses
  store i16 %i.w, ptr %i.e, align 4
  %i.x = mul i16 %i.w, 10
  %i.y = add i16 %i.x, 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.y, ptr %i.z, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @GinPageDeletePostingItem(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = zext i16 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i16, ptr %i.e, align 4              ; 3 uses
  %.not = icmp eq i16 %1, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i16 %i.f to i32
  %i.h = zext i16 %1 to i32                       ; 2 uses
  %i.i = mul nuw nsw i32 %i.h, 10
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = zext i16 %1 to i64
  %i.o = mul nuw nsw i64 %i.n, 10
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = sub nsw i32 %i.g, %i.h
  %narrow = mul nsw i32 %i.q, 10
  %i.r = sext i32 %narrow to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.l, ptr nonnull align 2 %i.p, i64 %i.r, i1 false)
  %.pre = load i16, ptr %i.a, align 8
  %.pre18 = zext i16 %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi = phi i64 [ %.pre18, %bb.b ], [ %i.c, %bb.a ]
  %i.s = add i16 %i.f, -1                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.pre-phi
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i16 %i.s, ptr %i.u, align 4
  %i.v = mul i16 %i.s, 10
  %i.w = add i16 %i.v, 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.w, ptr %i.x, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ginVacuumPostingTreeLeaf(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = icmp slt i32 %1, 0                       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.e = xor i32 %1, -1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @BufferBlocks, align 8
  %i.j = add nsw i32 %1, -1
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 13
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %i.n = tail call fastcc ptr @disassembleLeaf(ptr noundef %.0.i.i) ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not = icmp eq ptr %i.p, null
  %.not7082103 = icmp eq ptr %i.p, %i.n
  %.not7082 = or i1 %.not, %.not7082103
  br i1 %.not7082, label %.critedge, label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %BufferGetPage.exit, %.thread
  %.084.ph = phi i1 [ true, %.thread ], [ false, %BufferGetPage.exit ]
  %.sroa.0.083.ph = phi ptr [ %i.ay, %.thread ], [ %i.p, %BufferGetPage.exit ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.outer, %bb.m
  %.sroa.0.083 = phi ptr [ %i.av, %bb.m ], [ %.sroa.0.083.ph, %.lr.ph.outer ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.083, i64 48 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not75 = icmp eq ptr %i.r, null
  br i1 %.not75, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.083, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.083, i64 56
  %i.v = call ptr @ginPostingListDecode(ptr noundef %i.t, ptr noundef nonnull %i.u) #9 ; 2 uses
  store ptr %i.v, ptr %i.q, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.w = phi ptr [ %i.v, %bb.d ], [ %i.r, %.lr.ph ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.083, i64 40
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not76 = icmp eq ptr %i.y, null
  br i1 %.not76, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = zext i16 %i.aa to i32
  %i.ac = add nuw nsw i32 %i.ab, 1
  %i.ad = and i32 %i.ac, 131070
  %i.ae = add nuw nsw i32 %i.ad, 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.064 = phi i32 [ %i.ae, %bb.f ], [ 8152, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.083, i64 56 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = call ptr @ginVacuumItemPointers(ptr noundef %2, ptr noundef %i.w, i32 noundef %i.ag, ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.ai = load ptr, ptr %i.q, align 8
  call void @pfree(ptr noundef %i.ai) #9
  store ptr null, ptr %i.q, align 8
  store i32 0, ptr %i.af, align 8
  %.not77 = icmp eq ptr %i.ah, null
  br i1 %.not77, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.083, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.083, i64 56
  %i.al = load i32, ptr %i.a, align 4             ; 3 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.an = call ptr @ginCompressPostingList(ptr noundef nonnull %i.ah, i32 noundef %i.al, i32 noundef %.064, ptr noundef nonnull %i.b) #9
  store ptr %i.an, ptr %i.aj, align 8
  %i.ao = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ap = load i32, ptr %i.a, align 4
  %.not78 = icmp eq i32 %i.ao, %i.ap
  br i1 %.not78, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.ar = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 782, ptr noundef nonnull @__func__.ginVacuumPostingTreeLeaf) #9
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.083, i64 16
  store i8 3, ptr %i.as, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.thread

bb.l:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.083, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.at, align 8
  br label %.thread

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.083, i64 8
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not70 = icmp eq ptr %i.av, %i.n
  br i1 %.not70, label %._crit_edge, label %.lr.ph, !llvm.loop !10

.thread:                                          ; preds = %bb.k, %bb.l
  %i.aw = phi i32 [ %i.al, %bb.l ], [ %i.ao, %bb.k ]
  store i32 %i.aw, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.083, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not70106 = icmp eq ptr %i.ay, %i.n
  br i1 %.not70106, label %._crit_edge.thread, label %.lr.ph.outer, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.m
  br i1 %.084.ph, label %._crit_edge.thread, label %.critedge

._crit_edge.thread:                               ; preds = %.thread, %._crit_edge
  %i.az = load ptr, ptr %i.o, align 8             ; 3 uses
  %.not71 = icmp eq ptr %i.az, null
  %.not7285104 = icmp eq ptr %i.az, %i.n
  %.not7285 = or i1 %.not71, %.not7285104
  br i1 %.not7285, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %._crit_edge.thread, %bb.o
  %.06287 = phi i1 [ %spec.select, %bb.o ], [ false, %._crit_edge.thread ]
  %.sroa.0.186 = phi ptr [ %i.bn, %bb.o ], [ %i.az, %._crit_edge.thread ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.186, i64 16
  %i.bb = load i8, ptr %i.ba, align 8             ; 2 uses
  %.not73 = icmp ne i8 %i.bb, 0
  %spec.select = or i1 %.not73, %.06287           ; 2 uses
  %.not74 = icmp ne i8 %i.bb, 1
  %or.cond.not = and i1 %.not74, %spec.select
  br i1 %or.cond.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph89
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.186, i64 40 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = zext i16 %i.bf to i64
  %i.bh = add nuw nsw i64 %i.bg, 1
  %i.bi = and i64 %i.bh, 131070
  %i.bj = add nuw nsw i64 %i.bi, 8                ; 2 uses
  %i.bk = call ptr @palloc(i64 noundef %i.bj) #9  ; 2 uses
  %i.bl = load ptr, ptr %i.bc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.bk, ptr noundef nonnull align 2 dereferenceable(1) %i.bl, i64 %i.bj, i1 false)
  store ptr %i.bk, ptr %i.bc, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph89
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.186, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not72 = icmp eq ptr %i.bn, %i.n
  br i1 %.not72, label %._crit_edge90, label %.lr.ph89, !llvm.loop !11

._crit_edge90:                                    ; preds = %bb.o, %._crit_edge.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 118
  %i.br = load i8, ptr %i.bq, align 2
  %i.bs = icmp eq i8 %i.br, 112
  br i1 %i.bs, label %bb.p, label %bb.t

bb.p:                                             ; preds = %._crit_edge90
  %i.bt = load i32, ptr @wal_level, align 4
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.p
  call fastcc void @computeLeafRecompressWALData(ptr noundef %i.n)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %._crit_edge90
  %i.cb = load volatile i32, ptr @CritSectionCount, align 4
  %i.cc = add i32 %i.cb, 1
  store volatile i32 %i.cc, ptr @CritSectionCount, align 4
  br i1 %i.c, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cd = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ce = xor i32 %1, -1
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8
  br label %BufferGetPage.exit.i

bb.v:                                             ; preds = %bb.t
  %i.ci = load ptr, ptr @BufferBlocks, align 8
  %i.cj = add nsw i32 %1, -1
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 13
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cl
  br label %BufferGetPage.exit.i

BufferGetPage.exit.i:                             ; preds = %bb.v, %bb.u
  %.0.i.i.i = phi ptr [ %i.ch, %bb.u ], [ %i.cm, %bb.v ] ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 8
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 6 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2            ; 2 uses
  %i.ct = and i16 %i.cs, 128
  %.not.i = icmp eq i16 %i.ct, 0                  ; 2 uses
  br i1 %.not.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %BufferGetPage.exit.i
  %i.cu = or disjoint i16 %i.cs, 128
  store i16 %i.cu, ptr %i.cr, align 2
  %i.cv = load i16, ptr %i.cn, align 8
  %i.cw = zext i16 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i16 0, ptr %i.cy, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %BufferGetPage.exit.i
  %i.cz = load ptr, ptr %i.o, align 8             ; 3 uses
  %.not34.i = icmp eq ptr %i.cz, null
  %.not353846.i = icmp eq ptr %i.cz, %i.n
  %.not3538.i = or i1 %.not34.i, %.not353846.i
  br i1 %.not3538.i, label %dataPlaceToPageLeafRecompress.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa, %.lr.ph.preheader.i
  %.sroa.0.042.i = phi ptr [ %i.dp, %bb.aa ], [ %i.cz, %.lr.ph.preheader.i ] ; 3 uses
  %.141.i = phi i1 [ %spec.select.i, %bb.aa ], [ %.not.i, %.lr.ph.preheader.i ]
  %.02940.i = phi i32 [ %.130.i, %bb.aa ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.03139.i = phi ptr [ %.132.i, %bb.aa ], [ %i.da, %.lr.ph.preheader.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i, i64 16
  %i.dc = load i8, ptr %i.db, align 8             ; 2 uses
  %.not36.i = icmp ne i8 %i.dc, 0
  %spec.select.i = select i1 %.not36.i, i1 true, i1 %.141.i ; 2 uses
  %.not37.i = icmp eq i8 %i.dc, 1
  br i1 %.not37.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i, i64 40
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 6
  %i.dg = load i16, ptr %i.df, align 2
  %i.dh = zext i16 %i.dg to i32
  %i.di = add nuw nsw i32 %i.dh, 1
  %i.dj = and i32 %i.di, 131070
  %i.dk = add nuw nsw i32 %i.dj, 8                ; 2 uses
  %i.dl = zext nneg i32 %i.dk to i64              ; 2 uses
  br i1 %spec.select.i, label %bb.z, label %._crit_edge43.i

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.03139.i, ptr noundef nonnull align 2 dereferenceable(1) %i.de, i64 %i.dl, i1 false)
  br label %._crit_edge43.i

._crit_edge43.i:                                  ; preds = %bb.z, %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %.03139.i, i64 %i.dl
  %i.dn = add i32 %i.dk, %.02940.i
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge43.i, %.lr.ph.i
  %.132.i = phi ptr [ %i.dm, %._crit_edge43.i ], [ %.03139.i, %.lr.ph.i ]
  %.130.i = phi i32 [ %i.dn, %._crit_edge43.i ], [ %.02940.i, %.lr.ph.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i, i64 8
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not35.i = icmp eq ptr %i.dp, %i.n
  br i1 %.not35.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %bb.aa
  %i.dq = trunc i32 %.130.i to i16
  %i.dr = add i16 %i.dq, 32
  br label %dataPlaceToPageLeafRecompress.exit

dataPlaceToPageLeafRecompress.exit:               ; preds = %bb.x, %._crit_edge.loopexit.i
  %.029.lcssa.i = phi i16 [ 32, %bb.x ], [ %i.dr, %._crit_edge.loopexit.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12
  store i16 %.029.lcssa.i, ptr %i.ds, align 4
  call void @MarkBufferDirty(i32 noundef %1) #9
  %i.dt = load ptr, ptr %i.bo, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 118
  %i.dv = load i8, ptr %i.du, align 2
  %i.dw = icmp eq i8 %i.dv, 112
  br i1 %i.dw, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %dataPlaceToPageLeafRecompress.exit
  %i.dx = load i32, ptr @wal_level, align 4
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ea = load i32, ptr %i.dz, align 8
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  call void @XLogBeginInsert() #9
  call void @XLogRegisterBuffer(i8 noundef zeroext 0, i32 noundef %1, i8 noundef zeroext 8) #9
  %i.ef = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ei = load i32, ptr %i.eh, align 8
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef %i.eg, i32 noundef %i.ei) #9
  %i.ej = call i64 @XLogInsert(i8 noundef zeroext 13, i8 noundef zeroext -112) #9 ; 2 uses
  %i.ek = call i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 32)
  store volatile i64 %i.ek, ptr %.0.i.i, align 8
  br label %bb.af

bb.af:                                            ; preds = %dataPlaceToPageLeafRecompress.exit, %bb.ac, %bb.ad, %bb.ae
  %i.el = load volatile i32, ptr @CritSectionCount, align 4
  %i.em = add i32 %i.el, -1
  store volatile i32 %i.em, ptr @CritSectionCount, align 4
  br label %.critedge

.critedge:                                        ; preds = %BufferGetPage.exit, %bb.af, %._crit_edge
end_hunk_0
