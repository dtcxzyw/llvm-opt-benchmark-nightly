Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nbtinsert?download=true
inline.NumInlined: 180
inline.NumDeleted: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_bt_doinsert:bb.a
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @_bt_mkscankey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_bt_relbuf(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @SpeculativeInsertionWait(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @XactLockTableWait(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @CheckForSerializableConflictIn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BufferGetBlockNumber(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_bt_insertonpg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i16 noundef zeroext %8, i32 noundef %9, i1 noundef zeroext %10) unnamed_addr #0 {
bb.a:
  %11 = alloca %struct.IndexTupleData, align 8    ; 6 uses
  %12 = alloca %struct.IndexTupleData, align 8    ; 6 uses
  %13 = alloca %struct.IndexTupleData, align 8    ; 6 uses
  %14 = alloca %struct.PGAlignedBlock, align 8    ; 10 uses
  %15 = alloca %struct.PGAlignedBlock, align 8    ; 11 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %16 = alloca %struct.xl_btree_split, align 4    ; 7 uses
  %17 = alloca %struct.xl_btree_insert, align 2   ; 4 uses
  %18 = alloca %struct.xl_btree_metadata, align 16 ; 6 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = icmp slt i32 %3, 0                       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.e = xor i32 %3, -1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @BufferBlocks, align 8
  %i.j = add nsw i32 %3, -1
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 13
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.o = load i16, ptr %i.n, align 8
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.p ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i16, ptr %i.r, align 4              ; 2 uses
  %i.t = trunc i16 %i.s to i1                     ; 5 uses
  %i.u = and i16 %i.s, 2
  %i.v = icmp ne i16 %i.u, 0                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, 0                      ; 2 uses
  %i.z = load i32, ptr %i.q, align 4
  %i.aa = icmp eq i32 %i.z, 0
  %spec.select = select i1 %i.aa, i1 %i.y, i1 false
  %.not = icmp eq i32 %9, 0                       ; 6 uses
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %BufferGetPage.exit
  %i.ab = zext i16 %8 to i64
  %i.ac = getelementptr i8, ptr %.0.i.i, i64 20
  %i.ad = getelementptr [4 x i8], ptr %i.ac, i64 %i.ab
  %.val = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.ae = and i32 %.val, 32767
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = and i16 %i.ai, 8192
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %BTreeTupleIsPosting.exit.thread, label %BTreeTupleIsPosting.exit

BTreeTupleIsPosting.exit:                         ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.ag, i64 4
  %.val.i = load i16, ptr %i.al, align 2
  %i.am = and i16 %.val.i, 8192
  %i.an = icmp eq i16 %i.am, 0
  %i.ao = and i32 %.val, 98304
  %i.ap = icmp eq i32 %i.ao, 98304
  %or.cond179 = or i1 %i.ap, %i.an
  br i1 %or.cond179, label %BTreeTupleIsPosting.exit.thread, label %bb.e

BTreeTupleIsPosting.exit.thread:                  ; preds = %bb.d, %BTreeTupleIsPosting.exit
  %i.aq = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ar = tail call i32 @errcode(i32 noundef 33557032) #8 ; 0 uses
  %.val155 = load i16, ptr %6, align 2
  %i.as = getelementptr i8, ptr %6, i64 2
  %.val156 = load i16, ptr %i.as, align 2
  %i.at = zext i16 %.val155 to i32
  %i.au = shl nuw i32 %i.at, 16
  %i.av = zext i16 %.val156 to i32
  %i.aw = or disjoint i32 %i.au, %i.av
  %i.ax = getelementptr i8, ptr %6, i64 4
  %.val157 = load i16, ptr %i.ax, align 2
  %i.ay = zext i16 %.val157 to i32
  %i.az = zext i16 %8 to i32
  %i.ba = tail call i32 @BufferGetBlockNumber(i32 noundef %3) #8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.8, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.ba, ptr noundef nonnull %i.bd) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1206, ptr noundef nonnull @__func__._bt_insertonpg) #8
  unreachable

bb.e:                                             ; preds = %BTreeTupleIsPosting.exit
  %i.bf = tail call ptr @CopyIndexTuple(ptr noundef %6) #8 ; 2 uses
  %i.bg = tail call ptr @_bt_swap_posting(ptr noundef %i.bf, ptr noundef nonnull %i.ag, i32 noundef %9) #8
  %i.bh = add i16 %8, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %BufferGetPage.exit
  %.0150 = phi ptr [ %i.ag, %bb.e ], [ null, %BufferGetPage.exit ]
  %.0149 = phi ptr [ %6, %bb.e ], [ null, %BufferGetPage.exit ] ; 2 uses
  %.0148 = phi ptr [ %i.bg, %bb.e ], [ null, %BufferGetPage.exit ] ; 6 uses
  %.0142 = phi i16 [ %i.bh, %bb.e ], [ %8, %BufferGetPage.exit ] ; 8 uses
  %.0141 = phi ptr [ %i.bf, %bb.e ], [ %6, %BufferGetPage.exit ] ; 13 uses
  %i.bi = tail call i64 @PageGetFreeSpace(ptr noundef nonnull %.0.i.i) #8
  %i.bj = icmp ult i64 %i.bi, %7
  br i1 %i.bj, label %bb.g, label %bb.ce

bb.g:                                             ; preds = %bb.f
  %i.bk = trunc i32 %9 to i16                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  br i1 %i.c, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.bm = xor i32 %3, -1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8
  br label %BufferGetPage.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr @BufferBlocks, align 8
  %i.br = add nsw i32 %3, -1
  %i.bs = sext i32 %i.br to i64
  %i.bt = shl nsw i64 %i.bs, 13
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bt
  br label %BufferGetPage.exit.i

BufferGetPage.exit.i:                             ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.bp, %bb.h ], [ %i.bu, %bb.i ] ; 17 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.bw = load i16, ptr %i.bv, align 8
  %i.bx = zext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.bx ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12 ; 3 uses
  %i.ca = load i16, ptr %i.bz, align 4
  %i.cb = and i16 %i.ca, 1
  %.not.i = icmp eq i16 %i.cb, 0                  ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 5 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = icmp eq i32 %i.cd, 0                    ; 6 uses
  %i.cf = getelementptr i8, ptr %.0.i.i.i, i64 12
  %.val288.i = load i16, ptr %i.cf, align 4       ; 2 uses
  %i.cg = icmp ult i16 %.val288.i, 25
  %i.ch = zext i16 %.val288.i to i32
  %i.ci = add nuw nsw i32 %i.ch, 262120
  %i.cj = lshr i32 %i.ci, 2
  %i.ck = trunc i32 %i.cj to i16
  %.0.i.i158 = select i1 %i.cg, i16 0, i16 %i.ck  ; 2 uses
  %i.cl = tail call i32 @BufferGetBlockNumber(i32 noundef %3) #8 ; 10 uses
  %i.cm = call zeroext i16 @_bt_findsplitloc(ptr noundef %0, ptr noundef %.0.i.i.i, i16 noundef zeroext %.0142, i64 noundef %7, ptr noundef %.0141, ptr noundef nonnull %i.a) #8 ; 7 uses
  call void @_bt_pageinit(ptr noundef nonnull %14, i64 noundef 8192) #8
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.co = load i16, ptr %i.cn, align 8
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 %i.cp ; 5 uses
  %i.cr = load i16, ptr %i.bz, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.ct = and i16 %i.cr, -227
  %i.cu = or disjoint i16 %i.ct, 128
  store i16 %i.cu, ptr %i.cs, align 4
  %i.cv = load i32, ptr %i.by, align 4
  store i32 %i.cv, ptr %i.cq, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 %i.cx, ptr %i.cy, align 4
  %i.cz = load volatile i64, ptr %.0.i.i.i, align 8
  store volatile i64 %i.cz, ptr %14, align 8
  %.not275.i = icmp ne i16 %i.bk, 0               ; 2 uses
  %i.da = add i16 %.0142, -1                      ; 2 uses
  %narrow.i = select i1 %.not275.i, i16 %i.da, i16 0 ; 3 uses
  %i.db = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  %i.dc = trunc nuw i8 %i.db to i1                ; 2 uses
  %.not281.i = xor i1 %i.dc, true
  %i.dd = icmp eq i16 %.0142, %i.cm               ; 2 uses
  %or.cond282.i = select i1 %.not281.i, i1 %i.dd, i1 false
  br i1 %or.cond282.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %BufferGetPage.exit.i
  %i.de = zext i16 %i.cm to i64
  %i.df = getelementptr i8, ptr %.0.i.i.i, i64 20
  %i.dg = getelementptr [4 x i8], ptr %i.df, i64 %i.de
  %i.dh = load i32, ptr %i.dg, align 4            ; 2 uses
  %i.di = lshr i32 %i.dh, 17
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = and i32 %i.dh, 32767
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.dl
  %i.dn = icmp eq i16 %narrow.i, %i.cm
  %spec.select.i = select i1 %i.dn, ptr %.0148, ptr %i.dm
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %BufferGetPage.exit.i
  %.0267.i = phi i64 [ %7, %BufferGetPage.exit.i ], [ %i.dj, %bb.j ]
  %.0266.i = phi ptr [ %.0141, %BufferGetPage.exit.i ], [ %spec.select.i, %bb.j ] ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %or.cond283.i = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond283.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = add i16 %i.cm, -1                       ; 2 uses
  %i.dp = zext i16 %i.do to i64
  %i.dq = getelementptr i8, ptr %.0.i.i.i, i64 20
  %i.dr = getelementptr [4 x i8], ptr %i.dq, i64 %i.dp
  %.val292.i = load i32, ptr %i.dr, align 4
  %i.ds = and i32 %.val292.i, 32767
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.dt
  %i.dv = icmp eq i16 %narrow.i, %i.do
  %spec.select284.i = select i1 %i.dv, ptr %.0148, ptr %i.du
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i = phi ptr [ %spec.select284.i, %bb.m ], [ %.0141, %bb.l ]
  %i.dw = call ptr @_bt_truncate(ptr noundef %0, ptr noundef %.1.i, ptr noundef %.0266.i, ptr noundef %2) #8 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 6
  %.val.i159 = load i16, ptr %i.dx, align 2
  %i.dy = and i16 %.val.i159, 8191
  %i.dz = zext nneg i16 %i.dy to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.1268.i = phi i64 [ %i.dz, %bb.n ], [ %.0267.i, %bb.k ]
  %.0263.i = phi ptr [ %i.dw, %bb.n ], [ %.0266.i, %bb.k ] ; 3 uses
  %i.ea = call zeroext i16 @PageAddItemExtended(ptr noundef nonnull %14, ptr noundef %.0263.i, i64 noundef %.1268.i, i16 noundef zeroext 1, i32 noundef 0) #8
  %i.eb = icmp eq i16 %i.ea, 0
  br i1 %i.eb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ec = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10, i32 noundef %i.cl, ptr noundef nonnull %i.ef) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1728, ptr noundef nonnull @__func__._bt_split) #8
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.eh = call i32 @_bt_allocbuf(ptr noundef %0, ptr noundef %1) #8 ; 10 uses
  %i.ei = icmp slt i32 %i.eh, 0                   ; 2 uses
  br i1 %i.ei, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ej = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ek = xor i32 %i.eh, -1
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.el ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %15, ptr noundef nonnull align 1 dereferenceable(8192) %i.en, i64 8192, i1 false)
  %i.eo = load ptr, ptr %i.em, align 8
  br label %BufferGetPage.exit297.i

