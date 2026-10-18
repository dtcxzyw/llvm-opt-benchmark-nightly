Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_Z15lodepng_inspectPjS_P12LodePNGStatePKhm:bb.a
  store i32 29, ptr %i.ao, align 8, !tbaa !146
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !35
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 24
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.au = load i8, ptr %i.at, align 1, !tbaa !35
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 16
  %i.ax = or disjoint i32 %i.aw, %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !35
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %i.bc = or disjoint i32 %i.ax, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 19
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bc, %i.bf            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !35
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw i32 %i.bj, 24
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !35
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 16
  %i.bp = or disjoint i32 %i.bo, %i.bk
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !35
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 8
  %i.bu = or disjoint i32 %i.bp, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 23
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !35
  %i.bx = zext i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bu, %i.bx            ; 2 uses
  %.not79 = icmp eq ptr %0, null
  br i1 %.not79, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %i.bg, ptr %0, align 4, !tbaa !29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not80 = icmp eq ptr %1, null
  br i1 %.not80, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.by, ptr %1, align 4, !tbaa !29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !35
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  store i32 %i.cb, ptr %i.i, align 4, !tbaa !147
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 25
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !35
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  store i32 %i.ce, ptr %i.g, align 8, !tbaa !148
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !35  ; 2 uses
  %i.ch = zext i8 %i.cg to i32
  store i32 %i.ch, ptr %i.a, align 8, !tbaa !117
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 27
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !35  ; 2 uses
  %i.ck = zext i8 %i.cj to i32
  store i32 %i.ck, ptr %i.l, align 4, !tbaa !118
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !35  ; 2 uses
  %i.cn = zext i8 %i.cm to i32
  store i32 %i.cn, ptr %i.k, align 8, !tbaa !116
  %i.co = icmp eq i32 %i.bg, 0
  %i.cp = icmp eq i32 %i.by, 0
  %or.cond3 = or i1 %i.co, %i.cp
  br i1 %or.cond3, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 632
  store i32 93, ptr %i.cq, align 8, !tbaa !146
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  %i.cr = tail call fastcc noundef i32 @_ZL18checkColorValidity16LodePNGColorTypej(i32 noundef %i.ce, i32 noundef %i.cb) ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 632 ; 5 uses
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !146
  %.not81 = icmp eq i32 %i.cr, 0
  br i1 %.not81, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %.not82 = icmp eq i8 %i.cg, 0
  br i1 %.not82, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 32, ptr %i.cs, align 8, !tbaa !146
  br label %.critedge

bb.aa:                                            ; preds = %bb.y
  %.not83 = icmp eq i8 %i.cj, 0
  br i1 %.not83, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 33, ptr %i.cs, align 8, !tbaa !146
  br label %.critedge

bb.ac:                                            ; preds = %bb.aa
  %i.ct = icmp ugt i8 %i.cm, 1
  br i1 %i.ct, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 34, ptr %i.cs, align 8, !tbaa !146
  br label %.critedge

