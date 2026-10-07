Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_compress_superblock?download=true
inline.NumInlined: 41
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ZSTD_compressSuperBlock:bb.a
  br i1 %.not310.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %select.unfold.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(2064) %i.u, i64 2064, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %select.unfold.i, %.thread393.i
  %.10403.i = phi i32 [ %.8222.i, %.thread393.i ], [ %.10.i, %bb.ar ], [ %.10.i, %select.unfold.i ]
  %.8263402.i = phi ptr [ %i.lz, %.thread393.i ], [ %.8263.i, %bb.ar ], [ %.8263.i, %select.unfold.i ] ; 6 uses
  %.8274401.i = phi ptr [ %i.ly, %.thread393.i ], [ %.8274.i, %bb.ar ], [ %.8274.i, %select.unfold.i ] ; 3 uses
  %.8290400.i = phi ptr [ %i.mc, %.thread393.i ], [ %.8290.i, %bb.ar ], [ %.8290.i, %select.unfold.i ] ; 3 uses
  %.not311.i = icmp eq i32 %.10403.i, 0
  br i1 %.not311.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.md = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.me = load i32, ptr %i.md, align 8, !tbaa !20
  %.off.i.i = add i32 %i.me, -1
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %ZSTD_compressSubBlock_multi.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mf = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !21
  %.off9.i.i = add i32 %i.mg, -1
  %switch10.i.i = icmp ult i32 %.off9.i.i, 2
  br i1 %switch10.i.i, label %ZSTD_compressSubBlock_multi.exit, label %ZSTD_needSequenceEntropyTables.exit.i

ZSTD_needSequenceEntropyTables.exit.i:            ; preds = %bb.au
  %i.mh = getelementptr inbounds nuw i8, ptr %7, i64 148
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !18
  %i.mj = add i32 %i.mi, -3
  %switch12.i.i = icmp ult i32 %i.mj, -2
  br i1 %switch12.i.i, label %bb.av, label %ZSTD_compressSubBlock_multi.exit

bb.av:                                            ; preds = %ZSTD_needSequenceEntropyTables.exit.i, %bb.as
  %i.mk = icmp ult ptr %.8274401.i, %i.ao
  br i1 %i.mk, label %bb.aw, label %bb.bg

bb.aw:                                            ; preds = %bb.av
  %i.ml = ptrtoint ptr %i.ao to i64
  %i.mm = ptrtoint ptr %.8274401.i to i64
  %i.mn = sub i64 %i.ml, %i.mm                    ; 3 uses
  %i.mo = ptrtoint ptr %.8263402.i to i64
  %i.mp = sub i64 %i.ls, %i.mo
  %i.mq = add i64 %i.mn, 3                        ; 4 uses
  %i.mr = icmp ugt i64 %i.mq, %i.mp
  br i1 %i.mr, label %ZSTD_compressSubBlock_multi.exit, label %ZSTD_noCompressBlock.exit.i

ZSTD_noCompressBlock.exit.i:                      ; preds = %bb.aw
  %.tr.i.i = trunc i64 %i.mn to i32
  %i.ms = shl i32 %.tr.i.i, 3
  %i.mt = add i32 %i.ms, %5                       ; 2 uses
  %i.mu = trunc i32 %i.mt to i16
  store i16 %i.mu, ptr %.8263402.i, align 1, !tbaa !24
  %i.mv = lshr i32 %i.mt, 16
  %i.mw = trunc i32 %i.mv to i8
  %i.mx = getelementptr inbounds nuw i8, ptr %.8263402.i, i64 2
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !19
  %i.my = getelementptr inbounds nuw i8, ptr %.8263402.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.my, ptr readonly align 1 %.8274401.i, i64 %i.mn, i1 false)
  %i.mz = icmp ult i64 %i.mq, -119
  br i1 %i.mz, label %bb.ax, label %ZSTD_compressSubBlock_multi.exit