bb.s:                                             ; preds = %bb.q
  %i.ep = load ptr, ptr @BufferBlocks, align 8
  %i.eq = add nsw i32 %i.eh, -1
  %i.er = sext i32 %i.eq to i64
  %i.es = shl nsw i64 %i.er, 13
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.es ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %15, ptr noundef nonnull align 1 dereferenceable(8192) %i.et, i64 8192, i1 false)
  br label %BufferGetPage.exit297.i

BufferGetPage.exit297.i:                          ; preds = %bb.s, %bb.r
  %.0.i.i296.i = phi ptr [ %i.eo, %bb.r ], [ %i.et, %bb.s ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %.0.i.i296.i, i8 0, i64 8192, i1 false)
  %i.eu = call i32 @BufferGetBlockNumber(i32 noundef %i.eh) #8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ew = load i16, ptr %i.ev, align 8
  %i.ex = zext i16 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %15, i64 %i.ex ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 %i.eu, ptr %i.ez, align 4
  %i.fa = call zeroext i16 @_bt_vacuum_cycleid(ptr noundef %0) #8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cq, i64 14
  store i16 %i.fa, ptr %i.fb, align 2
  %i.fc = load i16, ptr %i.bz, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 12 ; 3 uses
  %i.fe = and i16 %i.fc, -99
  store i16 %i.fe, ptr %i.fd, align 4
  store i32 %i.cl, ptr %i.ey, align 4
  %i.ff = load i32, ptr %i.cc, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store i32 %i.ff, ptr %i.fg, align 4
  %i.fh = load i32, ptr %i.cw, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i32 %i.fh, ptr %i.fi, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 14 ; 2 uses
  store i16 %i.fa, ptr %i.fj, align 2
  br i1 %i.ce, label %bb.v, label %bb.t

