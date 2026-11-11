Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_ZL19preProcessScanlinesPPhPmPKhjjPK11LodePNGInfoPK22LodePNGEncoderSettings:bb.a
  %i.yq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.yr = load i32, ptr %i.yq, align 8, !tbaa !29
  %.val.2 = load i32, ptr %i.k, align 8, !tbaa !93
  %.val110.2 = load i32, ptr %i.m, align 4, !tbaa !94
  %i.ys = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.yk, ptr noundef %i.yn, i32 noundef %i.yp, i32 noundef %i.yr, i32 %.val.2, i32 %.val110.2, ptr noundef %6) ; 2 uses
  %.not100.2 = icmp eq i32 %i.ys, 0
  br i1 %.not100.2, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.3, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.3:        ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.2
  %i.yt = load ptr, ptr %0, align 8, !tbaa !28
  %i.yu = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !25
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.yv
  %i.yx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.yy = load i64, ptr %i.yx, align 8, !tbaa !25
  %i.yz = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !29
  %i.zc = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !29
  %.val.3 = load i32, ptr %i.k, align 8, !tbaa !93
  %.val110.3 = load i32, ptr %i.m, align 4, !tbaa !94
  %i.ze = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.yw, ptr noundef %i.yz, i32 noundef %i.zb, i32 noundef %i.zd, i32 %.val.3, i32 %.val110.3, ptr noundef %6) ; 2 uses
  %.not100.3 = icmp eq i32 %i.ze, 0
  br i1 %.not100.3, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.4, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.4:        ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.3
  %i.zf = load ptr, ptr %0, align 8, !tbaa !28
  %i.zg = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.zh = load i64, ptr %i.zg, align 16, !tbaa !25
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zf, i64 %i.zh
  %i.zj = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.zk = load i64, ptr %i.zj, align 16, !tbaa !25
  %i.zl = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.zk
  %i.zm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.zn = load i32, ptr %i.zm, align 16, !tbaa !29
  %i.zo = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.zp = load i32, ptr %i.zo, align 16, !tbaa !29
  %.val.4 = load i32, ptr %i.k, align 8, !tbaa !93
  %.val110.4 = load i32, ptr %i.m, align 4, !tbaa !94
  %i.zq = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.zi, ptr noundef %i.zl, i32 noundef %i.zn, i32 noundef %i.zp, i32 %.val.4, i32 %.val110.4, ptr noundef %6) ; 2 uses
  %.not100.4 = icmp eq i32 %i.zq, 0
  br i1 %.not100.4, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.5, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.5:        ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.4
  %i.zr = load ptr, ptr %0, align 8, !tbaa !28
  %i.zs = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !25
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.zt
  %i.zv = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !25
  %i.zx = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.zw
  %i.zy = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !29
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !29
  %.val.5 = load i32, ptr %i.k, align 8, !tbaa !93
  %.val110.5 = load i32, ptr %i.m, align 4, !tbaa !94
  %i.aac = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.zu, ptr noundef %i.zx, i32 noundef %i.zz, i32 noundef %i.aab, i32 %.val.5, i32 %.val110.5, ptr noundef %6) ; 2 uses
  %.not100.5 = icmp eq i32 %i.aac, 0
  br i1 %.not100.5, label %_ZL15Adam7_interlacePhPKhjjj.exit.split.6, label %.loopexit

