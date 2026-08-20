inline.NumInlined: 207
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ByteCountLooksBad:bb.a

; Function Attrs: nounwind uwtable
define i64 @TIFFGetStrileByteCount(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null)
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ChopUpSingleUncompressedStrip(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.c = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null)
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !52
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.i = load i16, ptr %i.h, align 2, !tbaa !157
  %i.j = icmp eq i16 %i.i, 6
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !34
  %i.m = and i32 %i.l, 16384
  %.not50 = icmp eq i32 %i.m, 0
  br i1 %.not50, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 338
  %i.o = load i16, ptr %i.n, align 2, !tbaa !39
  %i.p = zext i16 %i.o to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.045 = phi i32 [ %i.p, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ] ; 3 uses
  %i.q = tail call i64 @TIFFVTileSize64(ptr noundef nonnull %0, i32 noundef %.045) #15 ; 5 uses
  %i.r = icmp ugt i64 %i.q, 8192
  br i1 %i.r, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not51 = icmp eq i64 %i.q, 0
  br i1 %.not51, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.rhs.trunc = trunc nuw nsw i64 %i.q to i16
  %i.s = udiv i16 8192, %.rhs.trunc               ; 2 uses
  %.zext = zext nneg i16 %i.s to i64
  %i.t = zext nneg i16 %i.s to i32
  %i.u = mul nuw nsw i32 %.045, %i.t
  %i.v = mul nuw nsw i64 %i.q, %.zext
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.044 = phi i64 [ %i.v, %bb.h ], [ %i.q, %bb.f ] ; 2 uses
  %.0 = phi i32 [ %i.u, %bb.h ], [ %.045, %bb.f ] ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.x = load i32, ptr %i.w, align 4, !tbaa !155
  %i.y = icmp uge i32 %.0, %i.x
  %i.z = icmp eq i32 %.0, 0
  %or.cond = or i1 %i.z, %i.y
  br i1 %or.cond, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !149 ; 2 uses
  %i.ac = sub nsw i32 0, %.0
  %i.ad = icmp ult i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %.0, -1
  %i.af = add i32 %i.ae, %i.ab                    ; 2 uses
  %i.ag = udiv i32 %i.af, %.0                     ; 3 uses
  %i.ah = icmp ugt i32 %.0, %i.af
  br i1 %i.ah, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !52
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = icmp ugt i32 %i.ag, 1000000
  %or.cond3 = and i1 %i.al, %i.ak
  br i1 %or.cond3, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !91
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !88
  %i.aq = tail call i64 %i.an(ptr noundef %i.ap) #15
  %.not52 = icmp ult i64 %i.g, %i.aq
  br i1 %.not52, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !91
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !88
  %i.at = tail call i64 %i.ar(ptr noundef %i.as) #15
  %i.au = sub i64 %i.at, %i.g
  %i.av = add i32 %i.ag, -1
  %i.aw = zext i32 %i.av to i64
  %i.ax = udiv i64 %i.au, %i.aw
  %i.ay = icmp ugt i64 %.044, %i.ax
  br i1 %i.ay, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  tail call fastcc void @allocChoppedUpStripArrays(ptr noundef nonnull %0, i32 noundef %i.ag, i64 noundef %.044, i32 noundef %.0)
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.m, %bb.n, %bb.k, %bb.i, %bb.g, %bb.b, %bb.o
  ret void
}

