Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zstd_compress?download=true
inline.NumInlined: 798
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN11duckdb_zstdL30ZSTD_compressContinue_internalEPNS_11ZSTD_CCtx_sEPvmPKvmjj:bb.a
  %i.nz = phi i64 [ %i.ck, %bb.r ], [ %i.ny, %bb.ci ] ; 3 uses
  %i.oa = icmp ult i64 %i.nz, -119
  br i1 %i.oa, label %bb.cj, label %_ZN11duckdb_zstdL24ZSTD_compress_frameChunkEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.thread

bb.cj:                                            ; preds = %_ZN11duckdb_zstdL24ZSTD_compress_frameChunkEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !162
  %i.od = add i64 %i.oc, %4                       ; 2 uses
  store i64 %i.od, ptr %i.ob, align 8, !tbaa !162
  %i.oe = add nuw i64 %i.nz, %.065                ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.og = load i64, ptr %i.of, align 8, !tbaa !163
  %i.oh = add i64 %i.og, %i.oe
  store i64 %i.oh, ptr %i.of, align 8, !tbaa !163
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !147 ; 2 uses
  %.not77 = icmp ne i64 %i.oj, 0
  %i.ok = add i64 %i.od, 1
  %i.ol = icmp ugt i64 %i.ok, %i.oj
  %or.cond95 = select i1 %.not77, i1 %i.ol, i1 false
  %spec.select = select i1 %or.cond95, i64 -72, i64 %i.oe
  br label %_ZN11duckdb_zstdL24ZSTD_compress_frameChunkEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.thread

