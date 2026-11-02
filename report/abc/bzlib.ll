Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bzlib?download=true
inline.NumInlined: 47
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@BZ2_bzCompressEnd:bb.a
  %.not28 = icmp eq ptr %i.s, null
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16
  tail call void %i.u(ptr noundef %i.w, ptr noundef nonnull %i.s) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !29
  tail call void %i.y(ptr noundef %i.aa, ptr noundef %i.ab) #24
  store ptr null, ptr %i.b, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -3, 1) i32 @BZ2_bzDecompressInit(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %or.cond = icmp ugt i32 %2, 1
  %or.cond38 = or i1 %i.a, %or.cond
  %or.cond3 = icmp ugt i32 %1, 4
  %or.cond39 = or i1 %or.cond3, %or.cond38
  br i1 %or.cond39, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr @default_bzalloc, ptr %i.b, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ @default_bzalloc, %bb.c ], [ %i.c, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @default_bzfree, ptr %i.f, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = tail call ptr %i.e(ptr noundef %i.j, i32 noundef 64144, i32 noundef 1) #24 ; 11 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %i.k, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 10, ptr %i.n, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %i.o, align 4, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 0, ptr %i.p, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 3188
  store i32 0, ptr %i.q, align 4, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.s, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.t, align 4, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !33
  %i.v = trunc nuw nsw i32 %2 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i8 %i.v, ptr %i.w, align 4, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 3152
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 0, ptr %i.y, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store i32 %1, ptr %i.z, align 4, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -2, %bb.a ], [ -3, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1073741824, 1073741824) i32 @BZ2_indexIntoF(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.09 = phi i32 [ 0, %bb.a ], [ %.09., %bb.b ]   ; 2 uses
  %.0 = phi i32 [ 256, %bb.a ], [ %..0, %bb.b ]   ; 2 uses
  %i.a = add nsw i32 %.0, %.09
  %i.b = ashr i32 %i.a, 1                         ; 3 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !47
  %.not = icmp slt i32 %0, %i.e                   ; 2 uses
  %.09. = select i1 %.not, i32 %.09, i32 %i.b     ; 3 uses
  %..0 = select i1 %.not, i32 %i.b, i32 %.0       ; 2 uses
  %i.f = sub nsw i32 %..0, %.09.
  %.not11 = icmp eq i32 %i.f, 1
  br i1 %.not11, label %bb.c, label %bb.b, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  ret i32 %.09.
}

