Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pruneheap?download=true
inline.NumInlined: 109
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@log_heap_prune_and_freeze:bb.a
  store i16 %i.cg, ptr %20, align 2
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef nonnull %20, i32 noundef 2) #8
  %i.ch = shl nuw i32 %14, 1
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef %13, i32 noundef %i.ch) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ci = phi i16 [ %i.cf, %bb.w ], [ %i.ce, %bb.v ] ; 3 uses
  br i1 %i.z, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cj = shl nuw i32 %8, 1
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef nonnull %i.b, i32 noundef %i.cj) #8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ck = and i32 %i.q, 1
  %.not = icmp eq i32 %i.ck, 0
  br i1 %.not, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = or i16 %i.ci, 256                       ; 2 uses
  store i16 %i.cl, ptr %15, align 2
  %i.cm = and i32 %i.q, 2
  %.not68 = icmp eq i32 %i.cm, 0
  br i1 %.not68, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = or i16 %i.ci, 768                       ; 2 uses
  store i16 %i.cn, ptr %15, align 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %i.co = phi i16 [ %i.cl, %bb.aa ], [ %i.cn, %bb.ab ], [ %i.ci, %bb.z ] ; 8 uses
  %i.cp = load i32, ptr @wal_level, align 4       ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 1
  %i.cr = load i8, ptr @XLogLogicalInfo, align 1, !range !7
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond5 = select i1 %i.cq, i1 true, i1 %i.cs
  br i1 %or.cond5, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 118
  %i.cw = load i8, ptr %i.cv, align 2
  %i.cx = icmp eq i8 %i.cw, 112
  br i1 %i.cx, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %i.cy = icmp sgt i32 %i.cp, 0
  br i1 %i.cy, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %i.df = call zeroext i1 @IsCatalogRelation(ptr noundef nonnull %0) #8
  br i1 %i.df, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %.not69 = icmp eq ptr %i.dh, null
  br i1 %.not69, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.di = load ptr, ptr %i.ct, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 119
  %i.dk = load i8, ptr %i.dj, align 1
  switch i8 %i.dk, label %bb.am [
    i8 114, label %bb.ak
    i8 109, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 112
  %i.dm = load i8, ptr %i.dl, align 8, !range !7, !noundef !8
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %i.do = or i16 %i.co, 2                         ; 2 uses
  store i16 %i.do, ptr %15, align 2
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.al, %bb.ak, %bb.ag, %bb.af, %bb.ad
  %i.dp = phi i16 [ %i.co, %bb.aj ], [ %i.co, %bb.ai ], [ %i.co, %bb.ac ], [ %i.do, %bb.al ], [ %i.co, %bb.ak ], [ %i.co, %bb.ag ], [ %i.co, %bb.af ], [ %i.co, %bb.ad ] ; 2 uses
  %.not70 = icmp ne i32 %4, 0                     ; 3 uses
  %i.dq = or i1 %.not70, %5
  br i1 %i.dq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dr = or i16 %i.dp, 8
  %i.ds = select i1 %.not70, i16 %i.dr, i16 %i.dp ; 2 uses
  %i.dt = or i16 %i.ds, 4
  %simplifycfg.merge = select i1 %5, i16 %i.dt, i16 %i.ds
  store i16 %simplifycfg.merge, ptr %15, align 2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  call void @XLogRegisterData(ptr noundef nonnull %15, i32 noundef 2) #8
  br i1 %.not70, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @XLogRegisterData(ptr noundef nonnull %i.a, i32 noundef 4) #8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.du = icmp ult i32 %6, 3
  br i1 %i.du, label %switch.lookup, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.dw = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %6) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2734, ptr noundef nonnull @__func__.log_heap_prune_and_freeze) #8
  unreachable

switch.lookup:                                    ; preds = %bb.aq
  %switch.idx.cast = trunc nuw i32 %6 to i8
  %switch.idx.mult = shl nuw nsw i8 %switch.idx.cast, 4
  %switch.offset = add nuw nsw i8 %switch.idx.mult, 16
  %i.dx = call i64 @XLogInsert(i8 noundef zeroext 9, i8 noundef zeroext %switch.offset) #8 ; 4 uses
  br i1 %.not65, label %bb.av, label %bb.as