declare i64 @TIFFStripSize64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @TryChopUpUncompressedBigTiff(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @TIFFStripSize64(ptr noundef %0) #15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %i.d = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.i = load i16, ptr %i.h, align 2, !tbaa !157
  %i.j = icmp eq i16 %i.i, 6
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !34
  %i.m = and i32 %i.l, 16384
  %.not74 = icmp eq i32 %i.m, 0
  br i1 %.not74, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 338
  %i.o = load i16, ptr %i.n, align 2, !tbaa !39
  %i.p = zext i16 %i.o to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.066 = phi i32 [ %i.p, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.q = tail call i64 @TIFFVStripSize64(ptr noundef nonnull %0, i32 noundef %.066) #15 ; 4 uses
  %i.r = add i64 %i.q, -2147483648
  %or.cond = icmp ult i64 %i.r, -2147483647
  br i1 %or.cond, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !139  ; 2 uses
  %.not86 = icmp eq i32 %i.t, 0
  br i1 %.not86, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.y = icmp eq i32 %i.t, 1
  %i.z = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) ; 2 uses
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %.not75.peel = icmp eq i64 %i.z, %i.a
  br i1 %.not75.peel, label %bb.i, label %.thread

bb.h:                                             ; preds = %.lr.ph
  %i.aa = load i32, ptr %i.w, align 4, !tbaa !149
  %i.ab = tail call i64 @TIFFVStripSize64(ptr noundef nonnull %0, i32 noundef %i.aa) #15
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ad = load i32, ptr %i.s, align 4, !tbaa !139 ; 3 uses
  %i.ae = icmp ugt i32 %i.ad, 1
  br i1 %i.ae, label %.peel.next, label %._crit_edge.loopexit

.peel.next:                                       ; preds = %bb.i, %bb.m
  %i.af = phi i32 [ %i.au, %bb.m ], [ %i.ad, %bb.i ]
  %.06585 = phi i32 [ %i.at, %bb.m ], [ 1, %bb.i ] ; 6 uses
  %i.ag = add i32 %i.af, -1
  %i.ah = icmp eq i32 %.06585, %i.ag
  %i.ai = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef nonnull %0, i32 noundef %.06585, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) ; 2 uses
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.peel.next
  %i.aj = load i32, ptr %i.w, align 4, !tbaa !149
  %i.ak = load i32, ptr %i.x, align 4, !tbaa !155
  %i.al = mul i32 %i.ak, %.06585
  %i.am = sub i32 %i.aj, %i.al
  %i.an = tail call i64 @TIFFVStripSize64(ptr noundef nonnull %0, i32 noundef %i.am) #15
  %i.ao = icmp ult i64 %i.ai, %i.an
  br i1 %i.ao, label %.thread, label %bb.m

bb.k:                                             ; preds = %.peel.next
  %.not75 = icmp eq i64 %i.ai, %i.a
  br i1 %.not75, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ap = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef nonnull %0, i32 noundef %.06585, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef null)
  %1 = add i32 %.06585, -1                        ; 2 uses
  %i.aq = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef null)
  %i.ar = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null)
  %i.as = add i64 %i.ar, %i.aq
  %.not77 = icmp eq i64 %i.ap, %i.as
  br i1 %.not77, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.j, %bb.l
  %i.at = add nuw i32 %.06585, 1                  ; 2 uses
  %i.au = load i32, ptr %i.s, align 4, !tbaa !139 ; 3 uses
  %i.av = icmp ult i32 %i.at, %i.au
  br i1 %i.av, label %.peel.next, label %._crit_edge.loopexit, !llvm.loop !158

._crit_edge.loopexit:                             ; preds = %bb.m, %bb.i
  %.lcssa87 = phi i32 [ %i.ad, %bb.i ], [ %i.au, %bb.m ]
  %i.aw = add i32 %.lcssa87, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.lcssa = phi i32 [ -1, %.preheader ], [ %i.aw, %._crit_edge.loopexit ]
  %i.ax = udiv i64 536870912, %i.q
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = icmp ugt i64 %i.q, 536870912
  %spec.store.select = select i1 %i.az, i32 1, i32 %i.ay ; 2 uses
  %i.ba = mul i32 %spec.store.select, %.066       ; 6 uses
  %i.bb = zext nneg i32 %spec.store.select to i64
  %i.bc = mul nuw nsw i64 %i.q, %i.bb
  %i.bd = icmp eq i32 %i.ba, 0
  br i1 %i.bd, label %.thread, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !149 ; 2 uses
  %i.bg = sub i32 0, %i.ba
  %i.bh = icmp ult i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bi = add i32 %i.ba, -1
  %i.bj = add i32 %i.bi, %i.bf                    ; 2 uses
  %i.bk = udiv i32 %i.bj, %i.ba                   ; 2 uses
  %i.bl = icmp ugt i32 %i.ba, %i.bj
  br i1 %i.bl, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !52
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = icmp ugt i32 %i.bk, 1000000
  %or.cond3 = and i1 %i.bp, %i.bo
  br i1 %or.cond3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bs = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef nonnull %0, i32 noundef %.lcssa, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.br, ptr noundef null) ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !91
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !88
  %i.bx = tail call i64 %i.bu(ptr noundef %i.bw) #15 ; 2 uses
  %i.by = load i32, ptr %i.s, align 4, !tbaa !139
  %i.bz = add i32 %i.by, -1
  %i.ca = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef nonnull %0, i32 noundef %i.bz, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null)
  %i.cb = icmp ule i64 %i.bs, %i.bx
  %i.cc = sub nuw i64 %i.bx, %i.bs
  %i.cd = icmp ule i64 %i.ca, %i.cc
  %or.cond79.not = select i1 %i.cb, i1 %i.cd, i1 false
  br i1 %or.cond79.not, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call fastcc void @allocChoppedUpStripArrays(ptr noundef nonnull %0, i32 noundef %i.bk, i64 noundef %i.bc, i32 noundef %i.ba)
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.k, %bb.j, %bb.g, %bb.h, %bb.n, %bb.o, %._crit_edge, %bb.f, %bb.b, %bb.q, %bb.r
  ret void
}