_ZL15Adam7_interlacePhPKhjjj.exit.split.6:        ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.5
  %i.aad = load ptr, ptr %0, align 8, !tbaa !28
  %i.aae = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.aaf = load i64, ptr %i.aae, align 16, !tbaa !25
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aad, i64 %i.aaf
  %i.aah = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.aai = load i64, ptr %i.aah, align 16, !tbaa !25
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aai
  %i.aak = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aal = load i32, ptr %i.aak, align 8, !tbaa !29
  %i.aam = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aan = load i32, ptr %i.aam, align 8, !tbaa !29
  %.val.6 = load i32, ptr %i.k, align 8, !tbaa !93
  %.val110.6 = load i32, ptr %i.m, align 4, !tbaa !94
  %i.aao = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.aag, ptr noundef %i.aaj, i32 noundef %i.aal, i32 noundef %i.aan, i32 %.val.6, i32 %.val110.6, ptr noundef %6)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL15Adam7_interlacePhPKhjjj.exit.split.6, %.thread119.us.6, %_ZL15Adam7_interlacePhPKhjjj.exit.split.preheader, %_ZL15Adam7_interlacePhPKhjjj.exit.split.1, %_ZL15Adam7_interlacePhPKhjjj.exit.split.2, %_ZL15Adam7_interlacePhPKhjjj.exit.split.3, %_ZL15Adam7_interlacePhPKhjjj.exit.split.4, %_ZL15Adam7_interlacePhPKhjjj.exit.split.5, %.thread119.us, %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.preheader, %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.1, %.thread119.us.1, %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.2, %.thread119.us.2, %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.3, %.thread119.us.3, %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.4, %.thread119.us.4, %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.5, %.thread119.us.5, %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.6, %bb.h
  %.9 = phi i32 [ 83, %bb.h ], [ %i.wp, %.thread119.us.5 ], [ %i.aac, %_ZL15Adam7_interlacePhPKhjjj.exit.split.5 ], [ 83, %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.preheader ], [ %i.xu, %.thread119.us ], [ 83, %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.1 ], [ %i.tn, %.thread119.us.1 ], [ %i.ze, %_ZL15Adam7_interlacePhPKhjjj.exit.split.3 ], [ 83, %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.2 ], [ %i.uh, %.thread119.us.2 ], [ 83, %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.6 ], [ 83, %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.3 ], [ %i.vb, %.thread119.us.3 ], [ 83, %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.5 ], [ 83, %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.4 ], [ %i.vv, %.thread119.us.4 ], [ %i.so, %_ZL15Adam7_interlacePhPKhjjj.exit.split.preheader ], [ %i.xj, %.thread119.us.6 ], [ %i.yg, %_ZL15Adam7_interlacePhPKhjjj.exit.split.1 ], [ %i.aao, %_ZL15Adam7_interlacePhPKhjjj.exit.split.6 ], [ %i.ys, %_ZL15Adam7_interlacePhPKhjjj.exit.split.2 ], [ %i.zq, %_ZL15Adam7_interlacePhPKhjjj.exit.split.4 ]
  tail call void @free(ptr noundef %i.an) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  br label %bb.ad

