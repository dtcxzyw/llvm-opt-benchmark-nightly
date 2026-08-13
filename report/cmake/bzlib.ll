inline.NumInlined: 47
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@BZ2_bzCompressEnd:bb.a

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !17
  %.not = icmp eq ptr %i.e, %0
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %.not26 = icmp eq ptr %i.g, null
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  tail call void %i.i(ptr noundef %i.k, ptr noundef nonnull %i.g) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %.not27 = icmp eq ptr %i.m, null
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  tail call void %i.o(ptr noundef %i.q, ptr noundef nonnull %i.m) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23   ; 2 uses
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
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !35
  tail call void %i.y(ptr noundef %i.aa, ptr noundef %i.ab) #24
  store ptr null, ptr %i.b, align 8, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -3, 1) i32 @BZ2_bzDecompressInit(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %or.cond = icmp ugt i32 %2, 1
  %or.cond38 = or i1 %i.a, %or.cond
  %or.cond3 = icmp ugt i32 %1, 4
  %or.cond39 = or i1 %or.cond3, %or.cond38
  br i1 %or.cond39, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr @default_bzalloc, ptr %i.b, align 8, !tbaa !12
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
  store ptr %0, ptr %i.k, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %i.m, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 10, ptr %i.n, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %i.o, align 4, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 0, ptr %i.p, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 3188
  store i32 0, ptr %i.q, align 4, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.s, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.t, align 4, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !39
  %i.v = trunc nuw nsw i32 %2 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i8 %i.v, ptr %i.w, align 4, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 3152
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 0, ptr %i.y, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store i32 %1, ptr %i.z, align 4, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -2, %bb.a ], [ -3, %bb.f ]
  ret i32 %.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @BZ2_indexIntoF(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.09 = phi i32 [ 256, %bb.a ], [ %..09, %bb.b ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %.0., %bb.b ]     ; 2 uses
  %i.a = add nsw i32 %.0, %.09
  %i.b = ashr i32 %i.a, 1                         ; 3 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !55
  %.not = icmp slt i32 %0, %i.e                   ; 2 uses
  %..09 = select i1 %.not, i32 %i.b, i32 %.09     ; 2 uses
  %.0. = select i1 %.not, i32 %.0, i32 %i.b       ; 3 uses
  %i.f = sub nsw i32 %..09, %.0.
  %.not11 = icmp eq i32 %i.f, 1
  br i1 %.not11, label %bb.c, label %bb.b, !llvm.loop !67

bb.c:                                             ; preds = %bb.b
  ret i32 %.0.
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BZ2_bzDecompress(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 32 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !58
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
  %.pre = load i32, ptr %i.f, align 8, !tbaa !60  ; 2 uses
  switch i32 %.pre, label %.preheader.split [
    i32 1, label %unRLE_obuf_to_output_SMALL.exit.thread
    i32 2, label %.loopexit
  ]

.preheader.split:                                 ; preds = %.preheader
  %1 = icmp sgt i32 %.pre, 9
  br i1 %1, label %.loopexit201, label %bb.d

bb.d:                                             ; preds = %.preheader.split, %bb.d
  br label %bb.d

.loopexit:                                        ; preds = %.preheader, %bb.da
  %i.z = load i8, ptr %i.g, align 4, !tbaa !64
  %.not47 = icmp eq i8 %i.z, 0
  %i.aa = load i8, ptr %i.h, align 4, !tbaa !69
  %.not.i53 = icmp eq i8 %i.aa, 0                 ; 2 uses
  br i1 %.not47, label %bb.at, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !58  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !50
  %i.ae = icmp eq i32 %i.ad, 0                    ; 2 uses
  br i1 %.not.i53, label %.preheader353.i, label %.preheader360.i

.preheader360.i:                                  ; preds = %bb.e
  br i1 %i.ae, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %.preheader360.i
  %.pre.pre.i = load i32, ptr %i.i, align 8, !tbaa !70
  br label %.lr.ph.i.outer

.preheader353.i:                                  ; preds = %bb.e
  br i1 %i.ae, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph366.lr.ph.i

.lr.ph366.lr.ph.i:                                ; preds = %.preheader353.i
  %.pre374.pre.i = load i32, ptr %i.i, align 8, !tbaa !70
  br label %.lr.ph366.i.outer

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %.backedge363.i
  %i.af = phi i1 [ false, %.backedge363.i ], [ %i.bj, %.lr.ph.i.outer ]
  br i1 %i.af, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ag = load i8, ptr %i.j, align 4, !tbaa !71   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.ph274.a, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !51
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !46
  %i.aj = load i32, ptr %i.k, align 8, !tbaa !72  ; 2 uses
  %i.ak = shl i32 %i.aj, 8
  %i.al = lshr i32 %i.aj, 24
  %i.am = zext i8 %i.ag to i32
  %i.an = xor i32 %i.al, %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @BZ2_crc32Table, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !55
  %i.ar = xor i32 %i.aq, %i.ak
  store i32 %i.ar, ptr %i.k, align 8, !tbaa !72
  %i.as = load i32, ptr %i.i, align 8, !tbaa !70
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.i, align 8, !tbaa !70
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !58  ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !50
  %i.ba = add i32 %i.az, -1                       ; 2 uses
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !50
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 36 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !38
  %i.bd = add i32 %i.bc, 1                        ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !38
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !39
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bi = icmp eq i32 %i.ba, 0
  br i1 %i.bi, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %.lr.ph.lr.ph.i, %bb.h
  %.ph274.a = phi ptr [ %i.ab, %.lr.ph.lr.ph.i ], [ %i.au, %bb.h ] ; 2 uses
  %.ph275 = phi i32 [ %.pre.pre.i, %.lr.ph.lr.ph.i ], [ %i.at, %bb.h ]
  %i.bj = icmp eq i32 %.ph275, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %.ph274.a, i64 32
  br label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bl = load i32, ptr %i.l, align 4, !tbaa !73  ; 8 uses
  %i.bm = load i32, ptr %i.m, align 8, !tbaa !74  ; 4 uses
  %i.bn = add nsw i32 %i.bm, 1                    ; 2 uses
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %unRLE_obuf_to_output_SMALL.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = icmp sgt i32 %i.bl, %i.bn
  br i1 %i.bp, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.i, align 8, !tbaa !70
  %i.bq = load i32, ptr %i.n, align 8, !tbaa !75  ; 4 uses
  %i.br = trunc i32 %i.bq to i8
  store i8 %i.br, ptr %i.j, align 4, !tbaa !71
  %i.bs = load i32, ptr %i.o, align 4, !tbaa !76  ; 5 uses
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !77
  %i.bu = mul i32 %i.bt, 100000                   ; 5 uses
  %.not272.i = icmp ult i32 %i.bs, %i.bu
  br i1 %.not272.i, label %.preheader370.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader370.i:                                  ; preds = %bb.k, %.preheader370.i
  %.09.i.i = phi i32 [ %..09.i.i, %.preheader370.i ], [ 256, %bb.k ] ; 2 uses
  %.0.i.i = phi i32 [ %.0..i.i, %.preheader370.i ], [ 0, %bb.k ] ; 2 uses
  %i.bv = add nsw i32 %.0.i.i, %.09.i.i
  %i.bw = ashr i32 %i.bv, 1                       ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !55
  %.not.i.i = icmp slt i32 %i.bs, %i.bz           ; 2 uses
  %..09.i.i = select i1 %.not.i.i, i32 %i.bw, i32 %.09.i.i ; 2 uses
  %.0..i.i = select i1 %.not.i.i, i32 %.0.i.i, i32 %i.bw ; 3 uses
  %i.ca = sub nsw i32 %..09.i.i, %.0..i.i
  %.not11.i.i = icmp eq i32 %i.ca, 1
  br i1 %.not11.i.i, label %BZ2_indexIntoF.exit.i, label %.preheader370.i, !llvm.loop !67

BZ2_indexIntoF.exit.i:                            ; preds = %.preheader370.i
  %i.cb = load ptr, ptr %i.r, align 8, !tbaa !78  ; 5 uses
  %i.cc = zext i32 %i.bs to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !79
  %i.cf = zext i16 %i.ce to i32                   ; 2 uses
  %i.cg = load ptr, ptr %i.s, align 8, !tbaa !81  ; 5 uses
  %i.ch = lshr i32 %i.bs, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !46
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl i32 %i.bs, 2
  %i.cn = and i32 %i.cm, 4
  %i.co = lshr i32 %i.cl, %i.cn
  %i.cp = shl nuw nsw i32 %i.co, 16
  %i.cq = and i32 %i.cp, 983040
  %i.cr = or disjoint i32 %i.cq, %i.cf            ; 5 uses
  store i32 %i.cr, ptr %i.o, align 4, !tbaa !76
  %i.cs = load i32, ptr %i.t, align 8, !tbaa !82  ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.l, label %bb.m

bb.l:                                             ; preds = %BZ2_indexIntoF.exit.i
  %i.cu = load i32, ptr %i.u, align 4, !tbaa !83  ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr @BZ2_rNums, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !55
  %i.cy = add nsw i32 %i.cu, 1                    ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 512
  %spec.store.select.i = select i1 %i.cz, i32 0, i32 %i.cy
  store i32 %spec.store.select.i, ptr %i.u, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %BZ2_indexIntoF.exit.i
  %i.da = phi i32 [ %i.cx, %bb.l ], [ %i.cs, %BZ2_indexIntoF.exit.i ]
  %i.db = add nsw i32 %i.da, -1                   ; 4 uses
  store i32 %i.db, ptr %i.t, align 8, !tbaa !82
  %i.dc = add nsw i32 %i.bl, 1                    ; 2 uses
  store i32 %i.dc, ptr %i.l, align 4, !tbaa !73
  %i.dd = icmp eq i32 %i.bl, %i.bm
  br i1 %i.dd, label %.backedge363.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = icmp eq i32 %i.db, 1
  %i.df = zext i1 %i.de to i32
  %.masked.i = and i32 %.0..i.i, 255
  %i.dg = xor i32 %.masked.i, %i.df               ; 2 uses
  %.not273.i = icmp eq i32 %i.dg, %i.bq
  br i1 %.not273.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.dg, ptr %i.n, align 8, !tbaa !75
  br label %.backedge363.i

.backedge363.i:                                   ; preds = %bb.ad, %bb.y, %bb.w, %bb.t, %bb.r, %bb.o, %bb.m
  %i.dh = load i32, ptr %i.bk, align 8, !tbaa !50
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.i

bb.p:                                             ; preds = %bb.n
  store i32 2, ptr %i.i, align 8, !tbaa !70
  %.not274.i = icmp ult i32 %i.cr, %i.bu
  br i1 %.not274.i, label %.preheader358.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader358.i:                                  ; preds = %bb.p, %.preheader358.i
  %.09.i287.i = phi i32 [ %..09.i290.i, %.preheader358.i ], [ 256, %bb.p ] ; 2 uses
  %.0.i288.i = phi i32 [ %.0..i291.i, %.preheader358.i ], [ 0, %bb.p ] ; 2 uses
  %i.dj = add nsw i32 %.0.i288.i, %.09.i287.i
  %i.dk = ashr i32 %i.dj, 1                       ; 3 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !55
  %.not.i289.i = icmp slt i32 %i.cr, %i.dn        ; 2 uses
  %..09.i290.i = select i1 %.not.i289.i, i32 %i.dk, i32 %.09.i287.i ; 2 uses
  %.0..i291.i = select i1 %.not.i289.i, i32 %.0.i288.i, i32 %i.dk ; 3 uses
  %i.do = sub nsw i32 %..09.i290.i, %.0..i291.i
  %.not11.i292.i = icmp eq i32 %i.do, 1
  br i1 %.not11.i292.i, label %BZ2_indexIntoF.exit293.i, label %.preheader358.i, !llvm.loop !67

end_hunk_0
begin_hunk_1_@BZ2_bzDecompress:bb.a
  %i.vs = zext i8 %.1261.i to i32
  %i.vt = xor i32 %i.vr, %i.vs
  %i.vu = zext nneg i32 %i.vt to i64
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr @BZ2_crc32Table, i64 %i.vu
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !55
  %i.vx = xor i32 %i.vw, %i.vq
  %i.vy = getelementptr inbounds nuw i8, ptr %.2253.i, i64 1
  %i.vz = add i32 %.2248.i, -1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.backedge.i60
  %.2270.i = phi i32 [ %.1269.i, %bb.cb ], [ %.0268.i, %.backedge.i60 ] ; 7 uses
  %.2266.i = phi i32 [ %.1265.i, %bb.cb ], [ %.0264.i, %.backedge.i60 ] ; 8 uses
  %.2262.i = phi i8 [ %.1261.i, %bb.cb ], [ %.0260.i, %.backedge.i60 ]
  %.2258.i = phi i32 [ %.1257.i, %bb.cb ], [ %.0256.i, %.backedge.i60 ] ; 3 uses
  %.3254.i = phi ptr [ %i.vy, %bb.cb ], [ %.0251.i, %.backedge.i60 ] ; 4 uses
  %.3249.i = phi i32 [ %i.vz, %bb.cb ], [ %.0246.i, %.backedge.i60 ] ; 4 uses
  %.3.i = phi i32 [ %i.vx, %bb.cb ], [ %.0244.i, %.backedge.i60 ] ; 4 uses
  %i.wa = icmp sgt i32 %.2270.i, %i.uy
  br i1 %i.wa, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wb = icmp eq i32 %.2270.i, %i.uy
  br i1 %i.wb, label %.loopexit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.wc = trunc i32 %.2266.i to i8                ; 3 uses
  %.not299.i = icmp ult i32 %.2258.i, %i.uz
  br i1 %.not299.i, label %bb.cf, label %unRLE_obuf_to_output_SMALL.exit.thread

bb.cf:                                            ; preds = %bb.ce
  %i.wd = zext i32 %.2258.i to i64
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %i.wd
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !55 ; 2 uses
  %i.wg = lshr i32 %i.wf, 8                       ; 4 uses
  %i.wh = add nsw i32 %.2270.i, 1                 ; 2 uses
  %i.wi = and i32 %i.wf, 255                      ; 2 uses
  %.not300.i = icmp eq i32 %i.wi, %.2266.i
  br i1 %.not300.i, label %bb.cg, label %.loopexit323.i

bb.cg:                                            ; preds = %bb.cf
  %i.wj = icmp eq i32 %.2270.i, %i.ux
  br i1 %i.wj, label %.loopexit323.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.not301.i = icmp ult i32 %i.wg, %i.uz
  br i1 %.not301.i, label %bb.ci, label %unRLE_obuf_to_output_SMALL.exit.thread

bb.ci:                                            ; preds = %bb.ch
  %i.wk = zext nneg i32 %i.wg to i64
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %i.wk
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !55 ; 2 uses
  %i.wn = lshr i32 %i.wm, 8                       ; 4 uses
  %i.wo = add nsw i32 %.2270.i, 2                 ; 2 uses
  %i.wp = icmp eq i32 %i.wo, %i.uy
  br i1 %i.wp, label %.backedge.i60.backedge, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.wq = and i32 %i.wm, 255                      ; 2 uses
  %.not302.i = icmp eq i32 %i.wq, %.2266.i
  br i1 %.not302.i, label %bb.ck, label %.backedge.i60.backedge

bb.ck:                                            ; preds = %bb.cj
  %.not303.i = icmp ult i32 %i.wn, %i.uz
  br i1 %.not303.i, label %bb.cl, label %unRLE_obuf_to_output_SMALL.exit.thread

bb.cl:                                            ; preds = %bb.ck
  %i.wr = zext nneg i32 %i.wn to i64
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %i.wr
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !55 ; 2 uses
  %i.wu = lshr i32 %i.wt, 8                       ; 4 uses
  %i.wv = add nsw i32 %.2270.i, 3                 ; 2 uses
  %i.ww = icmp eq i32 %i.wv, %i.uy
  br i1 %i.ww, label %.backedge.i60.backedge, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.wx = and i32 %i.wt, 255                      ; 2 uses
  %.not304.i = icmp eq i32 %i.wx, %.2266.i
  br i1 %.not304.i, label %bb.cn, label %.backedge.i60.backedge

bb.cn:                                            ; preds = %bb.cm
  %.not305.i = icmp ult i32 %i.wu, %i.uz
  br i1 %.not305.i, label %bb.co, label %unRLE_obuf_to_output_SMALL.exit.thread

bb.co:                                            ; preds = %bb.cn
  %i.wy = zext nneg i32 %i.wu to i64
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %i.wy
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !55 ; 2 uses
  %i.xb = lshr i32 %i.xa, 8                       ; 2 uses
  %.not306.i = icmp ult i32 %i.xb, %i.uz
  br i1 %.not306.i, label %bb.cp, label %unRLE_obuf_to_output_SMALL.exit.thread

bb.cp:                                            ; preds = %bb.co
  %i.xc = and i32 %i.xa, 255
  %i.xd = add nuw nsw i32 %i.xc, 4
  %i.xe = zext nneg i32 %i.xb to i64
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %i.xe
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !55 ; 2 uses
  %i.xh = and i32 %i.xg, 255
  %i.xi = lshr i32 %i.xg, 8
  %i.xj = add nsw i32 %.2270.i, 5
  br label %.backedge.i60.backedge

.backedge.i60.backedge:                           ; preds = %bb.cp, %bb.cm, %bb.cl, %bb.cj, %bb.ci
  %.0272.i.be = phi i32 [ 2, %bb.ci ], [ %i.xd, %bb.cp ], [ 3, %bb.cl ], [ 2, %bb.cj ], [ 3, %bb.cm ]
  %.0268.i.be = phi i32 [ %i.uy, %bb.ci ], [ %i.xj, %bb.cp ], [ %i.uy, %bb.cl ], [ %i.wo, %bb.cj ], [ %i.wv, %bb.cm ]
  %.0264.i.be = phi i32 [ %.2266.i, %bb.ci ], [ %i.xh, %bb.cp ], [ %.2266.i, %bb.cl ], [ %i.wq, %bb.cj ], [ %i.wx, %bb.cm ]
  %.0256.i.be = phi i32 [ %i.wn, %bb.ci ], [ %i.xi, %bb.cp ], [ %i.wu, %bb.cl ], [ %i.wn, %bb.cj ], [ %i.wu, %bb.cm ]
  br label %.backedge.i60

.loopexit.i:                                      ; preds = %bb.cd, %.loopexit323.i, %.preheader.i61, %bb.ca
  %.2274.i = phi i32 [ %i.vl, %bb.ca ], [ 1, %.loopexit323.i ], [ %.0272.i, %.preheader.i61 ], [ 0, %bb.cd ]
  %.3271.i = phi i32 [ %.0268.i, %bb.ca ], [ %.1269.i, %.loopexit323.i ], [ %.0268.i, %.preheader.i61 ], [ %i.uy, %bb.cd ]
  %.3267.i = phi i32 [ %.0264.i, %bb.ca ], [ %.1265.i, %.loopexit323.i ], [ %.0264.i, %.preheader.i61 ], [ %.2266.i, %bb.cd ]
  %.3263.i = phi i8 [ %.0260.i, %bb.ca ], [ %.1261.i, %.loopexit323.i ], [ %.0260.i, %.preheader.i61 ], [ %.2262.i, %bb.cd ]
  %.3259.i = phi i32 [ %.0256.i, %bb.ca ], [ %.1257.i, %.loopexit323.i ], [ %.0256.i, %.preheader.i61 ], [ %.2258.i, %bb.cd ]
  %.4255.i = phi ptr [ %i.vm, %bb.ca ], [ %.2253.i, %.loopexit323.i ], [ %.0251.i, %.preheader.i61 ], [ %.3254.i, %bb.cd ]
  %.4250.i = phi i32 [ 0, %bb.ca ], [ 0, %.loopexit323.i ], [ 0, %.preheader.i61 ], [ %.3249.i, %bb.cd ] ; 2 uses
  %.4.i = phi i32 [ %i.vk, %bb.ca ], [ %.2.i, %.loopexit323.i ], [ %.0244.i, %.preheader.i61 ], [ %.3.i, %bb.cd ]
  %i.xk = load ptr, ptr %i.c, align 8, !tbaa !58  ; 4 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 36 ; 2 uses
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !38 ; 2 uses
  %i.xn = sub i32 %i.uv, %.4250.i
  %i.xo = add i32 %i.xm, %i.xn                    ; 2 uses
  store i32 %i.xo, ptr %i.xl, align 4, !tbaa !38
  %i.xp = icmp ult i32 %i.xo, %i.xm
  br i1 %i.xp, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.loopexit.i
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xk, i64 40 ; 2 uses
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !39
  %i.xs = add i32 %i.xr, 1
  store i32 %i.xs, ptr %i.xq, align 8, !tbaa !39
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.loopexit.i
  store i32 %.4.i, ptr %i.k, align 8, !tbaa !72
  store i8 %.3263.i, ptr %i.j, align 4, !tbaa !71
  store i32 %.2274.i, ptr %i.i, align 8, !tbaa !70
  store i32 %.3271.i, ptr %i.l, align 4, !tbaa !73
  store i32 %.3267.i, ptr %i.n, align 8, !tbaa !75
  store ptr %i.up, ptr %i.v, align 8, !tbaa !84
  store i32 %.3259.i, ptr %i.o, align 4, !tbaa !76
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  store ptr %.4255.i, ptr %i.xt, align 8, !tbaa !51
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xk, i64 32
  store i32 %.4250.i, ptr %i.xu, align 8, !tbaa !50
  br label %unRLE_obuf_to_output_SMALL.exit

unRLE_obuf_to_output_SMALL.exit:                  ; preds = %bb.i, %.backedge363.i, %bb.h, %bb.ah, %.backedge.i, %bb.ag, %bb.ax, %.backedge328.i, %bb.aw, %.preheader360.i, %.preheader353.i, %.preheader326.i, %bb.cr
  %i.xv = load i32, ptr %i.l, align 4, !tbaa !73
  %i.xw = load i32, ptr %i.m, align 8, !tbaa !74
  %i.xx = add nsw i32 %i.xw, 1
  %i.xy = icmp eq i32 %i.xv, %i.xx
  br i1 %i.xy, label %bb.cs, label %unRLE_obuf_to_output_SMALL.exit.thread

bb.cs:                                            ; preds = %unRLE_obuf_to_output_SMALL.exit
  %i.xz = load i32, ptr %i.i, align 8, !tbaa !70
  %i.ya = icmp eq i32 %i.xz, 0
  br i1 %i.ya, label %bb.ct, label %unRLE_obuf_to_output_SMALL.exit.thread

bb.ct:                                            ; preds = %bb.cs
  %i.yb = load i32, ptr %i.k, align 8, !tbaa !72
  %i.yc = xor i32 %i.yb, -1                       ; 2 uses
  store i32 %i.yc, ptr %i.k, align 8, !tbaa !72
  %i.yd = load i32, ptr %i.w, align 4, !tbaa !66  ; 2 uses
  %i.ye = icmp sgt i32 %i.yd, 2
  br i1 %i.ye, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.yf = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.yg = load i32, ptr %i.x, align 8, !tbaa !85
  %i.yh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yf, ptr noundef nonnull @.str.2, i32 noundef %i.yg, i32 noundef %i.yc) #21 ; 0 uses
  %.pr = load i32, ptr %i.w, align 4, !tbaa !66
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.yi = phi i32 [ %.pr, %bb.cu ], [ %i.yd, %bb.ct ]
  %i.yj = icmp sgt i32 %i.yi, 1
  br i1 %i.yj, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.yk = load ptr, ptr @stderr, align 8, !tbaa !9
  %fputc = tail call i32 @fputc(i32 93, ptr %i.yk) ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.yl = load i32, ptr %i.k, align 8, !tbaa !72  ; 2 uses
  %i.ym = load i32, ptr %i.x, align 8, !tbaa !85
  %.not49 = icmp eq i32 %i.yl, %i.ym
  br i1 %.not49, label %.thread, label %unRLE_obuf_to_output_SMALL.exit.thread

.thread:                                          ; preds = %bb.cx
  %i.yn = load i32, ptr %i.y, align 4, !tbaa !63  ; 2 uses
  %i.yo = tail call i32 @llvm.fshl.i32(i32 %i.yn, i32 %i.yn, i32 1)
  %i.yp = xor i32 %i.yo, %i.yl
  store i32 %i.yp, ptr %i.y, align 4, !tbaa !63
  store i32 14, ptr %i.f, align 8, !tbaa !60
  br label %.loopexit201

.loopexit201:                                     ; preds = %.preheader.split, %.thread
  %i.yq = tail call i32 @BZ2_decompress(ptr noundef nonnull %i.c) #24 ; 2 uses
  %i.yr = icmp eq i32 %i.yq, 4
  br i1 %i.yr, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %.loopexit201
  %i.ys = load i32, ptr %i.w, align 4, !tbaa !66
  %i.yt = icmp sgt i32 %i.ys, 2
  br i1 %i.yt, label %bb.cz, label %.thread64

bb.cz:                                            ; preds = %bb.cy
  %i.yu = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.yv = getelementptr inbounds nuw i8, ptr %i.c, i64 3180
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !86
  %i.yx = load i32, ptr %i.y, align 4, !tbaa !63
  %i.yy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yu, ptr noundef nonnull @.str.4, i32 noundef %i.yw, i32 noundef %i.yx) #21 ; 0 uses
  br label %.thread64