bb.ae:                                            ; preds = %bb.ac
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !149
  %.not84 = icmp eq i32 %i.cv, 0
  br i1 %.not84, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 29
  %i.cx = load i32, ptr %i.cw, align 1
  %i.cy = tail call i32 @llvm.bswap.i32(i32 %i.cx)
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.da = tail call noundef i32 @_Z13lodepng_crc32PKhm(ptr noundef nonnull %i.cz, i64 noundef 17)
  %.not85 = icmp eq i32 %i.cy, %i.da
  br i1 %.not85, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 57, ptr %i.cs, align 8, !tbaa !146
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.af, %bb.ag, %bb.x, %bb.ad, %bb.ab, %bb.z, %bb.w, %bb.q, %bb.o, %bb.m, %bb.d, %bb.b
  %.1 = phi i32 [ 48, %bb.b ], [ 27, %bb.d ], [ 28, %bb.m ], [ 94, %bb.o ], [ 93, %bb.w ], [ 29, %bb.q ], [ 32, %bb.z ], [ 33, %bb.ab ], [ 34, %bb.ad ], [ %i.cr, %bb.x ], [ 57, %bb.ag ], [ 0, %bb.af ], [ 0, %bb.ae ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 0, 38) i32 @_ZL18checkColorValidity16LodePNGColorTypej(i32 noundef %0, i32 noundef %1) unnamed_addr #9 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 6, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.b = icmp eq i32 %i.a, 1
  %i.c = and i32 %1, 31
  %switch = icmp ne i32 %i.c, 0
  %or.cond = and i1 %i.b, %switch
  br i1 %or.cond, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = add i32 %1, -8
  %switch.and = and i32 %i.d, -9
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %i.e = select i1 %switch.selectcmp, i32 0, i32 37
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.f = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.g = icmp eq i32 %i.f, 1
  %i.h = and i32 %1, 15
  %switch41 = icmp ne i32 %i.h, 0
  %or.cond42 = and i1 %i.g, %switch41
  br i1 %or.cond42, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.i = add i32 %1, -8
  %switch.and37 = and i32 %i.i, -9
  %switch.selectcmp38 = icmp eq i32 %switch.and37, 0
  %i.j = select i1 %switch.selectcmp38, i32 0, i32 37
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.k = add i32 %1, -8
  %switch.and39 = and i32 %i.k, -9
  %switch.selectcmp40 = icmp eq i32 %switch.and39, 0
  %i.l = select i1 %switch.selectcmp40, i32 0, i32 37
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.b
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.g
  %.0 = phi i32 [ 37, %bb.d ], [ 0, %bb.g ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ 37, %bb.b ], [ %i.e, %bb.c ], [ 31, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z21lodepng_inspect_chunkP12LodePNGStatemPKhm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 42 uses
  %i.b = add i64 %1, 4
  %i.c = icmp ugt i64 %i.b, %3
  br i1 %i.c, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !35
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw i32 %i.e, 24                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !35
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !35
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.j, %i.q
  %i.s = or disjoint i32 %i.r, %i.n
  %i.t = or disjoint i32 %i.s, %i.f               ; 22 uses
  %i.u = icmp slt i32 %i.f, 0
  br i1 %i.u, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 23 uses
  %i.w = add nuw i32 %i.t, 12
  %i.x = zext i32 %i.w to i64
  %i.y = sub i64 %3, %1
  %i.z = icmp ult i64 %i.y, %i.x
  br i1 %i.z, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  switch i8 %i.ab, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread [
    i8 80, label %bb.e
    i8 116, label %bb.h
    i8 98, label %bb.q
  ]

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35
  %i.ae = icmp eq i8 %i.ad, 76
  br i1 %i.ae, label %bb.f, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = icmp eq i8 %i.ag, 84
  br i1 %i.ah, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

_Z25lodepng_chunk_type_equalsPKhPKc.exit:         ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35
  %.not = icmp eq i8 %i.aj, 69
  br i1 %.not, label %bb.g, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

bb.g:                                             ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.al = zext nneg i32 %i.t to i64
  %i.am = tail call fastcc noundef i32 @_ZL14readChunk_PLTEP16LodePNGColorModePKhm(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.v, i64 noundef %i.al)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.h:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !35
  %i.ap = icmp eq i8 %i.ao, 82
  br i1 %i.ap, label %bb.i, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !35
  %i.as = icmp eq i8 %i.ar, 78
  br i1 %i.as, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit112, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

_Z25lodepng_chunk_type_equalsPKhPKc.exit112:      ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.au = load i8, ptr %i.at, align 1, !tbaa !35
  %.not133 = icmp eq i8 %i.au, 83
  br i1 %.not133, label %bb.j, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

bb.j:                                             ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit112
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !93
  switch i32 %i.aw, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread [
    i32 3, label %bb.k
    i32 0, label %bb.m
    i32 2, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.ax = zext nneg i32 %i.t to i64               ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !96
  %i.ba = icmp ult i64 %i.az, %i.ax
  br i1 %i.ba, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k
  %.not3536.i = icmp eq i32 %i.t, 0
  br i1 %.not3536.i, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %xtraiter = and i64 %i.ax, 3                    ; 3 uses
  %i.bc = icmp ult i32 %i.t, 4
  br i1 %i.bc, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ax, 2147483644
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.l ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !95
  %i.bg = shl nuw nsw i64 %indvars.iv.i, 2
  %i.bh = and i64 %i.bg, 4294967280
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  store i8 %i.be, ptr %i.bj, align 1, !tbaa !35
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !35
  %i.bm = load ptr, ptr %i.bb, align 8, !tbaa !95
  %i.bn = shl nuw nsw i64 %indvars.iv.next.i, 2
  %i.bo = and i64 %i.bn, 4294967284
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 3
  store i8 %i.bl, ptr %i.bq, align 1, !tbaa !35
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.i.1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !35
  %i.bt = load ptr, ptr %i.bb, align 8, !tbaa !95
  %i.bu = shl nuw nsw i64 %indvars.iv.next.i.1, 2
  %i.bv = and i64 %i.bu, 4294967288
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  store i8 %i.bs, ptr %i.bx, align 1, !tbaa !35
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.i.2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !35
  %i.ca = load ptr, ptr %i.bb, align 8, !tbaa !95
  %i.cb = shl nuw nsw i64 %indvars.iv.next.i.2, 2
  %i.cc = and i64 %i.cb, 4294967292
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  store i8 %i.bz, ptr %i.ce, align 1, !tbaa !35
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138.loopexit.unr-lcssa, label %bb.l, !llvm.loop !14

bb.m:                                             ; preds = %bb.j
  %.not34.i = icmp eq i32 %i.t, 2
  br i1 %.not34.i, label %bb.n, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 1, ptr %i.cf, align 8, !tbaa !97
  %i.cg = load i8, ptr %i.v, align 1, !tbaa !35
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !35
  %i.cl = zext i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.ci, %i.cl            ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !125
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 %i.cm, ptr %i.co, align 8, !tbaa !124
  br label %.loopexit.sink.split.i

bb.o:                                             ; preds = %bb.j
  %.not.i113 = icmp eq i32 %i.t, 6
  br i1 %.not.i113, label %bb.p, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 1, ptr %i.cp, align 8, !tbaa !97
  %i.cq = load i8, ptr %i.v, align 1, !tbaa !35
  %i.cr = zext i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !35
  %i.cv = zext i8 %i.cu to i32
  %i.cw = or disjoint i32 %i.cs, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !123
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !35
  %i.da = zext i8 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.da, 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !35
  %i.de = zext i8 %i.dd to i32
  %i.df = or disjoint i32 %i.db, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !124
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !35
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !35
  %i.dn = zext i8 %i.dm to i32
  %i.do = or disjoint i32 %i.dk, %i.dn
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.p, %bb.n
  %.sink40.i = phi i64 [ 36, %bb.p ], [ 28, %bb.n ]
  %.sink.i = phi i32 [ %i.do, %bb.p ], [ %i.cm, %bb.n ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sink40.i
  store i32 %.sink.i, ptr %i.dp, align 4, !tbaa !29
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138

bb.q:                                             ; preds = %bb.d
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !35
  %i.ds = icmp eq i8 %i.dr, 75
  br i1 %i.ds, label %bb.r, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

bb.r:                                             ; preds = %bb.q
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !35
  %i.dv = icmp eq i8 %i.du, 71
  br i1 %i.dv, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

_Z25lodepng_chunk_type_equalsPKhPKc.exit117:      ; preds = %bb.r
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !35
  %.not134 = icmp eq i8 %i.dx, 68
  br i1 %.not134, label %bb.s, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread

bb.s:                                             ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit117
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dz = zext nneg i32 %i.t to i64
  %i.ea = tail call fastcc noundef i32 @_ZL14readChunk_bKGDP11LodePNGInfoPKhm(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.v, i64 noundef %i.dz)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread: ; preds = %bb.d, %bb.e, %bb.f, %_Z25lodepng_chunk_type_equalsPKhPKc.exit, %bb.h, %bb.i, %_Z25lodepng_chunk_type_equalsPKhPKc.exit112, %bb.q, %bb.r, %_Z25lodepng_chunk_type_equalsPKhPKc.exit117
  %i.eb = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7)
  %.not93 = icmp eq i8 %i.eb, 0
  br i1 %.not93, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ed = zext nneg i32 %i.t to i64
  %i.ee = tail call fastcc noundef i32 @_ZL14readChunk_tEXtP11LodePNGInfoPKhm(ptr noundef nonnull %i.ec, ptr noundef nonnull %i.v, i64 noundef %i.ed)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.u:                                             ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit117.thread
  %i.ef = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.8)
  %.not94 = icmp eq i8 %i.ef, 0
  br i1 %.not94, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.eh = zext nneg i32 %i.t to i64
  %i.ei = tail call fastcc noundef i32 @_ZL14readChunk_zTXtP11LodePNGInfoPK22LodePNGDecoderSettingsPKhm(ptr noundef nonnull %i.eg, ptr noundef %0, ptr noundef nonnull %i.v, i64 noundef %i.eh)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.w:                                             ; preds = %bb.u
  %i.ej = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.9)
  %.not95 = icmp eq i8 %i.ej, 0
  br i1 %.not95, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.el = zext nneg i32 %i.t to i64
  %i.em = tail call fastcc noundef i32 @_ZL14readChunk_iTXtP11LodePNGInfoPK22LodePNGDecoderSettingsPKhm(ptr noundef nonnull %i.ek, ptr noundef %0, ptr noundef nonnull %i.v, i64 noundef %i.el)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.y:                                             ; preds = %bb.w
  %i.en = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.10)
  %.not96 = icmp eq i8 %i.en, 0
  br i1 %.not96, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ep = zext nneg i32 %i.t to i64
  %i.eq = tail call fastcc noundef i32 @_ZL14readChunk_tIMEP11LodePNGInfoPKhm(ptr noundef nonnull %i.eo, ptr noundef nonnull %i.v, i64 noundef %i.ep)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.aa:                                            ; preds = %bb.y
  %i.er = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.11)
  %.not97 = icmp eq i8 %i.er, 0
  br i1 %.not97, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.et = zext nneg i32 %i.t to i64
  %i.eu = tail call fastcc noundef i32 @_ZL14readChunk_pHYsP11LodePNGInfoPKhm(ptr noundef nonnull %i.es, ptr noundef nonnull %i.v, i64 noundef %i.et)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ev = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.12)
  %.not98 = icmp eq i8 %i.ev, 0
  br i1 %.not98, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i118 = icmp eq i32 %i.t, 4
  br i1 %.not.i118, label %bb.ae, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 1, ptr %i.ew, align 8, !tbaa !120
  %4 = load i8, ptr %i.v, align 1, !tbaa !35
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %8 = load i8, ptr %7, align 1, !tbaa !35
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %13 = load i8, ptr %12, align 1, !tbaa !35
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or disjoint i32 %11, %15
  %17 = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %18 = load i8, ptr %17, align 1, !tbaa !35
  %19 = zext i8 %18 to i32
  %20 = or disjoint i32 %16, %19
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 %20, ptr %i.ex, align 4, !tbaa !150
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138

bb.af:                                            ; preds = %bb.ac
  %i.ey = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.13)
  %.not99 = icmp eq i8 %i.ey, 0
  br i1 %.not99, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fa = zext nneg i32 %i.t to i64
  %i.fb = tail call fastcc noundef i32 @_ZL14readChunk_cHRMP11LodePNGInfoPKhm(ptr noundef nonnull %i.ez, ptr noundef nonnull %i.v, i64 noundef %i.fa)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.ah:                                            ; preds = %bb.af
  %i.fc = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14)
  %.not100 = icmp eq i8 %i.fc, 0
  br i1 %.not100, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i120 = icmp eq i32 %i.t, 1
  br i1 %.not.i120, label %bb.aj, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 1, ptr %i.fd, align 4, !tbaa !122
  %i.fe = load i8, ptr %i.v, align 1, !tbaa !35
  %i.ff = zext i8 %i.fe to i32
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 %i.ff, ptr %i.fg, align 8, !tbaa !151
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138

bb.ak:                                            ; preds = %bb.ah
  %i.fh = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.15)
  %.not101 = icmp eq i8 %i.fh, 0
  br i1 %.not101, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fj = zext nneg i32 %i.t to i64
  %i.fk = tail call fastcc noundef i32 @_ZL14readChunk_iCCPP11LodePNGInfoPK22LodePNGDecoderSettingsPKhm(ptr noundef nonnull %i.fi, ptr noundef %0, ptr noundef nonnull %i.v, i64 noundef %i.fj)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.am:                                            ; preds = %bb.ak
  %i.fl = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.16)
  %.not102 = icmp eq i8 %i.fl, 0
  br i1 %.not102, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not.i122 = icmp eq i32 %i.t, 4
  br i1 %.not.i122, label %bb.ao, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 484
  store i32 1, ptr %i.fm, align 4, !tbaa !152
  %i.fn = load i8, ptr %i.v, align 1, !tbaa !35
  %i.fo = zext i8 %i.fn to i32
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 %i.fo, ptr %i.fp, align 8, !tbaa !153
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !35
  %i.fs = zext i8 %i.fr to i32
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 492
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !154
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !35
  %i.fw = zext i8 %i.fv to i32
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.fw, ptr %i.fx, align 8, !tbaa !155
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !35
  %i.ga = zext i8 %i.fz to i32
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 500
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !156
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138