bb.ad:                                            ; preds = %bb.b, %bb.g, %bb.f, %.loopexit
  %.10 = phi i32 [ 83, %bb.b ], [ %.2, %bb.f ], [ %i.ah, %bb.g ], [ %.9, %.loopexit ]
  ret i32 %.10
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL14writeSignatureP8ucvector(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = add i64 %i.b, 8                          ; 3 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  %.pre = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.e, 1
  %i.h = add i64 %i.g, %i.c                       ; 2 uses
  %i.i = tail call noalias noundef ptr @realloc(ptr noundef %.pre, i64 noundef %i.h) #32 ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZL15ucvector_resizeP8ucvectorm.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.b
  store i64 %i.h, ptr %i.d, align 8, !tbaa !56
  store ptr %i.i, ptr %0, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %.thread.i.i ], [ %.pre, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.b
  store i64 727905341920923785, ptr %i.k, align 1, !tbaa !35, !alias.scope !641
  br label %_ZL15ucvector_resizeP8ucvectorm.exit

_ZL15ucvector_resizeP8ucvectorm.exit:             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 83, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL13addChunk_IHDRP8ucvectorjj16LodePNGColorTypejj(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55   ; 4 uses
  %.not.i = icmp ugt i64 %i.b, -14
  br i1 %.not.i, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i64 %i.b, 25                     ; 3 uses
  %i.d = icmp ult i64 %i.b, -25
  br i1 %i.d, label %bb.c, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread

bb.c:                                             ; preds = %bb.b
  store i64 %i.c, ptr %i.a, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = icmp ugt i64 %i.c, %i.f
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !54  ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = lshr i64 %i.f, 1
  %i.i = add i64 %i.h, %i.c                       ; 2 uses
  %i.j = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.i) #32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.d
  store i64 %i.i, ptr %i.e, align 8, !tbaa !56
  store ptr %i.j, ptr %0, align 8, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %.thread.i.i.i, %bb.c
  %i.k = phi ptr [ %i.j, %.thread.i.i.i ], [ %.pre.i, %bb.c ]
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.b ; 10 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 13>, ptr %i.l, align 1, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 1380206665, ptr %i.m, align 1, !tbaa !35, !alias.scope !645
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.o, ptr %i.n, align 1, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.q = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %i.q, ptr %i.p, align 1, !tbaa !35
  %i.r = trunc i32 %4 to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i8 %i.r, ptr %i.s, align 1, !tbaa !35
  %i.t = trunc i32 %3 to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  store i8 %i.t, ptr %i.u, align 1, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 18
  store i8 0, ptr %i.v, align 1, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 19
  store i8 0, ptr %i.w, align 1, !tbaa !35
  %i.x = trunc i32 %5 to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i8 %i.x, ptr %i.y, align 1, !tbaa !35
  tail call void @_Z26lodepng_chunk_generate_crcPh(ptr noundef nonnull %i.l)
  br label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread: ; preds = %bb.d, %bb.a, %bb.b, %bb.e
  %.1 = phi i32 [ 0, %bb.e ], [ 83, %bb.d ], [ 77, %bb.a ], [ 77, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 123) i32 @_ZL16addUnknownChunksP8ucvectorPhm(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_Z20lodepng_chunk_appendPPhPmPKh.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_Z18lodepng_chunk_nextPhS_.exit
  %3 = phi i64 [ %i.b, %.lr.ph ], [ %i.cz, %_Z18lodepng_chunk_nextPhS_.exit ]
  %.01522 = phi ptr [ %1, %.lr.ph ], [ %.1.i, %_Z18lodepng_chunk_nextPhS_.exit ] ; 16 uses
  %.0152244 = ptrtoaddr ptr %.01522 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.01522, i64 4 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !35
  %i.h = and i8 %i.g, -33
  %i.i = add i8 %i.h, -65
  %or.cond16.i.i = icmp ult i8 %i.i, 26
  br i1 %or.cond16.i.i, label %bb.c, label %_Z20lodepng_chunk_appendPPhPmPKh.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.01522, i64 5 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !35
  %i.l = and i8 %i.k, -33
  %i.m = add i8 %i.l, -65
  %or.cond16.1.i.i = icmp ult i8 %i.m, 26
  br i1 %or.cond16.1.i.i, label %bb.d, label %_Z20lodepng_chunk_appendPPhPmPKh.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %.01522, i64 6     ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35    ; 2 uses
  %i.p = and i8 %i.o, -33
  %i.q = add i8 %i.p, -65
  %or.cond16.2.i.i = icmp ult i8 %i.q, 26
  br i1 %or.cond16.2.i.i, label %_ZL29lodepng_chunk_type_name_validPKh.exit.i, label %_Z20lodepng_chunk_appendPPhPmPKh.exit.thread

_ZL29lodepng_chunk_type_name_validPKh.exit.i:     ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.01522, i64 7 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !35
  %i.t = and i8 %i.s, -33
  %i.u = add i8 %i.t, -91
  %or.cond16.3.i.i = icmp ult i8 %i.u, -26
  br i1 %or.cond16.3.i.i, label %_Z20lodepng_chunk_appendPPhPmPKh.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZL29lodepng_chunk_type_name_validPKh.exit.i
  %i.v = and i8 %i.o, 32
  %.not19.i = icmp eq i8 %i.v, 0
  br i1 %.not19.i, label %bb.f, label %_Z20lodepng_chunk_appendPPhPmPKh.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %.01522, align 1, !tbaa !35
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 24                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01522, i64 1 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 16               ; 2 uses
  %i.ad = or disjoint i64 %i.ac, %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %.01522, i64 2 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 8                ; 2 uses
  %i.ai = or disjoint i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.01522, i64 3 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.al = zext i8 %i.ak to i64                    ; 3 uses
  %i.am = or disjoint i64 %i.ai, %i.al            ; 2 uses
  %i.an = add nuw nsw i64 %i.am, 12               ; 6 uses
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !25  ; 4 uses
  %i.ap = add i64 %i.an, %i.ao                    ; 4 uses
  %.not.i = icmp ult i64 %i.ap, %i.ao
  br i1 %.not.i, label %_Z20lodepng_chunk_appendPPhPmPKh.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %0, align 8, !tbaa !28
  %i.ar = tail call noalias noundef ptr @realloc(ptr noundef %i.aq, i64 noundef %i.ap) #32 ; 4 uses
  %i.as = ptrtoaddr ptr %i.ar to i64
  %.not22.i = icmp eq ptr %i.ar, null
  br i1 %.not22.i, label %_Z20lodepng_chunk_appendPPhPmPKh.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.g
  store ptr %i.ar, ptr %0, align 8, !tbaa !28
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao ; 3 uses
  %i.au = or disjoint i64 %i.y, %i.ac
  %i.av = or disjoint i64 %i.au, %i.ah
  %i.aw = or disjoint i64 %i.av, 11
  %i.ax = add nuw nsw i64 %i.aw, %i.al            ; 2 uses
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = icmp eq i64 %i.ay, 4294967295
  %i.ba = icmp samesign ugt i64 %i.ax, 4294967295
  %i.bb = or i1 %i.az, %i.ba
  br i1 %i.bb, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bc = add i64 %i.ao, %i.as
  %i.bd = sub i64 %.0152244, %i.bc
  %diff.check = icmp ugt i64 %i.bd, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp samesign ult i64 %i.am, 20
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %i.an, 28
  %n.vec = and i64 %i.an, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01522, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <16 x i8>, ptr %i.bf, align 1, !tbaa !35
  %wide.load45 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <16 x i8> %wide.load, ptr %i.bh, align 1, !tbaa !35
  store <16 x i8> %wide.load45, ptr %i.bi, align 1, !tbaa !35
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !646

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bk = and i64 %i.al, 3                        ; 2 uses
  %n.vec46 = sub nuw nsw i64 %i.an, %i.bk         ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01522, i64 %index47
  %wide.load48 = load <4 x i8>, ptr %i.bl, align 1, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 %index47
  store <4 x i8> %wide.load48, ptr %i.bm, align 1, !tbaa !35
  %index.next49 = add nuw i64 %index47, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next49, %n.vec46
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !647

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %i.bk, 0
  br i1 %cmp.n50, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec46, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01522, i64 %indvars.iv.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !35
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.i
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !35
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.br = and i64 %indvars.iv.next.i, 4294967295
  %.not23.i = icmp eq i64 %i.an, %i.br
  br i1 %.not23.i, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !648

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  store i64 %i.ap, ptr %i.c, align 8, !tbaa !56
  %i.bs = sub i64 %i.e, %3                        ; 2 uses
  %i.bt = icmp uge ptr %.01522, %i.d
  %i.bu = icmp ult i64 %i.bs, 12
  %or.cond.i = or i1 %i.bt, %i.bu
  br i1 %or.cond.i, label %_Z18lodepng_chunk_nextPhS_.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.bv = load i8, ptr %.01522, align 1, !tbaa !35 ; 2 uses
  %i.bw = icmp eq i8 %i.bv, -119
  %i.bx = load i8, ptr %i.z, align 1, !tbaa !35   ; 2 uses
  %i.by = icmp eq i8 %i.bx, 80
  %or.cond28.i = select i1 %i.bw, i1 %i.by, i1 false
  %.pre = load i8, ptr %i.ae, align 1, !tbaa !35  ; 2 uses
  br i1 %or.cond28.i, label %bb.i, label %.._crit_edge.i_crit_edge

.._crit_edge.i_crit_edge:                         ; preds = %bb.h
  %.pre36 = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.bz = zext i8 %i.bx to i64
  %i.ca = shl nuw nsw i64 %i.bz, 16
  br label %._crit_edge.i

bb.i:                                             ; preds = %bb.h
  %i.cb = icmp eq i8 %.pre, 78
  %.pre37 = load i8, ptr %i.aj, align 1, !tbaa !35 ; 2 uses
  %i.cc = icmp eq i8 %.pre37, 71
  %or.cond = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %bb.i
  %i.cd = load i8, ptr %i.f, align 1, !tbaa !35
  %i.ce = icmp eq i8 %i.cd, 13
  br i1 %i.ce, label %bb.k, label %._crit_edge.i

bb.k:                                             ; preds = %bb.j
  %i.cf = load i8, ptr %i.j, align 1, !tbaa !35
  %i.cg = icmp eq i8 %i.cf, 10
  br i1 %i.cg, label %bb.l, label %._crit_edge.i

bb.l:                                             ; preds = %bb.k
  %i.ch = load i8, ptr %i.n, align 1, !tbaa !35
  %i.ci = icmp eq i8 %i.ch, 26
  br i1 %i.ci, label %bb.m, label %._crit_edge.i

bb.m:                                             ; preds = %bb.l
  %i.cj = load i8, ptr %i.r, align 1, !tbaa !35
  %i.ck = icmp eq i8 %i.cj, 10
  br i1 %i.ck, label %bb.n, label %._crit_edge.i

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %.01522, i64 8
  br label %_Z18lodepng_chunk_nextPhS_.exit

._crit_edge.i:                                    ; preds = %.._crit_edge.i_crit_edge, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cm = phi i8 [ %.pre36, %.._crit_edge.i_crit_edge ], [ 71, %bb.m ], [ 71, %bb.l ], [ 71, %bb.k ], [ 71, %bb.j ], [ %.pre37, %bb.i ]
  %i.cn = phi i64 [ %i.ca, %.._crit_edge.i_crit_edge ], [ 5242880, %bb.m ], [ 5242880, %bb.l ], [ 5242880, %bb.k ], [ 5242880, %bb.j ], [ 5242880, %bb.i ]
  %i.co = zext i8 %i.bv to i64
  %i.cp = shl nuw nsw i64 %i.co, 24
  %i.cq = zext i8 %.pre to i64
  %i.cr = shl nuw nsw i64 %i.cq, 8
  %i.cs = zext i8 %i.cm to i64
  %i.ct = or disjoint i64 %i.cp, %i.cn
  %i.cu = or disjoint i64 %i.ct, 12
  %i.cv = add nuw nsw i64 %i.cu, %i.cs
  %i.cw = add nuw nsw i64 %i.cv, %i.cr            ; 2 uses
  %i.cx = icmp ugt i64 %i.cw, %i.bs
  %i.cy = getelementptr inbounds nuw i8, ptr %.01522, i64 %i.cw
  %spec.select.i = select i1 %i.cx, ptr %i.d, ptr %i.cy
  br label %_Z18lodepng_chunk_nextPhS_.exit

_Z18lodepng_chunk_nextPhS_.exit:                  ; preds = %.loopexit, %bb.n, %._crit_edge.i
  %.1.i = phi ptr [ %spec.select.i, %._crit_edge.i ], [ %i.cl, %bb.n ], [ %i.d, %.loopexit ] ; 2 uses
  %i.cz = ptrtoint ptr %.1.i to i64               ; 2 uses
  %i.da = sub i64 %i.cz, %i.b
  %i.db = icmp ult i64 %i.da, %2
  br i1 %i.db, label %bb.b, label %_Z20lodepng_chunk_appendPPhPmPKh.exit.thread, !llvm.loop !649

_Z20lodepng_chunk_appendPPhPmPKh.exit.thread:     ; preds = %_Z18lodepng_chunk_nextPhS_.exit, %_ZL29lodepng_chunk_type_name_validPKh.exit.i, %bb.e, %bb.c, %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 121, %_ZL29lodepng_chunk_type_name_validPKh.exit.i ], [ 121, %bb.b ], [ 121, %bb.d ], [ 77, %bb.f ], [ 83, %bb.g ], [ 121, %bb.c ], [ 122, %bb.e ], [ 0, %_Z18lodepng_chunk_nextPhS_.exit ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 117) i32 @_ZL13addChunk_cICPP8ucvectorPK11LodePNGInfo(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !153
  %i.c = icmp ugt i32 %i.b, 255
  br i1 %i.c, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 284 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !154
  %i.f = icmp ugt i32 %i.e, 255
  br i1 %i.f, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !155
  %i.i = icmp ugt i32 %i.h, 255
  br i1 %i.i, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 292 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !156
  %i.l = icmp ugt i32 %i.k, 255
  br i1 %i.l, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !55   ; 4 uses
  %.not.i = icmp ugt i64 %i.n, -5
  br i1 %.not.i, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nuw i64 %i.n, 16                     ; 3 uses
  %i.p = icmp ult i64 %i.n, -16
  br i1 %i.p, label %bb.g, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread

bb.g:                                             ; preds = %bb.f
  store i64 %i.o, ptr %i.m, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.s = icmp ugt i64 %i.o, %i.r
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !54  ; 2 uses
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = lshr i64 %i.r, 1
  %i.u = add i64 %i.t, %i.o                       ; 2 uses
  %i.v = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.u) #32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.h
  store i64 %i.u, ptr %i.q, align 8, !tbaa !56
  store ptr %i.v, ptr %0, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %.thread.i.i.i, %bb.g
  %i.w = phi ptr [ %i.v, %.thread.i.i.i ], [ %.pre.i, %bb.g ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.n ; 7 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 4>, ptr %i.x, align 1, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 1346586979, ptr %i.y, align 1, !tbaa !35, !alias.scope !653
  %i.z = load i32, ptr %i.a, align 8, !tbaa !153
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !35
  %i.ac = load i32, ptr %i.d, align 4, !tbaa !154
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !35
  %i.af = load i32, ptr %i.g, align 8, !tbaa !155
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !35
  %i.ai = load i32, ptr %i.j, align 4, !tbaa !156
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !35
  tail call void @_Z26lodepng_chunk_generate_crcPh(ptr noundef nonnull %i.x)
  br label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread: ; preds = %bb.h, %bb.e, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a, %bb.i
  %.1 = phi i32 [ 116, %bb.d ], [ 116, %bb.a ], [ 116, %bb.b ], [ 116, %bb.c ], [ 0, %bb.i ], [ 83, %bb.h ], [ 77, %bb.e ], [ 77, %bb.f ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 119) i32 @_ZL13addChunk_mDCVP8ucvectorPK11LodePNGInfo(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 300 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !181
  %i.d = icmp ugt i32 %i.c, 65535
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !182
  %i.g = icmp ugt i32 %i.f, 65535
  br i1 %i.g, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 308 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !183
  %i.j = icmp ugt i32 %i.i, 65535
  br i1 %i.j, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !184
  %i.m = icmp ugt i32 %i.l, 65535
  br i1 %i.m, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 316 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !185
  %i.p = icmp ugt i32 %i.o, 65535
  br i1 %i.p, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !186
  %i.s = icmp ugt i32 %i.r, 65535
  br i1 %i.s, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 324 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !187
  %i.v = icmp ugt i32 %i.u, 65535
  br i1 %i.v, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !188
  %i.y = icmp ugt i32 %i.x, 65535
  br i1 %i.y, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = call fastcc noundef i32 @_ZL18lodepng_chunk_initPPhP8ucvectormPKc(ptr noundef %i.a, ptr noundef %0, i64 noundef 24, ptr noundef nonnull @.str.17) ; 2 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !181
  %i.ab = lshr i32 %i.aa, 8
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !28  ; 19 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !35
  %i.af = load i32, ptr %i.b, align 4, !tbaa !181
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !35
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !182
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 10
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !35
  %i.am = load i32, ptr %i.e, align 8, !tbaa !182
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 11
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !35
  %i.ap = load i32, ptr %i.h, align 4, !tbaa !183
  %i.aq = lshr i32 %i.ap, 8
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !35
  %i.at = load i32, ptr %i.h, align 4, !tbaa !183
  %i.au = trunc i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 13
  store i8 %i.au, ptr %i.av, align 1, !tbaa !35
  %i.aw = load i32, ptr %i.k, align 8, !tbaa !184
  %i.ax = lshr i32 %i.aw, 8
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 14
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !35
  %i.ba = load i32, ptr %i.k, align 8, !tbaa !184
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 15
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !35
  %i.bd = load i32, ptr %i.n, align 4, !tbaa !185
  %i.be = lshr i32 %i.bd, 8
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !35
  %i.bh = load i32, ptr %i.n, align 4, !tbaa !185
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 17
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !35
end_hunk_0
begin_hunk_1_@_Z21lodepng_encode_memoryPPhPmPKhjj16LodePNGColorTypej:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 228
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 216
  store i32 0, ptr %i.x, align 8, !tbaa !116
  store i32 0, ptr %i.s, align 8, !tbaa !117
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 212
  store i32 0, ptr %i.y, align 4, !tbaa !118
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 264
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 460
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 352
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 392
  store i32 0, ptr %i.ac, align 8, !tbaa !119
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 408
  store i32 0, ptr %i.ad, align 8, !tbaa !120
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 416
  store i32 0, ptr %i.ae, align 8, !tbaa !121
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 452
  store i32 0, ptr %i.af, align 4, !tbaa !122
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 584
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.z, i8 0, i64 84, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.aa, i8 0, i64 120, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 632
  store i32 1, ptr %i.ah, align 8, !tbaa !146
  store i32 %5, ptr %i.o, align 8, !tbaa !208
  store i32 %6, ptr %i.q, align 4, !tbaa !202
  store i32 %5, ptr %i.t, align 8, !tbaa !201
  store i32 %6, ptr %i.v, align 4, !tbaa !825
  %i.ai = call noundef i32 @_Z14lodepng_encodePPhPmPKhjjP12LodePNGState(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %7)
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !95  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_Z21lodepng_state_cleanupP12LodePNGState.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef nonnull %i.aj) #31
  br label %_Z21lodepng_state_cleanupP12LodePNGState.exit

_Z21lodepng_state_cleanupP12LodePNGState.exit:    ; preds = %bb.a, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  call void @_Z20lodepng_info_cleanupP11LodePNGInfo(ptr noundef nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  ret i32 %i.ai
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 124) i32 @_Z16lodepng_encode32PPhPmPKhjj(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef i32 @_Z21lodepng_encode_memoryPPhPmPKhjj16LodePNGColorTypej(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 6, i32 noundef 8)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 124) i32 @_Z16lodepng_encode24PPhPmPKhjj(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef i32 @_Z21lodepng_encode_memoryPPhPmPKhjj16LodePNGColorTypej(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 2, i32 noundef 8)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 124) i32 @_Z19lodepng_encode_filePKcPKhjj16LodePNGColorTypej(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.c = call noundef i32 @_Z21lodepng_encode_memoryPPhPmPKhjj16LodePNGColorTypej(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  br i1 %.not, label %bb.b, label %_Z17lodepng_save_filePKhmPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !25
  %i.e = tail call noalias ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.2) ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_Z17lodepng_save_filePKhmPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @fwrite(ptr noundef readonly %.pre, i64 noundef 1, i64 noundef %i.d, ptr noundef nonnull %i.e) ; 0 uses
  %i.g = tail call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  br label %_Z17lodepng_save_filePKhmPKc.exit

_Z17lodepng_save_filePKhmPKc.exit:                ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ 0, %bb.c ], [ 79, %bb.b ]
  tail call void @free(ptr noundef %.pre) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 124) i32 @_Z21lodepng_encode32_filePKcPKhjj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.c = call noundef i32 @_Z21lodepng_encode_memoryPPhPmPKhjj16LodePNGColorTypej(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef 6, i32 noundef 8) ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  br i1 %.not.i, label %bb.b, label %_Z19lodepng_encode_filePKcPKhjj16LodePNGColorTypej.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !25
  %i.e = tail call noalias ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.2) ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_Z19lodepng_encode_filePKcPKhjj16LodePNGColorTypej.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @fwrite(ptr noundef readonly %.pre.i, i64 noundef 1, i64 noundef %i.d, ptr noundef nonnull %i.e) ; 0 uses
  %i.g = tail call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  br label %_Z19lodepng_encode_filePKcPKhjj16LodePNGColorTypej.exit