declare i64 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #2

declare i64 @TIFFTileSize(ptr noundef) local_unnamed_addr #2

declare i64 @TIFFStripSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @TIFFReadCustomDirectory(ptr noundef initializes((24, 32)) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %union._UInt64Aligned_t, align 8    ; 9 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = call fastcc zeroext i16 @TIFFFetchDirectory(ptr noundef %0, i64 noundef %1, ptr noundef %i.b, ptr noundef null) ; 10 uses
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @TIFFReadCustomDirectory.module, ptr noundef nonnull @.str.31, i64 noundef %1) #15
  br label %bb.bs

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !29   ; 7 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.013.i = phi ptr [ %i.d, %bb.c ], [ %i.j, %bb.f ] ; 2 uses
  %.0812.i = phi i16 [ 0, %bb.c ], [ %i.i, %bb.f ]
  %.0911.i = phi i32 [ 0, %bb.c ], [ %i.h, %bb.f ]
  %i.e = load i16, ptr %.013.i, align 8, !tbaa !30
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = icmp ugt i32 %.0911.i, %i.f
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef %0, ptr noundef nonnull @TIFFReadDirectoryCheckOrder.module, ptr noundef nonnull @.str.62) #15
  br label %TIFFReadDirectoryCheckOrder.exit.preheader

bb.f:                                             ; preds = %bb.d
  %i.h = add nuw nsw i32 %i.f, 1
  %i.i = add nuw i16 %.0812.i, 1                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.013.i, i64 32
  %exitcond.not.i = icmp eq i16 %i.i, %i.c
  br i1 %exitcond.not.i, label %TIFFReadDirectoryCheckOrder.exit.preheader, label %bb.d

TIFFReadDirectoryCheckOrder.exit.preheader:       ; preds = %bb.f, %bb.e
  %i.k = add i16 %i.c, -2
  br label %TIFFReadDirectoryCheckOrder.exit

TIFFReadDirectoryCheckOrder.exit:                 ; preds = %TIFFReadDirectoryCheckOrder.exit.preheader, %._crit_edge
  %.092173 = phi i16 [ %.090169, %._crit_edge ], [ 0, %TIFFReadDirectoryCheckOrder.exit.preheader ] ; 3 uses
  %.093172 = phi ptr [ %i.m, %._crit_edge ], [ %i.d, %TIFFReadDirectoryCheckOrder.exit.preheader ] ; 2 uses
  %i.l = sub i16 %i.k, %.092173
  %i.m = getelementptr inbounds nuw i8, ptr %.093172, i64 32 ; 3 uses
  %.090169 = add nuw i16 %.092173, 1              ; 5 uses
  %i.n = icmp ult i16 %.090169, %i.c
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %TIFFReadDirectoryCheckOrder.exit
  %i.o = xor i16 %.092173, -1
  %i.p = add i16 %i.c, %i.o
  %i.q = load i16, ptr %.093172, align 8, !tbaa !30 ; 5 uses
  %xtraiter = and i16 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %bb.h
  %.090171.prol = phi i16 [ %.090.prol, %bb.h ], [ %.090169, %.lr.ph ]
  %.091170.prol = phi ptr [ %i.u, %bb.h ], [ %i.m, %.lr.ph ] ; 3 uses
  %prol.iter = phi i16 [ %prol.iter.next, %bb.h ], [ 0, %.lr.ph ]
  %i.r = load i16, ptr %.091170.prol, align 8, !tbaa !30
  %i.s = icmp eq i16 %i.q, %i.r
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.prol.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %.091170.prol, i64 24
  store i8 1, ptr %i.t, align 8, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.prol.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %.091170.prol, i64 32 ; 2 uses
  %.090.prol = add nuw i16 %.090171.prol, 1       ; 2 uses
  %prol.iter.next = add i16 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i16 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !160