bb.t:                                             ; preds = %BufferGetPage.exit297.i
  %i.fk = getelementptr i8, ptr %.0.i.i.i, i64 24
  %i.fl = load i32, ptr %i.fk, align 8            ; 2 uses
  %i.fm = lshr i32 %i.fl, 17
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = and i32 %i.fl, 32767
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.fp
  %i.fr = call zeroext i16 @PageAddItemExtended(ptr noundef nonnull %15, ptr noundef nonnull %i.fq, i64 noundef %i.fn, i16 noundef zeroext 1, i32 noundef 0) #8
  %i.fs = icmp eq i16 %i.fr, 0
  br i1 %i.fs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ft = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fx = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.11, i32 noundef %i.cl, ptr noundef nonnull %i.fw) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1799, ptr noundef nonnull @__func__._bt_split) #8
  unreachable

bb.v:                                             ; preds = %bb.t, %BufferGetPage.exit297.i
  %.0258.i = phi i16 [ 1, %BufferGetPage.exit297.i ], [ 2, %bb.t ] ; 3 uses
  %narrow315.i = select i1 %.not.i, i16 %.0258.i, i16 0 ; 3 uses
  %i.fy = load i32, ptr %i.cc, align 4
  %i.fz = icmp eq i32 %i.fy, 0
  %i.ga = select i1 %i.fz, i16 1, i16 2           ; 3 uses
  %.not276330.i = icmp ugt i16 %i.ga, %.0.i.i158
  br i1 %.not276330.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v
  %i.gb = getelementptr i8, ptr %.0.i.i.i, i64 20
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 6
  %i.gd = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 6
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 4
  br label %bb.w

