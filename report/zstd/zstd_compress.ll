Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_compress?download=true
inline.NumInlined: 848
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ZSTD_compressContinue_internal:bb.a
  %i.nv = tail call fastcc i64 @ZSTD_compressBlock_internal(ptr noundef nonnull %0, ptr noundef nonnull %i.nt, i64 noundef %i.nu, ptr noundef %.0129187.i, i64 noundef %.0.i.i, i32 noundef 1) ; 5 uses
  %i.nw = icmp ult i64 %i.nv, -119
  br i1 %i.nw, label %bb.ci, label %ZSTD_compress_frameChunk.exit.thread

bb.ci:                                            ; preds = %bb.ch
  switch i64 %i.nv, label %bb.cl [
    i64 0, label %bb.cj
    i64 1, label %bb.ck
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.nx = add i64 %.0.i.i, 3                      ; 4 uses
  %i.ny = icmp ugt i64 %i.nx, %.0141183.i
  br i1 %i.ny, label %ZSTD_compress_frameChunk.exit.thread, label %ZSTD_noCompressBlock.exit.i

ZSTD_noCompressBlock.exit.i:                      ; preds = %bb.cj
  %.tr.i.i = trunc i64 %.0.i.i to i32
  %i.nz = shl i32 %.tr.i.i, 3                     ; 2 uses
  %i.oa = or disjoint i32 %i.nz, %i.es
  %i.ob = trunc i32 %i.oa to i16
  store i16 %i.ob, ptr %.0126188.i, align 1, !tbaa !203
  %i.oc = lshr i32 %i.nz, 16
  %i.od = trunc i32 %i.oc to i8
  %i.oe = getelementptr inbounds nuw i8, ptr %.0126188.i, i64 2
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !181
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nt, ptr readonly align 1 %.0129187.i, i64 %.0.i.i, i1 false)
  %i.of = icmp ult i64 %i.nx, -119
  br i1 %i.of, label %ZSTD_compressBlock_targetCBlockSize.exit.i, label %ZSTD_compress_frameChunk.exit.thread

bb.ck:                                            ; preds = %bb.ci
  %.tr152.i = trunc i64 %.0.i.i to i32
  %i.og = shl i32 %.tr152.i, 3
  %i.oh = or disjoint i32 %i.es, %i.og
  %i.oi = or disjoint i32 %i.oh, 2
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ci
  %.tr.i = trunc i64 %i.nv to i32
  %i.oj = shl i32 %.tr.i, 3
  %i.ok = or disjoint i32 %i.oj, %i.es
  %i.ol = or disjoint i32 %i.ok, 4
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.om = phi i32 [ %i.oi, %bb.ck ], [ %i.ol, %bb.cl ] ; 2 uses
  %i.on = trunc i32 %i.om to i16
  store i16 %i.on, ptr %.0126188.i, align 1, !tbaa !203
  %i.oo = lshr i32 %i.om, 16
  %i.op = trunc i32 %i.oo to i8
  %i.oq = getelementptr inbounds nuw i8, ptr %.0126188.i, i64 2
  store i8 %i.op, ptr %i.oq, align 1, !tbaa !181
  %i.or = add nuw i64 %i.nv, 3
  br label %ZSTD_compressBlock_targetCBlockSize.exit.i

ZSTD_compressBlock_targetCBlockSize.exit.i:       ; preds = %bb.cm, %ZSTD_noCompressBlock.exit.i, %ZSTD_compressBlock_splitBlock.exit.i, %bb.av, %ZSTD_compressBlock_targetCBlockSize_body.exit.thread.i.i
  %.0.i90 = phi i64 [ %i.or, %bb.cm ], [ %.4.i.i, %ZSTD_compressBlock_splitBlock.exit.i ], [ %i.nx, %ZSTD_noCompressBlock.exit.i ], [ %.4.i28.i.i, %ZSTD_compressBlock_targetCBlockSize_body.exit.thread.i.i ], [ %.4.i28.i.i, %bb.av ] ; 3 uses
  %i.os = add i64 %.0.i.i, %.0123191.i
  %i.ot = sub i64 %i.os, %.0.i90
  %i.ou = sub i64 %.0132186.i, %.0.i.i            ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.0126188.i, i64 %.0.i90 ; 3 uses
  %i.ow = sub i64 %.0141183.i, %.0.i90
  store i32 0, ptr %i.dm, align 8, !tbaa !216
  %.not147.i = icmp eq i64 %i.ou, 0
  br i1 %.not147.i, label %bb.cn, label %bb.u, !llvm.loop !348