.prol.loopexit:                                   ; preds = %bb.h, %.lr.ph
  %.090171.unr = phi i16 [ %.090169, %.lr.ph ], [ %.090.prol, %bb.h ]
  %.091170.unr = phi ptr [ %i.m, %.lr.ph ], [ %i.u, %bb.h ]
  %i.v = icmp ult i16 %i.l, 3
  br i1 %i.v, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.p
  %.090171 = phi i16 [ %.090.3, %bb.p ], [ %.090171.unr, %.prol.loopexit ]
  %.091170 = phi ptr [ %i.al, %bb.p ], [ %.091170.unr, %.prol.loopexit ] ; 9 uses
  %i.w = load i16, ptr %.091170, align 8, !tbaa !30
  %i.x = icmp eq i16 %i.q, %i.w
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.new
  %i.y = getelementptr inbounds nuw i8, ptr %.091170, i64 24
  store i8 1, ptr %i.y, align 8, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.new, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.091170, i64 32
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !30
  %i.ab = icmp eq i16 %i.q, %i.aa
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.091170, i64 56
  store i8 1, ptr %i.ac, align 8, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.091170, i64 64
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !30
  %i.af = icmp eq i16 %i.q, %i.ae
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.091170, i64 88
  store i8 1, ptr %i.ag, align 8, !tbaa !31
  br label %bb.n
end_hunk_0
begin_hunk_1_@TIFFReadDirEntryLong8ArrayWithLimit:bb.a
  %i.cj = and i32 %i.ci, 128
  %.not113 = icmp eq i32 %i.cj, 0
  br i1 %.not113, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @TIFFSwabLong(ptr noundef nonnull %.081144) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %.081144, i64 4
  %i.cl = load i32, ptr %.081144, align 4, !tbaa !3
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %.080145, i64 8
  store i64 %i.cm, ptr %.080145, align 8, !tbaa !85
  %i.co = add nuw i32 %.079146, 1                 ; 2 uses
  %exitcond180.not = icmp eq i32 %i.co, %i.w
  br i1 %exitcond180.not, label %.loopexit, label %bb.w

bb.z:                                             ; preds = %.lr.ph143, %bb.ac
  %.0142 = phi i32 [ 0, %.lr.ph143 ], [ %i.cw, %bb.ac ]
  %.077141 = phi ptr [ %i.z, %.lr.ph143 ], [ %i.cv, %bb.ac ] ; 2 uses
  %.078140 = phi ptr [ %i.g, %.lr.ph143 ], [ %i.ct, %bb.ac ] ; 3 uses
  %i.cp = load i32, ptr %i.ac, align 8, !tbaa !34
  %i.cq = and i32 %i.cp, 128
  %.not111 = icmp eq i32 %i.cq, 0
  br i1 %.not111, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @TIFFSwabLong(ptr noundef nonnull %.078140) #15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cr = load i32, ptr %.078140, align 4, !tbaa !3 ; 2 uses
  %i.cs = lshr i32 %i.cr, 29
  %..i121 = and i32 %i.cs, 4                      ; 2 uses
  %.not112 = icmp eq i32 %..i121, 0
  br i1 %.not112, label %bb.ac, label %.loopexit126

bb.ac:                                            ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw i8, ptr %.078140, i64 4
  %i.cu = sext i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.077141, i64 8
  store i64 %i.cu, ptr %.077141, align 8, !tbaa !85
  %i.cw = add nuw i32 %.0142, 1                   ; 2 uses
  %exitcond179.not = icmp eq i32 %i.cw, %i.w
  br i1 %exitcond179.not, label %.loopexit, label %bb.z

.loopexit126:                                     ; preds = %bb.ab, %bb.u, %.lr.ph159
  %.6 = phi i32 [ 4, %.lr.ph159 ], [ 4, %bb.u ], [ %..i121, %bb.ab ]
  tail call void @_TIFFfreeExt(ptr noundef %0, ptr noundef %i.g) #15
  tail call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.z) #15
  br label %bb.ad

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph163
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph163.epil.preheader