bb.ax:                                            ; preds = %ZSTD_noCompressBlock.exit.i
  %i.na = getelementptr inbounds nuw i8, ptr %.8263402.i, i64 %i.mq ; 2 uses
  %i.nb = icmp ult ptr %.8290400.i, %i.ac
  br i1 %i.nb, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.nc = getelementptr inbounds nuw i8, ptr %i.u, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.nc, i64 12, i1 false)
  %i.nd = icmp ult ptr %i.aa, %.8290400.i
  br i1 %i.nd, label %.lr.ph450.i, label %._crit_edge.i

.lr.ph450.i:                                      ; preds = %bb.ay
  %.promoted.i = load i32, ptr %6, align 4
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !73
  %i.ng = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.nh = ptrtoint ptr %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.nj = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %.promoted451.i = load i32, ptr %i.nk, align 4
  %.promoted455.i = load i32, ptr %i.nj, align 4
  br label %bb.az

bb.az:                                            ; preds = %ZSTD_updateRep.exit.i, %.lr.ph450.i
  %.val409457.i = phi i32 [ %.promoted455.i, %.lr.ph450.i ], [ %.val409456.i, %ZSTD_updateRep.exit.i ] ; 4 uses
  %.val453.i = phi i32 [ %.promoted451.i, %.lr.ph450.i ], [ %.val452.i, %ZSTD_updateRep.exit.i ] ; 2 uses
  %.0200449.i = phi ptr [ %i.aa, %.lr.ph450.i ], [ %i.ol, %ZSTD_updateRep.exit.i ] ; 4 uses
  %i.nl = phi i32 [ %.promoted.i, %.lr.ph450.i ], [ %i.ok, %ZSTD_updateRep.exit.i ] ; 5 uses
  %i.nm = load i32, ptr %.0200449.i, align 4, !tbaa !75 ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.0200449.i, i64 4
  %i.no = load i16, ptr %i.nn, align 4, !tbaa !71
  %i.np = zext i16 %i.no to i64                   ; 3 uses
  %i.nq = ptrtoint ptr %.0200449.i to i64
  %i.nr = sub i64 %i.nq, %i.nh
  %i.ns = lshr exact i64 %i.nr, 3
  %i.nt = trunc i64 %i.ns to i32
  %i.nu = icmp eq i32 %i.nf, %i.nt
  br i1 %i.nu, label %bb.ba, label %ZSTD_getSequenceLength.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.nv = load i32, ptr %i.ni, align 8, !tbaa !74
  %i.nw = icmp eq i32 %i.nv, 1
  %i.nx = or disjoint i64 %i.np, 65536
  %spec.select.i337.i = select i1 %i.nw, i64 %i.nx, i64 %i.np
  br label %ZSTD_getSequenceLength.exit.i

ZSTD_getSequenceLength.exit.i:                    ; preds = %bb.ba, %bb.az
  %.sroa.0.1.i.i = phi i64 [ %i.np, %bb.az ], [ %spec.select.i337.i, %bb.ba ]
  %i.ny = icmp ugt i32 %i.nm, 3
  br i1 %i.ny, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %ZSTD_getSequenceLength.exit.i
  store i32 %.val409457.i, ptr %i.nk, align 4, !tbaa !17
  store i32 %i.nl, ptr %i.nj, align 4, !tbaa !17
  %i.nz = add i32 %i.nm, -3
  br label %.sink.split.i.i