bb.ap:                                            ; preds = %bb.am
  %i.gc = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.17)
  %.not103 = icmp eq i8 %i.gc, 0
  br i1 %.not103, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ge = zext nneg i32 %i.t to i64
  %i.gf = tail call fastcc noundef i32 @_ZL14readChunk_mDCVP11LodePNGInfoPKhm(ptr noundef nonnull %i.gd, ptr noundef nonnull %i.v, i64 noundef %i.ge)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.ar:                                            ; preds = %bb.ap
  %i.gg = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.18)
  %.not104 = icmp eq i8 %i.gg, 0
  br i1 %.not104, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gi = zext nneg i32 %i.t to i64
  %i.gj = tail call fastcc noundef i32 @_ZL14readChunk_cLLIP11LodePNGInfoPKhm(ptr noundef nonnull %i.gh, ptr noundef nonnull %i.v, i64 noundef %i.gi)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.at:                                            ; preds = %bb.ar
  %i.gk = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.19)
  %.not105 = icmp eq i8 %i.gk, 0
  br i1 %.not105, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gm = zext nneg i32 %i.t to i64
  %i.gn = tail call fastcc noundef i32 @_ZL14readChunk_eXIfP11LodePNGInfoPKhm(ptr noundef nonnull %i.gl, ptr noundef nonnull %i.v, i64 noundef %i.gm)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

bb.av:                                            ; preds = %bb.at
  %i.go = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.20)
  %.not106 = icmp eq i8 %i.go, 0
  br i1 %.not106, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gq = zext nneg i32 %i.t to i64
  %i.gr = tail call fastcc noundef i32 @_ZL14readChunk_sBITP11LodePNGInfoPKhm(ptr noundef nonnull %i.gp, ptr noundef nonnull %i.v, i64 noundef %i.gq)
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit

_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit:  ; preds = %bb.t, %bb.x, %bb.ab, %bb.ag, %bb.al, %bb.aq, %bb.au, %bb.aw, %bb.as, %bb.z, %bb.v, %bb.s, %bb.g
  %.0 = phi i32 [ %i.am, %bb.g ], [ %i.gf, %bb.aq ], [ %i.ea, %bb.s ], [ %i.ee, %bb.t ], [ %i.ei, %bb.v ], [ %i.em, %bb.x ], [ %i.eq, %bb.z ], [ %i.eu, %bb.ab ], [ %i.gj, %bb.as ], [ %i.fb, %bb.ag ], [ %i.gn, %bb.au ], [ %i.fk, %bb.al ], [ %i.gr, %bb.aw ] ; 2 uses
  %.not135 = icmp eq i32 %.0, 0
  br i1 %.not135, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread

_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138.loopexit.unr-lcssa ]
  %lcmp.mod141 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod141)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.ax ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ax ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.i.epil
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !35
  %i.gu = load ptr, ptr %i.bb, align 8, !tbaa !95
  %i.gv = shl nuw nsw i64 %indvars.iv.i.epil, 2
  %i.gw = and i64 %i.gv, 4294967292
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 3
  store i8 %i.gt, ptr %i.gy, align 1, !tbaa !35
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138, label %bb.ax, !llvm.loop !496

_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138: ; preds = %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138.loopexit.unr-lcssa, %bb.ax, %bb.ae, %.preheader.i, %bb.ao, %.loopexit.sink.split.i, %bb.aj, %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !149
  %.not107 = icmp eq i32 %i.ha, 0
  br i1 %.not107, label %bb.ay, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread

bb.ay:                                            ; preds = %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138
  %i.hb = tail call noundef i32 @_Z23lodepng_chunk_check_crcPKh(ptr noundef nonnull %i.a)
  %.not108 = icmp eq i32 %i.hb, 0
  %spec.select = select i1 %.not108, i32 0, i32 57
  br label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread

_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread: ; preds = %bb.ay, %bb.av, %bb.an, %bb.m, %bb.k, %bb.j, %bb.o, %bb.ai, %bb.ad, %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit, %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138, %bb.c, %bb.b, %bb.a
  %.088 = phi i32 [ 30, %bb.c ], [ 30, %bb.a ], [ 63, %bb.b ], [ %spec.select, %bb.ay ], [ 0, %bb.av ], [ 0, %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.thread138 ], [ %.0, %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit ], [ 117, %bb.an ], [ 30, %bb.m ], [ 39, %bb.k ], [ 42, %bb.j ], [ 41, %bb.o ], [ 98, %bb.ai ], [ 96, %bb.ad ]
  ret i32 %.088
}

; Function Attrs: mustprogress nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL14readChunk_PLTEP16LodePNGColorModePKhm(ptr nofree noundef captures(none) initializes((16, 24)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 0, 2147483648) %2) unnamed_addr #13 {
bb.a:
  %.lhs.trunc = trunc nuw nsw i64 %2 to i32
  %i.a = udiv i32 %.lhs.trunc, 3
  %.zext = zext nneg i32 %i.a to i64              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 %.zext, ptr %i.b, align 8, !tbaa !96
  %i.c = add nsw i64 %2, -771
  %or.cond = icmp ult i64 %i.c, -768
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %.critedge.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias noundef dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #30 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !95
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.thread, label %.critedge.i.preheader

.critedge.i.preheader:                            ; preds = %bb.c, %bb.b
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i, %.critedge.i.preheader
  %.014.i = phi i64 [ 0, %.critedge.i.preheader ], [ %i.ag, %.critedge.i ] ; 3 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.i = shl nuw nsw i64 %.014.i, 2               ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 0, ptr %i.j, align 1, !tbaa !35
end_hunk_0
begin_hunk_1_@_ZL14readChunk_sBITP11LodePNGInfoPKhm:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !35  ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = zext i8 %i.bs to i32
  %i.bv = icmp ult i32 %i.e, %i.bh
  %i.bw = icmp ult i32 %i.e, %i.bl
  %or.cond88 = or i1 %i.bv, %i.bw
  %i.bx = icmp ult i32 %i.e, %i.bp
  %or.cond89 = or i1 %or.cond88, %i.bx
  %i.by = icmp ult i32 %i.e, %i.bu
  %or.cond90 = or i1 %or.cond89, %i.by
  br i1 %or.cond90, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 1, ptr %i.bz, align 8, !tbaa !194
  %i.ca = load i8, ptr %1, align 1, !tbaa !35
  %i.cb = zext i8 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !197
  %i.cd = load i8, ptr %i.bj, align 1, !tbaa !35
  %i.ce = zext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !196
  %i.cg = load i8, ptr %i.bn, align 1, !tbaa !35
  %i.ch = zext i8 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 364
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !195
  %i.cj = load i8, ptr %i.br, align 1, !tbaa !35
  %i.ck = zext i8 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !198
  br label %bb.w