bb.w:                                             ; preds = %bb.ao, %.lr.ph.i
  %.0255333.i = phi i16 [ %i.ga, %.lr.ph.i ], [ %i.hz, %bb.ao ] ; 5 uses
  %.1259332.i = phi i16 [ %.0258.i, %.lr.ph.i ], [ %.3.i, %bb.ao ] ; 6 uses
  %.0260331.i = phi i16 [ 2, %.lr.ph.i ], [ %.2262.i, %bb.ao ] ; 5 uses
  %i.gg = zext i16 %.0255333.i to i64
  %i.gh = getelementptr [4 x i8], ptr %i.gb, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4            ; 2 uses
  %i.gj = lshr i32 %i.gi, 17
  %i.gk = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gl = and i32 %i.gi, 32767
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.gm ; 3 uses
  %i.go = icmp eq i16 %narrow.i, %.0255333.i
  br i1 %i.go, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gp = icmp eq i16 %.0255333.i, %.0142
  br i1 %i.gp, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.gq = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.gs = call zeroext i16 @PageAddItemExtended(ptr noundef nonnull %14, ptr noundef %.0141, i64 noundef %7, i16 noundef zeroext %.0260331.i, i32 noundef 0) #8
  %.not317.i = icmp eq i16 %i.gs, 0
  br i1 %.not317.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gt = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.gx = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.12, i32 noundef %i.cl, ptr noundef nonnull %i.gw) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1846, ptr noundef nonnull @__func__._bt_split) #8
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.gy = add i16 %.0260331.i, 1
  br label %bb.ag

end_hunk_0
begin_hunk_1_@_bt_insertonpg:bb.a

bb.aq:                                            ; preds = %bb.ap
  %i.ib = load i64, ptr %.0141, align 2
  store i64 %i.ib, ptr %11, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %11, i64 6
  store i16 8200, ptr %i.ic, align 2
  %i.id = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i16 0, ptr %i.id, align 4
  br label %_bt_pgaddtup.exit305.i

