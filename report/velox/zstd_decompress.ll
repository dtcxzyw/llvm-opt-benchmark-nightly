inline.NumInlined: 251
inline.NumDeleted: 58
begin_hunk_0_@ZSTD_decompressMultiFrame:bb.a
  %.not144.i = icmp eq i64 %i.ft, -1
  %i.fu = ptrtoint ptr %i.fn to i64
  %i.fv = ptrtoint ptr %.075.ph185269 to i64
  %i.fw = sub i64 %i.fu, %i.fv                    ; 4 uses
  %.not145.i = icmp eq i64 %i.fw, %i.ft
  %or.cond151.i = select i1 %.not144.i, i1 true, i1 %.not145.i
  br i1 %or.cond151.i, label %bb.ar, label %ZSTD_decompressFrame.exit

bb.ar:                                            ; preds = %bb.aq
  %i.fx = load i32, ptr %i.ae, align 8, !tbaa !98
  %.not146.i = icmp eq i32 %i.fx, 0
  br i1 %.not146.i, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fy = icmp ult i64 %i.fp, 4
  br i1 %i.fy, label %ZSTD_decompressFrame.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fz = load i32, ptr %i.af, align 4, !tbaa !38
  %.not147.i = icmp eq i32 %i.fz, 0
  br i1 %.not147.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ga = call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(none) %i.ab) #19
  %i.gb = trunc i64 %i.ga to i32
  %.2112.val.i = load i32, ptr %i.fo, align 1, !tbaa !3
  %.not148.i = icmp eq i32 %.2112.val.i, %i.gb
  br i1 %.not148.i, label %bb.av, label %ZSTD_decompressFrame.exit

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.gd = add i64 %i.fp, -4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ar
  %.3120.i = phi i64 [ %i.gd, %bb.av ], [ %i.fp, %bb.ar ] ; 2 uses
  %.3113.i = phi ptr [ %i.gc, %bb.av ], [ %i.fo, %bb.ar ] ; 3 uses
  %i.ge = ptrtoint ptr %.3113.i to i64
  %i.gf = ptrtoint ptr %.us-phi225 to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = load i64, ptr %i.n, align 8, !tbaa !90  ; 2 uses
  %i.gi = icmp ne i64 %i.gh, 0
  %or.cond.i.i114 = and i1 %i.ag, %i.gi
  br i1 %or.cond.i.i114, label %bb.ax, label %ZSTD_decompressFrame.exit

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i8 0, i64 48, i1 false)
  store i32 10506, ptr %8, align 8, !tbaa !99
  store i32 0, ptr %i.ai, align 4, !tbaa !104
  %i.gj = load ptr, ptr %i.aj, align 8, !tbaa !105 ; 2 uses
  %.not.i156.i = icmp eq ptr %i.gj, null
  br i1 %.not.i156.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gk = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %i.gj) #16
  store i32 %i.gk, ptr %i.ah, align 8, !tbaa !106
  %i.gl = load ptr, ptr %i.aj, align 8, !tbaa !105
  %i.gm = call i64 @ZSTD_DDict_dictSize(ptr noundef %i.gl) #16
  store i64 %i.gm, ptr %i.ak, align 8, !tbaa !107
  %i.gn = load i32, ptr %i.m, align 4, !tbaa !23
  store i32 %i.gn, ptr %i.al, align 4, !tbaa !108
  %.pre.i.i = load i64, ptr %i.n, align 8, !tbaa !90
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.go = phi i64 [ %.pre.i.i, %bb.ay ], [ %i.gh, %bb.ax ]
  store i64 %i.fw, ptr %i.am, align 8, !tbaa !109
  store i64 %i.gg, ptr %i.an, align 8, !tbaa !110
  store ptr %0, ptr %i.ao, align 8, !tbaa !111
  call void @ZSTD_trace_decompress_end(i64 noundef %i.go, ptr noundef nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %ZSTD_decompressFrame.exit

ZSTD_decompressFrame.exit:                        ; preds = %bb.aw, %bb.az, %bb.y, %ZSTD_frameHeaderSize_internal.exit.i, %bb.z, %bb.aa, %.thread171.i, %bb.aq, %bb.as, %bb.au
  %.4141 = phi ptr [ %.us-phi225, %bb.y ], [ %.us-phi225, %bb.z ], [ %.us-phi225, %.thread171.i ], [ %.us-phi225, %ZSTD_frameHeaderSize_internal.exit.i ], [ %.us-phi225, %bb.as ], [ %.us-phi225, %bb.au ], [ %.us-phi225, %bb.aq ], [ %.us-phi225, %bb.aa ], [ %.3113.i, %bb.az ], [ %.3113.i, %bb.aw ]
  %.4136 = phi i64 [ %.us-phi226, %bb.y ], [ %.us-phi226, %bb.z ], [ %.us-phi226, %.thread171.i ], [ %.us-phi226, %ZSTD_frameHeaderSize_internal.exit.i ], [ %.us-phi226, %bb.as ], [ %.us-phi226, %bb.au ], [ %.us-phi226, %bb.aq ], [ %.us-phi226, %bb.aa ], [ %.3120.i, %bb.az ], [ %.3120.i, %bb.aw ] ; 3 uses
  %.6.i = phi i64 [ -72, %bb.y ], [ -72, %bb.z ], [ %.4.ph.i, %.thread171.i ], [ %i.dy, %ZSTD_frameHeaderSize_internal.exit.i ], [ -22, %bb.as ], [ -22, %bb.au ], [ -20, %bb.aq ], [ %i.ec, %bb.aa ], [ %i.fw, %bb.az ], [ %i.fw, %bb.aw ] ; 5 uses
  %i.gp = call i32 @ZSTD_getErrorCode(i64 noundef %.6.i) #16
  %i.gq = icmp eq i32 %i.gp, 10
  %or.cond8 = and i1 %i.ar, %i.gq
  br i1 %or.cond8, label %.thread149, label %bb.ba

bb.ba:                                            ; preds = %ZSTD_decompressFrame.exit
  %i.gr = icmp ult i64 %.6.i, -119
  br i1 %i.gr, label %.outer, label %.thread149

.outer:                                           ; preds = %bb.ba
  %i.gs = getelementptr inbounds nuw i8, ptr %.075.ph185269, i64 %.6.i ; 2 uses
  %i.gt = sub i64 %.079.ph184268, %.6.i
  %i.gu = load i32, ptr %i.d, align 8, !tbaa !35
  %i.gv = icmp ne i32 %i.gu, 0                    ; 2 uses
  %i.gw = select i1 %i.gv, i64 1, i64 5           ; 2 uses
  %.not97218265 = icmp ult i64 %.4136, %i.gw
  br i1 %.not97218265, label %.outer181._crit_edge, label %.lr.ph.lr.ph, !llvm.loop !112

.outer181._crit_edge:                             ; preds = %.outer, %.outer181, %bb.u, %bb.c
  %.075.ph185.lcssa208 = phi ptr [ %i.bu, %.outer181 ], [ %.075.ph185269, %bb.u ], [ %1, %bb.c ], [ %i.gs, %.outer ]
  %.0133.lcssa = phi i64 [ %i.bx, %.outer181 ], [ %i.cl, %bb.u ], [ %4, %bb.c ], [ %.4136, %.outer ]
  %.not98 = icmp eq i64 %.0133.lcssa, 0
  br i1 %.not98, label %bb.bb, label %.thread149

bb.bb:                                            ; preds = %.outer181._crit_edge
  %i.gx = ptrtoint ptr %.075.ph185.lcssa208 to i64
  %i.gy = ptrtoint ptr %1 to i64
  %i.gz = sub i64 %i.gx, %i.gy
  br label %.thread149

.thread149:                                       ; preds = %bb.ba, %ZSTD_decompressFrame.exit, %bb.x, %bb.r, %bb.q, %ZSTD_decompressLegacy.exit, %bb.h, %ZSTD_findFrameCompressedSizeLegacy.exit, %bb.t, %bb.s, %readSkippableFrameSize.exit, %ZSTD_decompressLegacy.exit.thread, %.outer181._crit_edge, %bb.bb
  %.10 = phi i64 [ %i.gz, %bb.bb ], [ -72, %.outer181._crit_edge ], [ %.3.i.ph, %ZSTD_decompressLegacy.exit.thread ], [ -20, %bb.r ], [ -72, %bb.s ], [ -14, %bb.t ], [ %..i, %readSkippableFrameSize.exit ], [ %i.ba, %ZSTD_findFrameCompressedSizeLegacy.exit ], [ -64, %bb.h ], [ %.3.i, %ZSTD_decompressLegacy.exit ], [ -20, %bb.q ], [ %i.cx, %bb.x ], [ %.6.i, %bb.ba ], [ -72, %ZSTD_decompressFrame.exit ]
  ret i64 %.10
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decompressDCtx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30208 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  switch i32 %i.b, label %bb.b [
    i32 1, label %bb.d
    i32 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.e = tail call i64 @ZSTD_freeDDict(ptr noundef %i.d) #16 ; 0 uses
  store i32 0, ptr %i.a, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %ZSTD_getDDict.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105
  br label %ZSTD_getDDict.exit

bb.d:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105
  br label %ZSTD_getDDict.exit

ZSTD_getDDict.exit:                               ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ null, %bb.b ], [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  %i.j = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null, i64 noundef 0, ptr noundef %.0.i)
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decompress_usingDDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null, i64 noundef 0, ptr noundef %5)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ZSTD_getDDict(ptr noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30208 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  switch i32 %i.b, label %bb.b [
    i32 1, label %bb.d
    i32 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.e = tail call i64 @ZSTD_freeDDict(ptr noundef %i.d) #16 ; 0 uses
  store i32 0, ptr %i.a, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
ZSTD_customMalloc.exit.i:
  %i.a = tail call noalias dereferenceable_or_null(95992) ptr @malloc(i64 noundef 95992) #18 ; 25 uses
  %.not7.i = icmp eq ptr %i.a, null
  br i1 %.not7.i, label %ZSTD_createDCtx_internal.exit.thread, label %bb.a

bb.a:                                             ; preds = %ZSTD_customMalloc.exit.i
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 30128
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 30168
  store i64 0, ptr %i.c, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 30184 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 29912
  store ptr null, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 30204
  store i32 0, ptr %i.f, align 4, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 30208 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 30280
  store i64 0, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 30236
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 30312
  store ptr null, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 30320
  store i32 0, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 30332
  store i32 0, ptr %i.l, align 4, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 95976
  store i64 0, ptr %i.m, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.n, align 8, !tbaa !29
  %i.o = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #17, !srcloc !30 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %ZSTD_decompressDCtx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #17, !srcloc !31 ; 0 uses
  %i.q = icmp ugt i32 %i.o, 6
  br i1 %i.q, label %ZSTD_cpuid.exit.i.i.i, label %ZSTD_decompressDCtx.exit

ZSTD_cpuid.exit.i.i.i:                            ; preds = %bb.b
  %i.r = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #17, !srcloc !32
  %i.s = extractvalue { i32, i32, i32 } %i.r, 1   ; 2 uses
  %i.t = and i32 %i.s, 8
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %ZSTD_decompressDCtx.exit, label %bb.c

bb.c:                                             ; preds = %ZSTD_cpuid.exit.i.i.i
  %i.u = lshr i32 %i.s, 8
  %i.v = and i32 %i.u, 1
  br label %ZSTD_decompressDCtx.exit

ZSTD_decompressDCtx.exit:                         ; preds = %bb.c, %ZSTD_cpuid.exit.i.i.i, %bb.b, %bb.a
  %i.w = phi i32 [ 0, %ZSTD_cpuid.exit.i.i.i ], [ %i.v, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 30180
  store i32 %i.w, ptr %i.x, align 4, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 30216
  store ptr null, ptr %i.y, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 30104
  store i32 0, ptr %i.z, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 30264
  store i64 134217729, ptr %i.aa, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 30336
  store i32 0, ptr %i.ab, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 30108
  store i32 0, ptr %i.ac, align 4, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 30224
  store i32 0, ptr %i.ad, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 30228
  store i32 0, ptr %i.ae, align 4, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 30232
  store i32 0, ptr %i.af, align 8, !tbaa !41
  %i.ag = tail call i64 @ZSTD_freeDDict(ptr noundef null) #16 ; 0 uses
  store i32 0, ptr %i.g, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.ah = tail call fastcc i64 @ZSTD_decompressMultiFrame(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef null, i64 noundef 0, ptr noundef null)
  %i.ai = tail call i64 @ZSTD_freeDCtx(ptr noundef nonnull %i.a) ; 0 uses
  br label %ZSTD_createDCtx_internal.exit.thread

ZSTD_createDCtx_internal.exit.thread:             ; preds = %ZSTD_customMalloc.exit.i, %ZSTD_decompressDCtx.exit
  %.0 = phi i64 [ %i.ah, %ZSTD_decompressDCtx.exit ], [ -64, %ZSTD_customMalloc.exit.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ZSTD_nextSrcSizeToDecompress(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %i.b = load i64, ptr %i.a, align 8, !tbaa !91
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 6) i32 @ZSTD_nextInputType(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29996
  %i.b = load i32, ptr %i.a, align 4, !tbaa !113
  %switch.tableidx = add i32 %i.b, -2             ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 6
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.ZSTD_nextInputType, i64 %i.d
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %switch.load, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i64 -119, 4294967296) i64 @ZSTD_decompressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ZSTD_Trace, align 8         ; 11 uses
  %6 = alloca %struct.blockProperties_t, align 4  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29996 ; 13 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !113
  %.off.i = add i32 %i.b, -3
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %i.d = load i64, ptr %i.c, align 8, !tbaa !91
  br label %ZSTD_nextSrcSizeToDecompressWithInputSize.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 29992
  %i.f = load i32, ptr %i.e, align 8, !tbaa !114
  %.not.i = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %i.h = load i64, ptr %i.g, align 8, !tbaa !91   ; 2 uses
  br i1 %.not.i, label %bb.d, label %ZSTD_nextSrcSizeToDecompressWithInputSize.exit

bb.d:                                             ; preds = %bb.c
  %..i = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.h)
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %..i, i64 1)
  br label %ZSTD_nextSrcSizeToDecompressWithInputSize.exit

ZSTD_nextSrcSizeToDecompressWithInputSize.exit:   ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ %spec.select.i, %bb.d ], [ %i.d, %bb.b ], [ %i.h, %bb.c ]
  %.not = icmp eq i64 %4, %.0.i
  br i1 %.not, label %bb.e, label %ZSTD_copyRawBlock.exit.thread

bb.e:                                             ; preds = %ZSTD_nextSrcSizeToDecompressWithInputSize.exit
  tail call void @ZSTD_checkContinuity(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 29976 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !115
  %i.k = add i64 %i.j, %4                         ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !115
  %i.l = load i32, ptr %i.a, align 4, !tbaa !113
  switch i32 %i.l, label %ZSTD_copyRawBlock.exit.thread [
    i32 0, label %bb.f
    i32 1, label %bb.k
    i32 2, label %bb.m
    i32 4, label %bb.w
    i32 3, label %bb.w
    i32 5, label %bb.aq
    i32 6, label %bb.aw
    i32 7, label %bb.ax
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %i.n = load i32, ptr %i.m, align 8, !tbaa !35
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.val161 = load i32, ptr %3, align 1, !tbaa !3
  %i.p = and i32 %.val161, -16
  %i.q = icmp eq i32 %i.p, 407710288
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 95956
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 1 %3, i64 %4, i1 false)
  %i.s = sub i64 8, %4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 %i.s, ptr %i.t, align 8, !tbaa !91
  store i32 6, ptr %i.a, align 4, !tbaa !113
  br label %ZSTD_copyRawBlock.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.u = phi i64 [ 5, %bb.g ], [ 1, %bb.f ]       ; 3 uses
  %i.v = icmp ult i64 %4, %i.u
  br i1 %i.v, label %ZSTD_frameHeaderSize_internal.exit.thread, label %ZSTD_frameHeaderSize_internal.exit

ZSTD_frameHeaderSize_internal.exit.thread:        ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 30096
  store i64 -72, ptr %i.w, align 8, !tbaa !116
  br label %ZSTD_copyRawBlock.exit.thread

ZSTD_frameHeaderSize_internal.exit:               ; preds = %bb.i
  %i.x = getelementptr i8, ptr %3, i64 %i.u
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !52
  %i.aa = zext i8 %i.z to i32                     ; 3 uses
  %i.ab = and i32 %i.aa, 3
  %i.ac = lshr i32 %i.aa, 6                       ; 2 uses
  %i.ad = and i32 %i.aa, 32                       ; 2 uses
  %.not.i162 = icmp ne i32 %i.ad, 0
  %.lobit.i = lshr exact i32 %i.ad, 5
  %i.ae = xor i32 %.lobit.i, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = zext nneg i32 %i.ab to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_did_fieldSize, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.aj = zext nneg i32 %i.ac to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @ZSTD_fcs_fieldSize, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !53
  %.not15.i = icmp eq i32 %i.ac, 0
  %narrow.i = and i1 %.not.i162, %.not15.i
  %i.am = zext i1 %narrow.i to i64
  %i.an = add i64 %i.ai, %i.u
  %i.ao = add i64 %i.an, %i.al
  %i.ap = add i64 %i.ao, %i.af
  %i.aq = add i64 %i.ap, %i.am                    ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 30096
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !116
  %i.as = icmp ult i64 %i.aq, -119
  br i1 %i.as, label %bb.j, label %ZSTD_copyRawBlock.exit.thread

bb.j:                                             ; preds = %ZSTD_frameHeaderSize_internal.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 95956
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.at, ptr nonnull align 1 %3, i64 %4, i1 false)
end_hunk_0