bb.cn:                                            ; preds = %ZSTD_compressBlock_targetCBlockSize.exit.i
  %.not148.i = icmp ne i32 %6, 0
  %i.ox = icmp ugt ptr %i.ov, %.068
  %or.cond.i91 = select i1 %.not148.i, i1 %i.ox, i1 false
  br i1 %or.cond.i91, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i32 3, ptr %0, align 8, !tbaa !158
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.oy = ptrtoint ptr %i.ov to i64
  %i.oz = ptrtoint ptr %.068 to i64
  %i.pa = sub i64 %i.oy, %i.oz
  br label %ZSTD_compress_frameChunk.exit

ZSTD_compress_frameChunk.exit:                    ; preds = %bb.cp, %bb.r
  %i.pb = phi i64 [ %i.ck, %bb.r ], [ %i.pa, %bb.cp ] ; 3 uses
  %i.pc = icmp ult i64 %i.pb, -119
  br i1 %i.pc, label %bb.cq, label %ZSTD_compress_frameChunk.exit.thread

bb.cq:                                            ; preds = %ZSTD_compress_frameChunk.exit
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !152
  %i.pf = add i64 %i.pe, %4                       ; 2 uses
  store i64 %i.pf, ptr %i.pd, align 8, !tbaa !152
  %i.pg = add nuw i64 %i.pb, %.065                ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !153
  %i.pj = add i64 %i.pi, %i.pg
  store i64 %i.pj, ptr %i.ph, align 8, !tbaa !153
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !134 ; 2 uses
  %.not77 = icmp ne i64 %i.pl, 0
  %i.pm = add i64 %i.pf, 1
  %i.pn = icmp ugt i64 %i.pm, %i.pl
  %or.cond95 = select i1 %.not77, i1 %i.pn, i1 false
  %spec.select = select i1 %or.cond95, i64 -72, i64 %i.pg
  br label %ZSTD_compress_frameChunk.exit.thread

ZSTD_compress_frameChunk.exit.thread:             ; preds = %ZSTD_optimalBlockSize.exit.i, %bb.al, %bb.ch, %ZSTD_noCompressBlock.exit.i, %ZSTD_compressBlock_splitBlock.exit.i, %bb.cj, %bb.as, %.critedge.thread.i.i.i, %ZSTD_compressBlock_targetCBlockSize_body.exit.i.i, %bb.bc, %bb.bb, %bb.ax, %bb.cq, %ZSTD_compress_frameChunk.exit, %bb.e, %bb.a, %bb.c
  %.4 = phi i64 [ %i.k, %bb.c ], [ %.065, %bb.e ], [ -60, %bb.a ], [ %i.pb, %ZSTD_compress_frameChunk.exit ], [ %spec.select, %bb.cq ], [ %i.hs, %bb.ax ], [ -106, %bb.bb ], [ -70, %bb.bc ], [ %i.he, %ZSTD_compressBlock_targetCBlockSize_body.exit.i.i ], [ -70, %.critedge.thread.i.i.i ], [ %i.gs, %bb.as ], [ -70, %bb.cj ], [ %.4.i.i, %ZSTD_compressBlock_splitBlock.exit.i ], [ %i.nx, %ZSTD_noCompressBlock.exit.i ], [ %i.nv, %bb.ch ], [ %i.fs, %bb.al ], [ -70, %ZSTD_optimalBlockSize.exit.i ]
  ret i64 %.4
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 0, -9223372036854775807) i64 @ZSTD_getBlockSize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 244
  %.val = load i32, ptr %i.a, align 4, !tbaa !64
  %i.b = getelementptr i8, ptr %0, i64 392
  %.val1 = load i64, ptr %i.b, align 8, !tbaa !161
  %i.c = zext nneg i32 %.val to i64
  %i.d = shl nuw i64 1, %i.c
  %..i = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %.val1, i64 %i.d)
  ret i64 %..i
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressBlock_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 244
  %.val = load i32, ptr %i.a, align 4, !tbaa !64
  %i.b = getelementptr i8, ptr %0, i64 392
  %.val10 = load i64, ptr %i.b, align 8, !tbaa !161
  %i.c = zext nneg i32 %.val to i64
  %i.d = shl nuw i64 1, %i.c
  %..i = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %.val10, i64 %i.d)
  %.not = icmp ugt i64 %4, %..i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i64 [ %i.e, %bb.b ], [ -72, %bb.a ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 244
  %.val.i = load i32, ptr %i.a, align 4, !tbaa !64
  %i.b = getelementptr i8, ptr %0, i64 392
  %.val10.i = load i64, ptr %i.b, align 8, !tbaa !161
  %i.c = zext nneg i32 %.val.i to i64
  %i.d = shl nuw i64 1, %i.c
  %..i.i = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %.val10.i, i64 %i.d)
  %.not.i = icmp ugt i64 %4, %..i.i
  br i1 %.not.i, label %ZSTD_compressBlock_deprecated.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %ZSTD_compressBlock_deprecated.exit