; Function Attrs: nounwind uwtable
define i32 @BZ2_bzDecompress(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 32 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !49
  %.not = icmp eq ptr %i.e, %0
  br i1 %.not, label %.preheader, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 24 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 3184 ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1092 ; 21 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 64080 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 19 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 20 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1096 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 3160 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 3168 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 20 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 3152 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 3176 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 3188 ; 4 uses
  %.pre = load i32, ptr %i.f, align 8, !tbaa !50  ; 2 uses
  %i.z = icmp sgt i32 %.pre, 9
  br label %bb.d

bb.d:                                             ; preds = %bb.cy, %.preheader
  switch i32 %.pre, label %bb.cy [
    i32 1, label %unRLE_obuf_to_output_SMALL.exit.thread
    i32 2, label %.loopexit
  ]

.loopexit:                                        ; preds = %bb.d, %bb.db
  %i.aa = load i8, ptr %i.g, align 4, !tbaa !54
  %.not47 = icmp eq i8 %i.aa, 0
  %i.ab = load i8, ptr %i.h, align 4, !tbaa !85
  %.not.i53 = icmp eq i8 %i.ab, 0                 ; 2 uses
  br i1 %.not47, label %bb.at, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !49  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !44
  %i.af = icmp eq i32 %i.ae, 0                    ; 2 uses
  br i1 %.not.i53, label %.preheader353.i, label %.preheader360.i

.preheader360.i:                                  ; preds = %bb.e
  br i1 %i.af, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %.preheader360.i
  %.pre.pre.i = load i32, ptr %i.i, align 8, !tbaa !86
  br label %.lr.ph.i.outer

.preheader353.i:                                  ; preds = %bb.e
  br i1 %i.af, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph366.lr.ph.i

.lr.ph366.lr.ph.i:                                ; preds = %.preheader353.i
  %.pre374.pre.i = load i32, ptr %i.i, align 8, !tbaa !86
  br label %.lr.ph366.i.outer

bb.f:                                             ; preds = %.backedge363.i, %.lr.ph.i.outer
  %i.ag = load i8, ptr %i.j, align 4, !tbaa !87   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.ph275, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !40
  %i.aj = load i32, ptr %i.k, align 8, !tbaa !88  ; 2 uses
  %i.ak = shl i32 %i.aj, 8
  %i.al = lshr i32 %i.aj, 24
  %i.am = zext i8 %i.ag to i32
  %i.an = xor i32 %i.al, %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @BZ2_crc32Table, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !47
  %i.ar = xor i32 %i.aq, %i.ak
  store i32 %i.ar, ptr %i.k, align 8, !tbaa !88
  %i.as = load i32, ptr %i.i, align 8, !tbaa !86
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.i, align 8, !tbaa !86
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !49  ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !44
  %i.ba = add i32 %i.az, -1                       ; 2 uses
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 36 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %i.bd = add i32 %i.bc, 1                        ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !33
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bi = icmp eq i32 %i.ba, 0
  br i1 %i.bi, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %.lr.ph.lr.ph.i, %bb.h
  %.ph275 = phi ptr [ %i.ac, %.lr.ph.lr.ph.i ], [ %i.au, %bb.h ] ; 2 uses
  %.ph276 = phi i32 [ %.pre.pre.i, %.lr.ph.lr.ph.i ], [ %i.at, %bb.h ]
  %i.bj = icmp eq i32 %.ph276, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %.ph275, i64 32
  br i1 %i.bj, label %bb.i, label %bb.f

bb.i:                                             ; preds = %.lr.ph.i.outer
  %i.bl = load i32, ptr %i.l, align 4, !tbaa !89  ; 8 uses
  %i.bm = load i32, ptr %i.m, align 8, !tbaa !90  ; 4 uses
  %i.bn = add nsw i32 %i.bm, 1                    ; 2 uses
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %unRLE_obuf_to_output_SMALL.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = icmp sgt i32 %i.bl, %i.bn
  br i1 %i.bp, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.i, align 8, !tbaa !86
  %i.bq = load i32, ptr %i.n, align 8, !tbaa !91  ; 4 uses
  %i.br = trunc i32 %i.bq to i8
  store i8 %i.br, ptr %i.j, align 4, !tbaa !87
  %i.bs = load i32, ptr %i.o, align 4, !tbaa !92  ; 5 uses
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !93
  %i.bu = mul i32 %i.bt, 100000                   ; 5 uses
  %.not272.i = icmp ult i32 %i.bs, %i.bu
  br i1 %.not272.i, label %.preheader370.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader370.i:                                  ; preds = %bb.k, %.preheader370.i
  %.09.i.i = phi i32 [ %.09..i.i, %.preheader370.i ], [ 0, %bb.k ] ; 2 uses
  %.0.i.i = phi i32 [ %..0.i.i, %.preheader370.i ], [ 256, %bb.k ] ; 2 uses
  %i.bv = add nsw i32 %.0.i.i, %.09.i.i
  %i.bw = ashr i32 %i.bv, 1                       ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !47
  %.not.i.i = icmp slt i32 %i.bs, %i.bz           ; 2 uses
  %.09..i.i = select i1 %.not.i.i, i32 %.09.i.i, i32 %i.bw ; 3 uses
  %..0.i.i = select i1 %.not.i.i, i32 %i.bw, i32 %.0.i.i ; 2 uses
  %i.ca = sub nsw i32 %..0.i.i, %.09..i.i
  %.not11.i.i = icmp eq i32 %i.ca, 1
  br i1 %.not11.i.i, label %BZ2_indexIntoF.exit.i, label %.preheader370.i, !llvm.loop !0

BZ2_indexIntoF.exit.i:                            ; preds = %.preheader370.i
  %i.cb = load ptr, ptr %i.r, align 8, !tbaa !58  ; 5 uses
  %i.cc = zext i32 %i.bs to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !60
  %i.cf = zext i16 %i.ce to i32                   ; 2 uses
  %i.cg = load ptr, ptr %i.s, align 8, !tbaa !61  ; 5 uses
  %i.ch = lshr i32 %i.bs, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !40
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl i32 %i.bs, 2
  %i.cn = and i32 %i.cm, 4
  %i.co = lshr i32 %i.cl, %i.cn
  %i.cp = shl nuw nsw i32 %i.co, 16
  %i.cq = and i32 %i.cp, 983040
  %i.cr = or disjoint i32 %i.cq, %i.cf            ; 5 uses
  store i32 %i.cr, ptr %i.o, align 4, !tbaa !92
  %i.cs = load i32, ptr %i.t, align 8, !tbaa !94  ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.l, label %bb.m

bb.l:                                             ; preds = %BZ2_indexIntoF.exit.i
  %i.cu = load i32, ptr %i.u, align 4, !tbaa !95  ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr @BZ2_rNums, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !47
  %i.cy = add nsw i32 %i.cu, 1                    ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 512
  %spec.store.select.i = select i1 %i.cz, i32 0, i32 %i.cy
  store i32 %spec.store.select.i, ptr %i.u, align 4, !tbaa !95
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %BZ2_indexIntoF.exit.i
  %i.da = phi i32 [ %i.cx, %bb.l ], [ %i.cs, %BZ2_indexIntoF.exit.i ]
  %i.db = add nsw i32 %i.da, -1                   ; 4 uses
  store i32 %i.db, ptr %i.t, align 8, !tbaa !94
  %i.dc = add nsw i32 %i.bl, 1                    ; 2 uses
  store i32 %i.dc, ptr %i.l, align 4, !tbaa !89
  %i.dd = icmp eq i32 %i.bl, %i.bm
  br i1 %i.dd, label %.backedge363.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = icmp eq i32 %i.db, 1
  %i.df = zext i1 %i.de to i32
  %.masked.i = and i32 %.09..i.i, 255
  %i.dg = xor i32 %.masked.i, %i.df               ; 2 uses
  %.not273.i = icmp eq i32 %i.dg, %i.bq
  br i1 %.not273.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.dg, ptr %i.n, align 8, !tbaa !91
  br label %.backedge363.i

.backedge363.i:                                   ; preds = %bb.ad, %bb.y, %bb.w, %bb.t, %bb.r, %bb.o, %bb.m
  %i.dh = load i32, ptr %i.bk, align 8, !tbaa !44
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %unRLE_obuf_to_output_SMALL.exit, label %bb.f

bb.p:                                             ; preds = %bb.n
  store i32 2, ptr %i.i, align 8, !tbaa !86
  %.not274.i = icmp ult i32 %i.cr, %i.bu
  br i1 %.not274.i, label %.preheader358.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader358.i:                                  ; preds = %bb.p, %.preheader358.i
  %.09.i287.i = phi i32 [ %.09..i290.i, %.preheader358.i ], [ 0, %bb.p ] ; 2 uses
  %.0.i288.i = phi i32 [ %..0.i291.i, %.preheader358.i ], [ 256, %bb.p ] ; 2 uses
  %i.dj = add nsw i32 %.0.i288.i, %.09.i287.i
  %i.dk = ashr i32 %i.dj, 1                       ; 3 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !47
  %.not.i289.i = icmp slt i32 %i.cr, %i.dn        ; 2 uses
  %.09..i290.i = select i1 %.not.i289.i, i32 %.09.i287.i, i32 %i.dk ; 3 uses
  %..0.i291.i = select i1 %.not.i289.i, i32 %i.dk, i32 %.0.i288.i ; 2 uses
  %i.do = sub nsw i32 %..0.i291.i, %.09..i290.i
  %.not11.i292.i = icmp eq i32 %i.do, 1
  br i1 %.not11.i292.i, label %BZ2_indexIntoF.exit293.i, label %.preheader358.i, !llvm.loop !0

BZ2_indexIntoF.exit293.i:                         ; preds = %.preheader358.i
  %i.dp = zext nneg i32 %i.cr to i64
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !60
  %i.ds = zext i16 %i.dr to i32                   ; 2 uses
  %i.dt = lshr i32 %i.cr, 1
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !40
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.cf, 2
  %i.dz = and i32 %i.dy, 4
  %i.ea = lshr i32 %i.dx, %i.dz
  %i.eb = shl nuw nsw i32 %i.ea, 16
  %i.ec = and i32 %i.eb, 983040
  %i.ed = or disjoint i32 %i.ec, %i.ds            ; 5 uses
  store i32 %i.ed, ptr %i.o, align 4, !tbaa !92
  %i.ee = icmp eq i32 %i.db, 0
  br i1 %i.ee, label %bb.q, label %bb.r

bb.q:                                             ; preds = %BZ2_indexIntoF.exit293.i
  %i.ef = load i32, ptr %i.u, align 4, !tbaa !95  ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr @BZ2_rNums, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !47
  %i.ej = add nsw i32 %i.ef, 1                    ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 512
  %spec.store.select283.i = select i1 %i.ek, i32 0, i32 %i.ej
  store i32 %spec.store.select283.i, ptr %i.u, align 4, !tbaa !95
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %BZ2_indexIntoF.exit293.i
  %i.el = phi i32 [ %i.ei, %bb.q ], [ %i.db, %BZ2_indexIntoF.exit293.i ]
  %i.em = add nsw i32 %i.el, -1                   ; 4 uses
  store i32 %i.em, ptr %i.t, align 8, !tbaa !94
  %i.en = add nsw i32 %i.bl, 2                    ; 2 uses
  store i32 %i.en, ptr %i.l, align 4, !tbaa !89
  %i.eo = icmp eq i32 %i.dc, %i.bm
  br i1 %i.eo, label %.backedge363.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ep = icmp eq i32 %i.em, 1
  %i.eq = zext i1 %i.ep to i32
  %.masked275.i = and i32 %.09..i290.i, 255
  %i.er = xor i32 %.masked275.i, %i.eq            ; 2 uses
  %.not276.i = icmp eq i32 %i.er, %i.bq
  br i1 %.not276.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.er, ptr %i.n, align 8, !tbaa !91
  br label %.backedge363.i

bb.u:                                             ; preds = %bb.s
  store i32 3, ptr %i.i, align 8, !tbaa !86
  %.not277.i = icmp ult i32 %i.ed, %i.bu
  br i1 %.not277.i, label %.preheader357.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader357.i:                                  ; preds = %bb.u, %.preheader357.i
  %.09.i294.i = phi i32 [ %.09..i297.i, %.preheader357.i ], [ 0, %bb.u ] ; 2 uses
  %.0.i295.i = phi i32 [ %..0.i298.i, %.preheader357.i ], [ 256, %bb.u ] ; 2 uses
  %i.es = add nsw i32 %.0.i295.i, %.09.i294.i
  %i.et = ashr i32 %i.es, 1                       ; 3 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !47
  %.not.i296.i = icmp slt i32 %i.ed, %i.ew        ; 2 uses
  %.09..i297.i = select i1 %.not.i296.i, i32 %.09.i294.i, i32 %i.et ; 3 uses
  %..0.i298.i = select i1 %.not.i296.i, i32 %i.et, i32 %.0.i295.i ; 2 uses
  %i.ex = sub nsw i32 %..0.i298.i, %.09..i297.i
  %.not11.i299.i = icmp eq i32 %i.ex, 1
  br i1 %.not11.i299.i, label %BZ2_indexIntoF.exit300.i, label %.preheader357.i, !llvm.loop !0

BZ2_indexIntoF.exit300.i:                         ; preds = %.preheader357.i
  %i.ey = zext nneg i32 %i.ed to i64
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !60
  %i.fb = zext i16 %i.fa to i32                   ; 2 uses
  %i.fc = lshr i32 %i.ed, 1
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !40
  %i.fg = zext i8 %i.ff to i32
  %i.fh = shl nuw nsw i32 %i.ds, 2
  %i.fi = and i32 %i.fh, 4
  %i.fj = lshr i32 %i.fg, %i.fi
  %i.fk = shl nuw nsw i32 %i.fj, 16
  %i.fl = and i32 %i.fk, 983040
  %i.fm = or disjoint i32 %i.fl, %i.fb            ; 5 uses
  store i32 %i.fm, ptr %i.o, align 4, !tbaa !92
  %i.fn = icmp eq i32 %i.em, 0
  br i1 %i.fn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %BZ2_indexIntoF.exit300.i
  %i.fo = load i32, ptr %i.u, align 4, !tbaa !95  ; 2 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr @BZ2_rNums, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !47
  %i.fs = add nsw i32 %i.fo, 1                    ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 512
  %spec.store.select284.i = select i1 %i.ft, i32 0, i32 %i.fs
  store i32 %spec.store.select284.i, ptr %i.u, align 4, !tbaa !95
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %BZ2_indexIntoF.exit300.i
  %i.fu = phi i32 [ %i.fr, %bb.v ], [ %i.em, %BZ2_indexIntoF.exit300.i ]
  %i.fv = add nsw i32 %i.fu, -1                   ; 4 uses
  store i32 %i.fv, ptr %i.t, align 8, !tbaa !94
  %i.fw = add nsw i32 %i.bl, 3
  store i32 %i.fw, ptr %i.l, align 4, !tbaa !89
  %i.fx = icmp eq i32 %i.en, %i.bm
  br i1 %i.fx, label %.backedge363.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fy = icmp eq i32 %i.fv, 1
  %i.fz = zext i1 %i.fy to i32
  %.masked278.i = and i32 %.09..i297.i, 255
  %i.ga = xor i32 %.masked278.i, %i.fz            ; 2 uses
  %.not279.i = icmp eq i32 %i.ga, %i.bq
  br i1 %.not279.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 %i.ga, ptr %i.n, align 8, !tbaa !91
  br label %.backedge363.i

bb.z:                                             ; preds = %bb.x
  %.not280.i = icmp ult i32 %i.fm, %i.bu
  br i1 %.not280.i, label %.preheader356.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader356.i:                                  ; preds = %bb.z, %.preheader356.i
  %.09.i301.i = phi i32 [ %.09..i304.i, %.preheader356.i ], [ 0, %bb.z ] ; 2 uses
  %.0.i302.i = phi i32 [ %..0.i305.i, %.preheader356.i ], [ 256, %bb.z ] ; 2 uses
  %i.gb = add nsw i32 %.0.i302.i, %.09.i301.i
  %i.gc = ashr i32 %i.gb, 1                       ; 3 uses
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !47
  %.not.i303.i = icmp slt i32 %i.fm, %i.gf        ; 2 uses
  %.09..i304.i = select i1 %.not.i303.i, i32 %.09.i301.i, i32 %i.gc ; 3 uses
  %..0.i305.i = select i1 %.not.i303.i, i32 %i.gc, i32 %.0.i302.i ; 2 uses
  %i.gg = sub nsw i32 %..0.i305.i, %.09..i304.i
  %.not11.i306.i = icmp eq i32 %i.gg, 1
  br i1 %.not11.i306.i, label %BZ2_indexIntoF.exit307.i, label %.preheader356.i, !llvm.loop !0

BZ2_indexIntoF.exit307.i:                         ; preds = %.preheader356.i
  %i.gh = zext nneg i32 %i.fm to i64
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !60
  %i.gk = zext i16 %i.gj to i32                   ; 2 uses
  %i.gl = lshr i32 %i.fm, 1
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !40
  %i.gp = zext i8 %i.go to i32
  %i.gq = shl nuw nsw i32 %i.fb, 2
  %i.gr = and i32 %i.gq, 4
  %i.gs = lshr i32 %i.gp, %i.gr
  %i.gt = shl nuw nsw i32 %i.gs, 16
  %i.gu = and i32 %i.gt, 983040
  %i.gv = or disjoint i32 %i.gu, %i.gk            ; 5 uses
  store i32 %i.gv, ptr %i.o, align 4, !tbaa !92
  %i.gw = icmp eq i32 %i.fv, 0
  br i1 %i.gw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %BZ2_indexIntoF.exit307.i
  %i.gx = load i32, ptr %i.u, align 4, !tbaa !95  ; 2 uses
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr @BZ2_rNums, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !47
  %i.hb = add nsw i32 %i.gx, 1                    ; 2 uses
  %i.hc = icmp eq i32 %i.hb, 512
  %spec.store.select285.i = select i1 %i.hc, i32 0, i32 %i.hb
  store i32 %spec.store.select285.i, ptr %i.u, align 4, !tbaa !95
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %BZ2_indexIntoF.exit307.i
  %i.hd = phi i32 [ %i.ha, %bb.aa ], [ %i.fv, %BZ2_indexIntoF.exit307.i ]
  %i.he = add nsw i32 %i.hd, -1                   ; 4 uses
  store i32 %i.he, ptr %i.t, align 8, !tbaa !94
  %i.hf = icmp eq i32 %i.he, 1
  %i.hg = zext i1 %i.hf to i32
  %i.hh = add nsw i32 %i.bl, 4
  store i32 %i.hh, ptr %i.l, align 4, !tbaa !89
  %.masked281.i = and i32 %.09..i304.i, 255
  %i.hi = xor i32 %.masked281.i, %i.hg
  %i.hj = add nuw nsw i32 %i.hi, 4
  store i32 %i.hj, ptr %i.i, align 8, !tbaa !86
  %.not282.i = icmp ult i32 %i.gv, %i.bu
  br i1 %.not282.i, label %.preheader355.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader355.i:                                  ; preds = %bb.ab, %.preheader355.i
  %.09.i308.i = phi i32 [ %.09..i311.i, %.preheader355.i ], [ 0, %bb.ab ] ; 2 uses
  %.0.i309.i = phi i32 [ %..0.i312.i, %.preheader355.i ], [ 256, %bb.ab ] ; 2 uses
  %i.hk = add nsw i32 %.0.i309.i, %.09.i308.i
  %i.hl = ashr i32 %i.hk, 1                       ; 3 uses
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !47
  %.not.i310.i = icmp slt i32 %i.gv, %i.ho        ; 2 uses
  %.09..i311.i = select i1 %.not.i310.i, i32 %.09.i308.i, i32 %i.hl ; 4 uses
  %..0.i312.i = select i1 %.not.i310.i, i32 %i.hl, i32 %.0.i309.i ; 2 uses
  %i.hp = sub nsw i32 %..0.i312.i, %.09..i311.i
  %.not11.i313.i = icmp eq i32 %i.hp, 1
  br i1 %.not11.i313.i, label %BZ2_indexIntoF.exit314.i, label %.preheader355.i, !llvm.loop !0

BZ2_indexIntoF.exit314.i:                         ; preds = %.preheader355.i
  store i32 %.09..i311.i, ptr %i.n, align 8, !tbaa !91
  %i.hq = zext nneg i32 %i.gv to i64
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.hq
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !60
  %i.ht = zext i16 %i.hs to i32
  %i.hu = lshr i32 %i.gv, 1
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !40
  %i.hy = zext i8 %i.hx to i32
  %i.hz = shl nuw nsw i32 %i.gk, 2
  %i.ia = and i32 %i.hz, 4
  %i.ib = lshr i32 %i.hy, %i.ia
  %i.ic = shl nuw nsw i32 %i.ib, 16
  %i.id = and i32 %i.ic, 983040
  %i.ie = or disjoint i32 %i.id, %i.ht
  store i32 %i.ie, ptr %i.o, align 4, !tbaa !92
  %i.if = icmp eq i32 %i.he, 0
  br i1 %i.if, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %BZ2_indexIntoF.exit314.i
  %i.ig = load i32, ptr %i.u, align 4, !tbaa !95  ; 2 uses
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [4 x i8], ptr @BZ2_rNums, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !47
  %i.ik = add nsw i32 %i.ig, 1                    ; 2 uses
  %i.il = icmp eq i32 %i.ik, 512
  %spec.store.select286.i = select i1 %i.il, i32 0, i32 %i.ik
  store i32 %spec.store.select286.i, ptr %i.u, align 4, !tbaa !95
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %BZ2_indexIntoF.exit314.i
  %i.im = phi i32 [ %i.ij, %bb.ac ], [ %i.he, %BZ2_indexIntoF.exit314.i ]
  %i.in = add nsw i32 %i.im, -1                   ; 2 uses
  store i32 %i.in, ptr %i.t, align 8, !tbaa !94
  %i.io = icmp eq i32 %i.in, 1
  %i.ip = zext i1 %i.io to i32
  %i.iq = xor i32 %.09..i311.i, %i.ip
  store i32 %i.iq, ptr %i.n, align 8, !tbaa !91
  %i.ir = add nsw i32 %i.bl, 5
  store i32 %i.ir, ptr %i.l, align 4, !tbaa !89
  br label %.backedge363.i

bb.ae:                                            ; preds = %.backedge.i, %.lr.ph366.i.outer
  %i.is = load i8, ptr %i.j, align 4, !tbaa !87   ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.ph270, i64 24
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !45
  store i8 %i.is, ptr %i.iu, align 1, !tbaa !40
  %i.iv = load i32, ptr %i.k, align 8, !tbaa !88  ; 2 uses
  %i.iw = shl i32 %i.iv, 8
  %i.ix = lshr i32 %i.iv, 24
  %i.iy = zext i8 %i.is to i32
  %i.iz = xor i32 %i.ix, %i.iy
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr @BZ2_crc32Table, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !47
  %i.jd = xor i32 %i.jc, %i.iw
  store i32 %i.jd, ptr %i.k, align 8, !tbaa !88
  %i.je = load i32, ptr %i.i, align 8, !tbaa !86
  %i.jf = add nsw i32 %i.je, -1                   ; 2 uses
  store i32 %i.jf, ptr %i.i, align 8, !tbaa !86
  %i.jg = load ptr, ptr %i.c, align 8, !tbaa !49  ; 5 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !45
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 1
  store ptr %i.jj, ptr %i.jh, align 8, !tbaa !45
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 32 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !44
  %i.jm = add i32 %i.jl, -1                       ; 2 uses
  store i32 %i.jm, ptr %i.jk, align 8, !tbaa !44
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jg, i64 36 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !32
  %i.jp = add i32 %i.jo, 1                        ; 2 uses
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !32
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jg, i64 40 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !33
  %i.jt = add i32 %i.js, 1
  store i32 %i.jt, ptr %i.jr, align 8, !tbaa !33
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ju = icmp eq i32 %i.jm, 0
  br i1 %i.ju, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph366.i.outer

.lr.ph366.i.outer:                                ; preds = %.lr.ph366.lr.ph.i, %bb.ag
  %.ph270 = phi ptr [ %i.ac, %.lr.ph366.lr.ph.i ], [ %i.jg, %bb.ag ] ; 2 uses
  %.ph271 = phi i32 [ %.pre374.pre.i, %.lr.ph366.lr.ph.i ], [ %i.jf, %bb.ag ]
  %i.jv = icmp eq i32 %.ph271, 0
  %i.jw = getelementptr inbounds nuw i8, ptr %.ph270, i64 32
  br i1 %i.jv, label %bb.ah, label %bb.ae

bb.ah:                                            ; preds = %.lr.ph366.i.outer
  %i.jx = load i32, ptr %i.l, align 4, !tbaa !89  ; 8 uses
  %i.jy = load i32, ptr %i.m, align 8, !tbaa !90  ; 4 uses
  %i.jz = add nsw i32 %i.jy, 1                    ; 2 uses
  %i.ka = icmp eq i32 %i.jx, %i.jz
  br i1 %i.ka, label %unRLE_obuf_to_output_SMALL.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kb = icmp sgt i32 %i.jx, %i.jz
  br i1 %i.kb, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 1, ptr %i.i, align 8, !tbaa !86
  %i.kc = load i32, ptr %i.n, align 8, !tbaa !91  ; 4 uses
  %i.kd = trunc i32 %i.kc to i8
  store i8 %i.kd, ptr %i.j, align 4, !tbaa !87
  %i.ke = load i32, ptr %i.o, align 4, !tbaa !92  ; 5 uses
  %i.kf = load i32, ptr %i.p, align 8, !tbaa !93
  %i.kg = mul i32 %i.kf, 100000                   ; 5 uses
  %.not264.i = icmp ult i32 %i.ke, %i.kg
  br i1 %.not264.i, label %.preheader368.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader368.i:                                  ; preds = %bb.aj, %.preheader368.i
  %.09.i315.i = phi i32 [ %.09..i318.i, %.preheader368.i ], [ 0, %bb.aj ] ; 2 uses
  %.0.i316.i = phi i32 [ %..0.i319.i, %.preheader368.i ], [ 256, %bb.aj ] ; 2 uses
  %i.kh = add nsw i32 %.0.i316.i, %.09.i315.i
  %i.ki = ashr i32 %i.kh, 1                       ; 3 uses
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !47
  %.not.i317.i = icmp slt i32 %i.ke, %i.kl        ; 2 uses
  %.09..i318.i = select i1 %.not.i317.i, i32 %.09.i315.i, i32 %i.ki ; 3 uses
  %..0.i319.i = select i1 %.not.i317.i, i32 %i.ki, i32 %.0.i316.i ; 2 uses
  %i.km = sub nsw i32 %..0.i319.i, %.09..i318.i
  %.not11.i320.i = icmp eq i32 %i.km, 1
  br i1 %.not11.i320.i, label %BZ2_indexIntoF.exit321.i, label %.preheader368.i, !llvm.loop !0

BZ2_indexIntoF.exit321.i:                         ; preds = %.preheader368.i
  %i.kn = load ptr, ptr %i.r, align 8, !tbaa !58  ; 5 uses
  %i.ko = zext i32 %i.ke to i64
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.kn, i64 %i.ko
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !60
  %i.kr = zext i16 %i.kq to i32                   ; 2 uses
  %i.ks = load ptr, ptr %i.s, align 8, !tbaa !61  ; 5 uses
  %i.kt = lshr i32 %i.ke, 1
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !40
  %i.kx = zext i8 %i.kw to i32
  %i.ky = shl i32 %i.ke, 2
  %i.kz = and i32 %i.ky, 4
  %i.la = lshr i32 %i.kx, %i.kz
  %i.lb = shl nuw nsw i32 %i.la, 16
  %i.lc = and i32 %i.lb, 983040
  %i.ld = or disjoint i32 %i.lc, %i.kr            ; 5 uses
  store i32 %i.ld, ptr %i.o, align 4, !tbaa !92
  %i.le = add nsw i32 %i.jx, 1                    ; 2 uses
  store i32 %i.le, ptr %i.l, align 4, !tbaa !89
  %i.lf = icmp eq i32 %i.jx, %i.jy
  br i1 %i.lf, label %.backedge.i, label %bb.ak

bb.ak:                                            ; preds = %BZ2_indexIntoF.exit321.i
  %i.lg = and i32 %.09..i318.i, 255               ; 2 uses
  %.not265.i = icmp eq i32 %i.lg, %i.kc
  br i1 %.not265.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 %i.lg, ptr %i.n, align 8, !tbaa !91
  br label %.backedge.i

.backedge.i:                                      ; preds = %BZ2_indexIntoF.exit349.i, %bb.ar, %BZ2_indexIntoF.exit335.i, %bb.ao, %BZ2_indexIntoF.exit328.i, %bb.al, %BZ2_indexIntoF.exit321.i
  %i.lh = load i32, ptr %i.jw, align 8, !tbaa !44
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %unRLE_obuf_to_output_SMALL.exit, label %bb.ae

bb.am:                                            ; preds = %bb.ak
  store i32 2, ptr %i.i, align 8, !tbaa !86
  %.not266.i = icmp ult i32 %i.ld, %i.kg
  br i1 %.not266.i, label %.preheader352.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader352.i:                                  ; preds = %bb.am, %.preheader352.i
  %.09.i322.i = phi i32 [ %.09..i325.i, %.preheader352.i ], [ 0, %bb.am ] ; 2 uses
  %.0.i323.i = phi i32 [ %..0.i326.i, %.preheader352.i ], [ 256, %bb.am ] ; 2 uses
  %i.lj = add nsw i32 %.0.i323.i, %.09.i322.i
  %i.lk = ashr i32 %i.lj, 1                       ; 3 uses
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !47
  %.not.i324.i = icmp slt i32 %i.ld, %i.ln        ; 2 uses
  %.09..i325.i = select i1 %.not.i324.i, i32 %.09.i322.i, i32 %i.lk ; 3 uses
  %..0.i326.i = select i1 %.not.i324.i, i32 %i.lk, i32 %.0.i323.i ; 2 uses
  %i.lo = sub nsw i32 %..0.i326.i, %.09..i325.i
  %.not11.i327.i = icmp eq i32 %i.lo, 1
  br i1 %.not11.i327.i, label %BZ2_indexIntoF.exit328.i, label %.preheader352.i, !llvm.loop !0

BZ2_indexIntoF.exit328.i:                         ; preds = %.preheader352.i
  %i.lp = zext nneg i32 %i.ld to i64
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %i.kn, i64 %i.lp
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !60
  %i.ls = zext i16 %i.lr to i32                   ; 2 uses
  %i.lt = lshr i32 %i.ld, 1
  %i.lu = zext nneg i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !40
  %i.lx = zext i8 %i.lw to i32
  %i.ly = shl nuw nsw i32 %i.kr, 2
  %i.lz = and i32 %i.ly, 4
  %i.ma = lshr i32 %i.lx, %i.lz
  %i.mb = shl nuw nsw i32 %i.ma, 16
  %i.mc = and i32 %i.mb, 983040
  %i.md = or disjoint i32 %i.mc, %i.ls            ; 5 uses
  store i32 %i.md, ptr %i.o, align 4, !tbaa !92
  %i.me = add nsw i32 %i.jx, 2                    ; 2 uses
  store i32 %i.me, ptr %i.l, align 4, !tbaa !89
  %i.mf = icmp eq i32 %i.le, %i.jy
  br i1 %i.mf, label %.backedge.i, label %bb.an

bb.an:                                            ; preds = %BZ2_indexIntoF.exit328.i
  %i.mg = and i32 %.09..i325.i, 255               ; 2 uses
  %.not267.i = icmp eq i32 %i.mg, %i.kc
  br i1 %.not267.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 %i.mg, ptr %i.n, align 8, !tbaa !91
  br label %.backedge.i

bb.ap:                                            ; preds = %bb.an
  store i32 3, ptr %i.i, align 8, !tbaa !86
  %.not268.i = icmp ult i32 %i.md, %i.kg
  br i1 %.not268.i, label %.preheader351.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader351.i:                                  ; preds = %bb.ap, %.preheader351.i
  %.09.i329.i = phi i32 [ %.09..i332.i, %.preheader351.i ], [ 0, %bb.ap ] ; 2 uses
  %.0.i330.i = phi i32 [ %..0.i333.i, %.preheader351.i ], [ 256, %bb.ap ] ; 2 uses
  %i.mh = add nsw i32 %.0.i330.i, %.09.i329.i
  %i.mi = ashr i32 %i.mh, 1                       ; 3 uses
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !47
  %.not.i331.i = icmp slt i32 %i.md, %i.ml        ; 2 uses
  %.09..i332.i = select i1 %.not.i331.i, i32 %.09.i329.i, i32 %i.mi ; 3 uses
  %..0.i333.i = select i1 %.not.i331.i, i32 %i.mi, i32 %.0.i330.i ; 2 uses
  %i.mm = sub nsw i32 %..0.i333.i, %.09..i332.i
  %.not11.i334.i = icmp eq i32 %i.mm, 1
  br i1 %.not11.i334.i, label %BZ2_indexIntoF.exit335.i, label %.preheader351.i, !llvm.loop !0

BZ2_indexIntoF.exit335.i:                         ; preds = %.preheader351.i
  %i.mn = zext nneg i32 %i.md to i64
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.kn, i64 %i.mn
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !60
  %i.mq = zext i16 %i.mp to i32                   ; 2 uses
  %i.mr = lshr i32 %i.md, 1
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !40
  %i.mv = zext i8 %i.mu to i32
  %i.mw = shl nuw nsw i32 %i.ls, 2
  %i.mx = and i32 %i.mw, 4
  %i.my = lshr i32 %i.mv, %i.mx
  %i.mz = shl nuw nsw i32 %i.my, 16
  %i.na = and i32 %i.mz, 983040
  %i.nb = or disjoint i32 %i.na, %i.mq            ; 5 uses
  store i32 %i.nb, ptr %i.o, align 4, !tbaa !92
  %i.nc = add nsw i32 %i.jx, 3
  store i32 %i.nc, ptr %i.l, align 4, !tbaa !89
  %i.nd = icmp eq i32 %i.me, %i.jy
  br i1 %i.nd, label %.backedge.i, label %bb.aq

bb.aq:                                            ; preds = %BZ2_indexIntoF.exit335.i
  %i.ne = and i32 %.09..i332.i, 255               ; 2 uses
  %.not269.i = icmp eq i32 %i.ne, %i.kc
  br i1 %.not269.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.ne, ptr %i.n, align 8, !tbaa !91
  br label %.backedge.i

bb.as:                                            ; preds = %bb.aq
  %.not270.i = icmp ult i32 %i.nb, %i.kg
  br i1 %.not270.i, label %.preheader350.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader350.i:                                  ; preds = %bb.as, %.preheader350.i
  %.09.i336.i = phi i32 [ %.09..i339.i, %.preheader350.i ], [ 0, %bb.as ] ; 2 uses
  %.0.i337.i = phi i32 [ %..0.i340.i, %.preheader350.i ], [ 256, %bb.as ] ; 2 uses
  %i.nf = add nsw i32 %.0.i337.i, %.09.i336.i
  %i.ng = ashr i32 %i.nf, 1                       ; 3 uses
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !47
  %.not.i338.i = icmp slt i32 %i.nb, %i.nj        ; 2 uses
  %.09..i339.i = select i1 %.not.i338.i, i32 %.09.i336.i, i32 %i.ng ; 3 uses
  %..0.i340.i = select i1 %.not.i338.i, i32 %i.ng, i32 %.0.i337.i ; 2 uses
  %i.nk = sub nsw i32 %..0.i340.i, %.09..i339.i
  %.not11.i341.i = icmp eq i32 %i.nk, 1
  br i1 %.not11.i341.i, label %BZ2_indexIntoF.exit342.i, label %.preheader350.i, !llvm.loop !0

BZ2_indexIntoF.exit342.i:                         ; preds = %.preheader350.i
  %i.nl = zext nneg i32 %i.nb to i64
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %i.kn, i64 %i.nl
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !60
  %i.no = zext i16 %i.nn to i32                   ; 2 uses
  %i.np = lshr i32 %i.nb, 1
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !40
  %i.nt = zext i8 %i.ns to i32
  %i.nu = shl nuw nsw i32 %i.mq, 2
  %i.nv = and i32 %i.nu, 4
  %i.nw = lshr i32 %i.nt, %i.nv
  %i.nx = shl nuw nsw i32 %i.nw, 16
  %i.ny = and i32 %i.nx, 983040
  %i.nz = or disjoint i32 %i.ny, %i.no            ; 5 uses
  store i32 %i.nz, ptr %i.o, align 4, !tbaa !92
  %i.oa = add nsw i32 %i.jx, 4
  store i32 %i.oa, ptr %i.l, align 4, !tbaa !89
  %i.ob = and i32 %.09..i339.i, 255
  %i.oc = add nuw nsw i32 %i.ob, 4
  store i32 %i.oc, ptr %i.i, align 8, !tbaa !86
  %.not271.i = icmp ult i32 %i.nz, %i.kg
  br i1 %.not271.i, label %.preheader.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader.i:                                     ; preds = %BZ2_indexIntoF.exit342.i, %.preheader.i
  %.09.i343.i = phi i32 [ %.09..i346.i, %.preheader.i ], [ 0, %BZ2_indexIntoF.exit342.i ] ; 2 uses
  %.0.i344.i = phi i32 [ %..0.i347.i, %.preheader.i ], [ 256, %BZ2_indexIntoF.exit342.i ] ; 2 uses
  %i.od = add nsw i32 %.0.i344.i, %.09.i343.i
  %i.oe = ashr i32 %i.od, 1                       ; 3 uses
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.of
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !47
  %.not.i345.i = icmp slt i32 %i.nz, %i.oh        ; 2 uses
  %.09..i346.i = select i1 %.not.i345.i, i32 %.09.i343.i, i32 %i.oe ; 3 uses
  %..0.i347.i = select i1 %.not.i345.i, i32 %i.oe, i32 %.0.i344.i ; 2 uses
  %i.oi = sub nsw i32 %..0.i347.i, %.09..i346.i
  %.not11.i348.i = icmp eq i32 %i.oi, 1
  br i1 %.not11.i348.i, label %BZ2_indexIntoF.exit349.i, label %.preheader.i, !llvm.loop !0

BZ2_indexIntoF.exit349.i:                         ; preds = %.preheader.i
  store i32 %.09..i346.i, ptr %i.n, align 8, !tbaa !91
  %i.oj = zext nneg i32 %i.nz to i64
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %i.kn, i64 %i.oj
  %i.ol = load i16, ptr %i.ok, align 2, !tbaa !60
  %i.om = zext i16 %i.ol to i32
  %i.on = lshr i32 %i.nz, 1
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.oo
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !40
  %i.or = zext i8 %i.oq to i32
  %i.os = shl nuw nsw i32 %i.no, 2
  %i.ot = and i32 %i.os, 4
  %i.ou = lshr i32 %i.or, %i.ot
  %i.ov = shl nuw nsw i32 %i.ou, 16
  %i.ow = and i32 %i.ov, 983040
  %i.ox = or disjoint i32 %i.ow, %i.om
  store i32 %i.ox, ptr %i.o, align 4, !tbaa !92
  %i.oy = add nsw i32 %i.jx, 5
  store i32 %i.oy, ptr %i.l, align 4, !tbaa !89
  br label %.backedge.i

bb.at:                                            ; preds = %.loopexit
  br i1 %.not.i53, label %bb.by, label %.preheader327.i

.preheader327.i:                                  ; preds = %bb.at
  %i.oz = load ptr, ptr %i.c, align 8, !tbaa !49  ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 32
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !44
  %i.pc = icmp eq i32 %i.pb, 0
  br i1 %i.pc, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.lr.ph.i54

.lr.ph.lr.ph.i54:                                 ; preds = %.preheader327.i
  %.pre.pre.i55 = load i32, ptr %i.i, align 8, !tbaa !86
  br label %.lr.ph.i56.outer

.lr.ph.i56.outer:                                 ; preds = %.lr.ph.lr.ph.i54, %bb.aw
  %.ph = phi ptr [ %i.oz, %.lr.ph.lr.ph.i54 ], [ %i.pt, %bb.aw ] ; 2 uses
  %.ph266 = phi i32 [ %.pre.pre.i55, %.lr.ph.lr.ph.i54 ], [ %i.ps, %bb.aw ]
  %i.pd = icmp eq i32 %.ph266, 0
  %i.pe = getelementptr inbounds nuw i8, ptr %.ph, i64 32
  br i1 %i.pd, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %.backedge329.i, %.lr.ph.i56.outer
  %i.pf = load i8, ptr %i.j, align 4, !tbaa !87   ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.ph, i64 24
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !45
  store i8 %i.pf, ptr %i.ph, align 1, !tbaa !40
  %i.pi = load i32, ptr %i.k, align 8, !tbaa !88  ; 2 uses
  %i.pj = shl i32 %i.pi, 8
  %i.pk = lshr i32 %i.pi, 24
  %i.pl = zext i8 %i.pf to i32
  %i.pm = xor i32 %i.pk, %i.pl
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr @BZ2_crc32Table, i64 %i.pn
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !47
  %i.pq = xor i32 %i.pp, %i.pj
  store i32 %i.pq, ptr %i.k, align 8, !tbaa !88
  %i.pr = load i32, ptr %i.i, align 8, !tbaa !86
  %i.ps = add nsw i32 %i.pr, -1                   ; 2 uses
  store i32 %i.ps, ptr %i.i, align 8, !tbaa !86
  %i.pt = load ptr, ptr %i.c, align 8, !tbaa !49  ; 5 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 24 ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !45
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 1
  store ptr %i.pw, ptr %i.pu, align 8, !tbaa !45
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 32 ; 2 uses
  %i.py = load i32, ptr %i.px, align 8, !tbaa !44
  %i.pz = add i32 %i.py, -1                       ; 2 uses
  store i32 %i.pz, ptr %i.px, align 8, !tbaa !44
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pt, i64 36 ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !32
  %i.qc = add i32 %i.qb, 1                        ; 2 uses
  store i32 %i.qc, ptr %i.qa, align 4, !tbaa !32
  %i.qd = icmp eq i32 %i.qc, 0
  br i1 %i.qd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pt, i64 40 ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !33
  %i.qg = add i32 %i.qf, 1
  store i32 %i.qg, ptr %i.qe, align 8, !tbaa !33
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.qh = icmp eq i32 %i.pz, 0
  br i1 %i.qh, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.i56.outer

bb.ax:                                            ; preds = %.lr.ph.i56.outer
  %i.qi = load i32, ptr %i.l, align 4, !tbaa !89  ; 8 uses
  %i.qj = load i32, ptr %i.m, align 8, !tbaa !90  ; 4 uses
  %i.qk = add nsw i32 %i.qj, 1                    ; 2 uses
  %i.ql = icmp eq i32 %i.qi, %i.qk
  br i1 %i.ql, label %unRLE_obuf_to_output_SMALL.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.qm = icmp sgt i32 %i.qi, %i.qk
  br i1 %i.qm, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 1, ptr %i.i, align 8, !tbaa !86
  %i.qn = load i32, ptr %i.n, align 8, !tbaa !91  ; 4 uses
  %i.qo = trunc i32 %i.qn to i8
  store i8 %i.qo, ptr %i.j, align 4, !tbaa !87
  %i.qp = load i32, ptr %i.o, align 4, !tbaa !92  ; 2 uses
  %i.qq = load i32, ptr %i.p, align 8, !tbaa !93
  %i.qr = mul i32 %i.qq, 100000                   ; 5 uses
  %.not308.i = icmp ult i32 %i.qp, %i.qr
  br i1 %.not308.i, label %bb.ba, label %unRLE_obuf_to_output_SMALL.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.qs = load ptr, ptr %i.v, align 8, !tbaa !62  ; 5 uses
  %i.qt = zext i32 %i.qp to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !47 ; 2 uses
  %i.qw = lshr i32 %i.qv, 8                       ; 3 uses
  store i32 %i.qw, ptr %i.o, align 4, !tbaa !92
  %i.qx = load i32, ptr %i.t, align 8, !tbaa !94  ; 2 uses
  %i.qy = icmp eq i32 %i.qx, 0
  br i1 %i.qy, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.qz = load i32, ptr %i.u, align 4, !tbaa !95  ; 2 uses
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds [4 x i8], ptr @BZ2_rNums, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !47
  %i.rd = add nsw i32 %i.qz, 1                    ; 2 uses
  %i.re = icmp eq i32 %i.rd, 512
  %spec.store.select.i59 = select i1 %i.re, i32 0, i32 %i.rd
  store i32 %spec.store.select.i59, ptr %i.u, align 4, !tbaa !95
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.rf = phi i32 [ %i.rc, %bb.bb ], [ %i.qx, %bb.ba ]
  %i.rg = add nsw i32 %i.rf, -1                   ; 4 uses
  store i32 %i.rg, ptr %i.t, align 8, !tbaa !94
  %i.rh = add nsw i32 %i.qi, 1                    ; 2 uses
  store i32 %i.rh, ptr %i.l, align 4, !tbaa !89
  %i.ri = icmp eq i32 %i.qi, %i.qj
  br i1 %i.ri, label %.backedge329.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.rj = icmp eq i32 %i.rg, 1
  %i.rk = zext i1 %i.rj to i32
  %.masked.i58 = and i32 %i.qv, 255
  %i.rl = xor i32 %.masked.i58, %i.rk             ; 2 uses
  %.not309.i = icmp eq i32 %i.rl, %i.qn
  br i1 %.not309.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i32 %i.rl, ptr %i.n, align 8, !tbaa !91
  br label %.backedge329.i

.backedge329.i:                                   ; preds = %bb.bx, %bb.bq, %bb.bo, %bb.bk, %bb.bi, %bb.be, %bb.bc
  %i.rm = load i32, ptr %i.pe, align 8, !tbaa !44
  %i.rn = icmp eq i32 %i.rm, 0
  br i1 %i.rn, label %unRLE_obuf_to_output_SMALL.exit, label %bb.au

bb.bf:                                            ; preds = %bb.bd
  store i32 2, ptr %i.i, align 8, !tbaa !86
  %.not310.i = icmp ult i32 %i.qw, %i.qr
  br i1 %.not310.i, label %bb.bg, label %unRLE_obuf_to_output_SMALL.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.ro = zext nneg i32 %i.qw to i64
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.ro
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !47 ; 2 uses
  %i.rr = lshr i32 %i.rq, 8                       ; 3 uses
  store i32 %i.rr, ptr %i.o, align 4, !tbaa !92
  %i.rs = icmp eq i32 %i.rg, 0
  br i1 %i.rs, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.rt = load i32, ptr %i.u, align 4, !tbaa !95  ; 2 uses
  %i.ru = sext i32 %i.rt to i64
  %i.rv = getelementptr inbounds [4 x i8], ptr @BZ2_rNums, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !47
  %i.rx = add nsw i32 %i.rt, 1                    ; 2 uses
  %i.ry = icmp eq i32 %i.rx, 512
  %spec.store.select319.i = select i1 %i.ry, i32 0, i32 %i.rx
  store i32 %spec.store.select319.i, ptr %i.u, align 4, !tbaa !95
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.rz = phi i32 [ %i.rw, %bb.bh ], [ %i.rg, %bb.bg ]
  %i.sa = add nsw i32 %i.rz, -1                   ; 4 uses
  store i32 %i.sa, ptr %i.t, align 8, !tbaa !94
  %i.sb = add nsw i32 %i.qi, 2                    ; 2 uses
  store i32 %i.sb, ptr %i.l, align 4, !tbaa !89
  %i.sc = icmp eq i32 %i.rh, %i.qj
  br i1 %i.sc, label %.backedge329.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.sd = icmp eq i32 %i.sa, 1
  %i.se = zext i1 %i.sd to i32
  %.masked311.i = and i32 %i.rq, 255
  %i.sf = xor i32 %.masked311.i, %i.se            ; 2 uses
  %.not312.i = icmp eq i32 %i.sf, %i.qn
  br i1 %.not312.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i32 %i.sf, ptr %i.n, align 8, !tbaa !91
  br label %.backedge329.i

bb.bl:                                            ; preds = %bb.bj
  store i32 3, ptr %i.i, align 8, !tbaa !86
  %.not313.i = icmp ult i32 %i.rr, %i.qr
  br i1 %.not313.i, label %bb.bm, label %unRLE_obuf_to_output_SMALL.exit.thread

bb.bm:                                            ; preds = %bb.bl
  %i.sg = zext nneg i32 %i.rr to i64
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.sg
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !47 ; 2 uses
  %i.sj = lshr i32 %i.si, 8                       ; 3 uses
  store i32 %i.sj, ptr %i.o, align 4, !tbaa !92
  %i.sk = icmp eq i32 %i.sa, 0
  br i1 %i.sk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.sl = load i32, ptr %i.u, align 4, !tbaa !95  ; 2 uses
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds [4 x i8], ptr @BZ2_rNums, i64 %i.sm
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !47
  %i.sp = add nsw i32 %i.sl, 1                    ; 2 uses
  %i.sq = icmp eq i32 %i.sp, 512
  %spec.store.select320.i = select i1 %i.sq, i32 0, i32 %i.sp
  store i32 %spec.store.select320.i, ptr %i.u, align 4, !tbaa !95
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.sr = phi i32 [ %i.so, %bb.bn ], [ %i.sa, %bb.bm ]
  %i.ss = add nsw i32 %i.sr, -1                   ; 4 uses
  store i32 %i.ss, ptr %i.t, align 8, !tbaa !94
  %i.st = add nsw i32 %i.qi, 3
  store i32 %i.st, ptr %i.l, align 4, !tbaa !89
  %i.su = icmp eq i32 %i.sb, %i.qj
  br i1 %i.su, label %.backedge329.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.sv = icmp eq i32 %i.ss, 1
  %i.sw = zext i1 %i.sv to i32
  %.masked314.i = and i32 %i.si, 255
  %i.sx = xor i32 %.masked314.i, %i.sw            ; 2 uses
  %.not315.i = icmp eq i32 %i.sx, %i.qn
  br i1 %.not315.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i32 %i.sx, ptr %i.n, align 8, !tbaa !91
  br label %.backedge329.i

bb.br:                                            ; preds = %bb.bp
  %.not316.i = icmp ult i32 %i.sj, %i.qr
  br i1 %.not316.i, label %bb.bs, label %unRLE_obuf_to_output_SMALL.exit.thread

bb.bs:                                            ; preds = %bb.br
  %i.sy = zext nneg i32 %i.sj to i64
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.sy
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !47 ; 2 uses
  %i.tb = lshr i32 %i.ta, 8                       ; 3 uses
  store i32 %i.tb, ptr %i.o, align 4, !tbaa !92
  %i.tc = icmp eq i32 %i.ss, 0
  br i1 %i.tc, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.td = load i32, ptr %i.u, align 4, !tbaa !95  ; 2 uses
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds [4 x i8], ptr @BZ2_rNums, i64 %i.te
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !47
  %i.th = add nsw i32 %i.td, 1                    ; 2 uses
  %i.ti = icmp eq i32 %i.th, 512
  %spec.store.select321.i = select i1 %i.ti, i32 0, i32 %i.th
  store i32 %spec.store.select321.i, ptr %i.u, align 4, !tbaa !95
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.tj = phi i32 [ %i.tg, %bb.bt ], [ %i.ss, %bb.bs ]
  %i.tk = add nsw i32 %i.tj, -1                   ; 4 uses
  store i32 %i.tk, ptr %i.t, align 8, !tbaa !94
  %i.tl = icmp eq i32 %i.tk, 1
  %i.tm = zext i1 %i.tl to i32
  %i.tn = add nsw i32 %i.qi, 4
  store i32 %i.tn, ptr %i.l, align 4, !tbaa !89
  %.masked317.i = and i32 %i.ta, 255
  %i.to = xor i32 %.masked317.i, %i.tm
  %i.tp = add nuw nsw i32 %i.to, 4
  store i32 %i.tp, ptr %i.i, align 8, !tbaa !86
  %.not318.i = icmp ult i32 %i.tb, %i.qr
  br i1 %.not318.i, label %bb.bv, label %unRLE_obuf_to_output_SMALL.exit.thread

bb.bv:                                            ; preds = %bb.bu
  %i.tq = zext nneg i32 %i.tb to i64
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.tq
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !47 ; 2 uses
  %i.tt = and i32 %i.ts, 255                      ; 2 uses
  store i32 %i.tt, ptr %i.n, align 8, !tbaa !91
  %i.tu = lshr i32 %i.ts, 8
  store i32 %i.tu, ptr %i.o, align 4, !tbaa !92
  %i.tv = icmp eq i32 %i.tk, 0
  br i1 %i.tv, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.tw = load i32, ptr %i.u, align 4, !tbaa !95  ; 2 uses
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr inbounds [4 x i8], ptr @BZ2_rNums, i64 %i.tx
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !47
  %i.ua = add nsw i32 %i.tw, 1                    ; 2 uses
  %i.ub = icmp eq i32 %i.ua, 512
  %spec.store.select322.i = select i1 %i.ub, i32 0, i32 %i.ua
  store i32 %spec.store.select322.i, ptr %i.u, align 4, !tbaa !95
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.uc = phi i32 [ %i.tz, %bb.bw ], [ %i.tk, %bb.bv ]
  %i.ud = add nsw i32 %i.uc, -1                   ; 2 uses
  store i32 %i.ud, ptr %i.t, align 8, !tbaa !94
  %i.ue = icmp eq i32 %i.ud, 1
  %i.uf = zext i1 %i.ue to i32
  %i.ug = xor i32 %i.tt, %i.uf
  store i32 %i.ug, ptr %i.n, align 8, !tbaa !91
  %i.uh = add nsw i32 %i.qi, 5
  store i32 %i.uh, ptr %i.l, align 4, !tbaa !89
  br label %.backedge329.i

bb.by:                                            ; preds = %bb.at
  %i.ui = load i32, ptr %i.k, align 8, !tbaa !88
  %i.uj = load i8, ptr %i.j, align 4, !tbaa !87
  %i.uk = load i32, ptr %i.i, align 8, !tbaa !86
  %i.ul = load i32, ptr %i.l, align 4, !tbaa !89
  %i.um = load i32, ptr %i.n, align 8, !tbaa !91
  %i.un = load ptr, ptr %i.v, align 8, !tbaa !62  ; 6 uses
  %i.uo = load i32, ptr %i.o, align 4, !tbaa !92
  %i.up = load ptr, ptr %i.c, align 8, !tbaa !49  ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !45
  %i.us = getelementptr inbounds nuw i8, ptr %i.up, i64 32
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !44 ; 2 uses
  %i.uu = load i32, ptr %i.p, align 8, !tbaa !93
  %i.uv = load i32, ptr %i.m, align 8, !tbaa !90  ; 2 uses
  %i.uw = add nsw i32 %i.uv, 1                    ; 7 uses
  %i.ux = mul i32 %i.uu, 100000                   ; 5 uses
  br label %.backedge.i61

.backedge.i61:                                    ; preds = %.backedge.i61.backedge, %bb.by
  %.0267.i = phi i32 [ %i.ui, %bb.by ], [ %.3270.i, %.backedge.i61.backedge ] ; 3 uses
  %.0263.i = phi i8 [ %i.uj, %bb.by ], [ %i.wa, %.backedge.i61.backedge ] ; 6 uses
  %.0260.i = phi i32 [ %i.uk, %bb.by ], [ %.0260.i.be, %.backedge.i61.backedge ] ; 3 uses
  %.0256.i = phi i32 [ %i.ul, %bb.by ], [ %.0256.i.be, %.backedge.i61.backedge ] ; 4 uses
  %.0252.i = phi i32 [ %i.um, %bb.by ], [ %.0252.i.be, %.backedge.i61.backedge ] ; 4 uses
  %.0248.i = phi i32 [ %i.uo, %bb.by ], [ %.0248.i.be, %.backedge.i61.backedge ] ; 4 uses
  %.0243.i = phi ptr [ %i.ur, %bb.by ], [ %.3246.i, %.backedge.i61.backedge ] ; 3 uses
  %.0.i60 = phi i32 [ %i.ut, %bb.by ], [ %.3.i, %.backedge.i61.backedge ] ; 3 uses
  %i.uy = icmp sgt i32 %.0260.i, 0
  br i1 %i.uy, label %.preheader.i62, label %bb.cc

.preheader.i62:                                   ; preds = %.backedge.i61
  %i.uz = icmp eq i32 %.0.i60, 0
  br i1 %i.uz, label %.loopexit.i, label %.lr.ph347.i
end_hunk_0