.thread64:                                        ; preds = %bb.cy, %bb.cz
  %i.yz = load i32, ptr %i.y, align 4, !tbaa !63
  %i.za = getelementptr inbounds nuw i8, ptr %i.c, i64 3180
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !86
  %.not51 = icmp eq i32 %i.yz, %i.zb
  %. = select i1 %.not51, i32 4, i32 -4
  br label %unRLE_obuf_to_output_SMALL.exit.thread

bb.da:                                            ; preds = %.loopexit201
  %i.zc = load i32, ptr %i.f, align 8, !tbaa !60
  %.not50 = icmp eq i32 %i.zc, 2
  br i1 %.not50, label %.loopexit, label %unRLE_obuf_to_output_SMALL.exit.thread

unRLE_obuf_to_output_SMALL.exit.thread:           ; preds = %bb.j, %bb.k, %bb.p, %bb.u, %bb.z, %bb.ab, %BZ2_indexIntoF.exit342.i, %bb.ai, %bb.aj, %bb.am, %bb.ap, %bb.as, %bb.ay, %bb.az, %bb.bf, %bb.bl, %bb.br, %bb.bu, %bb.ck, %bb.ch, %bb.ce, %bb.cc, %bb.cn, %bb.co, %.preheader, %unRLE_obuf_to_output_SMALL.exit, %bb.cs, %bb.cx, %bb.da, %.thread64, %bb.c, %bb.b, %bb.a
  %.3 = phi i32 [ -4, %bb.cx ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ], [ -4, %BZ2_indexIntoF.exit342.i ], [ %., %.thread64 ], [ -1, %.preheader ], [ -4, %bb.ck ], [ -4, %bb.ay ], [ %i.yq, %bb.da ], [ 0, %bb.cs ], [ 0, %unRLE_obuf_to_output_SMALL.exit ], [ -4, %bb.co ], [ -4, %bb.cn ], [ -4, %bb.cc ], [ -4, %bb.ce ], [ -4, %bb.ch ], [ -4, %bb.bu ], [ -4, %bb.br ], [ -4, %bb.bl ], [ -4, %bb.bf ], [ -4, %bb.az ], [ -4, %bb.as ], [ -4, %bb.ap ], [ -4, %bb.am ], [ -4, %bb.aj ], [ -4, %bb.ai ], [ -4, %bb.ab ], [ -4, %bb.z ], [ -4, %bb.u ], [ -4, %bb.p ], [ -4, %bb.k ], [ -4, %bb.j ]
  ret i32 %.3
}