ZSTD_compressBlock_deprecated.exit:               ; preds = %bb.a, %bb.b
  %.1.i = phi i64 [ %i.e, %bb.b ], [ -72, %bb.a ]
  ret i64 %.1.i
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_loadCEntropy(ptr noundef initializes((2056, 2060)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i16], align 16              ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca [53 x i16], align 16              ; 8 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca [36 x i16], align 16              ; 7 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 31, ptr %i.b, align 4, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 2 uses
  store i32 1, ptr %i.n, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 255, ptr %i.c, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 1, ptr %i.d, align 4, !tbaa !64
  %i.o = ptrtoint ptr %i.l to i64                 ; 2 uses
  %gepdiff = add i64 %3, -8                       ; 3 uses
  %i.p = call i64 @HUF_readCTable(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.m, i64 noundef %gepdiff, ptr noundef nonnull %i.d) #26 ; 4 uses
  %i.q = load i32, ptr %i.d, align 4, !tbaa !64
  %i.r = icmp eq i32 %i.q, 0
  %i.s = load i32, ptr %i.c, align 4
  %i.t = icmp eq i32 %i.s, 255
  %or.cond = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.n, align 8, !tbaa !154
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.u = icmp ult i64 %i.p, -119
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br i1 %i.u, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %gepdiff125 = sub i64 %gepdiff, %i.p
  %i.w = call i64 @FSE_readNCount(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.v, i64 noundef %gepdiff125) #26 ; 3 uses
  %i.x = icmp ult i64 %i.w, -119
  br i1 %i.x, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.z = icmp ugt i32 %i.y, 8
  br i1 %i.z, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.ab = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.a, i32 noundef 31, i32 noundef %i.y, ptr noundef %1, i64 noundef 8704) #26
  %i.ac = icmp ult i64 %i.ab, -119
  br i1 %i.ac, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i32 52, ptr %i.g, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %4 = add i64 %i.p, %i.w
  %gepdiff126 = sub i64 %gepdiff, %4
  %i.ae = call i64 @FSE_readNCount(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ad, i64 noundef %gepdiff126) #26 ; 2 uses
  %i.af = icmp ult i64 %i.ae, -119
  br i1 %i.af, label %bb.h, label %.critedge102

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr %i.h, align 4, !tbaa !64  ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, 9
  br i1 %i.ah, label %.critedge102, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %i.aj = load i32, ptr %i.g, align 4, !tbaa !64
  %i.ak = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.f, i32 noundef %i.aj, i32 noundef %i.ag, ptr noundef %1, i64 noundef 8704) #26
  %i.al = icmp ult i64 %i.ak, -119
  br i1 %i.al, label %ZSTD_dictNCountRepeat.exit, label %.critedge102

ZSTD_dictNCountRepeat.exit:                       ; preds = %bb.i
  %i.am = load i32, ptr %i.g, align 4, !tbaa !64
  %i.an = icmp ult i32 %i.am, 52
  %i.ao = load <48 x i16>, ptr %i.f, align 16
  %.fr = freeze <48 x i16> %i.ao
  %i.ap = icmp eq <48 x i16> %.fr, zeroinitializer ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.ar = load <4 x i16>, ptr %i.aq, align 16
  %.fr409 = freeze <4 x i16> %i.ar
  %i.as = icmp eq <4 x i16> %.fr409, zeroinitializer
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.au = load i16, ptr %i.at, align 8
  %i.av = icmp eq i16 %i.au, 0
  %i.aw = shufflevector <48 x i1> %i.ap, <48 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op406 = or <4 x i1> %i.aw, %i.as
  %i.ax = shufflevector <4 x i1> %rdx.op406, <4 x i1> poison, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ay = shufflevector <48 x i1> %i.ax, <48 x i1> %i.ap, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95>
  %i.az = bitcast <48 x i1> %i.ay to i48
  %i.ba = icmp ne i48 %i.az, 0
  %i.bb = select i1 %i.an, i1 true, i1 %i.ba
  %op.rdx408 = select i1 %i.bb, i1 true, i1 %i.av
  %.07.i = select i1 %op.rdx408, i32 1, i32 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 %.07.i, ptr %i.bc, align 8, !tbaa !156
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  store i32 35, ptr %i.j, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.o, %i.be
  %i.bg = call i64 @FSE_readNCount(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.bd, i64 noundef %i.bf) #26 ; 2 uses
  %i.bh = icmp ult i64 %i.bg, -119
  br i1 %i.bh, label %bb.j, label %.critedge104