_Z19lodepng_encode_filePKcPKhjj16LodePNGColorTypej.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.c, %bb.a ], [ 0, %bb.c ], [ 79, %bb.b ]
  tail call void @free(ptr noundef %.pre.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 124) i32 @_Z21lodepng_encode24_filePKcPKhjj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.c = call noundef i32 @_Z21lodepng_encode_memoryPPhPmPKhjj16LodePNGColorTypej(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef 2, i32 noundef 8) ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  br i1 %.not.i, label %bb.b, label %_Z19lodepng_encode_filePKcPKhjj16LodePNGColorTypej.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !25
  %i.e = tail call noalias ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.2) ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_Z19lodepng_encode_filePKcPKhjj16LodePNGColorTypej.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @fwrite(ptr noundef readonly %.pre.i, i64 noundef 1, i64 noundef %i.d, ptr noundef nonnull %i.e) ; 0 uses
  %i.g = tail call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  br label %_Z19lodepng_encode_filePKcPKhjj16LodePNGColorTypej.exit

_Z19lodepng_encode_filePKcPKhjj16LodePNGColorTypej.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.c, %bb.a ], [ 0, %bb.c ], [ 79, %bb.b ]
  tail call void @free(ptr noundef %.pre.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_Z18lodepng_error_textj(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp ult i32 %0, 124
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Z18lodepng_error_textj, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.127, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 79) i32 @_ZN7lodepng9load_fileERSt6vectorIhSaIhEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !214
  %i.b = tail call noalias ptr @fopen(ptr noundef %i.a, ptr noundef nonnull @.str.1) ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @fseek(ptr noundef nonnull %i.b, i64 noundef 0, i32 noundef 2)
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN7lodepngL10load_file_ERSt6vectorIhSaIhEEP8_IO_FILE.exit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @ftell(ptr noundef nonnull %i.b) ; 7 uses
  %i.e = icmp eq i64 %i.d, 9223372036854775807
  br i1 %i.e, label %_ZN7lodepngL10load_file_ERSt6vectorIhSaIhEEP8_IO_FILE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @fseek(ptr noundef nonnull %i.b, i64 noundef 0, i32 noundef 0)
  %.not6.i.i = icmp ne i32 %i.f, 0
  %i.g = icmp slt i64 %i.d, 0
  %or.cond.i = or i1 %i.g, %.not6.i.i
  br i1 %or.cond.i, label %_ZN7lodepngL10load_file_ERSt6vectorIhSaIhEEP8_IO_FILE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !216  ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !217    ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp ugt i64 %i.d, %i.m
  br i1 %i.n, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.thread.i, label %bb.f

_ZNSt6vectorIhSaIhEE6resizeEm.exit.thread.i:      ; preds = %bb.e
  %i.o = sub nuw nsw i64 %i.d, %i.m
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !217 ; 2 uses
  %.pre11.i = load ptr, ptr %i.h, align 8, !tbaa !216
  %.pre12.i = ptrtoint ptr %.pre.i to i64
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = icmp ult i64 %i.d, %i.m
  br i1 %i.p, label %bb.g, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.g
  store ptr %i.q, ptr %i.h, align 8, !tbaa !216
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i, %bb.g, %bb.f
  %i.r = phi ptr [ %i.i, %bb.f ], [ %i.i, %bb.g ], [ %i.q, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i ]
  %i.s = icmp eq i64 %i.d, 0
  br i1 %i.s, label %_ZN7lodepngL10load_file_ERSt6vectorIhSaIhEEP8_IO_FILE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre12.i, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.thread.i ], [ %i.l, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i ]
  %i.t = phi ptr [ %.pre11.i, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.thread.i ], [ %i.r, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i ]
  %i.u = phi ptr [ %.pre.i, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.thread.i ], [ %i.j, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i ]
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.v, %.pre-phi.i
  %i.x = tail call i64 @fread(ptr noundef nonnull %i.u, i64 noundef 1, i64 noundef %i.w, ptr noundef nonnull %i.b)
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !216
  %i.z = load ptr, ptr %0, align 8, !tbaa !217
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %.not.i = icmp eq i64 %i.x, %i.ac
  %..i = select i1 %.not.i, i32 0, i32 78
  br label %_ZN7lodepngL10load_file_ERSt6vectorIhSaIhEEP8_IO_FILE.exit