bb.bc:                                            ; preds = %ZSTD_getSequenceLength.exit.i
  %i.oa = icmp eq i64 %.sroa.0.1.i.i, 0
  %i.ob = zext i1 %i.oa to i32
  %i.oc = add nsw i32 %i.nm, -1
  %i.od = add nsw i32 %i.oc, %i.ob                ; 3 uses
  switch i32 %i.od, label %bb.be [
    i32 0, label %ZSTD_updateRep.exit.i
    i32 3, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.oe = add i32 %i.nl, -1
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.of = zext i32 %i.od to i64
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.of
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !17
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.oi = phi i32 [ %i.oe, %bb.bd ], [ %i.oh, %bb.be ]
  %.not22.i.i = icmp eq i32 %i.od, 1
  %i.oj = select i1 %.not22.i.i, i32 %.val453.i, i32 %.val409457.i ; 2 uses
  store i32 %i.oj, ptr %i.nk, align 4, !tbaa !17
  store i32 %i.nl, ptr %i.nj, align 4, !tbaa !17
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bf, %bb.bb
  %.val454.i = phi i32 [ %i.oj, %bb.bf ], [ %.val409457.i, %bb.bb ]
  %.sink.i.i = phi i32 [ %i.oi, %bb.bf ], [ %i.nz, %bb.bb ] ; 2 uses
  store i32 %.sink.i.i, ptr %6, align 4, !tbaa !17
  br label %ZSTD_updateRep.exit.i

ZSTD_updateRep.exit.i:                            ; preds = %.sink.split.i.i, %bb.bc
  %.val409456.i = phi i32 [ %.val409457.i, %bb.bc ], [ %i.nl, %.sink.split.i.i ]
  %.val452.i = phi i32 [ %.val453.i, %bb.bc ], [ %.val454.i, %.sink.split.i.i ]
  %i.ok = phi i32 [ %i.nl, %bb.bc ], [ %.sink.i.i, %.sink.split.i.i ]
  %i.ol = getelementptr inbounds nuw i8, ptr %.0200449.i, i64 8 ; 2 uses
  %i.om = icmp ult ptr %i.ol, %.8290400.i
  br i1 %i.om, label %bb.az, label %._crit_edge.i, !llvm.loop !30

._crit_edge.i:                                    ; preds = %ZSTD_updateRep.exit.i, %bb.ay
  %i.on = getelementptr inbounds nuw i8, ptr %i.v, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.on, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i, %bb.ax, %bb.av
  %.10265.i = phi ptr [ %.8263402.i, %bb.av ], [ %i.na, %bb.ax ], [ %i.na, %._crit_edge.i ]
  %i.oo = ptrtoint ptr %.10265.i to i64
  %i.op = ptrtoint ptr %1 to i64
  %i.oq = sub i64 %i.oo, %i.op
  br label %ZSTD_compressSubBlock_multi.exit

.critedge.i:                                      ; preds = %ZSTD_seqDecompressedSize.exit335.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %ZSTD_compressSubBlock_multi.exit

ZSTD_compressSubBlock_multi.exit:                 ; preds = %.critedge.i, %bb.bg, %ZSTD_noCompressBlock.exit.i, %bb.aw, %ZSTD_needSequenceEntropyTables.exit.i, %bb.au, %bb.at, %bb.aj, %bb.x, %bb.a
  %.1 = phi i64 [ %i.s, %bb.a ], [ %i.lv, %.critedge.i ], [ %i.oq, %bb.bg ], [ 0, %bb.au ], [ %i.jg, %bb.aj ], [ %i.mq, %ZSTD_noCompressBlock.exit.i ], [ 0, %ZSTD_needSequenceEntropyTables.exit.i ], [ 0, %bb.x ], [ 0, %bb.at ], [ -70, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @ZSTD_buildBlockEntropyStats(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 5, 1) i64 @ZSTD_compressSubBlock(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9, ptr noundef %10, i64 noundef %11, i32 noundef %12, i32 noundef range(i32 0, 2) %13, i32 noundef range(i32 0, 2) %14, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %15, ptr nofree noundef nonnull writeonly captures(none) %16, i32 noundef %17) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 3 ; 10 uses
  %gepdiff = add i64 %11, -3                      ; 5 uses
  %.not.i = icmp ne i32 %13, 0                    ; 4 uses
  %i.b = select i1 %.not.i, i64 200, i64 0        ; 2 uses
  %i.c = sub nuw nsw i64 1024, %i.b
  %.not99.i = icmp ult i64 %5, %i.c
  %i.d = select i1 %.not99.i, i64 3, i64 4
  %i.e = sub nuw nsw i64 16384, %i.b
  %i.f = icmp uge i64 %5, %i.e
  %i.g = zext i1 %i.f to i64
  %i.h = add nuw nsw i64 %i.d, %i.g               ; 4 uses
  %18 = getelementptr i8, ptr %10, i64 %11        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h ; 3 uses
  %.not103.i = icmp eq i64 %i.h, 3
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %1, align 8, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i32 [ %i.j, %bb.b ], [ 3, %bb.a ]    ; 3 uses
  store i32 0, ptr %15, align 4, !tbaa !17
  %i.l = icmp eq i64 %5, 0
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %1, align 8, !tbaa !76     ; 2 uses
  switch i32 %i.m, label %bb.g [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = tail call i64 @ZSTD_noCompressLiterals(ptr noundef nonnull %i.a, i64 noundef %gepdiff, ptr noundef %4, i64 noundef %5) #5
  br label %ZSTD_compressSubBlock_literal.exit

bb.f:                                             ; preds = %bb.d
  %i.o = tail call i64 @ZSTD_compressRleLiteralsBlock(ptr noundef nonnull %i.a, i64 noundef %gepdiff, ptr noundef %4, i64 noundef %5) #5
  br label %ZSTD_compressSubBlock_literal.exit

bb.g:                                             ; preds = %bb.d
  %i.p = icmp eq i32 %i.m, 2
  %or.cond.i = and i1 %.not.i, %i.p
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 4 %i.q, i64 %i.s, i1 false)
  %i.t = load i64, ptr %i.r, align 8, !tbaa !77   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.t
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.095.i = phi ptr [ %i.u, %bb.h ], [ %i.i, %bb.g ] ; 4 uses
  %.094.i = phi i64 [ %i.t, %bb.h ], [ 0, %bb.g ]
  %.not100.i = icmp ne i32 %12, 0
  %i.v = zext i1 %.not100.i to i32                ; 2 uses
  %19 = ptrtoint ptr %18 to i64
  %i.w = ptrtoint ptr %.095.i to i64
  %i.x = sub i64 %19, %i.w                        ; 2 uses
  br i1 %.not103.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = tail call i64 @HUF_compress1X_usingCTable(ptr noundef nonnull %.095.i, i64 noundef %i.x, ptr noundef %4, i64 noundef %5, ptr noundef %0, i32 noundef %i.v) #5
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.z = tail call i64 @HUF_compress4X_usingCTable(ptr noundef nonnull %.095.i, i64 noundef %i.x, ptr noundef %4, i64 noundef %5, ptr noundef %0, i32 noundef %i.v) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aa = phi i64 [ %i.y, %bb.j ], [ %i.z, %bb.k ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.095.i, i64 %i.aa
  %i.ac = add i64 %i.aa, %.094.i                  ; 7 uses
  %i.ad = add i64 %i.aa, -1
  %or.cond108.i = icmp ult i64 %i.ad, -120
  br i1 %or.cond108.i, label %bb.m, label %.thread69

bb.m:                                             ; preds = %bb.l
  %.not102.i = icmp ult i64 %i.ac, %5
  %or.cond105.i = select i1 %.not.i, i1 true, i1 %.not102.i
  br i1 %or.cond105.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = tail call i64 @ZSTD_noCompressLiterals(ptr noundef nonnull %i.a, i64 noundef %gepdiff, ptr noundef %4, i64 noundef %5) #5
  br label %ZSTD_compressSubBlock_literal.exit

bb.o:                                             ; preds = %bb.m
  %i.af = icmp ugt i64 %i.ac, 1023
  %i.ag = select i1 %i.af, i64 4, i64 3
  %i.ah = icmp ugt i64 %i.ac, 16383
  %i.ai = zext i1 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ag, %i.ai
  %i.ak = icmp samesign ult i64 %i.h, %i.aj
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = tail call i64 @ZSTD_noCompressLiterals(ptr noundef nonnull %i.a, i64 noundef %gepdiff, ptr noundef %4, i64 noundef %5) #5
  br label %ZSTD_compressSubBlock_literal.exit

bb.q:                                             ; preds = %bb.o
  %i.am = trunc i64 %5 to i32
  %i.an = shl i32 %i.am, 4                        ; 3 uses
  switch i64 %i.h, label %default.unreachable [
    i64 3, label %bb.r
    i64 4, label %bb.s
    i64 5, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.ao = add i32 %i.k, %i.an
  %i.ap = trunc i64 %i.ac to i32
  %i.aq = shl i32 %i.ap, 14
  %i.ar = add i32 %i.ao, %i.aq                    ; 2 uses
  %i.as = trunc i32 %i.ar to i16
  store i16 %i.as, ptr %i.a, align 1, !tbaa !24
  %i.at = lshr i32 %i.ar, 16
  %i.au = trunc i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 5
  store i8 %i.au, ptr %i.av, align 1, !tbaa !19
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.aw = trunc i64 %i.ac to i32
  %i.ax = shl i32 %i.aw, 18
  %i.ay = or disjoint i32 %i.an, 8
  %i.az = add i32 %i.ay, %i.k
  %i.ba = add i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.a, align 1, !tbaa !17
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.bb = trunc i64 %i.ac to i32
  %i.bc = shl i32 %i.bb, 22
  %i.bd = or disjoint i32 %i.an, 12
  %i.be = add i32 %i.bd, %i.k
  %i.bf = add i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.a, align 1, !tbaa !17
  %i.bg = lshr i64 %i.ac, 10
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 7
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !19
  br label %bb.u

default.unreachable:                              ; preds = %bb.q
  unreachable

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  store i32 1, ptr %15, align 4, !tbaa !17
  %i.bj = ptrtoint ptr %i.ab to i64
  %i.bk = ptrtoint ptr %i.a to i64
  %i.bl = sub i64 %i.bj, %i.bk
  br label %ZSTD_compressSubBlock_literal.exit

ZSTD_compressSubBlock_literal.exit:               ; preds = %bb.e, %bb.f, %bb.n, %bb.p, %bb.u
  %.1.i = phi i64 [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.bl, %bb.u ], [ %i.al, %bb.p ], [ %i.ae, %bb.n ] ; 6 uses
  %i.bm = icmp ult i64 %.1.i, -119
  br i1 %i.bm, label %20, label %.thread69

20:                                               ; preds = %ZSTD_compressSubBlock_literal.exit
  %21 = icmp eq i64 %.1.i, 0
  br i1 %21, label %.thread69, label %bb.v

bb.v:                                             ; preds = %20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i ; 9 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bq = ptrtoint ptr %i.bn to i64
  %gepdiff95 = sub i64 %gepdiff, %.1.i
  %i.br = getelementptr i8, ptr %9, i64 4
  %.val = load i32, ptr %i.br, align 4, !tbaa !78
  %i.bs = icmp ugt i32 %.val, 57
  %i.bt = zext i1 %i.bs to i32                    ; 2 uses
  store i32 0, ptr %16, align 4, !tbaa !17
  %22 = ptrtoint ptr %18 to i64                   ; 2 uses
  %i.bu = icmp slt i64 %gepdiff95, 4
  br i1 %i.bu, label %.thread69, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = icmp ult i64 %3, 128
  br i1 %i.bv, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = icmp ult i64 %3, 32512
  br i1 %i.bw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bx = lshr i64 %3, 8
  %i.by = trunc nuw nsw i64 %i.bx to i8
  %i.bz = or disjoint i8 %i.by, -128
  store i8 %i.bz, ptr %i.bn, align 1, !tbaa !19
  %i.ca = trunc i64 %3 to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  br label %.thread.i

bb.z:                                             ; preds = %bb.x
  store i8 -1, ptr %i.bn, align 1, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.ce = trunc i64 %3 to i16
  %i.cf = add i16 %i.ce, -32512
  store i16 %i.cf, ptr %i.cd, align 1, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  br label %.thread.i

bb.aa:                                            ; preds = %bb.w
  %i.ch = trunc nuw nsw i64 %3 to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store i8 %i.ch, ptr %i.bn, align 1, !tbaa !19
  %i.cj = icmp eq i64 %3, 0
  br i1 %i.cj, label %ZSTD_compressSubBlock_sequences.exit.thread.thread91, label %.thread.i

.thread.i:                                        ; preds = %bb.aa, %bb.z, %bb.y
  %.0712.i = phi ptr [ %i.ci, %bb.aa ], [ %i.cg, %bb.z ], [ %i.cc, %bb.y ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0712.i, i64 1 ; 5 uses
  %.not.i63 = icmp eq i32 %14, 0
  br i1 %.not.i63, label %bb.ab, label %.thread10.i

bb.ab:                                            ; preds = %.thread.i
  store i8 -4, ptr %.0712.i, align 1, !tbaa !19
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %22, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4288
  %i.cp = tail call i64 @ZSTD_encodeSequences(ptr noundef nonnull %i.ck, i64 noundef %i.cm, ptr noundef nonnull %i.cn, ptr noundef %7, ptr noundef nonnull %i.bo, ptr noundef %8, ptr noundef nonnull %i.co, ptr noundef %6, ptr noundef %2, i64 noundef %3, i32 noundef %i.bt, i32 noundef %12) #5 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, -119
  br i1 %i.cq, label %bb.ac, label %.thread69

.thread10.i:                                      ; preds = %.thread.i
  %i.cr = load i32, ptr %i.bp, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !21
  %i.cw = shl i32 %i.cr, 6
  %i.cx = shl i32 %i.ct, 4
  %i.cy = add i32 %i.cx, %i.cw
  %i.cz = shl i32 %i.cv, 2
  %i.da = add i32 %i.cy, %i.cz
  %i.db = trunc i32 %i.da to i8
  store i8 %i.db, ptr %.0712.i, align 1, !tbaa !19
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull readonly align 4 %i.dc, i64 %i.de, i1 false)
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !22
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.df ; 3 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %22, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4288
  %i.dl = tail call i64 @ZSTD_encodeSequences(ptr noundef nonnull %i.dg, i64 noundef %i.di, ptr noundef nonnull %i.dj, ptr noundef %7, ptr noundef nonnull %i.bo, ptr noundef %8, ptr noundef nonnull %i.dk, ptr noundef %6, ptr noundef %2, i64 noundef %3, i32 noundef %i.bt, i32 noundef %12) #5 ; 4 uses
  %i.dm = icmp ult i64 %i.dl, -119
  br i1 %i.dm, label %bb.ad, label %.thread69

bb.ac:                                            ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cp
  br label %bb.ae

bb.ad:                                            ; preds = %.thread10.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dl
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !79 ; 2 uses
  %.not78.i = icmp ne i64 %i.dq, 0
  %i.dr = add i64 %i.dq, %i.dl
  %i.ds = icmp ult i64 %i.dr, 4
  %or.cond.i64 = and i1 %.not78.i, %i.ds
  br i1 %or.cond.i64, label %.thread69, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dt = phi ptr [ %i.dn, %bb.ac ], [ %i.do, %bb.ad ]
  %i.du = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dv = ptrtoint ptr %.0712.i to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = icmp slt i64 %i.dw, 4
  br i1 %i.dx, label %.thread69, label %ZSTD_compressSubBlock_sequences.exit

ZSTD_compressSubBlock_sequences.exit:             ; preds = %bb.ae
  store i32 1, ptr %16, align 4, !tbaa !17
  %i.dy = sub i64 %i.du, %i.bq                    ; 4 uses
  %i.dz = icmp ult i64 %i.dy, -119
  br i1 %i.dz, label %ZSTD_compressSubBlock_sequences.exit.thread, label %.thread69

ZSTD_compressSubBlock_sequences.exit.thread:      ; preds = %ZSTD_compressSubBlock_sequences.exit
  %i.ea = icmp eq i64 %i.dy, 0
  br i1 %i.ea, label %.thread69, label %ZSTD_compressSubBlock_sequences.exit.thread.thread91

ZSTD_compressSubBlock_sequences.exit.thread.thread91: ; preds = %bb.aa, %ZSTD_compressSubBlock_sequences.exit.thread
  %.2.i7694 = phi i64 [ %i.dy, %ZSTD_compressSubBlock_sequences.exit.thread ], [ 1, %bb.aa ]
  %i.eb = add nuw nsw i64 %.1.i, 3
  %i.ec = add nuw nsw i64 %i.eb, %.2.i7694        ; 2 uses
  %.tr = trunc i64 %i.ec to i32
  %i.ed = shl i32 %.tr, 3
  %i.ee = add i32 %17, -20
  %i.ef = add i32 %i.ee, %i.ed                    ; 2 uses
  %i.eg = trunc i32 %i.ef to i16
  store i16 %i.eg, ptr %10, align 1, !tbaa !24
  %i.eh = lshr i32 %i.ef, 16
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !19
  br label %.thread69

.thread69:                                        ; preds = %bb.v, %bb.ab, %.thread10.i, %bb.ae, %bb.ad, %ZSTD_compressSubBlock_sequences.exit.thread, %ZSTD_compressSubBlock_sequences.exit, %bb.l, %20, %ZSTD_compressSubBlock_literal.exit, %ZSTD_compressSubBlock_sequences.exit.thread.thread91
  %.4 = phi i64 [ %i.ec, %ZSTD_compressSubBlock_sequences.exit.thread.thread91 ], [ 0, %bb.l ], [ %.1.i, %ZSTD_compressSubBlock_literal.exit ], [ 0, %20 ], [ 0, %bb.ae ], [ 0, %ZSTD_compressSubBlock_sequences.exit.thread ], [ %i.dy, %ZSTD_compressSubBlock_sequences.exit ], [ 0, %bb.ad ], [ -70, %bb.v ], [ %i.cp, %bb.ab ], [ %i.dl, %.thread10.i ]
  ret i64 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @HUF_estimateCompressedSize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @HIST_countFast_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ZSTD_crossEntropyCost(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @ZSTD_fseBitCost(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @ZSTD_noCompressLiterals(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ZSTD_compressRleLiteralsBlock(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @HUF_compress1X_usingCTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @HUF_compress4X_usingCTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @ZSTD_encodeSequences(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24}
!9 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!10 = !{!"long", !4, i64 0}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!"ZSTD_CCtx_params_s", !5, i64 0, !8, i64 4, !9, i64 32, !5, i64 44, !5, i64 48, !10, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !10, i64 80, !5, i64 88, !5, i64 92, !11, i64 96, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !10, i64 152, !5, i64 160, !5, i64 164, !13, i64 168, !5, i64 192, !5, i64 196, !12, i64 200, !12, i64 208, !5, i64 216}
!15 = !{!"", !5, i64 0, !4, i64 4, !10, i64 136}
!16 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !4, i64 12, !10, i64 152, !10, i64 160}
!17 = !{!5, !5, i64 0}
!18 = !{!16, !5, i64 4}
!19 = !{!4, !4, i64 0}
!20 = !{!16, !5, i64 0}
!21 = !{!16, !5, i64 8}
!22 = !{!16, !10, i64 152}
!23 = !{!"short", !4, i64 0}
!24 = !{!23, !23, i64 0}
!25 = distinct !{!25, !69}
!26 = distinct !{!26, !69}
!27 = distinct !{!27, !69}
!28 = distinct !{!28, !69}
!29 = distinct !{!29, !69}
!30 = distinct !{!30, !69}
!31 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !4, i64 56, !5, i64 60, !5, i64 64, !5, i64 68}
!32 = !{!"long long", !4, i64 0}
!33 = !{!"XXH64_state_s", !10, i64 0, !4, i64 8, !4, i64 40, !5, i64 72, !5, i64 76, !10, i64 80}
!34 = !{!"p1 _ZTS10POOL_ctx_s", !12, i64 0}
!35 = !{!"", !5, i64 0, !12, i64 8, !10, i64 16, !10, i64 24}
!36 = !{!"p1 _ZTS8SeqDef_s", !12, i64 0}
!37 = !{!"p1 omnipotent char", !12, i64 0}
!38 = !{!"", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !10, i64 56, !10, i64 64, !5, i64 72, !5, i64 76}
!39 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!40 = !{!"", !39, i64 0, !12, i64 40, !5, i64 48, !37, i64 56, !4, i64 64, !4, i64 576}
!41 = !{!"", !12, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!42 = !{!"p1 int", !12, i64 0}
!43 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !12, i64 32, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !12, i64 88, !5, i64 96}
!44 = !{!"p1 _ZTS17ZSTD_MatchState_t", !12, i64 0}
!45 = !{!"ZSTD_MatchState_t", !39, i64 0, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !37, i64 56, !4, i64 64, !10, i64 96, !5, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !5, i64 136, !5, i64 140, !43, i64 144, !44, i64 248, !8, i64 256, !12, i64 288, !5, i64 296, !5, i64 300}
!46 = !{!"", !12, i64 0, !12, i64 8, !45, i64 16}
!47 = !{!"ZSTD_inBuffer_s", !12, i64 0, !10, i64 8, !10, i64 16}
!48 = !{!"p1 _ZTS12ZSTD_CDict_s", !12, i64 0}
!49 = !{!"", !12, i64 0, !12, i64 8, !10, i64 16, !5, i64 24, !48, i64 32}
!50 = !{!"ZSTD_prefixDict_s", !12, i64 0, !10, i64 8, !5, i64 16}
!51 = !{!"p1 _ZTS13ZSTDMT_CCtx_s", !12, i64 0}
!52 = !{!"", !15, i64 0, !16, i64 144}
!53 = !{!"", !38, i64 0, !38, i64 80, !38, i64 160, !38, i64 240, !38, i64 320, !4, i64 400, !52, i64 1184}
!54 = !{!"ZSTD_CCtx_s", !5, i64 0, !5, i64 4, !5, i64 8, !14, i64 16, !14, i64 240, !14, i64 464, !5, i64 688, !10, i64 696, !31, i64 704, !10, i64 776, !32, i64 784, !32, i64 792, !32, i64 800, !33, i64 808, !13, i64 896, !34, i64 920, !10, i64 928, !35, i64 936, !5, i64 968, !5, i64 972, !38, i64 976, !40, i64 1056, !12, i64 3168, !10, i64 3176, !41, i64 3184, !46, i64 3224, !12, i64 3544, !10, i64 3552, !5, i64 3560, !37, i64 3568, !10, i64 3576, !10, i64 3584, !10, i64 3592, !10, i64 3600, !37, i64 3608, !10, i64 3616, !10, i64 3624, !10, i64 3632, !5, i64 3640, !5, i64 3644, !47, i64 3648, !10, i64 3672, !10, i64 3680, !49, i64 3688, !48, i64 3728, !50, i64 3736, !51, i64 3760, !32, i64 3768, !53, i64 3776, !12, i64 5272, !10, i64 5280}
!55 = !{!54, !12, i64 3224}
!56 = !{!54, !12, i64 3232}
!57 = !{!54, !12, i64 3544}
!58 = !{!54, !10, i64 3552}
!59 = !{!54, !5, i64 8}
!60 = !{!38, !36, i64 0}
!61 = !{!38, !36, i64 8}
!62 = !{!38, !37, i64 16}
!63 = !{!38, !37, i64 24}
!64 = !{!38, !37, i64 32}
!65 = !{!38, !37, i64 40}
!66 = !{!38, !37, i64 48}
!67 = !{!14, !10, i64 56}
!68 = !{!52, !5, i64 0}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"SeqDef_s", !5, i64 0, !23, i64 4, !23, i64 6}
!71 = !{!70, !23, i64 4}
!72 = !{!70, !23, i64 6}
!73 = !{!38, !5, i64 76}
!74 = !{!38, !5, i64 72}
!75 = !{!70, !5, i64 0}
!76 = !{!15, !5, i64 0}
!77 = !{!15, !10, i64 136}
!78 = !{!14, !5, i64 4}
!79 = !{!16, !10, i64 160}
end_hunk_0