bb.w:                                             ; preds = %bb.e, %bb.o, %bb.v, %bb.j, %bb.b, %bb.u, %bb.q, %bb.r, %bb.s, %bb.t, %bb.p, %bb.n, %bb.l, %bb.m, %bb.k, %bb.i, %bb.f, %bb.g, %bb.h, %.thread, %bb.d, %bb.c
  %.0 = phi i32 [ 115, %bb.q ], [ 114, %bb.c ], [ 115, %bb.u ], [ 115, %bb.d ], [ 114, %.thread ], [ 115, %bb.f ], [ 115, %bb.i ], [ 114, %bb.k ], [ 115, %bb.l ], [ 115, %bb.n ], [ 114, %bb.p ], [ 115, %bb.h ], [ 115, %bb.g ], [ 115, %bb.m ], [ 115, %bb.t ], [ 115, %bb.s ], [ 115, %bb.r ], [ 0, %bb.b ], [ 0, %bb.j ], [ 0, %bb.v ], [ 0, %bb.o ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z14lodepng_decodePPhPjS1_P12LodePNGStatePKhm(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef captures(address_is_null) initializes((0, 4)) %1, ptr nofree noundef captures(address_is_null) initializes((0, 4)) %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [7 x i32], align 16               ; 11 uses
  %i.b = alloca [7 x i32], align 16               ; 11 uses
  %i.c = alloca [8 x i64], align 16               ; 3 uses
  %i.d = alloca [8 x i64], align 16               ; 3 uses
  %i.e = alloca [8 x i64], align 16               ; 11 uses
  %i.f = alloca [7 x i32], align 16               ; 5 uses
  %i.g = alloca [7 x i32], align 16               ; 5 uses
  %i.h = alloca [8 x i64], align 16               ; 5 uses
  %i.i = alloca [8 x i64], align 16               ; 5 uses
  %i.j = alloca [8 x i64], align 16               ; 5 uses
  %6 = alloca %struct.ucvector, align 8           ; 8 uses
  %i.k = alloca ptr, align 8                      ; 8 uses
  %i.l = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #31
  store ptr null, ptr %i.k, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31
  store i64 0, ptr %i.l, align 8, !tbaa !25
  store ptr null, ptr %0, align 8, !tbaa !28
  store i32 0, ptr %2, align 4, !tbaa !29
  store i32 0, ptr %1, align 4, !tbaa !29
  %i.m = tail call noundef i32 @_Z15lodepng_inspectPjS_P12LodePNGStatePKhm(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 632 ; 30 uses
  store i32 %i.m, ptr %i.n, align 8, !tbaa !146
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.b, label %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 4, !tbaa !29     ; 3 uses
  %i.p = load i32, ptr %2, align 4, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 4 uses
  %.val.i = load i32, ptr %i.r, align 8, !tbaa !93 ; 4 uses
  %i.t = getelementptr i8, ptr %3, i64 228        ; 4 uses
  %.val347.i = load i32, ptr %i.t, align 4, !tbaa !94 ; 2 uses
  %i.u = icmp ult i32 %.val.i, 7
  br i1 %i.u, label %switch.lookup, label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit.i.i

switch.lookup:                                    ; preds = %bb.b
  %i.v = zext nneg i32 %.val.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings, i64 %i.v
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.w = mul i32 %.val347.i, %switch.ext
  br label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit.i.i

_Z15lodepng_get_bppPK16LodePNGColorMode.exit.i.i: ; preds = %bb.b, %switch.lookup
  %.0.i.i.i.i.i = phi i32 [ %i.w, %switch.lookup ], [ 0, %bb.b ]
  %i.x = load i32, ptr %i.s, align 8, !tbaa !93   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 172 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !94   ; 2 uses
  %i.aa = icmp ult i32 %i.x, 7
  br i1 %i.aa, label %switch.lookup364, label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit17.i.i

switch.lookup364:                                 ; preds = %_Z15lodepng_get_bppPK16LodePNGColorMode.exit.i.i
  %i.ab = zext nneg i32 %i.x to i64
  %switch.gep365 = getelementptr inbounds nuw i8, ptr @switch.table._ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings, i64 %i.ab
  %switch.load366 = load i8, ptr %switch.gep365, align 1
  %switch.ext367 = zext i8 %switch.load366 to i32
  %i.ac = mul i32 %i.z, %switch.ext367
  br label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit17.i.i

_Z15lodepng_get_bppPK16LodePNGColorMode.exit17.i.i: ; preds = %_Z15lodepng_get_bppPK16LodePNGColorMode.exit.i.i, %switch.lookup364
  %.0.i.i.i16.i.i = phi i32 [ %i.ac, %switch.lookup364 ], [ 0, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit.i.i ]
  %i.ad = icmp ugt i32 %.0.i.i.i.i.i, %.0.i.i.i16.i.i
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_Z15lodepng_get_bppPK16LodePNGColorMode.exit17.i.i
  %i.ae = icmp ult i32 %.val.i, 7
  br i1 %i.ae, label %switch.lookup368, label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit19.i.i

switch.lookup368:                                 ; preds = %bb.c
  %i.af = zext nneg i32 %.val.i to i64
  %switch.gep369 = getelementptr inbounds nuw i8, ptr @switch.table._ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings, i64 %i.af
  %switch.load370 = load i8, ptr %switch.gep369, align 1
  %switch.ext371 = zext i8 %switch.load370 to i32
  %i.ag = mul i32 %.val347.i, %switch.ext371
  br label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit19.i.i

bb.d:                                             ; preds = %_Z15lodepng_get_bppPK16LodePNGColorMode.exit17.i.i
  %i.ah = icmp ult i32 %i.x, 7
  br i1 %i.ah, label %switch.lookup372, label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit19.i.i

switch.lookup372:                                 ; preds = %bb.d
  %i.ai = zext nneg i32 %i.x to i64
  %switch.gep373 = getelementptr inbounds nuw i8, ptr @switch.table._ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings, i64 %i.ai
  %switch.load374 = load i8, ptr %switch.gep373, align 1
  %switch.ext375 = zext i8 %switch.load374 to i32
  %i.aj = mul i32 %i.z, %switch.ext375
  br label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit19.i.i

_Z15lodepng_get_bppPK16LodePNGColorMode.exit19.i.i: ; preds = %switch.lookup372, %bb.d, %switch.lookup368, %bb.c
  %i.ak = phi i32 [ 0, %bb.c ], [ %i.ag, %switch.lookup368 ], [ %i.aj, %switch.lookup372 ], [ 0, %bb.d ]
  %i.al = zext i32 %i.p to i64                    ; 2 uses
  %i.am = zext i32 %i.o to i64
  %mul.i4.i.i = mul nuw i64 %i.al, %i.am
  %mul.ov.i24.i.i = icmp ult i64 %mul.i4.i.i, 2305843009213693952
  br i1 %mul.ov.i24.i.i, label %_ZL22lodepng_pixel_overflowjjPK16LodePNGColorModeS1_.exit.i, label %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit.thread.sink.split

_ZL22lodepng_pixel_overflowjjPK16LodePNGColorModeS1_.exit.i: ; preds = %_Z15lodepng_get_bppPK16LodePNGColorMode.exit19.i.i
  %i.an = zext i32 %i.ak to i64                   ; 2 uses
  %i.ao = and i32 %i.o, 7
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = mul nuw nsw i64 %i.an, %i.ap
  %i.ar = add nuw nsw i64 %i.aq, 7
  %i.as = lshr i64 %i.ar, 3
  %i.at = lshr i32 %i.o, 3
  %i.au = zext nneg i32 %i.at to i64
  %mul.i255.i.i = mul nuw nsw i64 %i.an, %i.au
  %i.av = add nuw nsw i64 %mul.i255.i.i, 5
  %i.aw = add nuw nsw i64 %i.av, %i.as
  %mul.i28.i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aw, i64 range(i64 0, 4294967296) %i.al)
  %mul.ov.i30.i.i = extractvalue { i64, i1 } %mul.i28.i.i, 1
  br i1 %mul.ov.i30.i.i, label %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %_ZL22lodepng_pixel_overflowjjPK16LodePNGColorModeS1_.exit.i
  %i.ax = tail call noalias noundef ptr @malloc(i64 noundef %5) #30 ; 7 uses
  %.not282.i = icmp eq ptr %i.ax, null
  br i1 %.not282.i, label %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 33
  %i.az = ptrtoint ptr %4 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 408
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 412
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 452
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 456
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 484
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 492
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 496
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 500
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 584
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 608
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 4 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 264 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 268
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 272 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 276 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 248 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 252 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 260 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 232 ; 8 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit.i, %bb.f
  %.0256469.i = phi i32 [ 1, %bb.f ], [ %.3.i, %_ZL14lodepng_memcpyPvPKvm.exit.i ] ; 23 uses
  %.0265468.i = phi i64 [ 0, %bb.f ], [ %.3268.i, %_ZL14lodepng_memcpyPvPKvm.exit.i ] ; 28 uses
  %.0270467.i = phi ptr [ %i.ay, %bb.f ], [ %.2272.i, %_ZL14lodepng_memcpyPvPKvm.exit.i ] ; 65 uses
  %i.cb = ptrtoint ptr %.0270467.i to i64         ; 2 uses
  %i.cc = sub i64 %i.cb, %i.az                    ; 2 uses
  %i.cd = icmp ult ptr %.0270467.i, %4
  %i.ce = add i64 %i.cc, 12                       ; 2 uses
  %i.cf = icmp ugt i64 %i.ce, %5
  %or.cond344.i = or i1 %i.cd, %i.cf
  br i1 %or.cond344.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !592
  %.not334.i = icmp eq i32 %i.ch, 0
  br i1 %.not334.i, label %.thread.i.sink.split, label %.critedge.i

bb.i:                                             ; preds = %bb.g
  %i.ci = load i8, ptr %.0270467.i, align 1, !tbaa !35 ; 2 uses
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw i32 %i.cj, 24                   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 2 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 3 ; 3 uses
  %i.co = icmp slt i32 %i.ck, 0
  br i1 %i.co, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !592
  %.not333.i = icmp eq i32 %i.cq, 0
  br i1 %.not333.i, label %.thread.i.sink.split, label %.critedge.i

bb.k:                                             ; preds = %bb.i
  %i.cr = load i8, ptr %i.cl, align 1, !tbaa !35  ; 2 uses
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 16
  %i.cu = load i8, ptr %i.cm, align 1, !tbaa !35  ; 2 uses
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = load i8, ptr %i.cn, align 1, !tbaa !35  ; 2 uses
  %i.cy = zext i8 %i.cx to i32
  %i.cz = or disjoint i32 %i.ct, %i.cy
  %i.da = or disjoint i32 %i.cz, %i.cw
  %i.db = or disjoint i32 %i.da, %i.ck            ; 11 uses
  %i.dc = zext nneg i32 %i.db to i64              ; 18 uses
  %i.dd = add i64 %i.ce, %i.dc                    ; 2 uses
  %i.de = icmp ugt i64 %i.dd, %5
  %i.df = icmp ult i64 %i.dd, %i.cc
  %or.cond345.i = or i1 %i.de, %i.df
  br i1 %or.cond345.i, label %.thread.i.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 8 ; 28 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 4 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !35  ; 2 uses
  switch i8 %i.di, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread [
    i8 73, label %bb.m
    i8 80, label %bb.r
    i8 116, label %bb.u
    i8 98, label %bb.ac
  ]

bb.m:                                             ; preds = %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 5
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !35
  switch i8 %i.dk, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread [
    i8 68, label %bb.n
    i8 69, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.dl = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 6
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !35
  %i.dn = icmp eq i8 %i.dm, 65
  br i1 %i.dn, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.i, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

_Z25lodepng_chunk_type_equalsPKhPKc.exit.i:       ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 7
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !35
  %.not447.i = icmp eq i8 %i.dp, 84
  br i1 %.not447.i, label %bb.o, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

bb.o:                                             ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit.i
  %i.dq = add i64 %.0265468.i, %i.dc              ; 4 uses
  %.not448.i = icmp ult i64 %i.dq, %.0265468.i
  %i.dr = icmp ugt i64 %i.dq, %5
  %or.cond589.i = or i1 %.not448.i, %i.dr
  br i1 %or.cond589.i, label %.thread.i.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i349.i = icmp eq i32 %i.db, 0
  br i1 %.not.i349.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0265468.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr nonnull readonly align 1 %i.dg, i64 %i.dc, i1 false), !tbaa !35, !alias.scope !593
  br label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i

bb.q:                                             ; preds = %bb.m
  %i.dt = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 6
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !35
  %i.dv = icmp eq i8 %i.du, 78
  br i1 %i.dv, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit353.i, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

_Z25lodepng_chunk_type_equalsPKhPKc.exit353.i:    ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 7
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !35
  %.not449.i = icmp eq i8 %i.dx, 68
  br i1 %.not449.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

bb.r:                                             ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 5
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !35
  %i.dy = icmp eq i8 %.pre, 76
  br i1 %i.dy, label %bb.s, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.dz = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 6
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !35
  %i.eb = icmp eq i8 %i.ea, 84
  br i1 %i.eb, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit72, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

_Z25lodepng_chunk_type_equalsPKhPKc.exit72:       ; preds = %bb.s
  %i.ec = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 7
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !35
  %.not97 = icmp eq i8 %i.ed, 69
  br i1 %.not97, label %bb.t, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

bb.t:                                             ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit72
  %i.ee = tail call fastcc noundef i32 @_ZL14readChunk_PLTEP16LodePNGColorModePKhm(ptr noundef nonnull %i.r, ptr noundef nonnull %i.dg, i64 noundef %i.dc) ; 2 uses
  store i32 %i.ee, ptr %i.n, align 8, !tbaa !146
  %.not329.i = icmp eq i32 %i.ee, 0
  br i1 %.not329.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %.thread.i

bb.u:                                             ; preds = %bb.l
  %.phi.trans.insert117 = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 5
  %.pre118 = load i8, ptr %.phi.trans.insert117, align 1, !tbaa !35
  %i.ef = icmp eq i8 %.pre118, 82
  br i1 %i.ef, label %bb.v, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.eg = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 6
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !35
  %i.ei = icmp eq i8 %i.eh, 78
  br i1 %i.ei, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit68, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

_Z25lodepng_chunk_type_equalsPKhPKc.exit68:       ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 7
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !35
  %.not98 = icmp eq i8 %i.ek, 83
  br i1 %.not98, label %bb.w, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

bb.w:                                             ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit68
  %i.el = load i32, ptr %i.r, align 8, !tbaa !93
  switch i32 %i.el, label %.thread.i.sink.split [
    i32 3, label %bb.x
    i32 0, label %bb.y
    i32 2, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %i.em = load i64, ptr %i.bv, align 8, !tbaa !96
  %i.en = icmp ult i64 %i.em, %i.dc
  br i1 %i.en, label %.thread.i.sink.split, label %.preheader.i63

.preheader.i63:                                   ; preds = %bb.x
  %.not3536.i = icmp eq i32 %i.db, 0
  br i1 %.not3536.i, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit, label %.lr.ph.i64.preheader

.lr.ph.i64.preheader:                             ; preds = %.preheader.i63
  %i.eo = zext i8 %i.ci to i64
  %i.ep = shl nuw nsw i64 %i.eo, 24
  %i.eq = add nsw i64 %i.ep, -1
  %i.er = zext i8 %i.cr to i64
  %i.es = shl nuw nsw i64 %i.er, 16
  %i.et = add nsw i64 %i.eq, %i.es
  %i.eu = zext i8 %i.cu to i64
  %i.ev = shl nuw nsw i64 %i.eu, 8
  %i.ew = add nsw i64 %i.et, %i.ev
  %i.ex = zext i8 %i.cx to i64
  %i.ey = add nsw i64 %i.ew, %i.ex
  %xtraiter = and i64 %i.dc, 3                    ; 3 uses
  %i.ez = icmp ult i64 %i.ey, 3
  br i1 %i.ez, label %.lr.ph.i64.epil.preheader, label %.lr.ph.i64.preheader.new

.lr.ph.i64.preheader.new:                         ; preds = %.lr.ph.i64.preheader
  %unroll_iter = and i64 %i.dc, 2147483644
  br label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %.lr.ph.i64, %.lr.ph.i64.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i64.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i64 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i64.preheader.new ], [ %niter.next.3, %.lr.ph.i64 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.i
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !35
  %i.fc = load ptr, ptr %i.ca, align 8, !tbaa !95
  %i.fd = shl nuw nsw i64 %indvars.iv.i, 2
  %i.fe = and i64 %i.fd, 4294967280
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 3
  store i8 %i.fb, ptr %i.fg, align 1, !tbaa !35
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.next.i
end_hunk_1
begin_hunk_2_@_Z14lodepng_decodePPhPjS1_P12LodePNGStatePKhm:bb.a
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 3
  store i8 %i.hi, ptr %i.hn, align 1, !tbaa !35
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit, label %.lr.ph.i64.epil, !llvm.loop !546

_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit:  ; preds = %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit.loopexit.unr-lcssa, %.lr.ph.i64.epil, %.preheader.i63, %.loopexit.sink.split.i
  store i32 0, ptr %i.n, align 8, !tbaa !146
  br label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i

bb.ac:                                            ; preds = %bb.l
  %.phi.trans.insert120 = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 5
  %.pre121 = load i8, ptr %.phi.trans.insert120, align 1, !tbaa !35
  %i.ho = icmp eq i8 %.pre121, 75
  br i1 %i.ho, label %bb.ad, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.hp = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 6
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !35
  %i.hr = icmp eq i8 %i.hq, 71
  br i1 %i.hr, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

_Z25lodepng_chunk_type_equalsPKhPKc.exit:         ; preds = %bb.ad
  %i.hs = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 7
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !35
  %.not99 = icmp eq i8 %i.ht, 68
  br i1 %.not99, label %bb.ae, label %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread

bb.ae:                                            ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit
  %i.hu = load i32, ptr %i.r, align 8, !tbaa !148
  switch i32 %i.hu, label %_ZL14readChunk_bKGDP11LodePNGInfoPKhm.exit [
    i32 3, label %bb.af
    i32 0, label %bb.ai
    i32 4, label %bb.ai
    i32 2, label %bb.ak
    i32 6, label %bb.ak
  ]

bb.af:                                            ; preds = %bb.ae
  %.not33.i = icmp eq i32 %i.db, 1
  br i1 %.not33.i, label %bb.ag, label %.thread.i.sink.split

bb.ag:                                            ; preds = %bb.af
  %i.hv = load i8, ptr %i.dg, align 1, !tbaa !35
  %i.hw = zext i8 %i.hv to i64
  %i.hx = load i64, ptr %i.bv, align 8, !tbaa !157
  %.not34.i = icmp ugt i64 %i.hx, %i.hw
  br i1 %.not34.i, label %bb.ah, label %.thread.i.sink.split

bb.ah:                                            ; preds = %bb.ag
  store i32 1, ptr %i.br, align 8, !tbaa !158
  %i.hy = load i8, ptr %i.dg, align 1, !tbaa !35
  %i.hz = zext i8 %i.hy to i32                    ; 3 uses
  store i32 %i.hz, ptr %i.bu, align 4, !tbaa !159
  store i32 %i.hz, ptr %i.bt, align 8, !tbaa !160
  br label %.sink.split.i

bb.ai:                                            ; preds = %bb.ae, %bb.ae
  %.not32.i57 = icmp eq i32 %i.db, 2
  br i1 %.not32.i57, label %bb.aj, label %.thread.i.sink.split

bb.aj:                                            ; preds = %bb.ai
  store i32 1, ptr %i.br, align 8, !tbaa !158
  %i.ia = load i8, ptr %i.dg, align 1, !tbaa !35
  %i.ib = zext i8 %i.ia to i32
  %i.ic = shl nuw nsw i32 %i.ib, 8
  %i.id = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 9
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !35
  %i.if = zext i8 %i.ie to i32
  %i.ig = or disjoint i32 %i.ic, %i.if            ; 3 uses
  store i32 %i.ig, ptr %i.bu, align 4, !tbaa !159
  store i32 %i.ig, ptr %i.bt, align 8, !tbaa !160
  br label %.sink.split.i

bb.ak:                                            ; preds = %bb.ae, %bb.ae
  %.not.i55 = icmp eq i32 %i.db, 6
  br i1 %.not.i55, label %bb.al, label %.thread.i.sink.split

bb.al:                                            ; preds = %bb.ak
  store i32 1, ptr %i.br, align 8, !tbaa !158
  %i.ih = load i8, ptr %i.dg, align 1, !tbaa !35
  %i.ii = zext i8 %i.ih to i32
  %i.ij = shl nuw nsw i32 %i.ii, 8
  %i.ik = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 9
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !35
  %i.im = zext i8 %i.il to i32
  %i.in = or disjoint i32 %i.ij, %i.im
  store i32 %i.in, ptr %i.bs, align 4, !tbaa !161
  %i.io = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 10
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !35
  %i.iq = zext i8 %i.ip to i32
  %i.ir = shl nuw nsw i32 %i.iq, 8
  %i.is = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 11
  %i.it = load i8, ptr %i.is, align 1, !tbaa !35
  %i.iu = zext i8 %i.it to i32
  %i.iv = or disjoint i32 %i.ir, %i.iu
  store i32 %i.iv, ptr %i.bt, align 8, !tbaa !160
  %i.iw = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 12
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !35
  %i.iy = zext i8 %i.ix to i32
  %i.iz = shl nuw nsw i32 %i.iy, 8
  %i.ja = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 13
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !35
  %i.jc = zext i8 %i.jb to i32
  %i.jd = or disjoint i32 %i.iz, %i.jc
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.al, %bb.aj, %bb.ah
  %.sink36.i = phi i64 [ 60, %bb.ah ], [ 68, %bb.al ], [ 60, %bb.aj ]
  %.sink.i = phi i32 [ %i.hz, %bb.ah ], [ %i.jd, %bb.al ], [ %i.ig, %bb.aj ]
  %i.je = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sink36.i
  store i32 %.sink.i, ptr %i.je, align 4, !tbaa !29
  br label %_ZL14readChunk_bKGDP11LodePNGInfoPKhm.exit

_ZL14readChunk_bKGDP11LodePNGInfoPKhm.exit:       ; preds = %bb.ae, %.sink.split.i
  store i32 0, ptr %i.n, align 8, !tbaa !146
  br label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i

_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread:  ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit68, %bb.v, %bb.u, %_Z25lodepng_chunk_type_equalsPKhPKc.exit72, %bb.s, %bb.r, %bb.q, %_Z25lodepng_chunk_type_equalsPKhPKc.exit353.i, %_Z25lodepng_chunk_type_equalsPKhPKc.exit.i, %bb.n, %bb.m, %bb.l, %bb.ac, %bb.ad, %_Z25lodepng_chunk_type_equalsPKhPKc.exit
  %i.jf = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %.0270467.i, ptr noundef nonnull @.str.7)
  %.not290.i = icmp eq i8 %i.jf, 0
  br i1 %.not290.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread
  %i.jg = load i32, ptr %i.ba, align 8, !tbaa !199
  %.not325.i = icmp eq i32 %i.jg, 0
  br i1 %.not325.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jh = tail call fastcc noundef i32 @_ZL14readChunk_tEXtP11LodePNGInfoPKhm(ptr noundef nonnull %i.q, ptr noundef nonnull %i.dg, i64 noundef %i.dc) ; 2 uses
  store i32 %i.jh, ptr %i.n, align 8, !tbaa !146
  %.not326.i = icmp eq i32 %i.jh, 0
  br i1 %.not326.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %.thread.i

bb.ao:                                            ; preds = %_Z25lodepng_chunk_type_equalsPKhPKc.exit.thread
  %i.ji = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %.0270467.i, ptr noundef nonnull @.str.8)
  %.not291.i = icmp eq i8 %i.ji, 0
  br i1 %.not291.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jj = load i32, ptr %i.ba, align 8, !tbaa !199
  %.not323.i = icmp eq i32 %i.jj, 0
  br i1 %.not323.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jk = tail call fastcc noundef i32 @_ZL14readChunk_zTXtP11LodePNGInfoPK22LodePNGDecoderSettingsPKhm(ptr noundef nonnull %i.q, ptr noundef nonnull %3, ptr noundef nonnull %i.dg, i64 noundef %i.dc) ; 2 uses
  store i32 %i.jk, ptr %i.n, align 8, !tbaa !146
  %.not324.i = icmp eq i32 %i.jk, 0
  br i1 %.not324.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %.thread.i

bb.ar:                                            ; preds = %bb.ao
  %i.jl = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %.0270467.i, ptr noundef nonnull @.str.9)
  %.not292.i = icmp eq i8 %i.jl, 0
  br i1 %.not292.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jm = load i32, ptr %i.ba, align 8, !tbaa !199
  %.not321.i = icmp eq i32 %i.jm, 0
  br i1 %.not321.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jn = tail call fastcc noundef i32 @_ZL14readChunk_iTXtP11LodePNGInfoPK22LodePNGDecoderSettingsPKhm(ptr noundef nonnull %i.q, ptr noundef nonnull %3, ptr noundef nonnull %i.dg, i64 noundef %i.dc) ; 2 uses
  store i32 %i.jn, ptr %i.n, align 8, !tbaa !146
  %.not322.i = icmp eq i32 %i.jn, 0
  br i1 %.not322.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %.thread.i