_bt_pgaddtup.exit305.i:                           ; preds = %bb.aq, %bb.ap
  %.07.i303.i = phi ptr [ %11, %bb.aq ], [ %.0141, %bb.ap ]
  %.06.i304.i = phi i64 [ 8, %bb.aq ], [ %7, %bb.ap ]
  %i.ie = call zeroext i16 @PageAddItemExtended(ptr noundef nonnull %15, ptr noundef %.07.i303.i, i64 noundef %.06.i304.i, i16 noundef zeroext %.1259.lcssa.i, i32 noundef 0) #8
  %.not320.i = icmp eq i16 %i.ie, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br i1 %.not320.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_bt_pgaddtup.exit305.i
  %i.if = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ij = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.13, i32 noundef %i.cl, ptr noundef nonnull %i.ii) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1902, ptr noundef nonnull @__func__._bt_split) #8
  unreachable

bb.as:                                            ; preds = %_bt_pgaddtup.exit305.i, %._crit_edge.i
  br i1 %i.ce, label %bb.az, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ik = load i32, ptr %i.cc, align 4
  %i.il = call i32 @_bt_getbuf(ptr noundef %0, i32 noundef %i.ik, i32 noundef 3) #8 ; 5 uses
  %i.im = icmp slt i32 %i.il, 0
  br i1 %i.im, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.in = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.io = xor i32 %i.il, -1
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8
  br label %BufferGetPage.exit307.i

bb.av:                                            ; preds = %bb.at
  %i.is = load ptr, ptr @BufferBlocks, align 8
  %i.it = add nsw i32 %i.il, -1
  %i.iu = sext i32 %i.it to i64
  %i.iv = shl nsw i64 %i.iu, 13
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.iv
  br label %BufferGetPage.exit307.i

BufferGetPage.exit307.i:                          ; preds = %bb.av, %bb.au
  %.0.i.i306.i = phi ptr [ %i.ir, %bb.au ], [ %i.iw, %bb.av ] ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i.i306.i, i64 16
  %i.iy = load i16, ptr %i.ix, align 8
  %i.iz = zext i16 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.i.i306.i, i64 %i.iz ; 5 uses
  %i.jb = load i32, ptr %i.ja, align 4
  %.not278.i = icmp eq i32 %i.jb, %i.cl
  br i1 %.not278.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %BufferGetPage.exit307.i
  %i.jc = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.jd = call i32 @errcode(i32 noundef 33557032) #8 ; 0 uses
  %i.je = load i32, ptr %i.cc, align 4
  %i.jf = load i32, ptr %i.ja, align 4
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jj = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.16, i32 noundef %i.je, i32 noundef %i.jf, i32 noundef %i.cl, ptr noundef nonnull %i.ji) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1924, ptr noundef nonnull @__func__._bt_split) #8
  unreachable

bb.ax:                                            ; preds = %BufferGetPage.exit307.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 14
  %i.jl = load i16, ptr %i.jk, align 2
  %i.jm = load i16, ptr %i.fj, align 2
  %.not279.i = icmp eq i16 %i.jl, %i.jm
  br i1 %.not279.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jn = load i16, ptr %i.fd, align 4
  %i.jo = or i16 %i.jn, 32
  store i16 %i.jo, ptr %i.fd, align 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.as
  %.0271.i = phi i32 [ 0, %bb.as ], [ %i.il, %bb.ay ], [ %i.il, %bb.ax ] ; 3 uses
  %.0270.i = phi ptr [ null, %bb.as ], [ %.0.i.i306.i, %bb.ay ], [ %.0.i.i306.i, %bb.ax ]
  %.0269.i = phi ptr [ null, %bb.as ], [ %i.ja, %bb.ay ], [ %i.ja, %bb.ax ]
  %i.jp = load volatile i32, ptr @CritSectionCount, align 4
  %i.jq = add i32 %i.jp, 1
  store volatile i32 %i.jq, ptr @CritSectionCount, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(8192) %14, i64 8192, i1 false)
  br i1 %i.ei, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jr = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.js = xor i32 %i.eh, -1
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.jt
  %i.jv = load ptr, ptr %i.ju, align 8
  br label %BufferGetPage.exit309.i

bb.bb:                                            ; preds = %bb.az
  %i.jw = load ptr, ptr @BufferBlocks, align 8
  %i.jx = add nsw i32 %i.eh, -1
  %i.jy = sext i32 %i.jx to i64
  %i.jz = shl nsw i64 %i.jy, 13
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jz
  br label %BufferGetPage.exit309.i