bb.j:                                             ; preds = %ZSTD_dictNCountRepeat.exit
  %i.bi = load i32, ptr %i.k, align 4, !tbaa !64  ; 2 uses
  %i.bj = icmp ugt i32 %i.bi, 9
  br i1 %i.bj, label %.critedge104, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4288
  %i.bl = load i32, ptr %i.j, align 4, !tbaa !64
  %i.bm = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.i, i32 noundef %i.bl, i32 noundef %i.bi, ptr noundef %1, i64 noundef 8704) #26
  %i.bn = icmp ult i64 %i.bm, -119
  br i1 %i.bn, label %ZSTD_dictNCountRepeat.exit117, label %.critedge104

ZSTD_dictNCountRepeat.exit117:                    ; preds = %bb.k
  %i.bo = load i32, ptr %i.j, align 4, !tbaa !64
  %i.bp = icmp ult i32 %i.bo, 35
  %i.bq = load <32 x i16>, ptr %i.i, align 16
  %.fr410 = freeze <32 x i16> %i.bq
  %i.br = icmp eq <32 x i16> %.fr410, zeroinitializer ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bt = load <4 x i16>, ptr %i.bs, align 16
  %.fr411 = freeze <4 x i16> %i.bt
  %i.bu = icmp eq <4 x i16> %.fr411, zeroinitializer
  %i.bv = shufflevector <32 x i1> %i.br, <32 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.bv, %i.bu
  %i.bw = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bx = shufflevector <32 x i1> %i.bw, <32 x i1> %i.br, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.by = bitcast <32 x i1> %i.bx to i32
  %i.bz = icmp ne i32 %i.by, 0
  %op.rdx = select i1 %i.bp, i1 true, i1 %i.bz
  %.07.i116 = select i1 %op.rdx, i32 1, i32 2
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 %.07.i116, ptr %i.ca, align 4, !tbaa !157
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bg ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12 ; 2 uses
  %i.cd = icmp ugt ptr %i.cc, %i.l
  br i1 %i.cd, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %ZSTD_dictNCountRepeat.exit117
  %.val110 = load i32, ptr %i.cb, align 1, !tbaa !64 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 5616
  store i32 %.val110, ptr %i.ce, align 8, !tbaa !64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %.val109 = load i32, ptr %i.cf, align 1, !tbaa !64 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 5620
  store i32 %.val109, ptr %i.cg, align 4, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.val = load i32, ptr %i.ch, align 1, !tbaa !64 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 5624
  store i32 %.val, ptr %i.ci, align 8, !tbaa !64
  %i.cj = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ck = sub i64 %i.o, %i.cj                     ; 5 uses
  %i.cl = icmp ult i64 %i.ck, 4294836224
  %i.cm = trunc nuw i64 %i.ck to i32
  %i.cn = add nuw i32 %i.cm, 131072
  %i.co = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cn, i1 true)
  %i.cp = xor i32 %i.co, 31
  %.078 = select i1 %i.cl, i32 %i.cp, i32 31      ; 3 uses
  %i.cq = load i32, ptr %i.b, align 4, !tbaa !64
  %i.cr = icmp ult i32 %i.cq, %.078
  br i1 %i.cr, label %ZSTD_dictNCountRepeat.exit124, label %.preheader.preheader.i118

.preheader.preheader.i118:                        ; preds = %bb.l
  %i.cs = add nuw nsw i32 %.078, 1
  %wide.trip.count.i = zext nneg i32 %i.cs to i64 ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.078, 7
  br i1 %min.iters.check, label %.preheader.i119.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i118
  %n.vec = and i64 %wide.trip.count.i, 56         ; 5 uses
  %wide.load = load <8 x i16>, ptr %i.a, align 16, !tbaa !203
  %wide.load.fr = freeze <8 x i16> %wide.load
  %i.ct = icmp eq <8 x i16> %wide.load.fr, zeroinitializer
  %i.cu = bitcast <8 x i1> %i.ct to i8
  %.not = icmp eq i8 %i.cu, 0
  br i1 %.not, label %vector.body.interim, label %ZSTD_dictNCountRepeat.exit124