bb.au:                                            ; preds = %bb.ar
  %i.jo = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %.0270467.i, ptr noundef nonnull @.str.10)
  %.not293.i = icmp eq i8 %i.jo, 0
  br i1 %.not293.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jp = tail call fastcc noundef i32 @_ZL14readChunk_tIMEP11LodePNGInfoPKhm(ptr noundef nonnull %i.q, ptr noundef nonnull %i.dg, i64 noundef %i.dc) ; 2 uses
  store i32 %i.jp, ptr %i.n, align 8, !tbaa !146
  %.not320.i = icmp eq i32 %i.jp, 0
  br i1 %.not320.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %.thread.i

bb.aw:                                            ; preds = %bb.au
  %i.jq = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %.0270467.i, ptr noundef nonnull @.str.11)
  %.not294.i = icmp eq i8 %i.jq, 0
  br i1 %.not294.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jr = tail call fastcc noundef i32 @_ZL14readChunk_pHYsP11LodePNGInfoPKhm(ptr noundef nonnull %i.q, ptr noundef nonnull %i.dg, i64 noundef %i.dc) ; 2 uses
  store i32 %i.jr, ptr %i.n, align 8, !tbaa !146
  %.not319.i = icmp eq i32 %i.jr, 0
  br i1 %.not319.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %.thread.i