BufferGetPage.exit309.i:                          ; preds = %bb.bb, %bb.ba
  %.0.i.i308.i = phi ptr [ %i.jv, %bb.ba ], [ %i.ka, %bb.bb ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %.0.i.i308.i, ptr noundef nonnull align 8 dereferenceable(8192) %15, i64 8192, i1 false)
  %i.kb = getelementptr inbounds nuw i8, ptr %.0.i.i308.i, i64 16 ; 2 uses
  %i.kc = load i16, ptr %i.kb, align 8
  %i.kd = zext i16 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i.i308.i, i64 %i.kd
  call void @MarkBufferDirty(i32 noundef %3) #8
  call void @MarkBufferDirty(i32 noundef %i.eh) #8
  br i1 %i.ce, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %BufferGetPage.exit309.i
  store i32 %i.eu, ptr %.0269.i, align 4
  call void @MarkBufferDirty(i32 noundef %.0271.i) #8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %BufferGetPage.exit309.i
  br i1 %.not.i, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.kf = icmp slt i32 %4, 0
  br i1 %i.kf, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.kg = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.kh = xor i32 %4, -1
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.ki
  %i.kk = load ptr, ptr %i.kj, align 8
  br label %BufferGetPage.exit311.i

bb.bg:                                            ; preds = %bb.be
  %i.kl = load ptr, ptr @BufferBlocks, align 8
  %i.km = add nsw i32 %4, -1
  %i.kn = sext i32 %i.km to i64
  %i.ko = shl nsw i64 %i.kn, 13
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.ko
  br label %BufferGetPage.exit311.i

BufferGetPage.exit311.i:                          ; preds = %bb.bg, %bb.bf
  %.0.i.i310.i = phi ptr [ %i.kk, %bb.bf ], [ %i.kp, %bb.bg ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.0.i.i310.i, i64 16
  %i.kr = load i16, ptr %i.kq, align 8
  %i.ks = zext i16 %i.kr to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i.i310.i, i64 %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 12 ; 2 uses
  %i.kv = load i16, ptr %i.ku, align 4
  %i.kw = and i16 %i.kv, -129
  store i16 %i.kw, ptr %i.ku, align 4
  call void @MarkBufferDirty(i32 noundef %4) #8
  br label %bb.bh

bb.bh:                                            ; preds = %BufferGetPage.exit311.i, %bb.bd
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 118
  %i.la = load i8, ptr %i.kz, align 2
  %i.lb = icmp eq i8 %i.la, 112
  br i1 %i.lb, label %bb.bi, label %bb.bt

bb.bi:                                            ; preds = %bb.bh
  %i.lc = load i32, ptr @wal_level, align 4
  %i.ld = icmp sgt i32 %i.lc, 0
  br i1 %i.ld, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lf = load i32, ptr %i.le, align 8
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.bk, label %bb.bt

bb.bk:                                            ; preds = %bb.bj
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.li = load i32, ptr %i.lh, align 8
  %i.lj = icmp eq i32 %i.li, 0
  br i1 %i.lj, label %bb.bl, label %bb.bt

bb.bl:                                            ; preds = %bb.bk, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.ll = load i32, ptr %i.lk, align 4
  store i32 %i.ll, ptr %16, align 4
  %i.lm = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i16 %i.cm, ptr %i.lm, align 4
  %i.ln = getelementptr inbounds nuw i8, ptr %16, i64 6
  store i16 %.0142, ptr %i.ln, align 2
  %i.lo = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.lp = icmp ult i16 %i.da, %i.cm
  %or.cond287.i = select i1 %.not275.i, i1 %i.lp, i1 false
  %spec.store.select.i = select i1 %or.cond287.i, i16 %i.bk, i16 0
  store i16 %spec.store.select.i, ptr %i.lo, align 4
  call void @XLogBeginInsert() #8
  call void @XLogRegisterData(ptr noundef nonnull %16, i32 noundef 10) #8
  call void @XLogRegisterBuffer(i8 noundef zeroext 0, i32 noundef %3, i8 noundef zeroext 8) #8
  call void @XLogRegisterBuffer(i8 noundef zeroext 1, i32 noundef %i.eh, i8 noundef zeroext 6) #8
  br i1 %i.ce, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @XLogRegisterBuffer(i8 noundef zeroext 2, i32 noundef %.0271.i, i8 noundef zeroext 8) #8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  br i1 %.not.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @XLogRegisterBuffer(i8 noundef zeroext 3, i32 noundef %4, i8 noundef zeroext 8) #8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.lq = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  %i.lr = trunc nuw i8 %i.lq to i1                ; 2 uses
  %i.ls = load i16, ptr %i.lo, align 4
  %i.lt = icmp eq i16 %i.ls, 0                    ; 2 uses
  %.not353.i = xor i1 %i.lt, true
  %brmerge.i = select i1 %i.lr, i1 true, i1 %.not353.i
  br i1 %brmerge.i, label %.sink.split.i, label %bb.bq

.sink.split.i:                                    ; preds = %bb.bp
  %or.cond.i = select i1 %i.lr, i1 %i.lt, i1 false
  %.mux.i = select i1 %or.cond.i, ptr %.0141, ptr %.0149
  %i.lu = trunc i64 %7 to i32
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef %.mux.i, i32 noundef %i.lu) #8
  br label %bb.bq