.lr.ph163.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph163.preheader
  %.092161.epil.init = phi ptr [ %i.z, %.lr.ph163.preheader ], [ %i.bm, %.loopexit.loopexit.unr-lcssa ]
  %.093160.epil.init = phi ptr [ %i.g, %.lr.ph163.preheader ], [ %i.bj, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod220 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod220)
  br label %.lr.ph163.epil

.lr.ph163.epil:                                   ; preds = %.lr.ph163.epil, %.lr.ph163.epil.preheader
  %.092161.epil = phi ptr [ %i.da, %.lr.ph163.epil ], [ %.092161.epil.init, %.lr.ph163.epil.preheader ] ; 2 uses
  %.093160.epil = phi ptr [ %i.cx, %.lr.ph163.epil ], [ %.093160.epil.init, %.lr.ph163.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph163.epil ], [ 0, %.lr.ph163.epil.preheader ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.093160.epil, i64 1
  %i.cy = load i8, ptr %.093160.epil, align 1, !tbaa !53
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %.092161.epil, i64 8
  store i64 %i.cz, ptr %.092161.epil, align 8, !tbaa !85
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph163.epil, !llvm.loop !229

.loopexit:                                        ; preds = %bb.ac, %bb.y, %bb.v, %bb.r, %bb.o, %.loopexit.loopexit.unr-lcssa, %.lr.ph163.epil, %.preheader134, %.preheader132, %.preheader129, %.preheader127, %.preheader124, %.preheader, %bb.n
  tail call void @_TIFFfreeExt(ptr noundef %0, ptr noundef %i.g) #15
  store ptr %i.z, ptr %2, align 8, !tbaa !100
  br label %bb.ad

bb.ad:                                            ; preds = %bb.j, %._crit_edge, %bb.e, %bb.f, %bb.a, %.loopexit, %.loopexit126, %bb.m, %bb.c
  %.198 = phi i32 [ 0, %bb.e ], [ %i.e, %bb.c ], [ 7, %bb.m ], [ %.6, %.loopexit126 ], [ 0, %.loopexit ], [ 2, %bb.a ], [ 0, %bb.f ], [ 4, %bb.j ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.198
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #9

declare void @_TIFFmemset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #10

declare i64 @TIFFVTileSize64(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @allocChoppedUpStripArrays(ptr noundef %0, i32 noundef range(i32 1, 0) %1, i64 noundef %2, i32 noundef range(i32 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.c = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !139
  %i.f = add i32 %i.e, -1
  %i.g = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef %0, i32 noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) ; 2 uses
  %i.h = load i32, ptr %i.d, align 4, !tbaa !139
  %i.i = add i32 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.l = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef %0, i32 noundef %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef null) ; 2 uses
  %i.m = xor i64 %i.l, -1
  %i.n = icmp ugt i64 %i.g, %i.m
  br i1 %i.n, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = add i64 %i.l, %i.g                       ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.c
  br i1 %i.p, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = sub nuw i64 %i.o, %i.c                   ; 2 uses
  %i.r = zext i32 %1 to i64                       ; 5 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = icmp ugt i32 %1, 6553600
  br i1 %i.t, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !91
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !88
  %i.y = tail call i64 %i.v(ptr noundef %i.x) #15 ; 2 uses
  %.not = icmp ugt i64 %i.s, %i.y
  br i1 %.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i64 noundef %i.s, i64 noundef %i.y) #15
  br label %bb.k

.critedge:                                        ; preds = %bb.d, %bb.c
  %i.z = tail call ptr @_TIFFCheckMalloc(ptr noundef nonnull %0, i64 noundef %i.r, i64 noundef 8, ptr noundef nonnull @.str.92) #15 ; 6 uses
  %i.aa = tail call ptr @_TIFFCheckMalloc(ptr noundef nonnull %0, i64 noundef %i.r, i64 noundef 8, ptr noundef nonnull @.str.93) #15 ; 6 uses
  %i.ab = icmp eq ptr %i.z, null                  ; 2 uses
  %i.ac = icmp eq ptr %i.aa, null                 ; 2 uses
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.f, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %xtraiter = and i64 %i.r, 1
  %i.ad = icmp eq i32 %1, 1
  br i1 %i.ad, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.r, 4294967294
  br label %.preheader

bb.f:                                             ; preds = %.critedge
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.z) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %i.ac, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.aa) #15
  br label %bb.k

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next.1, %.preheader ] ; 4 uses
  %.06886 = phi i64 [ %i.c, %.preheader.preheader.new ], [ %i.am, %.preheader ] ; 2 uses
  %.06985 = phi i64 [ %i.q, %.preheader.preheader.new ], [ %i.an, %.preheader ] ; 2 uses
  %.07084 = phi i64 [ %2, %.preheader.preheader.new ], [ %spec.select.1, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.07084, i64 %.06985) ; 5 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  store i64 %spec.select, ptr %i.ae, align 8, !tbaa !85
  %.not81 = icmp eq i64 %spec.select, 0
  %i.af = select i1 %.not81, i64 0, i64 %.06886
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !85
  %i.ah = add i64 %.06886, %spec.select           ; 2 uses
  %i.ai = sub i64 %.06985, %spec.select           ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %spec.select.1 = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 %i.ai) ; 6 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next
  store i64 %spec.select.1, ptr %i.aj, align 8, !tbaa !85
  %.not81.1 = icmp eq i64 %spec.select.1, 0
  %i.ak = select i1 %.not81.1, i64 0, i64 %i.ah
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !85
  %i.am = add i64 %i.ah, %spec.select.1           ; 2 uses
  %i.an = sub i64 %i.ai, %spec.select.1           ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.j, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 2 uses
  %.06886.epil.init = phi i64 [ %i.c, %.preheader.preheader ], [ %i.am, %.unr-lcssa ]
  %.06985.epil.init = phi i64 [ %i.q, %.preheader.preheader ], [ %i.an, %.unr-lcssa ]
  %.07084.epil.init = phi i64 [ %2, %.preheader.preheader ], [ %spec.select.1, %.unr-lcssa ]
  %lcmp.mod96 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %spec.select.epil = tail call i64 @llvm.umin.i64(i64 %.07084.epil.init, i64 %.06985.epil.init) ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  store i64 %spec.select.epil, ptr %i.ao, align 8, !tbaa !85
  %.not81.epil = icmp eq i64 %spec.select.epil, 0
  %i.ap = select i1 %.not81.epil, i64 0, i64 %.06886.epil.init
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.epil.init
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !85
  br label %bb.j