bb.ay:                                            ; preds = %bb.aw
  %i.js = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %.0270467.i, ptr noundef nonnull @.str.12)
  %.not295.i = icmp eq i8 %i.js, 0
  br i1 %.not295.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not.i354.i = icmp eq i32 %i.db, 4
  br i1 %.not.i354.i, label %_ZL14readChunk_gAMAP11LodePNGInfoPKhm.exit.thread.i, label %.thread.i.sink.split

_ZL14readChunk_gAMAP11LodePNGInfoPKhm.exit.thread.i: ; preds = %bb.az
  store i32 1, ptr %i.bb, align 8, !tbaa !120
  %7 = load i8, ptr %i.dg, align 1, !tbaa !35
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 %8, 24
  %10 = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 9
  %11 = load i8, ptr %10, align 1, !tbaa !35
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = or disjoint i32 %13, %9
  %15 = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 10
  %16 = load i8, ptr %15, align 1, !tbaa !35
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or disjoint i32 %14, %18
  %20 = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 11
  %21 = load i8, ptr %20, align 1, !tbaa !35
  %22 = zext i8 %21 to i32
  %23 = or disjoint i32 %19, %22
  store i32 %23, ptr %i.bc, align 4, !tbaa !150
  store i32 0, ptr %i.n, align 8, !tbaa !146
  br label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i