bb.bq:                                            ; preds = %.sink.split.i, %bb.bp
  br i1 %.not.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.lv = getelementptr i8, ptr %.0.i.i.i, i64 24
  %.val289.i = load i32, ptr %i.lv, align 8
  %i.lw = and i32 %.val289.i, 32767
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.lx
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.1264.i = phi ptr [ %.0263.i, %bb.bq ], [ %i.ly, %bb.br ] ; 3 uses
  %i.lz = getelementptr i8, ptr %.1264.i, i64 6
  %.1264.val.i = load i16, ptr %i.lz, align 2
  %i.ma = and i16 %.1264.val.i, 8191
  %narrow321.i = add nuw nsw i16 %i.ma, 7
  %i.mb = and i16 %narrow321.i, 16376
  %i.mc = zext nneg i16 %i.mb to i32
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef %.1264.i, i32 noundef %i.mc) #8
  %i.md = getelementptr inbounds nuw i8, ptr %.0.i.i308.i, i64 14
  %i.me = load i16, ptr %i.md, align 2            ; 2 uses
  %i.mf = zext i16 %i.me to i32
  %i.mg = zext i16 %i.me to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %.0.i.i308.i, i64 %i.mg
  %i.mi = load i16, ptr %i.kb, align 8
  %i.mj = zext i16 %i.mi to i32
  %i.mk = sub nsw i32 %i.mj, %i.mf
  call void @XLogRegisterBufData(i8 noundef zeroext 1, ptr noundef nonnull %i.mh, i32 noundef %i.mk) #8
  %i.ml = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  %i.mm = trunc nuw i8 %i.ml to i1
  %i.mn = select i1 %i.mm, i8 48, i8 64
  %i.mo = call i64 @XLogInsert(i8 noundef zeroext 11, i8 noundef zeroext %i.mn) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bk, %bb.bj, %bb.bh
  %i.mp = call i64 @XLogGetFakeLSN(ptr noundef nonnull %0) #8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.2265.i = phi ptr [ %.1264.i, %bb.bs ], [ %.0263.i, %bb.bt ]
  %.0254.i = phi i64 [ %i.mo, %bb.bs ], [ %i.mp, %bb.bt ] ; 2 uses
  %i.mq = call i64 @llvm.fshl.i64(i64 %.0254.i, i64 %.0254.i, i64 32) ; 4 uses
  store volatile i64 %i.mq, ptr %.0.i.i.i, align 8
  store volatile i64 %i.mq, ptr %.0.i.i308.i, align 8
  br i1 %i.ce, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store volatile i64 %i.mq, ptr %.0270.i, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  br i1 %.not.i, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.mr = icmp slt i32 %4, 0
  br i1 %i.mr, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ms = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.mt = xor i32 %4, -1
  %i.mu = zext nneg i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.mu
  %i.mw = load ptr, ptr %i.mv, align 8
  br label %BufferGetPage.exit313.i

bb.bz:                                            ; preds = %bb.bx
  %i.mx = load ptr, ptr @BufferBlocks, align 8
  %i.my = add nsw i32 %4, -1
  %i.mz = sext i32 %i.my to i64
  %i.na = shl nsw i64 %i.mz, 13
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.na
  br label %BufferGetPage.exit313.i