declare i32 @BZ2_decompress(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @BZ2_bzDecompressEnd(ptr nofree noundef captures(address) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !58
  %.not = icmp eq ptr %i.e, %0
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 3152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84   ; 2 uses
  %.not26 = icmp eq ptr %i.g, null
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  tail call void %i.i(ptr noundef %i.k, ptr noundef nonnull %i.g) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 3160
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 2 uses
  %.not27 = icmp eq ptr %i.m, null
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  tail call void %i.o(ptr noundef %i.q, ptr noundef nonnull %i.m) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 3168
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81   ; 2 uses
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
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !35
  tail call void %i.y(ptr noundef %i.aa, ptr noundef %i.ab) #24
  store ptr null, ptr %i.b, align 8, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BZ2_bzWriteOpen(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null                    ; 6 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.a = icmp eq ptr %1, null
  %i.b = add i32 %2, -10
  %i.c = icmp ult i32 %i.b, -9
  %or.cond3 = or i1 %i.a, %i.c
  %i.d = icmp ugt i32 %4, 250
  %or.cond7 = or i1 %or.cond3, %i.d
  %i.e = icmp ugt i32 %3, 4
  %or.cond11 = or i1 %i.e, %or.cond7
  br i1 %or.cond11, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 -2, ptr %0, align 4, !tbaa !55
  br label %bb.s

bb.f:                                             ; preds = %bb.c
  %i.f = tail call i32 @ferror(ptr noundef nonnull %1) #24
  %.not70 = icmp eq i32 %i.f, 0
  br i1 %.not70, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 -6, ptr %0, align 4, !tbaa !55
  br label %bb.s

bb.i:                                             ; preds = %bb.f
  %i.g = tail call noalias dereferenceable_or_null(5104) ptr @malloc(i64 noundef 5104) #25 ; 11 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  br i1 %.not, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 -3, ptr %0, align 4, !tbaa !55
  br label %bb.s

bb.l:                                             ; preds = %bb.i
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %0, align 4, !tbaa !55
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 5096
  store i32 0, ptr %i.i, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 5100 ; 2 uses
  store i8 0, ptr %i.j, align 4, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 5008
  store i32 0, ptr %i.k, align 8, !tbaa !90
  store ptr %1, ptr %i.g, align 8, !tbaa !91
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 5012
  store i8 1, ptr %i.l, align 4, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 5016
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 5072
  %i.o = icmp eq i32 %4, 0
  %spec.store.select = select i1 %i.o, i32 30, i32 %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.p = tail call i32 @BZ2_bzCompressInit(ptr noundef nonnull %i.m, i32 noundef %2, i32 noundef %3, i32 noundef %spec.store.select) ; 2 uses
  %.not71 = icmp eq i32 %i.p, 0
  br i1 %.not71, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.p, ptr %0, align 4, !tbaa !55
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  tail call void @free(ptr noundef nonnull %i.g) #24
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 5024
  store i32 0, ptr %i.q, align 8, !tbaa !93
  store i8 1, ptr %i.j, align 4, !tbaa !89
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.g, %bb.e, %bb.d, %bb.r, %bb.q
  %.0 = phi ptr [ %i.g, %bb.r ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.q ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.k ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_bzWrite(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null                    ; 8 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not68 = icmp eq ptr %1, null                  ; 2 uses
end_hunk_1