bb.ba:                                            ; preds = %bb.ay
  %i.jt = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %.0270467.i, ptr noundef nonnull @.str.13)
  %.not296.i = icmp eq i8 %i.jt, 0
  br i1 %.not296.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ju = tail call fastcc noundef i32 @_ZL14readChunk_cHRMP11LodePNGInfoPKhm(ptr noundef nonnull %i.q, ptr noundef nonnull %i.dg, i64 noundef %i.dc) ; 2 uses
  store i32 %i.ju, ptr %i.n, align 8, !tbaa !146
  %.not317.i = icmp eq i32 %i.ju, 0
  br i1 %.not317.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %.thread.i

bb.bc:                                            ; preds = %bb.ba
  %i.jv = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %.0270467.i, ptr noundef nonnull @.str.14)
  %.not297.i = icmp eq i8 %i.jv, 0
  br i1 %.not297.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i356.i = icmp eq i32 %i.db, 1
  br i1 %.not.i356.i, label %_ZL14readChunk_sRGBP11LodePNGInfoPKhm.exit.thread.i, label %.thread.i.sink.split

_ZL14readChunk_sRGBP11LodePNGInfoPKhm.exit.thread.i: ; preds = %bb.bd
  store i32 1, ptr %i.bd, align 4, !tbaa !122
  %i.jw = load i8, ptr %i.dg, align 1, !tbaa !35
  %i.jx = zext i8 %i.jw to i32
  store i32 %i.jx, ptr %i.be, align 8, !tbaa !151
  store i32 0, ptr %i.n, align 8, !tbaa !146
  br label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i

bb.be:                                            ; preds = %bb.bc
  %i.jy = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %.0270467.i, ptr noundef nonnull @.str.15)
  %.not298.i = icmp eq i8 %i.jy, 0
  br i1 %.not298.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jz = tail call fastcc noundef i32 @_ZL14readChunk_iCCPP11LodePNGInfoPK22LodePNGDecoderSettingsPKhm(ptr noundef nonnull %i.q, ptr noundef %3, ptr noundef nonnull %i.dg, i64 noundef %i.dc) ; 2 uses
  store i32 %i.jz, ptr %i.n, align 8, !tbaa !146
  %.not315.i = icmp eq i32 %i.jz, 0
  br i1 %.not315.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %.thread.i

bb.bg:                                            ; preds = %bb.be
  %i.ka = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %.0270467.i, ptr noundef nonnull @.str.16)
  %.not299.i = icmp eq i8 %i.ka, 0
  br i1 %.not299.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not.i358.i = icmp eq i32 %i.db, 4
  br i1 %.not.i358.i, label %_ZL14readChunk_cICPP11LodePNGInfoPKhm.exit.thread.i, label %.thread.i.sink.split

_ZL14readChunk_cICPP11LodePNGInfoPKhm.exit.thread.i: ; preds = %bb.bh
  store i32 1, ptr %i.bf, align 4, !tbaa !152
  %i.kb = load i8, ptr %i.dg, align 1, !tbaa !35
  %i.kc = zext i8 %i.kb to i32
  store i32 %i.kc, ptr %i.bg, align 8, !tbaa !153
  %i.kd = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 9
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !35
  %i.kf = zext i8 %i.ke to i32
  store i32 %i.kf, ptr %i.bh, align 4, !tbaa !154
  %i.kg = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 10
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !35
  %i.ki = zext i8 %i.kh to i32
  store i32 %i.ki, ptr %i.bi, align 8, !tbaa !155
  %i.kj = getelementptr inbounds nuw i8, ptr %.0270467.i, i64 11
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !35
  %i.kl = zext i8 %i.kk to i32
  store i32 %i.kl, ptr %i.bj, align 4, !tbaa !156
  store i32 0, ptr %i.n, align 8, !tbaa !146
  br label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i

bb.bi:                                            ; preds = %bb.bg
  %i.km = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %.0270467.i, ptr noundef nonnull @.str.17)
  %.not300.i = icmp eq i8 %i.km, 0
  br i1 %.not300.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kn = tail call fastcc noundef i32 @_ZL14readChunk_mDCVP11LodePNGInfoPKhm(ptr noundef nonnull %i.q, ptr noundef nonnull %i.dg, i64 noundef %i.dc) ; 2 uses
  store i32 %i.kn, ptr %i.n, align 8, !tbaa !146
  %.not313.i = icmp eq i32 %i.kn, 0
  br i1 %.not313.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %.thread.i

bb.bk:                                            ; preds = %bb.bi
  %i.ko = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %.0270467.i, ptr noundef nonnull @.str.18)
  %.not301.i = icmp eq i8 %i.ko, 0
  br i1 %.not301.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kp = tail call fastcc noundef i32 @_ZL14readChunk_cLLIP11LodePNGInfoPKhm(ptr noundef nonnull %i.q, ptr noundef nonnull %i.dg, i64 noundef %i.dc) ; 2 uses
  store i32 %i.kp, ptr %i.n, align 8, !tbaa !146
  %.not312.i = icmp eq i32 %i.kp, 0
  br i1 %.not312.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %.thread.i

bb.bm:                                            ; preds = %bb.bk
  %i.kq = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %.0270467.i, ptr noundef nonnull @.str.19)
  %.not302.i = icmp eq i8 %i.kq, 0
  br i1 %.not302.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kr = tail call fastcc noundef i32 @_ZL14readChunk_eXIfP11LodePNGInfoPKhm(ptr noundef nonnull %i.q, ptr noundef nonnull %i.dg, i64 noundef %i.dc) ; 2 uses
  store i32 %i.kr, ptr %i.n, align 8, !tbaa !146
  %.not311.i = icmp eq i32 %i.kr, 0
  br i1 %.not311.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %.thread.i

bb.bo:                                            ; preds = %bb.bm
  %i.ks = tail call noundef zeroext i8 @_Z25lodepng_chunk_type_equalsPKhPKc(ptr noundef nonnull %.0270467.i, ptr noundef nonnull @.str.20)
  %.not303.i = icmp eq i8 %i.ks, 0
  br i1 %.not303.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kt = tail call fastcc noundef i32 @_ZL14readChunk_sBITP11LodePNGInfoPKhm(ptr noundef nonnull %i.q, ptr noundef nonnull %i.dg, i64 noundef %i.dc) ; 2 uses
  store i32 %i.kt, ptr %i.n, align 8, !tbaa !146
  %.not310.i = icmp eq i32 %i.kt, 0
  br i1 %.not310.i, label %_ZL14lodepng_memcpyPvPKvm.exit.thread.i, label %.thread.i

bb.bq:                                            ; preds = %bb.bo
  %i.ku = tail call fastcc noundef zeroext i8 @_ZL29lodepng_chunk_type_name_validPKh(ptr noundef nonnull %.0270467.i)
  %.not304.i = icmp eq i8 %i.ku, 0
  br i1 %.not304.i, label %.thread.i.sink.split, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kv = getelementptr i8, ptr %.0270467.i, i64 6
  %.0270.val.i = load i8, ptr %i.kv, align 1, !tbaa !35
  %i.kw = and i8 %.0270.val.i, 32
  %.not305.i = icmp eq i8 %i.kw, 0
  br i1 %.not305.i, label %bb.bs, label %.thread.i.sink.split

bb.bs:                                            ; preds = %bb.br
  %i.kx = load i32, ptr %i.bk, align 4, !tbaa !594
  %.not306.i = icmp eq i32 %i.kx, 0
  %i.ky = and i8 %i.di, 32
  %.not307.i = icmp eq i8 %i.ky, 0
  %or.cond.i = and i1 %.not307.i, %.not306.i
  br i1 %or.cond.i, label %.thread.i.sink.split, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kz = load i32, ptr %i.bl, align 4, !tbaa !200
  %.not308.i = icmp eq i32 %i.kz, 0
  br i1 %.not308.i, label %.thread398.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.la = add nsw i32 %.0256469.i, -1
  %i.lb = zext nneg i32 %i.la to i64              ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.lb
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.lb
  %i.le = tail call noundef i32 @_Z20lodepng_chunk_appendPPhPmPKh(ptr noundef nonnull %i.lc, ptr noundef nonnull %i.ld, ptr noundef nonnull %.0270467.i) ; 2 uses
  store i32 %i.le, ptr %i.n, align 8, !tbaa !146
  %.not309.i = icmp eq i32 %i.le, 0
  br i1 %.not309.i, label %.thread398.i, label %.thread.i