BufferGetPage.exit313.i:                          ; preds = %bb.bz, %bb.by
  %.0.i.i312.i = phi ptr [ %i.mw, %bb.by ], [ %i.nb, %bb.bz ]
  store volatile i64 %i.mq, ptr %.0.i.i312.i, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %BufferGetPage.exit313.i, %bb.bw
  %i.nc = load volatile i32, ptr @CritSectionCount, align 4
  %i.nd = add i32 %i.nc, -1
  store volatile i32 %i.nd, ptr @CritSectionCount, align 4
  br i1 %i.ce, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_bt_relbuf(ptr noundef nonnull %0, i32 noundef %.0271.i) #8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  br i1 %.not.i, label %bb.cd, label %.critedge.i

bb.cd:                                            ; preds = %bb.cc
  call void @_bt_relbuf(ptr noundef nonnull %0, i32 noundef %4) #8
  br label %_bt_split.exit

.critedge.i:                                      ; preds = %bb.cc
  call void @pfree(ptr noundef %.2265.i) #8
  br label %_bt_split.exit

_bt_split.exit:                                   ; preds = %bb.cd, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  %i.ne = call i32 @BufferGetBlockNumber(i32 noundef %3) #8
  %i.nf = call i32 @BufferGetBlockNumber(i32 noundef %i.eh) #8
  call void @PredicateLockPageSplit(ptr noundef nonnull %0, i32 noundef %i.ne, i32 noundef %i.nf) #8
  call fastcc void @_bt_insert_parent(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %3, i32 noundef %i.eh, ptr noundef %5, i1 noundef zeroext %i.v, i1 noundef zeroext %spec.select)
  br label %bb.du

bb.ce:                                            ; preds = %bb.f
  br i1 %10, label %bb.cf, label %bb.cj, !prof !6

bb.cf:                                            ; preds = %bb.ce
  %i.ng = tail call i32 @_bt_getbuf(ptr noundef %0, i32 noundef 0, i32 noundef 3) #8 ; 5 uses
  %i.nh = icmp slt i32 %i.ng, 0
  br i1 %i.nh, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ni = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.nj = xor i32 %i.ng, -1
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.nk
  %i.nm = load ptr, ptr %i.nl, align 8
  br label %BufferGetPage.exit162

bb.ch:                                            ; preds = %bb.cf
  %i.nn = load ptr, ptr @BufferBlocks, align 8
  %i.no = add nsw i32 %i.ng, -1
  %i.np = sext i32 %i.no to i64
  %i.nq = shl nsw i64 %i.np, 13
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nq
  br label %BufferGetPage.exit162

BufferGetPage.exit162:                            ; preds = %bb.cg, %bb.ch
  %.0.i.i161 = phi ptr [ %i.nm, %bb.cg ], [ %i.nr, %bb.ch ] ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.0.i.i161, i64 24 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.0.i.i161, i64 44
  %i.nu = load i32, ptr %i.nt, align 4
  %i.nv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.nw = load i32, ptr %i.nv, align 4
  %.not154 = icmp ult i32 %i.nu, %i.nw
  br i1 %.not154, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %BufferGetPage.exit162
  tail call void @_bt_relbuf(ptr noundef %0, i32 noundef %i.ng) #8
  br label %bb.cj

bb.cj:                                            ; preds = %BufferGetPage.exit162, %bb.ci, %bb.ce
  %.0146 = phi i32 [ 0, %bb.ci ], [ %i.ng, %BufferGetPage.exit162 ], [ 0, %bb.ce ] ; 4 uses
  %.0145 = phi ptr [ %.0.i.i161, %bb.ci ], [ %.0.i.i161, %BufferGetPage.exit162 ], [ null, %bb.ce ] ; 2 uses
  %.0144 = phi ptr [ %i.ns, %bb.ci ], [ %i.ns, %BufferGetPage.exit162 ], [ null, %bb.ce ] ; 6 uses
  %i.nx = load volatile i32, ptr @CritSectionCount, align 4
  %i.ny = add i32 %i.nx, 1
  store volatile i32 %i.ny, ptr @CritSectionCount, align 4
  br i1 %.not, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nz = getelementptr i8, ptr %.0148, i64 6
  %.0148.val = load i16, ptr %i.nz, align 2
  %i.oa = and i16 %.0148.val, 8191
  %narrow = add nuw nsw i16 %i.oa, 7
  %i.ob = and i16 %narrow, 16376
end_hunk_1