bb.as:                                            ; preds = %switch.lookup
  %i.dy = icmp slt i32 %2, 0
  br i1 %i.dy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dz = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ea = xor i32 %2, -1
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8
  br label %BufferGetPage.exit73

bb.au:                                            ; preds = %bb.as
  %i.ee = load ptr, ptr @BufferBlocks, align 8
  %i.ef = add nsw i32 %2, -1
  %i.eg = sext i32 %i.ef to i64
  %i.eh = shl nsw i64 %i.eg, 13
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eh
  br label %BufferGetPage.exit73

BufferGetPage.exit73:                             ; preds = %bb.at, %bb.au
  %.0.i.i72 = phi ptr [ %i.ed, %bb.at ], [ %i.ei, %bb.au ]
  %i.ej = call i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 32)
  store volatile i64 %i.ej, ptr %.0.i.i72, align 8
  br label %bb.av

bb.av:                                            ; preds = %BufferGetPage.exit73, %switch.lookup
  br i1 %.0, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ek = call i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 32)
  store volatile i64 %i.ek, ptr %.0.i.i, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  ret void
}

declare void @PageTruncateLinePointerArray(ptr noundef) local_unnamed_addr #2

declare void @PageRepairFragmentation(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @heap_get_root_tuples(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 582)) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(582) %1, i8 0, i64 582, i1 false)
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val = load i16, ptr %i.a, align 4             ; 2 uses
  %i.b = icmp ult i16 %.val, 25
  %i.c = zext i16 %.val to i32
  %i.d = add nuw nsw i32 %i.c, 262120
  %i.e = lshr i32 %i.d, 2
  %i.f = trunc i32 %i.e to i16                    ; 2 uses
  %.not8083 = icmp eq i16 %i.f, 0
  %.not80 = select i1 %i.b, i1 true, i1 %.not8083
  br i1 %.not80, label %._crit_edge, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 20         ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %HeapTupleHeaderIsHotUpdated.exit.thread
  %.05581 = phi i16 [ 1, %.lr.ph82 ], [ %3, %HeapTupleHeaderIsHotUpdated.exit.thread ] ; 4 uses
  %2 = zext i16 %.05581 to i64                    ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %2
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  %i.j = lshr i32 %i.i, 15
  %i.k = and i32 %i.j, 3
  switch i32 %i.k, label %default.unreachable [
    i32 0, label %HeapTupleHeaderIsHotUpdated.exit.thread
    i32 3, label %HeapTupleHeaderIsHotUpdated.exit.thread
    i32 1, label %bb.c
    i32 2, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %i.i, 32767
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 5 uses
  %i.o = getelementptr i8, ptr %i.n, i64 18       ; 2 uses
  %.val63 = load i16, ptr %i.o, align 2
  %i.p = icmp slt i16 %.val63, 0
  br i1 %i.p, label %HeapTupleHeaderIsHotUpdated.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr [2 x i8], ptr %1, i64 %2
  %i.r = getelementptr i8, ptr %i.q, i64 -2
  store i16 %.05581, ptr %i.r, align 2
  %i.s = load i16, ptr %i.o, align 2
  %i.t = and i16 %i.s, 16384
  %.not.i = icmp eq i16 %i.t, 0
  br i1 %.not.i, label %HeapTupleHeaderIsHotUpdated.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.v = load i16, ptr %i.u, align 4              ; 3 uses
  %i.w = and i16 %i.v, 2048
  %i.x = icmp eq i16 %i.w, 0
  %i.y = and i16 %i.v, 768
  %i.z = icmp ne i16 %i.y, 512
  %or.cond = and i1 %i.x, %i.z
  br i1 %or.cond, label %bb.f, label %HeapTupleHeaderIsHotUpdated.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %i.n, i64 16
  %.val65 = load i16, ptr %i.aa, align 4          ; 2 uses
  %i.ab = and i16 %i.v, 4224
  %or.cond7.i = icmp eq i16 %i.ab, 4096
  br i1 %or.cond7.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call i32 @HeapTupleGetUpdateXid(ptr noundef nonnull %i.n) #8
  br label %HeapTupleHeaderGetUpdateXid.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.n, i64 4
  %.val.i = load i32, ptr %i.ad, align 4
  br label %HeapTupleHeaderGetUpdateXid.exit

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.ae = trunc i32 %i.i to i16
  %i.af = and i16 %i.ae, 32767
  br label %HeapTupleHeaderGetUpdateXid.exit

HeapTupleHeaderGetUpdateXid.exit:                 ; preds = %bb.h, %bb.g, %bb.i
  %.052 = phi i16 [ %i.af, %bb.i ], [ %.val65, %bb.g ], [ %.val65, %bb.h ]
  %.0 = phi i32 [ 0, %bb.i ], [ %i.ac, %bb.g ], [ %.val.i, %bb.h ]
  %i.ag = zext i16 %.052 to i64                   ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %i.g, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = and i32 %i.ai, 98304
  %i.ak = icmp eq i32 %i.aj, 32768
  br i1 %i.ak, label %.lr.ph, label %HeapTupleHeaderIsHotUpdated.exit.thread

.lr.ph:                                           ; preds = %HeapTupleHeaderGetUpdateXid.exit, %HeapTupleHeaderGetUpdateXid.exit73
  %i.al = phi i32 [ %i.bm, %HeapTupleHeaderGetUpdateXid.exit73 ], [ %i.ai, %HeapTupleHeaderGetUpdateXid.exit ]
  %i.am = phi i64 [ %i.bk, %HeapTupleHeaderGetUpdateXid.exit73 ], [ %i.ag, %HeapTupleHeaderGetUpdateXid.exit ]
  %.177 = phi i32 [ %.0.i72, %HeapTupleHeaderGetUpdateXid.exit73 ], [ %.0, %HeapTupleHeaderGetUpdateXid.exit ] ; 2 uses
  %i.an = and i32 %i.al, 32767
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao ; 7 uses
  %.not60 = icmp eq i32 %.177, 0
  br i1 %.not60, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.aq = getelementptr i8, ptr %i.ap, i64 20
  %.val.i67 = load i16, ptr %i.aq, align 4
  %i.ar = and i16 %.val.i67, 768
  %i.as = icmp eq i16 %i.ar, 768
  br i1 %i.as, label %HeapTupleHeaderGetXmin.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val2.i = load i32, ptr %i.ap, align 4
  br label %HeapTupleHeaderGetXmin.exit

HeapTupleHeaderGetXmin.exit:                      ; preds = %bb.j, %bb.k
  %i.at = phi i32 [ %.val2.i, %bb.k ], [ 2, %bb.j ]
  %i.au = icmp eq i32 %.177, %i.at
  br i1 %i.au, label %bb.l, label %HeapTupleHeaderIsHotUpdated.exit.thread

bb.l:                                             ; preds = %HeapTupleHeaderGetXmin.exit, %.lr.ph
  %i.av = getelementptr [2 x i8], ptr %1, i64 %i.am
  %i.aw = getelementptr i8, ptr %i.av, i64 -2
  store i16 %.05581, ptr %i.aw, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 18
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = and i16 %i.ay, 16384
  %.not.i68 = icmp eq i16 %i.az, 0
  br i1 %.not.i68, label %HeapTupleHeaderIsHotUpdated.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.bb = load i16, ptr %i.ba, align 4            ; 3 uses
  %i.bc = and i16 %i.bb, 2048
  %i.bd = icmp eq i16 %i.bc, 0
  %i.be = and i16 %i.bb, 768
  %i.bf = icmp ne i16 %i.be, 512
  %or.cond76 = and i1 %i.bd, %i.bf
  br i1 %or.cond76, label %bb.n, label %HeapTupleHeaderIsHotUpdated.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr i8, ptr %i.ap, i64 16
  %.val64 = load i16, ptr %i.bg, align 4
  %i.bh = and i16 %i.bb, 4224
  %or.cond7.i70 = icmp eq i16 %i.bh, 4096
  br i1 %or.cond7.i70, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = tail call i32 @HeapTupleGetUpdateXid(ptr noundef nonnull %i.ap) #8
  br label %HeapTupleHeaderGetUpdateXid.exit73

bb.p:                                             ; preds = %bb.n
  %i.bj = getelementptr i8, ptr %i.ap, i64 4
  %.val.i71 = load i32, ptr %i.bj, align 4
  br label %HeapTupleHeaderGetUpdateXid.exit73

HeapTupleHeaderGetUpdateXid.exit73:               ; preds = %bb.o, %bb.p
  %.0.i72 = phi i32 [ %.val.i71, %bb.p ], [ %i.bi, %bb.o ]
  %i.bk = zext i16 %.val64 to i64                 ; 2 uses
  %i.bl = getelementptr [4 x i8], ptr %i.g, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4            ; 2 uses
  %i.bn = and i32 %i.bm, 98304
  %i.bo = icmp eq i32 %i.bn, 32768
  br i1 %i.bo, label %.lr.ph, label %HeapTupleHeaderIsHotUpdated.exit.thread

HeapTupleHeaderIsHotUpdated.exit.thread:          ; preds = %HeapTupleHeaderGetXmin.exit, %HeapTupleHeaderGetUpdateXid.exit73, %bb.m, %bb.l, %HeapTupleHeaderGetUpdateXid.exit, %bb.d, %bb.e, %bb.b, %bb.b, %bb.c
  %3 = add i16 %.05581, 1                         ; 2 uses
  %.not = icmp ugt i16 %3, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !27

._crit_edge:                                      ; preds = %HeapTupleHeaderIsHotUpdated.exit.thread, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare zeroext i1 @DataChecksumsNeedWrite() local_unnamed_addr #2

declare void @XLogBeginInsert() local_unnamed_addr #2

declare void @XLogRegisterBuffer(i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @XLogRegisterBufData(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @IsCatalogRelation(ptr noundef) local_unnamed_addr #2

declare void @XLogRegisterData(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @XLogInsert(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @UnlockBuffer(i32 noundef) local_unnamed_addr #2

declare void @LockBufferInternal(i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @visibilitymap_get_status(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @set_errcontext_domain(ptr noundef) local_unnamed_addr #2

declare i32 @errcontext_msg(ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @visibilitymap_clear(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @HeapTupleHeaderAdvanceConflictHorizon(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @heap_prune_record_unchanged_lp_normal(ptr noundef nonnull initializes((7704, 7705)) %0, i16 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7070
  %i.e = zext i16 %1 to i64                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 1, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7704
  store i8 1, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.c, i64 20
  %i.i = getelementptr [4 x i8], ptr %i.h, i64 %i.e
  %.val = load i32, ptr %i.i, align 4
  %i.j = and i32 %.val, 32767
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.k ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7362
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.e ; 2 uses
  %i.o = load i8, ptr %i.n, align 1
  switch i8 %i.o, label %bb.aa [
    i8 1, label %bb.b
    i8 2, label %bb.g
    i8 3, label %bb.n
    i8 4, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 7696 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8
  %i.s = getelementptr i8, ptr %i.l, i64 20
  %.val48 = load i16, ptr %i.s, align 4           ; 2 uses
  %i.t = and i16 %.val48, 256
  %.not = icmp eq i16 %i.t, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5892
  store i8 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5893
  store i8 0, ptr %i.v, align 1
  br label %heap_prune_record_prunable.exit

bb.d:                                             ; preds = %bb.b
  %i.w = and i16 %.val48, 768
  %i.x = icmp eq i16 %i.w, 768
  br i1 %i.x, label %HeapTupleHeaderGetXmin.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val2.i = load i32, ptr %i.l, align 4
  br label %HeapTupleHeaderGetXmin.exit

HeapTupleHeaderGetXmin.exit:                      ; preds = %bb.d, %bb.e
  %i.y = phi i32 [ %.val2.i, %bb.e ], [ 2, %bb.d ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 7688 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 3 uses
  %i.ab = icmp ugt i32 %i.y, 2                    ; 2 uses
  %i.ac = icmp ugt i32 %i.aa, 2
  %or.cond.i = and i1 %i.ab, %i.ac
  %i.ad = sub i32 %i.y, %i.aa
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = icmp ugt i32 %i.y, %i.aa
  %.0.i = select i1 %or.cond.i, i1 %i.ae, i1 %i.af
  %or.cond = and i1 %i.ab, %.0.i
  br i1 %or.cond, label %bb.f, label %heap_prune_record_prunable.exit

bb.f:                                             ; preds = %HeapTupleHeaderGetXmin.exit
  store i32 %i.y, ptr %i.z, align 8
  br label %heap_prune_record_prunable.exit

bb.g:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 7700 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 5892
  store i8 0, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 5893
  store i8 0, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.am = load i16, ptr %i.al, align 4
  %i.an = and i16 %i.am, 6272
  %or.cond7.i = icmp eq i16 %i.an, 4096
  br i1 %or.cond7.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call i32 @HeapTupleGetUpdateXid(ptr noundef nonnull %i.l) #8
  br label %HeapTupleHeaderGetUpdateXid.exit

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr i8, ptr %i.l, i64 4
  %.val.i49 = load i32, ptr %i.ap, align 4
  br label %HeapTupleHeaderGetUpdateXid.exit

HeapTupleHeaderGetUpdateXid.exit:                 ; preds = %bb.h, %bb.i
  %.0.i50 = phi i32 [ %.val.i49, %bb.i ], [ %i.ao, %bb.h ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8            ; 4 uses
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %HeapTupleHeaderGetUpdateXid.exit
  %i.as = icmp ugt i32 %.0.i50, 2
  %i.at = icmp ugt i32 %i.ar, 2
  %or.cond.i.i = and i1 %i.as, %i.at
  %i.au = sub i32 %.0.i50, %i.ar
  %i.av = icmp slt i32 %i.au, 0
  %i.aw = icmp ult i32 %.0.i50, %i.ar
  %.0.i.i = select i1 %or.cond.i.i, i1 %i.av, i1 %i.aw
  br i1 %.0.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %HeapTupleHeaderGetUpdateXid.exit
  store i32 %.0.i50, ptr %i.aq, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ax = load ptr, ptr %i.b, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 10
  %.val.i51 = load i16, ptr %i.ay, align 2
  %i.az = and i16 %.val.i51, 4
  %.not7.i = icmp eq i16 %i.az, 0
  br i1 %.not7.i, label %heap_prune_record_prunable.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @heap_page_fix_vm_corruption(ptr noundef nonnull %0, i16 noundef zeroext %1, i32 noundef 2)
  br label %heap_prune_record_prunable.exit

bb.n:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5892
  store i8 0, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5893
  store i8 0, ptr %i.bb, align 1
  %i.bc = getelementptr i8, ptr %i.l, i64 20
  %.val.i52 = load i16, ptr %i.bc, align 4
  %i.bd = and i16 %.val.i52, 768
  %i.be = icmp eq i16 %i.bd, 768
  br i1 %i.be, label %HeapTupleHeaderGetXmin.exit54, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val2.i53 = load i32, ptr %i.l, align 4
  br label %HeapTupleHeaderGetXmin.exit54

HeapTupleHeaderGetXmin.exit54:                    ; preds = %bb.n, %bb.o
  %i.bf = phi i32 [ %.val2.i53, %bb.o ], [ 2, %bb.n ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8            ; 4 uses
  %.not.i55 = icmp eq i32 %i.bh, 0
  br i1 %.not.i55, label %bb.q, label %bb.p
end_hunk_0