_ZL14lodepng_memcpyPvPKvm.exit.thread.i:          ; preds = %_ZL14readChunk_bKGDP11LodePNGInfoPKhm.exit, %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %_ZL14readChunk_cICPP11LodePNGInfoPKhm.exit.thread.i, %bb.bf, %_ZL14readChunk_sRGBP11LodePNGInfoPKhm.exit.thread.i, %bb.bb, %_ZL14readChunk_gAMAP11LodePNGInfoPKhm.exit.thread.i, %bb.ax, %bb.av, %bb.at, %bb.as, %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.t, %_Z25lodepng_chunk_type_equalsPKhPKc.exit353.i, %.lr.ph.preheader.i.i, %bb.p
  %.2267.i = phi i64 [ %.0265468.i, %bb.bp ], [ %.0265468.i, %bb.t ], [ %.0265468.i, %_Z25lodepng_chunk_type_equalsPKhPKc.exit353.i ], [ %.0265468.i, %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit ], [ %.0265468.i, %_ZL14readChunk_bKGDP11LodePNGInfoPKhm.exit ], [ %.0265468.i, %bb.an ], [ %.0265468.i, %bb.am ], [ %.0265468.i, %bb.aq ], [ %.0265468.i, %bb.ap ], [ %.0265468.i, %bb.at ], [ %.0265468.i, %bb.as ], [ %.0265468.i, %bb.av ], [ %.0265468.i, %bb.ax ], [ %.0265468.i, %_ZL14readChunk_gAMAP11LodePNGInfoPKhm.exit.thread.i ], [ %.0265468.i, %bb.bb ], [ %.0265468.i, %_ZL14readChunk_sRGBP11LodePNGInfoPKhm.exit.thread.i ], [ %.0265468.i, %bb.bf ], [ %.0265468.i, %_ZL14readChunk_cICPP11LodePNGInfoPKhm.exit.thread.i ], [ %.0265468.i, %bb.bj ], [ %.0265468.i, %bb.bl ], [ %.0265468.i, %bb.bn ], [ %i.dq, %bb.p ], [ %i.dq, %.lr.ph.preheader.i.i ] ; 2 uses
  %.2258.i = phi i32 [ %.0256469.i, %bb.bp ], [ 2, %bb.t ], [ %.0256469.i, %_Z25lodepng_chunk_type_equalsPKhPKc.exit353.i ], [ %.0256469.i, %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit ], [ %.0256469.i, %_ZL14readChunk_bKGDP11LodePNGInfoPKhm.exit ], [ %.0256469.i, %bb.an ], [ %.0256469.i, %bb.am ], [ %.0256469.i, %bb.aq ], [ %.0256469.i, %bb.ap ], [ %.0256469.i, %bb.at ], [ %.0256469.i, %bb.as ], [ %.0256469.i, %bb.av ], [ %.0256469.i, %bb.ax ], [ %.0256469.i, %_ZL14readChunk_gAMAP11LodePNGInfoPKhm.exit.thread.i ], [ %.0256469.i, %bb.bb ], [ %.0256469.i, %_ZL14readChunk_sRGBP11LodePNGInfoPKhm.exit.thread.i ], [ %.0256469.i, %bb.bf ], [ %.0256469.i, %_ZL14readChunk_cICPP11LodePNGInfoPKhm.exit.thread.i ], [ %.0256469.i, %bb.bj ], [ %.0256469.i, %bb.bl ], [ %.0256469.i, %bb.bn ], [ 3, %bb.p ], [ 3, %.lr.ph.preheader.i.i ] ; 2 uses
  %.not332.i = phi i1 [ true, %bb.bp ], [ true, %bb.t ], [ false, %_Z25lodepng_chunk_type_equalsPKhPKc.exit353.i ], [ true, %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit ], [ true, %_ZL14readChunk_bKGDP11LodePNGInfoPKhm.exit ], [ true, %bb.an ], [ true, %bb.am ], [ true, %bb.aq ], [ true, %bb.ap ], [ true, %bb.at ], [ true, %bb.as ], [ true, %bb.av ], [ true, %bb.ax ], [ true, %_ZL14readChunk_gAMAP11LodePNGInfoPKhm.exit.thread.i ], [ true, %bb.bb ], [ true, %_ZL14readChunk_sRGBP11LodePNGInfoPKhm.exit.thread.i ], [ true, %bb.bf ], [ true, %_ZL14readChunk_cICPP11LodePNGInfoPKhm.exit.thread.i ], [ true, %bb.bj ], [ true, %bb.bl ], [ true, %bb.bn ], [ true, %bb.p ], [ true, %.lr.ph.preheader.i.i ]
  %.1.i = phi i8 [ 0, %bb.bp ], [ 0, %bb.t ], [ 1, %_Z25lodepng_chunk_type_equalsPKhPKc.exit353.i ], [ 0, %_ZL14readChunk_tRNSP16LodePNGColorModePKhm.exit ], [ 0, %_ZL14readChunk_bKGDP11LodePNGInfoPKhm.exit ], [ 0, %bb.an ], [ 0, %bb.am ], [ 0, %bb.aq ], [ 0, %bb.ap ], [ 0, %bb.at ], [ 0, %bb.as ], [ 0, %bb.av ], [ 0, %bb.ax ], [ 0, %_ZL14readChunk_gAMAP11LodePNGInfoPKhm.exit.thread.i ], [ 0, %bb.bb ], [ 0, %_ZL14readChunk_sRGBP11LodePNGInfoPKhm.exit.thread.i ], [ 0, %bb.bf ], [ 0, %_ZL14readChunk_cICPP11LodePNGInfoPKhm.exit.thread.i ], [ 0, %bb.bj ], [ 0, %bb.bl ], [ 0, %bb.bn ], [ 0, %bb.p ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.lf = load i32, ptr %i.bo, align 8, !tbaa !149
  %.not450.i = icmp eq i32 %i.lf, 0
  br i1 %.not450.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZL14lodepng_memcpyPvPKvm.exit.thread.i
  %i.lg = tail call noundef i32 @_Z23lodepng_chunk_check_crcPKh(ptr noundef nonnull %.0270467.i)
  %.not331.i = icmp eq i32 %i.lg, 0
  br i1 %.not331.i, label %bb.bw, label %.thread.i.sink.split

bb.bw:                                            ; preds = %bb.bv, %_ZL14lodepng_memcpyPvPKvm.exit.thread.i
  br i1 %.not332.i, label %.thread398.i, label %_ZL14lodepng_memcpyPvPKvm.exit.i

.thread398.i:                                     ; preds = %bb.bw, %bb.bu, %bb.bt
  %.2267394405.i = phi i64 [ %.2267.i, %bb.bw ], [ %.0265468.i, %bb.bu ], [ %.0265468.i, %bb.bt ] ; 3 uses
  %.2258395404.i = phi i32 [ %.2258.i, %bb.bw ], [ %.0256469.i, %bb.bu ], [ %.0256469.i, %bb.bt ] ; 3 uses
  %.1397403.i = phi i8 [ %.1.i, %bb.bw ], [ 0, %bb.bu ], [ 0, %bb.bt ] ; 3 uses
  %i.lh = sub i64 %i.bq, %i.cb                    ; 2 uses
  %i.li = icmp uge ptr %.0270467.i, %i.bp
  %i.lj = icmp ult i64 %i.lh, 12
  %or.cond.i.i = or i1 %i.li, %i.lj
  br i1 %or.cond.i.i, label %_ZL14lodepng_memcpyPvPKvm.exit.i, label %bb.bx

bb.bx:                                            ; preds = %.thread398.i
  %i.lk = load i8, ptr %.0270467.i, align 1, !tbaa !35 ; 2 uses
  %i.ll = icmp eq i8 %i.lk, -119
  %i.lm = load i8, ptr %i.cl, align 1, !tbaa !35  ; 2 uses
  %i.ln = icmp eq i8 %i.lm, 80
  %or.cond28.i.i = select i1 %i.ll, i1 %i.ln, i1 false
  %.pre.i = load i8, ptr %i.cm, align 1, !tbaa !35 ; 2 uses
  br i1 %or.cond28.i.i, label %bb.by, label %.._crit_edge.i_crit_edge.i

.._crit_edge.i_crit_edge.i:                       ; preds = %bb.bx
  %.pre485.i = load i8, ptr %i.cn, align 1, !tbaa !35
  %i.lo = zext i8 %i.lm to i64
  %i.lp = shl nuw nsw i64 %i.lo, 16
  br label %._crit_edge.i.i

bb.by:                                            ; preds = %bb.bx
  %i.lq = icmp eq i8 %.pre.i, 78
  %.pre486.i = load i8, ptr %i.cn, align 1, !tbaa !35 ; 2 uses
  %i.lr = icmp eq i8 %.pre486.i, 71
  %or.cond588.i = select i1 %i.lq, i1 %i.lr, i1 false
  br i1 %or.cond588.i, label %bb.bz, label %._crit_edge.i.i

bb.bz:                                            ; preds = %bb.by
end_hunk_2