_ZN7lodepngL10load_file_ERSt6vectorIhSaIhEEP8_IO_FILE.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %bb.h
  %.0.i = phi i32 [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i ], [ 78, %bb.d ], [ %..i, %bb.h ], [ 78, %bb.c ], [ 78, %bb.b ]
  %i.ad = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN7lodepngL10load_file_ERSt6vectorIhSaIhEEP8_IO_FILE.exit
  %.0 = phi i32 [ %.0.i, %_ZN7lodepngL10load_file_ERSt6vectorIhSaIhEEP8_IO_FILE.exit ], [ 78, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef range(i32 0, 80) i32 @_ZN7lodepng9save_fileERKSt6vectorIhSaIhEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !214
  %i.e = tail call noalias ptr @fopen(ptr noundef readonly %i.d, ptr noundef nonnull @.str.2) ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_Z17lodepng_save_filePKhmPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp eq ptr %i.a, %i.c
  %spec.select = select i1 %i.i, ptr null, ptr %i.a
  %i.j = tail call i64 @fwrite(ptr noundef readonly %spec.select, i64 noundef 1, i64 noundef %i.h, ptr noundef nonnull %i.e) ; 0 uses
  %i.k = tail call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  br label %_Z17lodepng_save_filePKhmPKc.exit

_Z17lodepng_save_filePKhmPKc.exit:                ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ 79, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7lodepng10decompressERSt6vectorIhSaIhEEPKhmRK25LodePNGDecompressSettings(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.ucvector, align 8           ; 6 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr null, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 0, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i32 %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3), !inline_history !166
  %.not27.i = icmp eq i32 %i.e, 0
  br i1 %.not27.i, label %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exitthread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %.not28.i = icmp eq i64 %i.g, 0
  br i1 %.not28.i, label %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exitthread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.b, align 8, !tbaa !25
  %i.i = icmp ugt i64 %i.h, %i.g
  %spec.select.i = select i1 %i.i, i32 109, i32 110
  br label %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exitthread-pre-split

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.k = call fastcc noundef i32 @_ZL24lodepng_zlib_decompressvP8ucvectorPKhmPK25LodePNGDecompressSettings(ptr noundef %4, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3)
  %i.l = load ptr, ptr %4, align 8, !tbaa !54     ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !28
  %i.m = load i64, ptr %i.j, align 8, !tbaa !55
  store i64 %i.m, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit

_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exitthread-pre-split: ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.ph = phi i32 [ 0, %bb.b ], [ 110, %bb.c ], [ %spec.select.i, %bb.d ]
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit

_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit: ; preds = %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exitthread-pre-split, %bb.e
  %i.n = phi ptr [ %.pr, %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exitthread-pre-split ], [ %i.l, %bb.e ] ; 3 uses
  %.0.i = phi i32 [ %.0.i.ph, %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exitthread-pre-split ], [ %i.k, %bb.e ]
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = load i64, ptr %i.b, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %i.v
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.w, ptr noundef nonnull %i.n, ptr noundef nonnull %i.r)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @free(ptr noundef %i.x) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL15zlib_decompressPPhPmmPKhmPK25LodePNGDecompressSettings(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.ucvector, align 8           ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 %i.b(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %5)
  %.not27 = icmp eq i32 %i.c, 0
  br i1 %.not27, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %.not28 = icmp eq i64 %i.e, 0
  br i1 %.not28, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i64, ptr %1, align 8, !tbaa !25
  %i.g = icmp ugt i64 %i.f, %i.e
  %spec.select = select i1 %i.g, i32 109, i32 110
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.h = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !25     ; 5 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !54, !alias.scope !828
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !55, !alias.scope !828
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %i.i, ptr %i.k, align 8, !tbaa !56, !alias.scope !828
  %.not26 = icmp eq i64 %2, 0
  br i1 %.not26, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add i64 %i.i, %2                         ; 2 uses
  %i.m = icmp ugt i64 %i.l, %i.i
  br i1 %i.m, label %bb.g, label %_ZL15ucvector_resizeP8ucvectorm.exit

bb.g:                                             ; preds = %bb.f
  %i.n = lshr i64 %i.i, 1
  %i.o = add i64 %i.n, %i.l                       ; 2 uses
  %i.p = tail call noalias noundef ptr @realloc(ptr noundef %i.h, i64 noundef %i.o) #32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZL15ucvector_resizeP8ucvectorm.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  store i64 %i.o, ptr %i.k, align 8, !tbaa !56
  store ptr %i.p, ptr %6, align 8, !tbaa !54
  br label %_ZL15ucvector_resizeP8ucvectorm.exit

_ZL15ucvector_resizeP8ucvectorm.exit:             ; preds = %bb.f, %bb.g, %.thread.i.i
  %i.q = load i64, ptr %1, align 8, !tbaa !25
  store i64 %i.q, ptr %i.j, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %_ZL15ucvector_resizeP8ucvectorm.exit, %bb.e
  %i.r = call fastcc noundef i32 @_ZL24lodepng_zlib_decompressvP8ucvectorPKhmPK25LodePNGDecompressSettings(ptr noundef %6, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %5)
  %i.s = load ptr, ptr %6, align 8, !tbaa !54
  store ptr %i.s, ptr %0, align 8, !tbaa !28
  %i.t = load i64, ptr %i.j, align 8, !tbaa !55
  store i64 %i.t, ptr %1, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.h
  %.0 = phi i32 [ %i.r, %bb.h ], [ %spec.select, %bb.d ], [ 110, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7lodepng10decompressERSt6vectorIhSaIhEERKS2_RK25LodePNGDecompressSettings(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !28     ; 3 uses
end_hunk_1