_ZN11duckdb_zstdL24ZSTD_compress_frameChunkEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.thread: ; preds = %bb.u, %bb.af, %bb.cb, %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.i, %_ZN11duckdb_zstdL29ZSTD_compressBlock_splitBlockEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.i, %bb.cd, %bb.am, %.critedge.thread.i.i.i, %_ZN11duckdb_zstdL40ZSTD_compressBlock_targetCBlockSize_bodyEPNS_11ZSTD_CCtx_sEPvmPKvmmj.exit.i.i, %bb.aw, %bb.av, %bb.ar, %bb.cj, %_ZN11duckdb_zstdL24ZSTD_compress_frameChunkEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit, %bb.e, %bb.a, %bb.c
  %.4 = phi i64 [ %i.k, %bb.c ], [ %.065, %bb.e ], [ -60, %bb.a ], [ %i.nz, %_ZN11duckdb_zstdL24ZSTD_compress_frameChunkEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit ], [ %spec.select, %bb.cj ], [ %i.gw, %bb.ar ], [ -106, %bb.av ], [ -70, %bb.aw ], [ %i.gi, %_ZN11duckdb_zstdL40ZSTD_compressBlock_targetCBlockSize_bodyEPNS_11ZSTD_CCtx_sEPvmPKvmmj.exit.i.i ], [ -70, %.critedge.thread.i.i.i ], [ %i.fw, %bb.am ], [ -70, %bb.cd ], [ %.4.i.i, %_ZN11duckdb_zstdL29ZSTD_compressBlock_splitBlockEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.i ], [ %i.nb, %_ZN11duckdb_zstdL20ZSTD_noCompressBlockEPvmPKvmj.exit.i ], [ %i.mz, %bb.cb ], [ %i.ew, %bb.af ], [ -70, %bb.u ]
  ret i64 %.4
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd21ZSTD_compressContinueEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL30ZSTD_compressContinue_internalEPNS_11ZSTD_CCtx_sEPvmPKvmjj(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 0, -9223372036854775807) i64 @_ZN11duckdb_zstd17ZSTD_getBlockSizeEPKNS_11ZSTD_CCtx_sE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 236
  %.val = load i32, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr i8, ptr %0, i64 432
  %.val1 = load i64, ptr %i.b, align 8, !tbaa !170
  %i.c = zext nneg i32 %.val to i64
  %i.d = shl nuw i64 1, %i.c
  %..i = tail call noundef range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %.val1, i64 %i.d)
  ret i64 %..i
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd29ZSTD_compressBlock_deprecatedEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 236
  %.val = load i32, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr i8, ptr %0, i64 432
  %.val10 = load i64, ptr %i.b, align 8, !tbaa !170
  %i.c = zext nneg i32 %.val to i64
  %i.d = shl nuw i64 1, %i.c
  %..i = tail call noundef range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %.val10, i64 %i.d)
  %.not = icmp ugt i64 %4, %..i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i64 @_ZN11duckdb_zstdL30ZSTD_compressContinue_internalEPNS_11ZSTD_CCtx_sEPvmPKvmjj(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i64 [ %i.e, %bb.b ], [ -72, %bb.a ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd18ZSTD_compressBlockEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 236
  %.val.i = load i32, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr i8, ptr %0, i64 432
  %.val10.i = load i64, ptr %i.b, align 8, !tbaa !170
  %i.c = zext nneg i32 %.val.i to i64
  %i.d = shl nuw i64 1, %i.c
  %..i.i = tail call noundef range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %.val10.i, i64 %i.d)
  %.not.i = icmp ugt i64 %4, %..i.i
  br i1 %.not.i, label %_ZN11duckdb_zstd29ZSTD_compressBlock_deprecatedEPNS_11ZSTD_CCtx_sEPvmPKvm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i64 @_ZN11duckdb_zstdL30ZSTD_compressContinue_internalEPNS_11ZSTD_CCtx_sEPvmPKvmjj(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %_ZN11duckdb_zstd29ZSTD_compressBlock_deprecatedEPNS_11ZSTD_CCtx_sEPvmPKvm.exit

_ZN11duckdb_zstd29ZSTD_compressBlock_deprecatedEPNS_11ZSTD_CCtx_sEPvmPKvm.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi i64 [ %i.e, %bb.b ], [ -72, %bb.a ]
  ret i64 %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd17ZSTD_loadCEntropyEPNS_27ZSTD_compressedBlockState_tEPvPKvm(ptr noundef initializes((2056, 2060)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
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
  store i32 31, ptr %i.b, align 4, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 2 uses
  store i32 1, ptr %i.n, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 255, ptr %i.c, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 1, ptr %i.d, align 4, !tbaa !17
  %i.o = ptrtoint ptr %i.l to i64                 ; 2 uses
  %gepdiff = add i64 %3, -8                       ; 3 uses
  %i.p = call noundef i64 @_ZN11duckdb_zstd14HUF_readCTableEPmPjPKvmS1_(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.m, i64 noundef %gepdiff, ptr noundef nonnull %i.d) ; 4 uses
  %i.q = load i32, ptr %i.d, align 4, !tbaa !17
  %i.r = icmp eq i32 %i.q, 0
  %i.s = load i32, ptr %i.c, align 4
  %i.t = icmp eq i32 %i.s, 255
  %or.cond = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.n, align 8, !tbaa !164
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
  %i.w = call noundef i64 @_ZN11duckdb_zstd14FSE_readNCountEPsPjS1_PKvm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.v, i64 noundef %gepdiff125) ; 3 uses
  %i.x = icmp ult i64 %i.w, -119
  br i1 %i.x, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.e, align 4, !tbaa !17   ; 2 uses
  %i.z = icmp ugt i32 %i.y, 8
  br i1 %i.z, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.ab = call noundef i64 @_ZN11duckdb_zstd20FSE_buildCTable_wkspEPjPKsjjPvm(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.a, i32 noundef 31, i32 noundef %i.y, ptr noundef %1, i64 noundef 8704)
  %i.ac = icmp ult i64 %i.ab, -119
  br i1 %i.ac, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i32 52, ptr %i.g, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.ae = add i64 %i.p, %i.w
  %gepdiff126 = sub i64 %gepdiff, %i.ae
  %i.af = call noundef i64 @_ZN11duckdb_zstd14FSE_readNCountEPsPjS1_PKvm(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ad, i64 noundef %gepdiff126) ; 2 uses
  %i.ag = icmp ult i64 %i.af, -119
  br i1 %i.ag, label %bb.h, label %.critedge102

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.h, align 4, !tbaa !17  ; 2 uses
  %i.ai = icmp ugt i32 %i.ah, 9
  br i1 %i.ai, label %.critedge102, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !17
  %i.al = call noundef i64 @_ZN11duckdb_zstd20FSE_buildCTable_wkspEPjPKsjjPvm(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.f, i32 noundef %i.ak, i32 noundef %i.ah, ptr noundef %1, i64 noundef 8704)
  %i.am = icmp ult i64 %i.al, -119
  br i1 %i.am, label %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit, label %.critedge102

_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit: ; preds = %bb.i
  %i.an = load i32, ptr %i.g, align 4, !tbaa !17
  %i.ao = icmp ult i32 %i.an, 52
  %i.ap = load <48 x i16>, ptr %i.f, align 16
  %.fr = freeze <48 x i16> %i.ap
  %i.aq = icmp eq <48 x i16> %.fr, zeroinitializer ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.as = load <4 x i16>, ptr %i.ar, align 16
  %.fr409 = freeze <4 x i16> %i.as
  %i.at = icmp eq <4 x i16> %.fr409, zeroinitializer
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.av = load i16, ptr %i.au, align 8
  %i.aw = icmp eq i16 %i.av, 0
  %i.ax = shufflevector <48 x i1> %i.aq, <48 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op406 = or <4 x i1> %i.ax, %i.at
  %i.ay = shufflevector <4 x i1> %rdx.op406, <4 x i1> poison, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.az = shufflevector <48 x i1> %i.ay, <48 x i1> %i.aq, <48 x i32> <i32 0, i32 1, i32 2, i32 3, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95>
  %i.ba = bitcast <48 x i1> %i.az to i48
  %i.bb = icmp ne i48 %i.ba, 0
  %i.bc = select i1 %i.ao, i1 true, i1 %i.bb
  %op.rdx408 = select i1 %i.bc, i1 true, i1 %i.aw
  %.07.i = select i1 %op.rdx408, i32 1, i32 2
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 %.07.i, ptr %i.bd, align 8, !tbaa !166
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  store i32 35, ptr %i.j, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.o, %i.bf
  %i.bh = call noundef i64 @_ZN11duckdb_zstd14FSE_readNCountEPsPjS1_PKvm(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.be, i64 noundef %i.bg) ; 2 uses
  %i.bi = icmp ult i64 %i.bh, -119
  br i1 %i.bi, label %bb.j, label %.critedge104

bb.j:                                             ; preds = %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit
  %i.bj = load i32, ptr %i.k, align 4, !tbaa !17  ; 2 uses
  %i.bk = icmp ugt i32 %i.bj, 9
  br i1 %i.bk, label %.critedge104, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4288
  %i.bm = load i32, ptr %i.j, align 4, !tbaa !17
  %i.bn = call noundef i64 @_ZN11duckdb_zstd20FSE_buildCTable_wkspEPjPKsjjPvm(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.i, i32 noundef %i.bm, i32 noundef %i.bj, ptr noundef %1, i64 noundef 8704)
  %i.bo = icmp ult i64 %i.bn, -119
  br i1 %i.bo, label %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit117, label %.critedge104

_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit117: ; preds = %bb.k
  %i.bp = load i32, ptr %i.j, align 4, !tbaa !17
  %i.bq = icmp ult i32 %i.bp, 35
  %i.br = load <32 x i16>, ptr %i.i, align 16
  %.fr410 = freeze <32 x i16> %i.br
  %i.bs = icmp eq <32 x i16> %.fr410, zeroinitializer ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bu = load <4 x i16>, ptr %i.bt, align 16
  %.fr411 = freeze <4 x i16> %i.bu
  %i.bv = icmp eq <4 x i16> %.fr411, zeroinitializer
  %i.bw = shufflevector <32 x i1> %i.bs, <32 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.bw, %i.bv
  %i.bx = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.by = shufflevector <32 x i1> %i.bx, <32 x i1> %i.bs, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bz = bitcast <32 x i1> %i.by to i32
  %i.ca = icmp ne i32 %i.bz, 0
  %op.rdx = select i1 %i.bq, i1 true, i1 %i.ca
  %.07.i116 = select i1 %op.rdx, i32 1, i32 2
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 %.07.i116, ptr %i.cb, align 4, !tbaa !167
  %i.cc = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12 ; 2 uses
  %i.ce = icmp ugt ptr %i.cd, %i.l
  br i1 %i.ce, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit117
  %.val110 = load i32, ptr %i.cc, align 1, !tbaa !17 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 5616
  store i32 %.val110, ptr %i.cf, align 8, !tbaa !17
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.val109 = load i32, ptr %i.cg, align 1, !tbaa !17 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 5620
  store i32 %.val109, ptr %i.ch, align 4, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.val = load i32, ptr %i.ci, align 1, !tbaa !17 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 5624
  store i32 %.val, ptr %i.cj, align 8, !tbaa !17
  %i.ck = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cl = sub i64 %i.o, %i.ck                     ; 5 uses
  %i.cm = icmp ult i64 %i.cl, 4294836224
  %i.cn = trunc nuw i64 %i.cl to i32
  %i.co = add nuw i32 %i.cn, 131072
  %i.cp = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.co, i1 true)
  %i.cq = xor i32 %i.cp, 31
  %.078 = select i1 %i.cm, i32 %i.cq, i32 31      ; 3 uses
  %i.cr = load i32, ptr %i.b, align 4, !tbaa !17
  %i.cs = icmp ult i32 %i.cr, %.078
  br i1 %i.cs, label %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124, label %.preheader.preheader.i118

.preheader.preheader.i118:                        ; preds = %bb.l
  %i.ct = add nuw nsw i32 %.078, 1
  %wide.trip.count.i = zext nneg i32 %i.ct to i64 ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.078, 7
  br i1 %min.iters.check, label %.preheader.i119.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i118
  %n.vec = and i64 %wide.trip.count.i, 56         ; 5 uses
  %wide.load = load <8 x i16>, ptr %i.a, align 16, !tbaa !213
  %wide.load.fr = freeze <8 x i16> %wide.load
  %i.cu = icmp eq <8 x i16> %wide.load.fr, zeroinitializer
  %i.cv = bitcast <8 x i1> %i.cu to i8
  %.not = icmp eq i8 %i.cv, 0
  br i1 %.not, label %vector.body.interim, label %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124

vector.body.interim:                              ; preds = %vector.ph
  %i.cw = icmp eq i64 %n.vec, 8
  br i1 %i.cw, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.interim
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load.1 = load <8 x i16>, ptr %i.cx, align 16, !tbaa !213
  %wide.load.fr.1 = freeze <8 x i16> %wide.load.1
  %i.cy = icmp eq <8 x i16> %wide.load.fr.1, zeroinitializer
  %i.cz = bitcast <8 x i1> %i.cy to i8
  %.not.1 = icmp eq i8 %i.cz, 0
  br i1 %.not.1, label %vector.body.interim.1, label %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124

vector.body.interim.1:                            ; preds = %vector.body.1
  %i.da = icmp eq i64 %n.vec, 16
  br i1 %i.da, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.interim.1
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %wide.load.2 = load <8 x i16>, ptr %i.db, align 16, !tbaa !213
  %wide.load.fr.2 = freeze <8 x i16> %wide.load.2
  %i.dc = icmp eq <8 x i16> %wide.load.fr.2, zeroinitializer
  %i.dd = bitcast <8 x i1> %i.dc to i8
  %.not.2 = icmp eq i8 %i.dd, 0
  br i1 %.not.2, label %vector.body.interim.2, label %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124

vector.body.interim.2:                            ; preds = %vector.body.2
  %i.de = icmp eq i64 %n.vec, 24
  br i1 %i.de, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.interim.2
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %wide.load.3 = load <8 x i16>, ptr %i.df, align 16, !tbaa !213
  %wide.load.fr.3 = freeze <8 x i16> %wide.load.3
  %i.dg = icmp eq <8 x i16> %wide.load.fr.3, zeroinitializer
  %i.dh = bitcast <8 x i1> %i.dg to i8
  %.not.3 = icmp eq i8 %i.dh, 0
  br i1 %.not.3, label %middle.block, label %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124

middle.block:                                     ; preds = %vector.body.3, %vector.body.interim.2, %vector.body.interim.1, %vector.body.interim
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124, label %.preheader.i119.preheader

.preheader.i119.preheader:                        ; preds = %.preheader.preheader.i118, %middle.block
  %indvars.iv.i120.ph = phi i64 [ 0, %.preheader.preheader.i118 ], [ %n.vec, %middle.block ]
  br label %.preheader.i119

bb.m:                                             ; preds = %.preheader.i119
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %exitcond.not.i122 = icmp eq i64 %indvars.iv.next.i121, %wide.trip.count.i
  br i1 %exitcond.not.i122, label %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124, label %.preheader.i119, !llvm.loop !357

.preheader.i119:                                  ; preds = %.preheader.i119.preheader, %bb.m
  %indvars.iv.i120 = phi i64 [ %indvars.iv.next.i121, %bb.m ], [ %indvars.iv.i120.ph, %.preheader.i119.preheader ] ; 2 uses
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i120
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !213
  %i.dk = icmp eq i16 %i.dj, 0
  br i1 %i.dk, label %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124, label %bb.m

_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124: ; preds = %vector.ph, %vector.body.1, %vector.body.2, %vector.body.3, %bb.m, %.preheader.i119, %middle.block, %bb.l
  %.07.i123 = phi i32 [ 1, %bb.l ], [ 2, %middle.block ], [ 1, %.preheader.i119 ], [ 2, %bb.m ], [ 1, %vector.body.3 ], [ 1, %vector.body.2 ], [ 1, %vector.body.1 ], [ 1, %vector.ph ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 %.07.i123, ptr %i.dl, align 4, !tbaa !165
  %i.dm = icmp eq i32 %.val110, 0
  %i.dn = zext i32 %.val110 to i64
  %i.do = icmp ult i64 %i.cl, %i.dn
  %or.cond108 = or i1 %i.dm, %i.do
  br i1 %or.cond108, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124
  %i.dp = icmp eq i32 %.val109, 0
  %i.dq = zext i32 %.val109 to i64
  %i.dr = icmp ult i64 %i.cl, %i.dq
  %or.cond108.1 = or i1 %i.dp, %i.dr
  br i1 %or.cond108.1, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ds = icmp eq i32 %.val, 0
  %i.dt = zext i32 %.val to i64
  %i.du = icmp ult i64 %i.cl, %i.dt
  %or.cond108.2 = or i1 %i.ds, %i.du
  br i1 %or.cond108.2, label %.loopexit, label %.critedge106

.critedge106:                                     ; preds = %bb.o
  %i.dv = ptrtoint ptr %2 to i64
  %i.dw = sub i64 %i.ck, %i.dv
  br label %.loopexit

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %.loopexit

.critedge102:                                     ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %.loopexit

.critedge104:                                     ; preds = %bb.k, %bb.j, %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124, %bb.n, %bb.o, %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit117, %.critedge104, %.critedge102, %.critedge, %bb.c, %.critedge106
  %.5 = phi i64 [ -30, %bb.c ], [ %i.dw, %.critedge106 ], [ -30, %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit117 ], [ -30, %.critedge104 ], [ -30, %.critedge102 ], [ -30, %.critedge ], [ -30, %bb.o ], [ -30, %bb.n ], [ -30, %_ZN11duckdb_zstdL21ZSTD_dictNCountRepeatEPsjj.exit124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.5
}

declare noundef i64 @_ZN11duckdb_zstd14HUF_readCTableEPmPjPKvmS1_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

declare noundef i64 @_ZN11duckdb_zstd14FSE_readNCountEPsPjS1_PKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef i64 @_ZN11duckdb_zstd20FSE_buildCTable_wkspEPjPKsjjPvm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define noundef range(i64 -119, 1) i64 @_ZN11duckdb_zstd36ZSTD_compressBegin_advanced_internalEPNS_11ZSTD_CCtx_sEPKvmNS_22ZSTD_dictContentType_eENS_26ZSTD_dictTableLoadMethod_eEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEy(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.b = load <4 x i32>, ptr %i.a, align 4, !tbaa !17
  %.fr18 = freeze <4 x i32> %i.b
  %i.c = add <4 x i32> %.fr18, <i32 -32, i32 -31, i32 -31, i32 -31>
  %i.d = icmp ult <4 x i32> %i.c, <i32 -22, i32 -25, i32 -25, i32 -30>
  %i.e = bitcast <4 x i1> %i.d to i4
  %.not = icmp eq i4 %i.e, 0
  br i1 %.not, label %bb.b, label %_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !96
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !17
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !17
  %i.f = add i32 %.sroa.5.0.copyload, -3
  %narrow.i29.i = icmp ult i32 %i.f, 5
  %narrow.i35.i = icmp ult i32 %.sroa.6.0.copyload, 131073
  %or.cond.i.not17 = select i1 %narrow.i29.i, i1 %narrow.i35.i, i1 false
  %i.g = add i32 %.sroa.7.0.copyload, -1
  %narrow.i41.i = icmp ult i32 %i.g, 9
  %or.cond16 = select i1 %or.cond.i.not17, i1 %narrow.i41.i, i1 false
  br i1 %or.cond16, label %bb.c, label %_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = tail call fastcc noundef i64 @_ZN11duckdb_zstdL27ZSTD_compressBegin_internalEPNS_11ZSTD_CCtx_sEPKvmNS_22ZSTD_dictContentType_eENS_26ZSTD_dictTableLoadMethod_eEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEmNS_22ZSTD_buffered_policy_eE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef 0)
  br label %_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread

_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread: ; preds = %bb.b, %bb.a, %bb.c
end_hunk_0