vector.body.interim:                              ; preds = %vector.ph
  %i.cv = icmp eq i64 %n.vec, 8
  br i1 %i.cv, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.interim
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load.1 = load <8 x i16>, ptr %i.cw, align 16, !tbaa !203
  %wide.load.fr.1 = freeze <8 x i16> %wide.load.1
  %i.cx = icmp eq <8 x i16> %wide.load.fr.1, zeroinitializer
  %i.cy = bitcast <8 x i1> %i.cx to i8
  %.not.1 = icmp eq i8 %i.cy, 0
  br i1 %.not.1, label %vector.body.interim.1, label %ZSTD_dictNCountRepeat.exit124

vector.body.interim.1:                            ; preds = %vector.body.1
  %i.cz = icmp eq i64 %n.vec, 16
  br i1 %i.cz, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.interim.1
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %wide.load.2 = load <8 x i16>, ptr %i.da, align 16, !tbaa !203
  %wide.load.fr.2 = freeze <8 x i16> %wide.load.2
  %i.db = icmp eq <8 x i16> %wide.load.fr.2, zeroinitializer
  %i.dc = bitcast <8 x i1> %i.db to i8
  %.not.2 = icmp eq i8 %i.dc, 0
  br i1 %.not.2, label %vector.body.interim.2, label %ZSTD_dictNCountRepeat.exit124

vector.body.interim.2:                            ; preds = %vector.body.2
  %i.dd = icmp eq i64 %n.vec, 24
  br i1 %i.dd, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.interim.2
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %wide.load.3 = load <8 x i16>, ptr %i.de, align 16, !tbaa !203
  %wide.load.fr.3 = freeze <8 x i16> %wide.load.3
  %i.df = icmp eq <8 x i16> %wide.load.fr.3, zeroinitializer
  %i.dg = bitcast <8 x i1> %i.df to i8
  %.not.3 = icmp eq i8 %i.dg, 0
  br i1 %.not.3, label %middle.block, label %ZSTD_dictNCountRepeat.exit124

middle.block:                                     ; preds = %vector.body.3, %vector.body.interim.2, %vector.body.interim.1, %vector.body.interim
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %ZSTD_dictNCountRepeat.exit124, label %.preheader.i119.preheader

.preheader.i119.preheader:                        ; preds = %.preheader.preheader.i118, %middle.block
  %indvars.iv.i120.ph = phi i64 [ 0, %.preheader.preheader.i118 ], [ %n.vec, %middle.block ]
  br label %.preheader.i119

bb.m:                                             ; preds = %.preheader.i119
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %exitcond.not.i122 = icmp eq i64 %indvars.iv.next.i121, %wide.trip.count.i
  br i1 %exitcond.not.i122, label %ZSTD_dictNCountRepeat.exit124, label %.preheader.i119, !llvm.loop !351

.preheader.i119:                                  ; preds = %.preheader.i119.preheader, %bb.m
  %indvars.iv.i120 = phi i64 [ %indvars.iv.next.i121, %bb.m ], [ %indvars.iv.i120.ph, %.preheader.i119.preheader ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i120
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !203
  %i.dj = icmp eq i16 %i.di, 0
  br i1 %i.dj, label %ZSTD_dictNCountRepeat.exit124, label %bb.m

ZSTD_dictNCountRepeat.exit124:                    ; preds = %vector.ph, %vector.body.1, %vector.body.2, %vector.body.3, %bb.m, %.preheader.i119, %middle.block, %bb.l
  %.07.i123 = phi i32 [ 1, %bb.l ], [ 2, %middle.block ], [ 1, %.preheader.i119 ], [ 2, %bb.m ], [ 1, %vector.body.3 ], [ 1, %vector.body.2 ], [ 1, %vector.body.1 ], [ 1, %vector.ph ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 %.07.i123, ptr %i.dk, align 4, !tbaa !155
  %i.dl = icmp eq i32 %.val110, 0
  %i.dm = zext i32 %.val110 to i64
  %i.dn = icmp ult i64 %i.ck, %i.dm
  %or.cond108 = or i1 %i.dl, %i.dn
end_hunk_0
