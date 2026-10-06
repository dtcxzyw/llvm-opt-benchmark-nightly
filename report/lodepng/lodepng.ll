Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_ZL14readChunk_tEXtP11LodePNGInfoPKhm:bb.a
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = add nuw nsw i32 %.049, 1                 ; 4 uses
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = icmp samesign ult i32 %i.e, %i.a
  br i1 %i.g, label %.lr.ph, label %.critedge, !llvm.loop !498

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i32 [ %i.e, %bb.b ], [ %.049, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.f, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.h = add i32 %.0.lcssa, -80
  %or.cond = icmp ult i32 %i.h, -79
  br i1 %or.cond, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.i = add nuw nsw i32 %.0.lcssa, 1
  %i.j = zext nneg i32 %i.i to i64                ; 4 uses
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef %i.j) #30 ; 6 uses
  %.not44 = icmp eq ptr %i.k, null
  br i1 %.not44, label %.critedge.thread, label %_ZL14lodepng_memcpyPvPKvm.exit

_ZL14lodepng_memcpyPvPKvm.exit:                   ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %1, i64 %.lcssa, i1 false), !tbaa !35, !alias.scope !505
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.lcssa
  store i8 0, ptr %i.l, align 1, !tbaa !35
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.j) ; 3 uses
  %i.n = add nuw nsw i64 %i.m, 1
  %i.o = tail call noalias noundef ptr @malloc(i64 noundef %i.n) #30 ; 6 uses
  %.not45 = icmp eq ptr %i.o, null
  br i1 %.not45, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit
  %.not.i46.not = icmp samesign ugt i64 %2, %i.j
  br i1 %.not.i46.not, label %.lr.ph.preheader.i47, label %_ZL14lodepng_memcpyPvPKvm.exit48

.lr.ph.preheader.i47:                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.p, i64 %i.m, i1 false), !tbaa !35, !alias.scope !506
  br label %_ZL14lodepng_memcpyPvPKvm.exit48