bb.j:                                             ; preds = %.unr-lcssa, %.preheader.epil.preheader
  store i32 %1, ptr %i.d, align 4, !tbaa !139
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %1, ptr %i.ar, align 8, !tbaa !150
  %i.as = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 278, i32 noundef %3) #15 ; 0 uses
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !140
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef %i.at) #15
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !146
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef %i.au) #15
  store ptr %i.z, ptr %i.k, align 8, !tbaa !140
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !146
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !34
  %i.ax = or i32 %i.aw, 67108864
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.a, %bb.b
  ret void
}

declare i64 @TIFFVStripSize64(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !11, i64 32}
!8 = !{!"tiff", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !4, i64 64, !13, i64 72, !13, i64 448, !5, i64 824, !14, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !14, i64 888, !11, i64 896, !4, i64 904, !4, i64 908, !11, i64 912, !4, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !4, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !9, i64 1072, !11, i64 1080, !11, i64 1088, !9, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !9, i64 1128, !11, i64 1136, !9, i64 1144, !11, i64 1152, !10, i64 1160, !10, i64 1168, !10, i64 1176, !10, i64 1184, !10, i64 1192, !10, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !21, i64 1232, !11, i64 1240, !23, i64 1248, !24, i64 1256, !25, i64 1280, !26, i64 1288, !11, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !4, i64 1360}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTS12_TIFFHashSet", !10, i64 0}
!13 = !{!"", !5, i64 0, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !14, i64 52, !14, i64 54, !14, i64 56, !14, i64 58, !4, i64 60, !14, i64 64, !14, i64 66, !15, i64 72, !15, i64 80, !16, i64 88, !16, i64 92, !14, i64 96, !14, i64 98, !16, i64 100, !16, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !14, i64 140, !17, i64 144, !4, i64 152, !4, i64 156, !18, i64 160, !18, i64 168, !4, i64 176, !19, i64 184, !19, i64 216, !14, i64 248, !18, i64 256, !5, i64 264, !14, i64 268, !5, i64 272, !20, i64 296, !4, i64 304, !9, i64 312, !14, i64 320, !4, i64 324, !10, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !4, i64 360, !10, i64 368}
!14 = !{!"short", !5, i64 0}
!15 = !{!"p1 double", !10, i64 0}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !10, i64 0}
!18 = !{!"p1 long", !10, i64 0}
!19 = !{!"", !14, i64 0, !14, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!20 = !{!"p1 float", !10, i64 0}
!21 = !{!"p2 _ZTS10_TIFFField", !22, i64 0}
!22 = !{!"any p2 pointer", !10, i64 0}
!23 = !{!"p1 _ZTS10_TIFFField", !10, i64 0}
!24 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!25 = !{!"p1 _ZTS11client_info", !10, i64 0}
!26 = !{!"p1 _ZTS15_TIFFFieldArray", !10, i64 0}
!27 = !{!8, !11, i64 24}
!28 = !{!8, !4, i64 848}
!29 = !{!10, !10, i64 0}
!30 = !{!19, !14, i64 0}
!31 = !{!19, !5, i64 24}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!8, !4, i64 16}
!35 = !{!8, !5, i64 409}
!36 = !{!8, !10, i64 440}
!37 = !{!19, !11, i64 8}
!38 = !{!8, !14, i64 130}
!39 = !{!14, !14, i64 0}
!40 = !{!8, !11, i64 1240}
!41 = !{!8, !21, i64 1232}
!42 = !{!23, !23, i64 0}
!43 = !{!44, !4, i64 0}
!44 = !{!"_TIFFField", !4, i64 0, !14, i64 4, !14, i64 6, !4, i64 8, !4, i64 12, !4, i64 16, !14, i64 20, !5, i64 22, !5, i64 23, !9, i64 24, !26, i64 32}
!45 = !{!8, !4, i64 1360}
!46 = !{!19, !14, i64 2}
!47 = !{!44, !14, i64 20}
!48 = !{!8, !14, i64 120}
!49 = !{!8, !14, i64 170}
!50 = !{!44, !9, i64 24}
!51 = !{!15, !15, i64 0}
!52 = !{!8, !4, i64 12}
!53 = !{!5, !5, i64 0}
!54 = !{!17, !17, i64 0}
!55 = !{!8, !14, i64 116}
!56 = !{!8, !14, i64 122}
!57 = !{!8, !4, i64 88}
!58 = !{!8, !4, i64 100}
!59 = !{!8, !4, i64 132}
!60 = !{!8, !4, i64 104}
!61 = !{!8, !4, i64 96}
!62 = !{!8, !4, i64 108}
!63 = !{!8, !4, i64 228}
!64 = !{!8, !4, i64 224}
!65 = !{!8, !14, i64 256}
!66 = !{!8, !11, i64 264}
!67 = !{!8, !14, i64 258}
!68 = !{!8, !14, i64 288}
!69 = !{!8, !11, i64 296}
!70 = !{!8, !14, i64 290}
!71 = !{!8, !14, i64 212}
!72 = !{!8, !17, i64 216}
!73 = !{!8, !14, i64 138}
!74 = !{!8, !10, i64 928}
!75 = !{!8, !4, i64 844}
!76 = !{!8, !4, i64 856}
!77 = !{!8, !11, i64 1080}
!78 = !{!8, !11, i64 912}
!79 = !{!8, !12, i64 48}
!80 = !{!8, !12, i64 56}
!81 = !{!82, !11, i64 0}
!82 = !{!"TIFFOffsetAndDirNumber", !11, i64 0, !4, i64 8}
!83 = !{!82, !4, i64 8}
!84 = !{i64 0, i64 8, !85, i64 8, i64 4, !3}
!85 = !{!11, !11, i64 0}
!86 = !{!8, !9, i64 0}
!87 = !{!8, !10, i64 1184}
!88 = !{!8, !10, i64 1176}
!89 = !{!8, !11, i64 1152}
!90 = !{!8, !9, i64 1144}
!91 = !{!8, !10, i64 1216}
!92 = !{!44, !4, i64 16}
!93 = !{!9, !9, i64 0}
!94 = !{!16, !16, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"double", !5, i64 0}
!97 = !{!44, !14, i64 4}
end_hunk_1