_ZL14lodepng_memcpyPvPKvm.exit48:                 ; preds = %bb.d, %.lr.ph.preheader.i47
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.q, align 1, !tbaa !35
  %strlen.i.i = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.o)
  %i.r = tail call fastcc noundef range(i32 0, 84) i32 @_ZL22lodepng_add_text_sizedP11LodePNGInfoPKcS2_m(ptr noundef %0, ptr noundef nonnull readonly %i.k, ptr noundef nonnull readonly %i.o, i64 noundef %strlen.i.i)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %_ZL14lodepng_memcpyPvPKvm.exit48, %.critedge, %bb.c, %_ZL14lodepng_memcpyPvPKvm.exit
  %.037 = phi i32 [ 89, %.critedge ], [ %i.r, %_ZL14lodepng_memcpyPvPKvm.exit48 ], [ 83, %bb.c ], [ 83, %_ZL14lodepng_memcpyPvPKvm.exit ], [ 89, %bb.a ]
  %.035 = phi ptr [ null, %.critedge ], [ %i.k, %_ZL14lodepng_memcpyPvPKvm.exit48 ], [ null, %bb.c ], [ %i.k, %_ZL14lodepng_memcpyPvPKvm.exit ], [ null, %bb.a ]
  %.034 = phi ptr [ null, %.critedge ], [ %i.o, %_ZL14lodepng_memcpyPvPKvm.exit48 ], [ null, %bb.c ], [ null, %_ZL14lodepng_memcpyPvPKvm.exit ], [ null, %bb.a ]
  tail call void @free(ptr noundef %.035) #31
  tail call void @free(ptr noundef %.034) #31
  ret i32 %.037
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL14readChunk_zTXtP11LodePNGInfoPK22LodePNGDecoderSettingsPKhm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef range(i64 0, 2147483648) %3) unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.ucvector, align 8           ; 6 uses
  %5 = alloca %struct.LodePNGDecompressSettings, align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr null, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 0, ptr %i.b, align 8, !tbaa !25
  %.not68 = icmp eq i64 %3, 0
  br i1 %.not68, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %3 to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.d = phi i64 [ %i.h, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03563 = phi i32 [ %i.g, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i32 %.03563, 1               ; 4 uses
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = icmp samesign ult i32 %i.g, %i.c
  br i1 %i.i, label %.lr.ph, label %.critedge, !llvm.loop !507

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.035.lcssa = phi i32 [ 0, %bb.a ], [ %i.g, %bb.b ], [ %.03563, %.lr.ph ] ; 3 uses
  %.lcssa = phi i64 [ 0, %bb.a ], [ %i.h, %bb.b ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.j = add i32 %.035.lcssa, 2                   ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %.not44 = icmp samesign ugt i64 %3, %i.k
  br i1 %.not44, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.critedge
  %i.l = add i32 %.035.lcssa, -80
  %or.cond = icmp ult i32 %i.l, -79
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw nsw i32 %.035.lcssa, 1
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = tail call noalias noundef ptr @malloc(i64 noundef %i.n) #30 ; 8 uses
  %.not45 = icmp eq ptr %i.o, null
  br i1 %.not45, label %bb.g, label %_ZL14lodepng_memcpyPvPKvm.exit

_ZL14lodepng_memcpyPvPKvm.exit:                   ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr readonly align 1 %2, i64 %.lcssa, i1 false), !tbaa !35, !alias.scope !511
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.lcssa
  store i8 0, ptr %i.p, align 1, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.n
  %i.r = load i8, ptr %i.q, align 1, !tbaa !35
  %.not46 = icmp eq i8 %i.r, 0
  br i1 %.not46, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit
  %i.s = trunc nuw nsw i64 %3 to i32
  %i.t = sub nuw nsw i32 %i.s, %i.j
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !164
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.k ; 2 uses
  %i.y = zext nneg i32 %i.t to i64                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !165 ; 2 uses
  %.not.i49 = icmp eq ptr %i.aa, null
  br i1 %.not.i49, label %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = call noundef i32 %i.aa(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.x, i64 noundef %i.y, ptr noundef nonnull %5), !inline_history !166
  %.not27.i = icmp eq i32 %i.ab, 0
  br i1 %.not27.i, label %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit.thread54, label %.thread60

_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit.thread54: ; preds = %bb.f
  %i.ac = load i64, ptr %i.b, align 8
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %.thread

.thread60:                                        ; preds = %bb.f
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !58
  %i.ae = load i64, ptr %i.b, align 8
  %i.af = icmp ugt i64 %i.ae, %i.ad
  %spec.select52 = select i1 %i.af, i32 112, i32 110
  br label %bb.g

_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ah = call fastcc noundef i32 @_ZL24lodepng_zlib_decompressvP8ucvectorPKhmPK25LodePNGDecompressSettings(ptr noundef %4, ptr noundef nonnull %i.x, i64 noundef %i.y, ptr noundef nonnull %5) ; 2 uses
  %i.ai = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !28
  %i.aj = load i64, ptr %i.ag, align 8, !tbaa !55 ; 3 uses
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %.not47 = icmp eq i32 %i.ah, 0
  %i.ak = load i64, ptr %i.w, align 8
  %i.al = icmp ugt i64 %i.aj, %i.ak
  %spec.select = select i1 %i.al, i32 112, i32 %i.ah ; 2 uses
  %.not48 = icmp eq i32 %spec.select, 0
  %or.cond62 = select i1 %.not47, i1 true, i1 %.not48
  br i1 %or.cond62, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit, %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit.thread54
  %i.am = phi ptr [ %i.ai, %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit ], [ %.pre, %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit.thread54 ]
  %i.an = phi i64 [ %i.aj, %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit ], [ %i.ac, %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit.thread54 ]
  %i.ao = call fastcc noundef i32 @_ZL22lodepng_add_text_sizedP11LodePNGInfoPKcS2_m(ptr noundef %0, ptr noundef nonnull %i.o, ptr noundef %i.am, i64 noundef %i.an)
  br label %bb.g

bb.g:                                             ; preds = %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit, %.thread60, %_ZL14lodepng_memcpyPvPKvm.exit, %bb.d, %bb.c, %.critedge, %.thread
  %.1 = phi i32 [ 89, %bb.c ], [ 75, %.critedge ], [ 83, %bb.d ], [ 72, %_ZL14lodepng_memcpyPvPKvm.exit ], [ %spec.select, %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit ], [ %i.ao, %.thread ], [ %spec.select52, %.thread60 ]
  %.0 = phi ptr [ null, %bb.c ], [ null, %.critedge ], [ null, %bb.d ], [ %i.o, %_ZL14lodepng_memcpyPvPKvm.exit ], [ %i.o, %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit ], [ %i.o, %.thread ], [ %i.o, %.thread60 ]
  call void @free(ptr noundef %.0) #31
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @free(ptr noundef %i.ap) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL14readChunk_iTXtP11LodePNGInfoPK22LodePNGDecoderSettingsPKhm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef range(i64 0, 2147483648) %3) unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.LodePNGDecompressSettings, align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !163
  %i.c = icmp samesign ult i64 %3, 5
  br i1 %i.c, label %bb.m, label %.preheader126.preheader

.preheader126.preheader:                          ; preds = %bb.a
  %i.d = trunc nuw nsw i64 %3 to i32              ; 4 uses
  br label %.preheader126

.preheader126:                                    ; preds = %.preheader126.preheader, %bb.b
  %i.e = phi i64 [ %i.i, %bb.b ], [ 0, %.preheader126.preheader ] ; 2 uses
  %.090127 = phi i32 [ %i.h, %bb.b ], [ 0, %.preheader126.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !35
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader126
  %i.h = add nuw nsw i32 %.090127, 1              ; 4 uses
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = icmp samesign ult i32 %i.h, %i.d
  br i1 %i.j, label %.preheader126, label %.critedge, !llvm.loop !512

.critedge:                                        ; preds = %bb.b, %.preheader126
  %.090.lcssa = phi i32 [ %i.h, %bb.b ], [ %.090127, %.preheader126 ] ; 3 uses
  %.lcssa = phi i64 [ %i.i, %bb.b ], [ %i.e, %.preheader126 ] ; 3 uses
  %i.k = add i32 %.090.lcssa, 3                   ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %.not109 = icmp samesign ugt i64 %3, %i.l
  br i1 %.not109, label %bb.c, label %bb.m

bb.c:                                             ; preds = %.critedge
  %i.m = add i32 %.090.lcssa, -80
  %or.cond = icmp ult i32 %i.m, -79
  br i1 %or.cond, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw nsw i32 %.090.lcssa, 1
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = tail call noalias noundef ptr @malloc(i64 noundef %i.o) #30 ; 10 uses
  %.not110 = icmp eq ptr %i.p, null
  br i1 %.not110, label %bb.m, label %_ZL14lodepng_memcpyPvPKvm.exit

_ZL14lodepng_memcpyPvPKvm.exit:                   ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %2, i64 %.lcssa, i1 false), !tbaa !35, !alias.scope !524
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.lcssa
  store i8 0, ptr %i.q, align 1, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.o
  %i.s = load i8, ptr %i.r, align 1, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !35
  %.not111 = icmp eq i8 %i.v, 0
  br i1 %.not111, label %.lr.ph, label %bb.m

.lr.ph:                                           ; preds = %_ZL14lodepng_memcpyPvPKvm.exit, %bb.e
  %i.w = phi i64 [ %i.ab, %bb.e ], [ %i.l, %_ZL14lodepng_memcpyPvPKvm.exit ]
  %.1129 = phi i32 [ %i.z, %bb.e ], [ 0, %_ZL14lodepng_memcpyPvPKvm.exit ] ; 2 uses
  %.091128 = phi i32 [ %i.aa, %bb.e ], [ %i.k, %_ZL14lodepng_memcpyPvPKvm.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !35
  %.not112 = icmp eq i8 %i.y, 0
  br i1 %.not112, label %.critedge3, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.z = add i32 %.1129, 1                        ; 2 uses
  %i.aa = add nuw nsw i32 %.091128, 1             ; 3 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = icmp ult i32 %i.aa, %i.d
  br i1 %i.ac, label %.lr.ph, label %.critedge3, !llvm.loop !516

.critedge3:                                       ; preds = %.lr.ph, %bb.e
  %.1.lcssa.ph = phi i32 [ %.1129, %.lr.ph ], [ %i.z, %bb.e ] ; 3 uses
  %i.ad = add i32 %.1.lcssa.ph, 1                 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = tail call noalias noundef ptr @malloc(i64 noundef %i.ae) #30 ; 8 uses
  %.not113 = icmp eq ptr %i.af, null
  br i1 %.not113, label %bb.m, label %bb.f

bb.f:                                             ; preds = %.critedge3
  %i.ag = zext i32 %.1.lcssa.ph to i64            ; 2 uses
  %.not.i119 = icmp eq i32 %.1.lcssa.ph, 0
  br i1 %.not.i119, label %_ZL14lodepng_memcpyPvPKvm.exit121, label %.lr.ph.preheader.i120

.lr.ph.preheader.i120:                            ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %i.ah, i64 %i.ag, i1 false), !tbaa !35, !alias.scope !525
  br label %_ZL14lodepng_memcpyPvPKvm.exit121

_ZL14lodepng_memcpyPvPKvm.exit121:                ; preds = %bb.f, %.lr.ph.preheader.i120
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  store i8 0, ptr %i.ai, align 1, !tbaa !35
  %i.aj = add i32 %i.ad, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 3 uses
  %i.al = icmp samesign ugt i64 %3, %i.ak
  br i1 %i.al, label %.lr.ph134, label %.critedge5

.lr.ph134:                                        ; preds = %_ZL14lodepng_memcpyPvPKvm.exit121, %bb.g
  %i.am = phi i64 [ %i.ar, %bb.g ], [ %i.ak, %_ZL14lodepng_memcpyPvPKvm.exit121 ]
  %.2133 = phi i32 [ %i.ap, %bb.g ], [ 0, %_ZL14lodepng_memcpyPvPKvm.exit121 ] ; 2 uses
  %.192132 = phi i32 [ %i.aq, %bb.g ], [ %i.aj, %_ZL14lodepng_memcpyPvPKvm.exit121 ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !35
  %.not114 = icmp eq i8 %i.ao, 0
  br i1 %.not114, label %.critedge5, label %bb.g

bb.g:                                             ; preds = %.lr.ph134
  %i.ap = add i32 %.2133, 1                       ; 2 uses
  %i.aq = add nuw nsw i32 %.192132, 1             ; 3 uses
  %i.ar = zext i32 %i.aq to i64
  %5 = icmp ult i32 %i.aq, %i.d
  br i1 %5, label %.lr.ph134, label %.critedge5, !llvm.loop !520

.critedge5:                                       ; preds = %.lr.ph134, %bb.g, %_ZL14lodepng_memcpyPvPKvm.exit121
  %.2.lcssa = phi i32 [ 0, %_ZL14lodepng_memcpyPvPKvm.exit121 ], [ %i.ap, %bb.g ], [ %.2133, %.lr.ph134 ] ; 3 uses
  %i.as = add i32 %.2.lcssa, 1                    ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = tail call noalias noundef ptr @malloc(i64 noundef %i.at) #30 ; 7 uses
  %.not115 = icmp eq ptr %i.au, null
  br i1 %.not115, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.critedge5
  %i.av = zext i32 %.2.lcssa to i64               ; 2 uses
  %.not.i122 = icmp eq i32 %.2.lcssa, 0
  br i1 %.not.i122, label %_ZL14lodepng_memcpyPvPKvm.exit124, label %.lr.ph.preheader.i123

.lr.ph.preheader.i123:                            ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr readonly align 1 %i.aw, i64 %i.av, i1 false), !tbaa !35, !alias.scope !526
  br label %_ZL14lodepng_memcpyPvPKvm.exit124

_ZL14lodepng_memcpyPvPKvm.exit124:                ; preds = %bb.h, %.lr.ph.preheader.i123
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  store i8 0, ptr %i.ax, align 1, !tbaa !35
  %i.ay = add i32 %i.as, %i.aj                    ; 3 uses
  %i.az = tail call i32 @llvm.usub.sat.i32(i32 %i.d, i32 %i.ay) ; 2 uses
  %.not116 = icmp eq i8 %i.s, 0
  br i1 %.not116, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr null, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 0, ptr %i.b, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !164
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !58
  %i.bd = zext i32 %i.ay to i64
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.bd
  %i.bf = zext nneg i32 %i.az to i64
  %i.bg = call fastcc noundef i32 @_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings(ptr noundef nonnull %i.a, ptr noundef %i.b, i64 noundef 0, ptr noundef %i.be, i64 noundef %i.bf, ptr noundef nonnull %4) ; 2 uses
  %.not117 = icmp eq i32 %i.bg, 0
  %i.bh = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bi = load i64, ptr %i.bc, align 8
  %i.bj = icmp ugt i64 %i.bh, %i.bi
  %spec.select = select i1 %i.bj, i32 112, i32 %i.bg ; 2 uses
  %.not118125 = icmp eq i32 %spec.select, 0
  %.not118 = select i1 %.not117, i1 true, i1 %.not118125
  br i1 %.not118, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.bl = call fastcc noundef i32 @_ZL23lodepng_add_itext_sizedP11LodePNGInfoPKcS2_S2_S2_m(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.af, ptr noundef nonnull %i.au, ptr noundef %i.bk, i64 noundef %i.bh)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.194 = phi i32 [ %spec.select, %bb.i ], [ %i.bl, %bb.j ]
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @free(ptr noundef %i.bm) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.m

bb.l:                                             ; preds = %_ZL14lodepng_memcpyPvPKvm.exit124
  %i.bn = zext i32 %i.ay to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %i.bn
  %i.bp = zext nneg i32 %i.az to i64
  %i.bq = tail call fastcc noundef i32 @_ZL23lodepng_add_itext_sizedP11LodePNGInfoPKcS2_S2_S2_m(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.af, ptr noundef nonnull %i.au, ptr noundef %i.bo, i64 noundef %i.bp)
  br label %bb.m

bb.m:                                             ; preds = %.critedge5, %.critedge3, %_ZL14lodepng_memcpyPvPKvm.exit, %bb.d, %bb.c, %.critedge, %bb.a, %bb.k, %bb.l
  %.295 = phi i32 [ 89, %bb.c ], [ 30, %bb.a ], [ 75, %.critedge ], [ 83, %bb.d ], [ %.194, %bb.k ], [ %i.bq, %bb.l ], [ 83, %.critedge3 ], [ 72, %_ZL14lodepng_memcpyPvPKvm.exit ], [ 83, %.critedge5 ]
  %.089 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ null, %.critedge ], [ null, %bb.d ], [ %i.p, %bb.k ], [ %i.p, %bb.l ], [ %i.p, %.critedge3 ], [ %i.p, %_ZL14lodepng_memcpyPvPKvm.exit ], [ %i.p, %.critedge5 ]
  %.088 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ null, %.critedge ], [ null, %bb.d ], [ %i.af, %bb.k ], [ %i.af, %bb.l ], [ null, %.critedge3 ], [ null, %_ZL14lodepng_memcpyPvPKvm.exit ], [ %i.af, %.critedge5 ]
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ null, %.critedge ], [ null, %bb.d ], [ %i.au, %bb.k ], [ %i.au, %bb.l ], [ null, %.critedge3 ], [ null, %_ZL14lodepng_memcpyPvPKvm.exit ], [ null, %.critedge5 ]
  call void @free(ptr noundef %.089) #31
  call void @free(ptr noundef %.088) #31
  call void @free(ptr noundef %.0) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret i32 %.295
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 74) i32 @_ZL14readChunk_tIMEP11LodePNGInfoPKhm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 0, 2147483648) %2) unnamed_addr #8 {
bb.a:
  %.not = icmp eq i64 %2, 7
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 1, ptr %i.a, align 4, !tbaa !167
  %i.b = load i8, ptr %1, align 1, !tbaa !35
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35
  %i.g = zext i8 %i.f to i32
  %i.h = or disjoint i32 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.h, ptr %i.i, align 8, !tbaa !527
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !35
  %i.l = zext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %i.l, ptr %i.m, align 4, !tbaa !528
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.p, ptr %i.q, align 8, !tbaa !529
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 1, !tbaa !35
  %i.t = zext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %i.t, ptr %i.u, align 4, !tbaa !530
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.w = load i8, ptr %i.v, align 1, !tbaa !35
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.x, ptr %i.y, align 8, !tbaa !531
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !532
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 73, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 75) i32 @_ZL14readChunk_pHYsP11LodePNGInfoPKhm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 0, 2147483648) %2) unnamed_addr #8 {
bb.a:
  %.not = icmp eq i64 %2, 9
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 1, ptr %i.a, align 8, !tbaa !119
  %i.b = load i8, ptr %1, align 1, !tbaa !35
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw i32 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 16
  %i.i = or disjoint i32 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !35
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = or disjoint i32 %i.i, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !35
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.r, ptr %i.s, align 4, !tbaa !168
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw i32 %i.v, 24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.y = load i8, ptr %i.x, align 1, !tbaa !35
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 16
  %i.ab = or disjoint i32 %i.aa, %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = or disjoint i32 %i.ab, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !35
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !169
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !170
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 74, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 98) i32 @_ZL14readChunk_cHRMP11LodePNGInfoPKhm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 0, 2147483648) %2) unnamed_addr #8 {
bb.a:
  %.not = icmp eq i64 %2, 32
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
end_hunk_0
