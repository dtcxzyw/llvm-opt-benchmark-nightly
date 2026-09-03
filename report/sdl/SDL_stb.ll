Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 91
begin_hunk_0_@SDL_SavePNG_IO_REAL:bb.a
  %i.th = load i64, ptr %3, align 8               ; 3 uses
  %i.ti = add i64 %i.th, 16                       ; 3 uses
  %i.tj = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.tk = icmp ugt i64 %i.ti, %i.tj
  br i1 %i.tk, label %bb.bc, label %._crit_edge.i231.i

._crit_edge.i231.i:                               ; preds = %bb.bb
  %.pre.i233.i = load ptr, ptr %i.cs, align 8
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit

bb.bc:                                            ; preds = %bb.bb
  %i.tl = load i32, ptr %i.ce, align 8
  %.not.i235.i = icmp eq i32 %i.tl, 0
  br i1 %.not.i235.i, label %bb.be, label %.preheader.i236.i

.preheader.i236.i:                                ; preds = %bb.bc, %.preheader.i236.i
  %.025.i237.i = phi i64 [ %i.tn, %.preheader.i236.i ], [ %i.tj, %bb.bc ]
  %i.tm = shl i64 %.025.i237.i, 1
  %i.tn = call i64 @llvm.umax.i64(i64 %i.tm, i64 128) ; 4 uses
  %i.to = icmp ugt i64 %i.ti, %i.tn
  br i1 %i.to, label %.preheader.i236.i, label %bb.bd, !llvm.loop !0

bb.bd:                                            ; preds = %.preheader.i236.i
  %i.tp = load ptr, ptr %i.cs, align 8
  %i.tq = call ptr @SDL_realloc_REAL(ptr noundef %i.tp, i64 noundef %i.tn) #14 ; 3 uses
  %.not31.i238.i = icmp eq ptr %i.tq, null
  br i1 %.not31.i238.i, label %bb.be, label %.critedge.i239.i

.critedge.i239.i:                                 ; preds = %bb.bd
  store ptr %i.tq, ptr %i.cs, align 8
  store i64 %i.tn, ptr %i.ck, align 8
  %.pre32.i240.i = load i64, ptr %3, align 8
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  %i.tr = load ptr, ptr %i.cs, align 8
  call void @SDL_free_REAL(ptr noundef %i.tr) #13
  br label %tdefl_write_image_to_png_file_in_memory_ex.exit.thread

tdefl_write_image_to_png_file_in_memory_ex.exit.thread: ; preds = %bb.r, %bb.ba, %bb.be, %bb.ax, %bb.aa, %switch.edge, %bb.w, %bb.ae, %bb.ai, %bb.aq, %bb.au, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.split128

tdefl_write_image_to_png_file_in_memory_ex.exit:  ; preds = %._crit_edge.i231.i, %.critedge.i239.i
  %i.ts = phi i64 [ %i.th, %._crit_edge.i231.i ], [ %.pre32.i240.i, %.critedge.i239.i ]
  %i.tt = phi ptr [ %.pre.i233.i, %._crit_edge.i231.i ], [ %i.tq, %.critedge.i239.i ]
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.ts
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.tu, ptr noundef nonnull align 1 dereferenceable(16) @.str.37, i64 16, i1 false)
  store i64 %i.ti, ptr %3, align 8
  %i.tv = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 %i.qx
  %i.tx = getelementptr inbounds i8, ptr %i.tw, i64 -4
  %i.ty = add i64 %i.so, 4
  %i.tz = call fastcc i64 @mz_crc32(ptr noundef nonnull %i.tx, i64 noundef %i.ty) ; 4 uses
  %i.ua = trunc i64 %i.tz to i8
  %i.ub = lshr i64 %i.tz, 24
  %i.uc = trunc nuw i64 %i.ub to i8
  %i.ud = getelementptr inbounds i8, ptr %i.tv, i64 %i.th
  store i8 %i.uc, ptr %i.ud, align 1
  %i.ue = lshr i64 %i.tz, 16
  %i.uf = trunc i64 %i.ue to i8
  %i.ug = load ptr, ptr %i.cs, align 8
  %i.uh = load i64, ptr %3, align 8
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.uh
  %i.uj = getelementptr inbounds i8, ptr %i.ui, i64 -15
  store i8 %i.uf, ptr %i.uj, align 1
  %i.uk = lshr i64 %i.tz, 8
  %i.ul = trunc i64 %i.uk to i8
  %i.um = load ptr, ptr %i.cs, align 8
  %i.un = load i64, ptr %3, align 8
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 %i.un
  %i.up = getelementptr inbounds i8, ptr %i.uo, i64 -14
  store i8 %i.ul, ptr %i.up, align 1
  %i.uq = load ptr, ptr %i.cs, align 8
  %i.ur = load i64, ptr %3, align 8
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.ur
  %i.ut = getelementptr inbounds i8, ptr %i.us, i64 -13
  store i8 %i.ua, ptr %i.ut, align 1
  %i.uu = load i64, ptr %3, align 8
  call void @SDL_free_REAL(ptr noundef nonnull %i.cd) #13
  %i.uv = load ptr, ptr %i.cs, align 8            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.not106 = icmp eq ptr %i.uv, null
  br i1 %.not106, label %.split128, label %.split

.split:                                           ; preds = %tdefl_write_image_to_png_file_in_memory_ex.exit
  %i.uw = call i64 @SDL_WriteIO_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.uv, i64 noundef %i.uu) #13
  %.not107 = icmp ne i64 %i.uw, 0                 ; 2 uses
  call void @SDL_free_REAL(ptr noundef nonnull %i.uv) #13
  br i1 %.175, label %bb.bg, label %.thread115

.split128:                                        ; preds = %tdefl_write_image_to_png_file_in_memory_ex.exit.thread, %tdefl_write_image_to_png_file_in_memory_ex.exit
  %i.ux = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.8) #13 ; 0 uses
  br i1 %.175, label %bb.bg, label %.thread115

bb.bf:                                            ; preds = %bb.k
  br i1 %.not99, label %bb.bg, label %.thread115

bb.bg:                                            ; preds = %.split128, %.split, %bb.bf
  %.2127 = phi ptr [ %.1, %.split ], [ %.0, %bb.bf ], [ %.1, %.split128 ]
  %.178126 = phi ptr [ %.077, %.split ], [ %i.s, %bb.bf ], [ %.077, %.split128 ]
  %.180125 = phi ptr [ %.079, %.split ], [ %i.q, %bb.bf ], [ %.079, %.split128 ]
  %.182124 = phi i1 [ %.not107, %.split ], [ false, %bb.bf ], [ false, %.split128 ]
  call void @SDL_DestroySurface_REAL(ptr noundef nonnull %.2127) #13
  br label %.thread115

.thread115:                                       ; preds = %bb.b, %bb.d, %bb.h, %bb.j, %.thread, %.split128, %.split, %bb.bg, %bb.bf
  %.178123 = phi ptr [ %.077, %.split128 ], [ %.178126, %bb.bg ], [ %i.s, %bb.bf ], [ %.077, %.split ], [ null, %.thread ], [ null, %bb.j ], [ null, %bb.h ], [ null, %bb.d ], [ null, %bb.b ]
  %.180122 = phi ptr [ %.079, %.split128 ], [ %.180125, %bb.bg ], [ %i.q, %bb.bf ], [ %.079, %.split ], [ null, %.thread ], [ null, %bb.j ], [ null, %bb.h ], [ null, %bb.d ], [ null, %bb.b ]
  %.182121 = phi i1 [ false, %.split128 ], [ %.182124, %bb.bg ], [ false, %bb.bf ], [ %.not107, %.split ], [ false, %.thread ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.d ], [ false, %bb.b ] ; 2 uses
  call void @SDL_free_REAL(ptr noundef %.180122) #13
  call void @SDL_free_REAL(ptr noundef %.178123) #13
  %i.uy = icmp ne ptr %1, null
  %or.cond3 = and i1 %i.uy, %2
  br i1 %or.cond3, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.thread115
  %i.uz = call zeroext i1 @SDL_CloseIO_REAL(ptr noundef nonnull %1) #13
  %i.va = select i1 %i.uz, i1 %.182121, i1 false
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.thread115
  %.283 = phi i1 [ %i.va, %bb.bh ], [ %.182121, %.thread115 ]
  ret i1 %.283
}

declare zeroext i1 @SDL_SurfaceValid(ptr noundef) local_unnamed_addr #2

declare ptr @SDL_ConvertSurface_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @SDL_WriteIO_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @SDL_DestroySurface_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SavePNG_REAL(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @SDL_SurfaceValid(ptr noundef %0) #13
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #13
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %.not = icmp eq i32 %i.d, 0
  %.mask = and i32 %i.d, -268435456
  %.not16 = icmp eq i32 %.mask, 268435456
  %or.cond = or i1 %.not, %.not16
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = lshr i32 %i.d, 24
  %i.f = and i32 %i.e, 15
  switch i32 %i.f, label %bb.g [
    i32 1, label %bb.e
    i32 12, label %bb.e
    i32 2, label %bb.e
    i32 3, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %.not17 = icmp eq ptr %i.h, null
  br i1 %.not17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.7) #13
  br label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.e
  %i.j = tail call ptr @SDL_IOFromFile_REAL(ptr noundef %1, ptr noundef nonnull @.str.9) #13 ; 2 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call zeroext i1 @SDL_SavePNG_IO_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i1 noundef zeroext true)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %.1 = phi i1 [ %i.b, %bb.b ], [ %i.i, %bb.f ], [ %i.k, %bb.h ], [ false, %bb.g ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @stbi__jpeg_load(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef range(i32 0, 5) %4, ptr nofree noundef readonly captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i16], align 16              ; 4 uses
  %i.b = alloca [64 x i16], align 16              ; 4 uses
  %i.c = alloca [4 x ptr], align 16               ; 13 uses
  %6 = alloca [4 x %struct.stbi__resample], align 16 ; 4 uses
  %i.d = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 18568) #13 ; 103 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.iz

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18536) %i.f, i8 0, i64 18536, i1 false)
  store ptr %0, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 18544 ; 4 uses
  store ptr @stbi__idct_block, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 18552 ; 3 uses
  store ptr @stbi__YCbCr_to_RGB_row, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 18560 ; 2 uses
  store ptr @stbi__resample_row_hv_2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 18080 ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 18136
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 18232
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 18328
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 18424
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 18536 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.q = tail call fastcc i32 @stbi__decode_jpeg_header(ptr noundef nonnull %i.d, i32 noundef 0)
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %.loopexit401.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef nonnull %i.d)
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 18516 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 18520 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 18484 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 18488 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 18492 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 18496 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 18480 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 18468 ; 38 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 18464 ; 25 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 18476 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 18392 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 18296 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 18200 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 18104 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 18472 ; 11 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 18540 ; 13 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 18500 ; 13 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 18068 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 18064 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 6728 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 13960 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 13448 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.1.in.i.i = phi i8 [ %i.r, %bb.d ], [ %.1.in.i.i.be, %.backedge ] ; 2 uses
  switch i8 %.1.in.i.i, label %bb.fg [
    i8 -39, label %bb.fh
    i8 -38, label %bb.f
    i8 -36, label %bb.fe
  ]

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.d, align 8
  %i.aq = call fastcc i32 @stbi__get16be(ptr noundef %i.ap)
  %i.ar = load ptr, ptr %i.d, align 8             ; 11 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 192 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 200 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = icmp ult ptr %i.at, %i.av
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.ax, ptr %i.as, align 8
  %i.ay = load i8, ptr %i.at, align 1
  br label %stbi__get8.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 48 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8
  %.not.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i, label %stbi__get8.exit.thread.i.i.i, label %bb.i

stbi__get8.exit.thread.i.i.i:                     ; preds = %bb.h
  store i32 0, ptr %i.s, align 4
  br label %.critedge.sink.split.i.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 56 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 52
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = call i32 %i.bc(ptr noundef %i.be, ptr noundef nonnull %i.bf, i32 noundef %i.bh) #13, !inline_history !41 ; 2 uses
  %i.bj = load ptr, ptr %i.as, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 208
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ar, i64 184 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = add nsw i32 %i.br, %i.bp
  store i32 %i.bs, ptr %i.bq, align 8
  %i.bt = icmp eq i32 %i.bi, 0
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.az, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 57
  store i8 0, ptr %i.bf, align 8
  br label %stbi__refill_buffer.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bv = sext i32 %i.bi to i64
  %i.bw = getelementptr inbounds i8, ptr %i.bf, i64 %i.bv
  %.pre.i.i.i.i = load i8, ptr %i.bf, align 8
  br label %stbi__refill_buffer.exit.i.i.i.i

stbi__refill_buffer.exit.i.i.i.i:                 ; preds = %bb.k, %bb.j
  %i.bx = phi i8 [ 0, %bb.j ], [ %.pre.i.i.i.i, %bb.k ]
  %.sink.i.i.i.i.i = phi ptr [ %i.bu, %bb.j ], [ %i.bw, %bb.k ]
  store ptr %.sink.i.i.i.i.i, ptr %i.au, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 57
  store ptr %i.by, ptr %i.as, align 8
  br label %stbi__get8.exit.i.i.i

stbi__get8.exit.i.i.i:                            ; preds = %stbi__refill_buffer.exit.i.i.i.i, %bb.g
  %.0.i.i.i.i = phi i8 [ %i.ay, %bb.g ], [ %i.bx, %stbi__refill_buffer.exit.i.i.i.i ] ; 2 uses
  %i.bz = zext i8 %.0.i.i.i.i to i32              ; 3 uses
  store i32 %i.bz, ptr %i.s, align 4
  %i.ca = add i8 %.0.i.i.i.i, -5
  %or.cond.i.i.i = icmp ult i8 %i.ca, -4
  br i1 %or.cond.i.i.i, label %.critedge.sink.split.i.i, label %bb.l

bb.l:                                             ; preds = %stbi__get8.exit.i.i.i
  %i.cb = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = icmp slt i32 %i.cd, %i.bz
  br i1 %i.ce, label %.critedge.sink.split.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = shl nuw nsw i32 %i.bz, 1
  %i.cg = add nuw nsw i32 %i.cf, 6
  %.not.i.i.i = icmp eq i32 %i.aq, %i.cg
  br i1 %.not.i.i.i, label %.lr.ph111.i.i.i, label %.critedge.sink.split.i.i

.lr.ph111.i.i.i:                                  ; preds = %bb.m, %.critedge.i.i.i
  %i.ch = phi ptr [ %i.ez, %.critedge.i.i.i ], [ %i.cb, %bb.m ] ; 11 uses
  %indvars.iv114.i.i.i = phi i64 [ %indvars.iv.next115.i.i.i, %.critedge.i.i.i ], [ 0, %bb.m ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 192 ; 4 uses
  %i.cj = load ptr, ptr %i.ci, align 8            ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 200 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = icmp ult ptr %i.cj, %i.cl
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph111.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store ptr %i.cn, ptr %i.ci, align 8
  %i.co = load i8, ptr %i.cj, align 1
  br label %stbi__get8.exit77.i.i.i

bb.o:                                             ; preds = %.lr.ph111.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 48 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8
  %.not.i72.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i72.i.i.i, label %stbi__get8.exit77.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 56 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 52
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = call i32 %i.cs(ptr noundef %i.cu, ptr noundef nonnull %i.cv, i32 noundef %i.cx) #13, !inline_history !41 ; 2 uses
  %i.cz = load ptr, ptr %i.ci, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.ch, i64 208
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = trunc i64 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ch, i64 184 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = add nsw i32 %i.dh, %i.df
end_hunk_0
begin_hunk_1_@stbi__jpeg_load:bb.a
  %i.akb = mul i16 %i.aka, %i.ajy
  store i16 %i.akb, ptr %i.ajz, align 2
  %indvars.iv.next.i.i76.i.i.3 = add nuw nsw i64 %indvars.iv.i.i75.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i76.i.i.3, 64
  br i1 %exitcond.not.i.i.i.i.3, label %stbi__jpeg_dequantize.exit.i.i.i, label %scalar.ph, !llvm.loop !69

stbi__jpeg_dequantize.exit.i.i.i:                 ; preds = %scalar.ph, %vector.body
  %i.akc = load ptr, ptr %i.g, align 8
  %i.akd = load ptr, ptr %i.ahw, align 8
  %i.ake = load i32, ptr %i.ahx, align 4          ; 2 uses
  %i.akf = mul i32 %i.ahy, %i.ake
  %i.akg = sext i32 %i.akf to i64
  %i.akh = getelementptr inbounds i8, ptr %i.akd, i64 %i.akg
  %i.aki = shl nuw nsw i64 %indvars.iv.i74.i.i, 3
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akh, i64 %i.aki
  call void %i.akc(ptr noundef %i.akj, i32 noundef %i.ake, ptr noundef nonnull %i.aig) #13, !inline_history !70
  %indvars.iv.next.i77.i.i = add nuw nsw i64 %indvars.iv.i74.i.i, 1 ; 2 uses
  %exitcond.not.i78.i.i = icmp eq i64 %indvars.iv.next.i77.i.i, %wide.trip.count.i72.i.i
  br i1 %exitcond.not.i78.i.i, label %._crit_edge.i79.i.i, label %vector.memcheck, !llvm.loop !71

._crit_edge.i79.i.i:                              ; preds = %stbi__jpeg_dequantize.exit.i.i.i
  %i.akk = add nuw nsw i32 %.03437.i.i.i, 1       ; 2 uses
  %exitcond41.not.i.i.i = icmp eq i32 %i.akk, %i.ahq
  br i1 %exitcond41.not.i.i.i, label %._crit_edge38.split.loopexit.i.i.i, label %.preheader.i73.i.i, !llvm.loop !72

._crit_edge38.split.loopexit.i.i.i:               ; preds = %._crit_edge.i79.i.i
  %.pre.i80.i.i = load ptr, ptr %i.d, align 8
  br label %._crit_edge38.split.i.i.i

._crit_edge38.split.i.i.i:                        ; preds = %._crit_edge38.split.loopexit.i.i.i, %.preheader.lr.ph.i70.i.i, %.lr.ph.i69.i.i
  %i.akl = phi ptr [ %.pre.i80.i.i, %._crit_edge38.split.loopexit.i.i.i ], [ %i.ahh, %.preheader.lr.ph.i70.i.i ], [ %i.ahh, %.lr.ph.i69.i.i ] ; 3 uses
  %indvars.iv.next43.i.i.i = add nuw nsw i64 %indvars.iv42.i.i.i, 1 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 8
  %i.akn = load i32, ptr %i.akm, align 8
  %i.ako = sext i32 %i.akn to i64
  %i.akp = icmp slt i64 %indvars.iv.next43.i.i.i, %i.ako
  br i1 %i.akp, label %.lr.ph.i69.i.i, label %stbi__decode_jpeg_image.exit.i, !llvm.loop !73

.critedge.sink.split.i.i:                         ; preds = %bb.ff, %bb.fe, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.m, %bb.l, %stbi__get8.exit.i.i.i, %bb.z, %bb.y, %stbi__jpeg_huff_decode.exit179.i.i.i.i, %bb.dk, %bb.dj, %bb.dd, %bb.cg, %bb.cf, %bb.bz, %bb.bu, %bb.di, %bb.ce, %stbi__get8.exit.thread.i.i.i
  %.str.15.sink.i.i = phi ptr [ @.str.15, %bb.ce ], [ @.str.20, %bb.bu ], [ @.str.15, %bb.di ], [ @.str.15, %stbi__jpeg_huff_decode.exit179.i.i.i.i ], [ @.str.15, %bb.z ], [ @.str.15, %stbi__get8.exit.thread.i.i.i ], [ @.str.15, %bb.cg ], [ @.str.15, %bb.cf ], [ @.str.15, %bb.bz ], [ @.str.15, %bb.dd ], [ @.str.15, %bb.dj ], [ @.str.15, %bb.dk ], [ @.str.15, %bb.y ], [ @.str.15, %stbi__get8.exit.i.i.i ], [ @.str.15, %bb.l ], [ @.str.15, %bb.m ], [ @.str.15, %bb.ap ], [ @.str.15, %bb.aq ], [ @.str.15, %bb.ar ], [ @.str.15, %bb.as ], [ @.str.15, %bb.fe ], [ @.str.15, %bb.ff ]
  %i.akq = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull %.str.15.sink.i.i) #13 ; 0 uses
  br label %.loopexit401.i

.loopexit401.i:                                   ; preds = %stbi__parse_entropy_coded_data.exit.i.i, %._crit_edge.i.i.i, %bb.x, %bb.bn, %.lr.ph.i51.i.i, %.critedge.sink.split.i.i, %bb.c
  %i.akr = load ptr, ptr %i.d, align 8
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 8
  %i.akt = load i32, ptr %i.aks, align 8          ; 2 uses
  %i.aku = icmp sgt i32 %i.akt, 0
  br i1 %i.aku, label %.lr.ph.i.i307.i, label %load_jpeg_image.exit

.lr.ph.i.i307.i:                                  ; preds = %.loopexit401.i
  %wide.trip.count.i.i308.i = zext nneg i32 %i.akt to i64
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fo, %.lr.ph.i.i307.i
  %indvars.iv.i.i309.i = phi i64 [ 0, %.lr.ph.i.i307.i ], [ %indvars.iv.next.i.i311.i, %bb.fo ] ; 2 uses
  %i.akv = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i309.i ; 5 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 56
  %i.akx = load ptr, ptr %i.akw, align 8          ; 2 uses
  %.not.i.i310.i = icmp eq ptr %i.akx, null
  br i1 %.not.i.i310.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @SDL_free_REAL(ptr noundef nonnull %i.akx) #13
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akv, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aky, i8 0, i64 16, i1 false)
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akv, i64 64 ; 2 uses
  %i.ala = load ptr, ptr %i.akz, align 8          ; 2 uses
  %.not28.i.i.i = icmp eq ptr %i.ala, null
  br i1 %.not28.i.i.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @SDL_free_REAL(ptr noundef nonnull %i.ala) #13
  store ptr null, ptr %i.akz, align 8
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akv, i64 80
  store ptr null, ptr %i.alb, align 8
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akv, i64 72 ; 2 uses
  %i.ald = load ptr, ptr %i.alc, align 8          ; 2 uses
  %.not29.i.i.i = icmp eq ptr %i.ald, null
  br i1 %.not29.i.i.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @SDL_free_REAL(ptr noundef nonnull %i.ald) #13
  store ptr null, ptr %i.alc, align 8
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %indvars.iv.next.i.i311.i = add nuw nsw i64 %indvars.iv.i.i309.i, 1 ; 2 uses
  %exitcond.not.i.i312.i = icmp eq i64 %indvars.iv.next.i.i311.i, %wide.trip.count.i.i308.i
  br i1 %exitcond.not.i.i312.i, label %load_jpeg_image.exit, label %bb.fi, !llvm.loop !2

stbi__decode_jpeg_image.exit.loopexit514.i:       ; preds = %bb.fg
  %.pre.pre.i = load ptr, ptr %i.d, align 8
  br label %stbi__decode_jpeg_image.exit.i

stbi__decode_jpeg_image.exit.i:                   ; preds = %._crit_edge38.split.i.i.i, %stbi__decode_jpeg_image.exit.loopexit514.i, %.preheader35.i.i.i, %bb.fh
  %.pre.i = phi ptr [ %.pre.pre.i, %stbi__decode_jpeg_image.exit.loopexit514.i ], [ %.pre.pre583.i, %bb.fh ], [ %.pre.pre583.i, %.preheader35.i.i.i ], [ %i.akl, %._crit_edge38.split.i.i.i ] ; 6 uses
  %.not293.i = icmp eq i32 %4, 0
  %i.ale = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.alf = load i32, ptr %i.ale, align 8          ; 10 uses
  %.inv.i = icmp slt i32 %i.alf, 3
  %i.alg = select i1 %.inv.i, i32 1, i32 3
  %i.alh = select i1 %.not293.i, i32 %i.alg, i32 %4 ; 8 uses
  %i.ali = icmp eq i32 %i.alf, 3
  br i1 %i.ali, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %stbi__decode_jpeg_image.exit.i
  %i.alj = getelementptr inbounds nuw i8, ptr %i.d, i64 18512
  %i.alk = load i32, ptr %i.alj, align 8
  %i.all = icmp eq i32 %i.alk, 3
  br i1 %i.all, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.alm = getelementptr inbounds nuw i8, ptr %i.d, i64 18508
  %i.aln = load i32, ptr %i.alm, align 4
  %i.alo = icmp eq i32 %i.aln, 0
  br i1 %i.alo, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.alp = getelementptr inbounds nuw i8, ptr %i.d, i64 18504
  %i.alq = load i32, ptr %i.alp, align 8
  %.not294.i = icmp eq i32 %i.alq, 0
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fp, %stbi__decode_jpeg_image.exit.i
  %i.alr = phi i1 [ false, %stbi__decode_jpeg_image.exit.i ], [ true, %bb.fp ], [ false, %bb.fq ], [ %.not294.i, %bb.fr ] ; 4 uses
  %i.als = icmp ne i32 %i.alf, 3
  %i.alt = icmp samesign ugt i32 %i.alh, 2        ; 2 uses
  %or.cond3.not297.i = select i1 %i.als, i1 true, i1 %i.alt
  %or.cond5.i = select i1 %or.cond3.not297.i, i1 true, i1 %i.alr
  %..i = select i1 %or.cond5.i, i32 %i.alf, i32 1 ; 2 uses
  %i.alu = icmp slt i32 %..i, 1
  br i1 %i.alu, label %bb.ft, label %bb.gb

bb.ft:                                            ; preds = %bb.fs
  %i.alv = icmp sgt i32 %i.alf, 0
  br i1 %i.alv, label %.lr.ph.i.i313.i, label %load_jpeg_image.exit

.lr.ph.i.i313.i:                                  ; preds = %bb.ft
  %wide.trip.count.i.i314.i = zext nneg i32 %i.alf to i64
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ga, %.lr.ph.i.i313.i
  %indvars.iv.i.i315.i = phi i64 [ 0, %.lr.ph.i.i313.i ], [ %indvars.iv.next.i.i319.i, %bb.ga ] ; 2 uses
  %i.alw = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i315.i ; 5 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 56
  %i.aly = load ptr, ptr %i.alx, align 8          ; 2 uses
  %.not.i.i316.i = icmp eq ptr %i.aly, null
  br i1 %.not.i.i316.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @SDL_free_REAL(ptr noundef nonnull %i.aly) #13
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alw, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.alz, i8 0, i64 16, i1 false)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alw, i64 64 ; 2 uses
  %i.amb = load ptr, ptr %i.ama, align 8          ; 2 uses
  %.not28.i.i317.i = icmp eq ptr %i.amb, null
  br i1 %.not28.i.i317.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @SDL_free_REAL(ptr noundef nonnull %i.amb) #13
  store ptr null, ptr %i.ama, align 8
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alw, i64 80
  store ptr null, ptr %i.amc, align 8
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alw, i64 72 ; 2 uses
  %i.ame = load ptr, ptr %i.amd, align 8          ; 2 uses
  %.not29.i.i318.i = icmp eq ptr %i.ame, null
  br i1 %.not29.i.i318.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @SDL_free_REAL(ptr noundef nonnull %i.ame) #13
  store ptr null, ptr %i.amd, align 8
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %indvars.iv.next.i.i319.i = add nuw nsw i64 %indvars.iv.i.i315.i, 1 ; 2 uses
  %exitcond.not.i.i320.i = icmp eq i64 %indvars.iv.next.i.i319.i, %wide.trip.count.i.i314.i
  br i1 %exitcond.not.i.i320.i, label %load_jpeg_image.exit, label %bb.fu, !llvm.loop !2

bb.gb:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %.not298.i = icmp eq ptr %5, null
  br i1 %.not298.i, label %.lr.ph.i, label %bb.gc

.lr.ph.i:                                         ; preds = %bb.gb
  %i.amf = getelementptr inbounds nuw i8, ptr %i.d, i64 18056
  %wide.trip.count.i = zext nneg i32 %..i to i64  ; 2 uses
  %.pre577.i = load i32, ptr %.pre.i, align 8
  br label %bb.hb

bb.gc:                                            ; preds = %bb.gb
  %i.amg = load i32, ptr %5, align 8              ; 3 uses
  %i.amh = load i32, ptr %.pre.i, align 8
  %.not304.i = icmp eq i32 %i.amg, %i.amh
  br i1 %.not304.i, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.ami = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.amj = load i32, ptr %i.ami, align 4          ; 3 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %.pre.i, i64 4
  %i.aml = load i32, ptr %i.amk, align 4
  %.not305.i = icmp eq i32 %i.amj, %i.aml
  br i1 %.not305.i, label %bb.gm, label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.amm = icmp sgt i32 %i.alf, 0
  br i1 %i.amm, label %.lr.ph.i.i322.i, label %stbi__cleanup_jpeg.exit330.i

.lr.ph.i.i322.i:                                  ; preds = %bb.ge
  %wide.trip.count.i.i323.i = zext nneg i32 %i.alf to i64
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gl, %.lr.ph.i.i322.i
  %indvars.iv.i.i324.i = phi i64 [ 0, %.lr.ph.i.i322.i ], [ %indvars.iv.next.i.i328.i, %bb.gl ] ; 2 uses
  %i.amn = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i324.i ; 5 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 56
  %i.amp = load ptr, ptr %i.amo, align 8          ; 2 uses
  %.not.i.i325.i = icmp eq ptr %i.amp, null
  br i1 %.not.i.i325.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @SDL_free_REAL(ptr noundef nonnull %i.amp) #13
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amn, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.amq, i8 0, i64 16, i1 false)
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amn, i64 64 ; 2 uses
  %i.ams = load ptr, ptr %i.amr, align 8          ; 2 uses
  %.not28.i.i326.i = icmp eq ptr %i.ams, null
  br i1 %.not28.i.i326.i, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  call void @SDL_free_REAL(ptr noundef nonnull %i.ams) #13
  store ptr null, ptr %i.amr, align 8
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amn, i64 80
  store ptr null, ptr %i.amt, align 8
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amn, i64 72 ; 2 uses
  %i.amv = load ptr, ptr %i.amu, align 8          ; 2 uses
  %.not29.i.i327.i = icmp eq ptr %i.amv, null
  br i1 %.not29.i.i327.i, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @SDL_free_REAL(ptr noundef nonnull %i.amv) #13
  store ptr null, ptr %i.amu, align 8
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %indvars.iv.next.i.i328.i = add nuw nsw i64 %indvars.iv.i.i324.i, 1 ; 2 uses
  %exitcond.not.i.i329.i = icmp eq i64 %indvars.iv.next.i.i328.i, %wide.trip.count.i.i323.i
  br i1 %exitcond.not.i.i329.i, label %stbi__cleanup_jpeg.exit330.i, label %bb.gf, !llvm.loop !2

stbi__cleanup_jpeg.exit330.i:                     ; preds = %bb.gl, %bb.ge
  %i.amw = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13) #13 ; 0 uses
  br label %bb.iy

bb.gm:                                            ; preds = %bb.gd
  br i1 %i.alr, label %bb.gn, label %bb.gv

bb.gn:                                            ; preds = %bb.gm
  %i.amx = icmp sgt i32 %i.alf, 0
  br i1 %i.amx, label %.lr.ph.i.i331.i, label %stbi__cleanup_jpeg.exit339.i

.lr.ph.i.i331.i:                                  ; preds = %bb.gn
  %wide.trip.count.i.i332.i = zext nneg i32 %i.alf to i64
  br label %bb.go

bb.go:                                            ; preds = %bb.gu, %.lr.ph.i.i331.i
  %indvars.iv.i.i333.i = phi i64 [ 0, %.lr.ph.i.i331.i ], [ %indvars.iv.next.i.i337.i, %bb.gu ] ; 2 uses
  %i.amy = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i333.i ; 5 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 56
  %i.ana = load ptr, ptr %i.amz, align 8          ; 2 uses
  %.not.i.i334.i = icmp eq ptr %i.ana, null
  br i1 %.not.i.i334.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @SDL_free_REAL(ptr noundef nonnull %i.ana) #13
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amy, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.anb, i8 0, i64 16, i1 false)
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amy, i64 64 ; 2 uses
  %i.and = load ptr, ptr %i.anc, align 8          ; 2 uses
  %.not28.i.i335.i = icmp eq ptr %i.and, null
  br i1 %.not28.i.i335.i, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void @SDL_free_REAL(ptr noundef nonnull %i.and) #13
  store ptr null, ptr %i.anc, align 8
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amy, i64 80
  store ptr null, ptr %i.ane, align 8
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amy, i64 72 ; 2 uses
  %i.ang = load ptr, ptr %i.anf, align 8          ; 2 uses
  %.not29.i.i336.i = icmp eq ptr %i.ang, null
  br i1 %.not29.i.i336.i, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  call void @SDL_free_REAL(ptr noundef nonnull %i.ang) #13
  store ptr null, ptr %i.anf, align 8
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %indvars.iv.next.i.i337.i = add nuw nsw i64 %indvars.iv.i.i333.i, 1 ; 2 uses
  %exitcond.not.i.i338.i = icmp eq i64 %indvars.iv.next.i.i337.i, %wide.trip.count.i.i332.i
  br i1 %exitcond.not.i.i338.i, label %stbi__cleanup_jpeg.exit339.i, label %bb.go, !llvm.loop !2

stbi__cleanup_jpeg.exit339.i:                     ; preds = %bb.gu, %bb.gn
  %i.anh = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14) #13 ; 0 uses
  br label %bb.iy

bb.gv:                                            ; preds = %bb.gm
  %i.ani = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.anj = load i32, ptr %i.ani, align 8
  %i.ank = icmp eq i32 %i.anj, %i.amg
  br i1 %i.ank, label %bb.gw, label %.preheader63.i.i

.preheader63.i.i:                                 ; preds = %bb.gv
  %.not.i340.i = icmp eq i32 %i.amj, 0
  br i1 %.not.i340.i, label %.loopexit64.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader63.i.i
  %i.anl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.anm = getelementptr inbounds nuw i8, ptr %i.d, i64 18128
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.ann = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ano = load ptr, ptr %i.ann, align 8
  %i.anp = getelementptr inbounds nuw i8, ptr %i.d, i64 18128
  %i.anq = load ptr, ptr %i.anp, align 8
  %i.anr = mul i32 %i.amj, %i.amg
  %i.ans = zext i32 %i.anr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ano, ptr align 1 %i.anq, i64 %i.ans, i1 false)
  %.pre.i.i = load ptr, ptr %i.d, align 8         ; 2 uses
  %.phi.trans.insert575.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 4
  %.pre576.i = load i32, ptr %.phi.trans.insert575.i, align 4
  br label %.loopexit64.i.i

bb.gx:                                            ; preds = %bb.gx, %.lr.ph.i.i
  %i.ant = phi ptr [ %.pre.i, %.lr.ph.i.i ], [ %i.aog, %bb.gx ]
  %.06065.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.aof, %bb.gx ] ; 3 uses
  %i.anu = load ptr, ptr %i.anl, align 8
  %i.anv = load i32, ptr %i.ani, align 8
  %i.anw = mul i32 %i.anv, %.06065.i.i
  %i.anx = zext i32 %i.anw to i64
  %i.any = getelementptr inbounds nuw i8, ptr %i.anu, i64 %i.anx
  %i.anz = load ptr, ptr %i.anm, align 8
  %i.aoa = load i32, ptr %i.ant, align 8          ; 2 uses
  %i.aob = mul i32 %i.aoa, %.06065.i.i
  %i.aoc = zext i32 %i.aob to i64
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anz, i64 %i.aoc
  %i.aoe = zext i32 %i.aoa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.any, ptr align 1 %i.aod, i64 %i.aoe, i1 false)
  %i.aof = add nuw i32 %.06065.i.i, 1             ; 2 uses
  %i.aog = load ptr, ptr %i.d, align 8            ; 3 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 4
  %i.aoi = load i32, ptr %i.aoh, align 4          ; 2 uses
  %i.aoj = icmp ult i32 %i.aof, %i.aoi
  br i1 %i.aoj, label %bb.gx, label %.loopexit64.i.i, !llvm.loop !74

.loopexit64.i.i:                                  ; preds = %bb.gx, %bb.gw, %.preheader63.i.i
  %i.aok = phi i32 [ %.pre576.i, %bb.gw ], [ 0, %.preheader63.i.i ], [ %i.aoi, %bb.gx ]
  %i.aol = phi ptr [ %.pre.i.i, %bb.gw ], [ %.pre.i, %.preheader63.i.i ], [ %i.aog, %bb.gx ] ; 6 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 8
  %i.aon = load i32, ptr %i.aom, align 8
  %i.aoo = icmp eq i32 %i.aon, 3
  %i.aop = add i32 %i.aok, 1
  %.not77.i.i = icmp ult i32 %i.aop, 2            ; 2 uses
  br i1 %i.aoo, label %bb.gy, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit64.i.i
  br i1 %.not77.i.i, label %output_jpeg_nv12.exit.i, label %.lr.ph67.i.i

.lr.ph67.i.i:                                     ; preds = %.preheader.i.i
  %i.aoq = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.ha

bb.gy:                                            ; preds = %.loopexit64.i.i
  br i1 %.not77.i.i, label %output_jpeg_nv12.exit.i, label %.lr.ph75.i.i

.lr.ph75.i.i:                                     ; preds = %bb.gy
  %i.aor = getelementptr inbounds nuw i8, ptr %i.d, i64 18056
  %i.aos = getelementptr inbounds nuw i8, ptr %i.d, i64 18276
  %7 = getelementptr inbounds nuw i8, ptr %i.d, i64 18180
  %8 = load <2 x i32>, ptr %i.aor, align 8
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %10 = load <2 x i32>, ptr %i.aos, align 4
  %11 = load <2 x i32>, ptr %7, align 4
  %12 = shufflevector <2 x i32> %10, <2 x i32> %11, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %13 = sdiv <4 x i32> %9, %12                    ; 4 uses
  %14 = getelementptr inbounds nuw i8, ptr %i.d, i64 18224
  %15 = extractelement <4 x i32> %13, i64 3
  %i.aot = sub i32 3, %15
  %i.aou = getelementptr inbounds nuw i8, ptr %i.d, i64 18204
  %i.aov = getelementptr inbounds nuw i8, ptr %i.d, i64 18320
  %16 = extractelement <4 x i32> %13, i64 1
  %i.aow = sub i32 3, %16
  %i.aox = getelementptr inbounds nuw i8, ptr %i.d, i64 18300
  %i.aoy = getelementptr inbounds nuw i8, ptr %5, i64 24
  %17 = extractelement <4 x i32> %13, i64 2
  %i.aoz = sub i32 3, %17
  %i.apa = sext i32 %i.aoz to i64
  %18 = extractelement <4 x i32> %13, i64 0
  %i.apb = sub i32 3, %18
  %i.apc = sext i32 %i.apb to i64
  %.pre80.i.i = load i32, ptr %i.aol, align 8
  br label %bb.gz

bb.gz:                                            ; preds = %._crit_edge.i.i, %.lr.ph75.i.i
  %i.apd = phi i32 [ %.pre80.i.i, %.lr.ph75.i.i ], [ %i.aqj, %._crit_edge.i.i ] ; 2 uses
  %i.ape = phi ptr [ %i.aol, %.lr.ph75.i.i ], [ %i.aqk, %._crit_edge.i.i ]
  %.173.i.i = phi i32 [ 0, %.lr.ph75.i.i ], [ %i.aql, %._crit_edge.i.i ] ; 4 uses
  %i.apf = add i32 %i.apd, 1
  %.not78.i.i = icmp ult i32 %i.apf, 2
  br i1 %.not78.i.i, label %._crit_edge.i.i, label %.lr.ph72.preheader.i.i

.lr.ph72.preheader.i.i:                           ; preds = %bb.gz
  %i.apg = load ptr, ptr %i.aoy, align 8
  %i.aph = load i32, ptr %i.ani, align 8
  %i.api = mul i32 %i.aph, %.173.i.i
  %i.apj = zext i32 %i.api to i64
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apg, i64 %i.apj
  %i.apl = load ptr, ptr %i.aov, align 8
  %i.apm = mul i32 %.173.i.i, %i.aow
  %i.apn = load i32, ptr %i.aox, align 4
  %i.apo = mul i32 %i.apm, %i.apn
  %i.app = zext i32 %i.apo to i64
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apl, i64 %i.app
  %i.apr = load ptr, ptr %14, align 8
  %i.aps = mul i32 %.173.i.i, %i.aot
  %i.apt = load i32, ptr %i.aou, align 4
  %i.apu = mul i32 %i.aps, %i.apt
  %i.apv = zext i32 %i.apu to i64
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apr, i64 %i.apv
  br label %.lr.ph72.i.i

.lr.ph72.i.i:                                     ; preds = %.lr.ph72.i.i, %.lr.ph72.preheader.i.i
  %.071.i.i = phi ptr [ %i.aqb, %.lr.ph72.i.i ], [ %i.apk, %.lr.ph72.preheader.i.i ] ; 3 uses
  %.05770.i.i = phi ptr [ %i.aqc, %.lr.ph72.i.i ], [ %i.apq, %.lr.ph72.preheader.i.i ] ; 2 uses
  %.05869.i.i = phi ptr [ %i.apz, %.lr.ph72.i.i ], [ %i.apw, %.lr.ph72.preheader.i.i ] ; 2 uses
  %.05968.i.i = phi i32 [ %i.aqd, %.lr.ph72.i.i ], [ 0, %.lr.ph72.preheader.i.i ]
  %i.apx = load i8, ptr %.05869.i.i, align 1
  %i.apy = getelementptr inbounds nuw i8, ptr %.071.i.i, i64 1
  store i8 %i.apx, ptr %.071.i.i, align 1
  %i.apz = getelementptr inbounds i8, ptr %.05869.i.i, i64 %i.apa
  %i.aqa = load i8, ptr %.05770.i.i, align 1
  %i.aqb = getelementptr inbounds nuw i8, ptr %.071.i.i, i64 2
  store i8 %i.aqa, ptr %i.apy, align 1
  %i.aqc = getelementptr inbounds i8, ptr %.05770.i.i, i64 %i.apc
  %i.aqd = add nuw nsw i32 %.05968.i.i, 1         ; 2 uses
  %i.aqe = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.aqf = load i32, ptr %i.aqe, align 8          ; 2 uses
  %i.aqg = add i32 %i.aqf, 1
  %i.aqh = lshr i32 %i.aqg, 1
  %i.aqi = icmp samesign ult i32 %i.aqd, %i.aqh
  br i1 %i.aqi, label %.lr.ph72.i.i, label %._crit_edge.i.i, !llvm.loop !75

._crit_edge.i.i:                                  ; preds = %.lr.ph72.i.i, %bb.gz
  %i.aqj = phi i32 [ %i.apd, %bb.gz ], [ %i.aqf, %.lr.ph72.i.i ]
  %i.aqk = phi ptr [ %i.ape, %bb.gz ], [ %i.aqe, %.lr.ph72.i.i ] ; 3 uses
  %i.aql = add nuw nsw i32 %.173.i.i, 1           ; 2 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqk, i64 4
  %i.aqn = load i32, ptr %i.aqm, align 4
  %i.aqo = add i32 %i.aqn, 1
  %i.aqp = lshr i32 %i.aqo, 1
  %i.aqq = icmp samesign ult i32 %i.aql, %i.aqp
  br i1 %i.aqq, label %bb.gz, label %output_jpeg_nv12.exit.i, !llvm.loop !76

bb.ha:                                            ; preds = %bb.ha, %.lr.ph67.i.i
  %i.aqr = phi ptr [ %i.aol, %.lr.ph67.i.i ], [ %i.arc, %bb.ha ]
  %.266.i.i = phi i32 [ 0, %.lr.ph67.i.i ], [ %i.arb, %bb.ha ] ; 2 uses
  %i.aqs = load ptr, ptr %i.aoq, align 8
  %i.aqt = load i32, ptr %i.ani, align 8
  %i.aqu = mul i32 %i.aqt, %.266.i.i
  %i.aqv = zext i32 %i.aqu to i64
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqs, i64 %i.aqv
  %i.aqx = load i32, ptr %i.aqr, align 8
  %i.aqy = add i32 %i.aqx, 1
  %i.aqz = and i32 %i.aqy, -2
  %i.ara = zext i32 %i.aqz to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.aqw, i8 -128, i64 %i.ara, i1 false)
  %i.arb = add nuw nsw i32 %.266.i.i, 1           ; 2 uses
  %i.arc = load ptr, ptr %i.d, align 8            ; 3 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 4
  %i.are = load i32, ptr %i.ard, align 4
  %i.arf = add i32 %i.are, 1
  %i.arg = lshr i32 %i.arf, 1
  %i.arh = icmp samesign ult i32 %i.arb, %i.arg
  br i1 %i.arh, label %bb.ha, label %output_jpeg_nv12.exit.i, !llvm.loop !77

output_jpeg_nv12.exit.i:                          ; preds = %bb.ha, %._crit_edge.i.i, %bb.gy, %.preheader.i.i
  %i.ari = phi ptr [ %i.aqk, %._crit_edge.i.i ], [ %i.aol, %bb.gy ], [ %i.aol, %.preheader.i.i ], [ %i.arc, %bb.ha ]
  %i.arj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ark = load ptr, ptr %i.arj, align 8
  br label %.loopexit398.i

bb.hb:                                            ; preds = %.thread374.i, %.lr.ph.i
  %i.arl = phi i32 [ %.pre577.i, %.lr.ph.i ], [ %i.asl, %.thread374.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread374.i ] ; 3 uses
  %i.arm = getelementptr inbounds nuw [48 x i8], ptr %6, i64 %indvars.iv.i ; 7 uses
  %i.arn = add i32 %i.arl, 3
  %i.aro = zext i32 %i.arn to i64
  %i.arp = call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.aro) #13 ; 2 uses
  %i.arq = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i ; 3 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 72
  store ptr %i.arp, ptr %i.arr, align 8
  %.not303.not.i = icmp eq ptr %i.arp, null
  br i1 %.not303.not.i, label %bb.hc, label %bb.hk

bb.hc:                                            ; preds = %bb.hb
  %i.ars = load ptr, ptr %i.d, align 8
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 8
  %i.aru = load i32, ptr %i.art, align 8          ; 2 uses
  %i.arv = icmp sgt i32 %i.aru, 0
  br i1 %i.arv, label %.lr.ph.i.i341.i, label %.thread375.i

.thread375.i:                                     ; preds = %bb.hc
  %i.arw = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.iy

.lr.ph.i.i341.i:                                  ; preds = %bb.hc
  %wide.trip.count.i.i342.i = zext nneg i32 %i.aru to i64
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hj, %.lr.ph.i.i341.i
  %indvars.iv.i.i343.i = phi i64 [ 0, %.lr.ph.i.i341.i ], [ %indvars.iv.next.i.i347.i, %bb.hj ] ; 2 uses
  %i.arx = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i343.i ; 5 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 56
  %i.arz = load ptr, ptr %i.ary, align 8          ; 2 uses
  %.not.i.i344.i = icmp eq ptr %i.arz, null
  br i1 %.not.i.i344.i, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @SDL_free_REAL(ptr noundef nonnull %i.arz) #13
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arx, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.asa, i8 0, i64 16, i1 false)
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arx, i64 64 ; 2 uses
  %i.asc = load ptr, ptr %i.asb, align 8          ; 2 uses
  %.not28.i.i345.i = icmp eq ptr %i.asc, null
  br i1 %.not28.i.i345.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @SDL_free_REAL(ptr noundef nonnull %i.asc) #13
  store ptr null, ptr %i.asb, align 8
  %i.asd = getelementptr inbounds nuw i8, ptr %i.arx, i64 80
  store ptr null, ptr %i.asd, align 8
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %i.ase = getelementptr inbounds nuw i8, ptr %i.arx, i64 72 ; 2 uses
  %i.asf = load ptr, ptr %i.ase, align 8          ; 2 uses
  %.not29.i.i346.i = icmp eq ptr %i.asf, null
  br i1 %.not29.i.i346.i, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call void @SDL_free_REAL(ptr noundef nonnull %i.asf) #13
  store ptr null, ptr %i.ase, align 8
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %indvars.iv.next.i.i347.i = add nuw nsw i64 %indvars.iv.i.i343.i, 1 ; 2 uses
  %exitcond.not.i.i348.i = icmp eq i64 %indvars.iv.next.i.i347.i, %wide.trip.count.i.i342.i
  br i1 %exitcond.not.i.i348.i, label %bb.ho, label %bb.hd, !llvm.loop !2

bb.hk:                                            ; preds = %bb.hb
  %i.asg = getelementptr inbounds nuw i8, ptr %i.arq, i64 4
  %i.ash = getelementptr inbounds nuw i8, ptr %i.arm, i64 24
  %19 = load <2 x i32>, ptr %i.amf, align 8
  %20 = load <2 x i32>, ptr %i.asg, align 4
  %21 = sdiv <2 x i32> %19, %20                   ; 3 uses
  store <2 x i32> %21, ptr %i.ash, align 8
  %22 = extractelement <2 x i32> %21, i64 1       ; 4 uses
  %i.asi = ashr i32 %22, 1
  %i.asj = getelementptr inbounds nuw i8, ptr %i.arm, i64 36
  store i32 %i.asi, ptr %i.asj, align 4
  %i.ask = load ptr, ptr %i.d, align 8            ; 7 uses
  %i.asl = load i32, ptr %i.ask, align 8          ; 6 uses
  %23 = extractelement <2 x i32> %21, i64 0       ; 3 uses
  %i.asm = add i32 %23, -1
  %i.asn = add i32 %i.asm, %i.asl
  %i.aso = udiv i32 %i.asn, %23
  %i.asp = getelementptr inbounds nuw i8, ptr %i.arm, i64 32
  store i32 %i.aso, ptr %i.asp, align 16
  %i.asq = getelementptr inbounds nuw i8, ptr %i.arm, i64 40
  store i32 0, ptr %i.asq, align 8
  %i.asr = getelementptr inbounds nuw i8, ptr %i.arq, i64 48
  %i.ass = load ptr, ptr %i.asr, align 8          ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %i.arm, i64 16
  store ptr %i.ass, ptr %i.ast, align 16
  %i.asu = getelementptr inbounds nuw i8, ptr %i.arm, i64 8
  store ptr %i.ass, ptr %i.asu, align 8
  switch i32 %23, label %.thread373.i [
    i32 1, label %bb.hl
    i32 2, label %bb.hm
  ]

bb.hl:                                            ; preds = %bb.hk
  %switch.selectcmp.i = icmp eq i32 %22, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @stbi__resample_row_v_2, ptr @stbi__resample_row_generic
  %switch.selectcmp778.i = icmp eq i32 %22, 1
  %switch.select779.i = select i1 %switch.selectcmp778.i, ptr @resample_row_1, ptr %switch.select.i
  br label %.thread374.i

bb.hm:                                            ; preds = %bb.hk
  switch i32 %22, label %.thread373.i [
    i32 1, label %.thread374.i
    i32 2, label %bb.hn
  ]

bb.hn:                                            ; preds = %bb.hm
  %i.asv = load ptr, ptr %i.i, align 8
  br label %.thread374.i

.thread373.i:                                     ; preds = %bb.hm, %bb.hk
  br label %.thread374.i

bb.ho:                                            ; preds = %bb.hj
  %i.asw = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.iy

.thread374.i:                                     ; preds = %.thread373.i, %bb.hn, %bb.hm, %bb.hl
  %stbi__resample_row_v_2.sink.i = phi ptr [ %switch.select779.i, %bb.hl ], [ %i.asv, %bb.hn ], [ @stbi__resample_row_generic, %.thread373.i ], [ @stbi__resample_row_h_2, %bb.hm ]
  store ptr %stbi__resample_row_v_2.sink.i, ptr %i.arm, align 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.hb, !llvm.loop !78

._crit_edge.i:                                    ; preds = %.thread374.i
  %.phi.trans.insert579.i = getelementptr inbounds nuw i8, ptr %i.ask, i64 4
  %.pre580.i = load i32, ptr %.phi.trans.insert579.i, align 4 ; 4 uses
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.asl, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.hp, label %stbi__malloc_mad3.exit.thread.i

bb.hp:                                            ; preds = %._crit_edge.i
  %i.asx = icmp eq i32 %i.asl, 0
  br i1 %i.asx, label %stbi__mul2sizes_valid.exit.thread15.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i

stbi__mul2sizes_valid.exit.i.i.i:                 ; preds = %bb.hp
  %i.asy = udiv i32 2147483647, %i.asl
  %.not23.i.i.i = icmp samesign ugt i32 %i.alh, %i.asy
  br i1 %.not23.i.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__mul2sizes_valid.exit.thread15.i.i.i

stbi__mul2sizes_valid.exit.thread15.i.i.i:        ; preds = %stbi__mul2sizes_valid.exit.i.i.i, %bb.hp
  %i.asz = mul nuw nsw i32 %i.asl, %i.alh         ; 3 uses
  %i.ata = or i32 %.pre580.i, %i.asz
  %or.cond.not.i10.i.i.i = icmp sgt i32 %i.ata, -1
  br i1 %or.cond.not.i10.i.i.i, label %bb.hq, label %stbi__malloc_mad3.exit.thread.i

bb.hq:                                            ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i.i
  %i.atb = icmp eq i32 %.pre580.i, 0
  br i1 %i.atb, label %stbi__mad3sizes_valid.exit.i.i, label %stbi__mul2sizes_valid.exit12.i.i.i

stbi__mul2sizes_valid.exit12.i.i.i:               ; preds = %bb.hq
  %i.atc = udiv i32 2147483647, %.pre580.i
  %.not.i.i350.i = icmp sgt i32 %i.asz, %i.atc
  br i1 %.not.i.i350.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__mad3sizes_valid.exit.i.i

stbi__mad3sizes_valid.exit.i.i:                   ; preds = %stbi__mul2sizes_valid.exit12.i.i.i, %bb.hq
  %i.atd = mul nuw nsw i32 %.pre580.i, %i.asz     ; 2 uses
  %.not9.i.i = icmp eq i32 %i.atd, 2147483647
  br i1 %.not9.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__malloc_mad3.exit.i

stbi__malloc_mad3.exit.i:                         ; preds = %stbi__mad3sizes_valid.exit.i.i
  %i.ate = add nsw i32 %i.atd, 1
  %i.atf = sext i32 %i.ate to i64
  %i.atg = call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.atf) #13 ; 4 uses
  %.not299.i = icmp eq ptr %i.atg, null
  %.pre582.i = load ptr, ptr %i.d, align 8        ; 4 uses
  br i1 %.not299.i, label %stbi__malloc_mad3.exit.thread.i, label %.preheader397.i

.preheader397.i:                                  ; preds = %stbi__malloc_mad3.exit.i
  %i.ath = getelementptr inbounds nuw i8, ptr %.pre582.i, i64 4
  %i.ati = load i32, ptr %i.ath, align 4
  %.not.i = icmp eq i32 %i.ati, 0
  br i1 %.not.i, label %.loopexit398.i, label %.lr.ph477.i

.lr.ph477.i:                                      ; preds = %.preheader397.i
  %i.atj = getelementptr inbounds nuw i8, ptr %i.d, i64 18508 ; 2 uses
  %i.atk = icmp eq i32 %i.alh, 1                  ; 2 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.atm = zext nneg i32 %i.alh to i64            ; 6 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  br label %.lr.ph444.preheader.i

stbi__malloc_mad3.exit.thread.i:                  ; preds = %stbi__malloc_mad3.exit.i, %stbi__mad3sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i, %._crit_edge.i
  %i.atp = phi ptr [ %i.ask, %stbi__mul2sizes_valid.exit.thread15.i.i.i ], [ %i.ask, %._crit_edge.i ], [ %i.ask, %stbi__mul2sizes_valid.exit.i.i.i ], [ %i.ask, %stbi__mul2sizes_valid.exit12.i.i.i ], [ %i.ask, %stbi__mad3sizes_valid.exit.i.i ], [ %.pre582.i, %stbi__malloc_mad3.exit.i ]
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 8
  %i.atr = load i32, ptr %i.atq, align 8          ; 2 uses
  %i.ats = icmp sgt i32 %i.atr, 0
  br i1 %i.ats, label %.lr.ph.i.i351.i, label %stbi__cleanup_jpeg.exit359.i

.lr.ph.i.i351.i:                                  ; preds = %stbi__malloc_mad3.exit.thread.i
  %wide.trip.count.i.i352.i = zext nneg i32 %i.atr to i64
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hx, %.lr.ph.i.i351.i
  %indvars.iv.i.i353.i = phi i64 [ 0, %.lr.ph.i.i351.i ], [ %indvars.iv.next.i.i357.i, %bb.hx ] ; 2 uses
  %i.att = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i353.i ; 5 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %i.att, i64 56
  %i.atv = load ptr, ptr %i.atu, align 8          ; 2 uses
  %.not.i.i354.i = icmp eq ptr %i.atv, null
  br i1 %.not.i.i354.i, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @SDL_free_REAL(ptr noundef nonnull %i.atv) #13
  %i.atw = getelementptr inbounds nuw i8, ptr %i.att, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.atw, i8 0, i64 16, i1 false)
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.atx = getelementptr inbounds nuw i8, ptr %i.att, i64 64 ; 2 uses
  %i.aty = load ptr, ptr %i.atx, align 8          ; 2 uses
  %.not28.i.i355.i = icmp eq ptr %i.aty, null
  br i1 %.not28.i.i355.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @SDL_free_REAL(ptr noundef nonnull %i.aty) #13
  store ptr null, ptr %i.atx, align 8
  %i.atz = getelementptr inbounds nuw i8, ptr %i.att, i64 80
  store ptr null, ptr %i.atz, align 8
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.aua = getelementptr inbounds nuw i8, ptr %i.att, i64 72 ; 2 uses
  %i.aub = load ptr, ptr %i.aua, align 8          ; 2 uses
  %.not29.i.i356.i = icmp eq ptr %i.aub, null
  br i1 %.not29.i.i356.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  call void @SDL_free_REAL(ptr noundef nonnull %i.aub) #13
  store ptr null, ptr %i.aua, align 8
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %indvars.iv.next.i.i357.i = add nuw nsw i64 %indvars.iv.i.i353.i, 1 ; 2 uses
  %exitcond.not.i.i358.i = icmp eq i64 %indvars.iv.next.i.i357.i, %wide.trip.count.i.i352.i
  br i1 %exitcond.not.i.i358.i, label %stbi__cleanup_jpeg.exit359.i, label %bb.hr, !llvm.loop !2

stbi__cleanup_jpeg.exit359.i:                     ; preds = %bb.hx, %stbi__malloc_mad3.exit.thread.i
  %i.auc = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.iy

.lr.ph444.preheader.i:                            ; preds = %.loopexit.i, %.lr.ph477.i
  %i.aud = phi ptr [ %.pre582.i, %.lr.ph477.i ], [ %i.bfh, %.loopexit.i ]
  %.0275476.i = phi i32 [ 0, %.lr.ph477.i ], [ %i.bfi, %.loopexit.i ] ; 2 uses
  %i.aue = load i32, ptr %i.aud, align 8
  br label %.lr.ph444.i

.lr.ph444.i:                                      ; preds = %bb.ia, %.lr.ph444.preheader.i
  %indvars.iv539.i = phi i64 [ 0, %.lr.ph444.preheader.i ], [ %indvars.iv.next540.i, %bb.ia ] ; 4 uses
  %i.auf = getelementptr inbounds nuw [48 x i8], ptr %6, i64 %indvars.iv539.i ; 8 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 36 ; 3 uses
  %i.auh = load i32, ptr %i.aug, align 4          ; 2 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auf, i64 28
  %i.auj = load i32, ptr %i.aui, align 4          ; 2 uses
  %i.auk = ashr i32 %i.auj, 1
  %.not300.i = icmp slt i32 %i.auh, %i.auk        ; 2 uses
  %i.aul = load ptr, ptr %i.auf, align 16
  %i.aum = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv539.i ; 3 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 72
  %i.auo = load ptr, ptr %i.aun, align 8
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auf, i64 16 ; 4 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %i.auf, i64 8 ; 3 uses
  %.in.i = select i1 %.not300.i, ptr %i.auq, ptr %i.aup
  %i.aur = load ptr, ptr %.in.i, align 8
  %.in301.i = select i1 %.not300.i, ptr %i.aup, ptr %i.auq
  %i.aus = load ptr, ptr %.in301.i, align 8
  %i.aut = getelementptr inbounds nuw i8, ptr %i.auf, i64 32
  %i.auu = load i32, ptr %i.aut, align 16
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auf, i64 24
  %i.auw = load i32, ptr %i.auv, align 8
  %i.aux = call ptr %i.aul(ptr noundef %i.auo, ptr noundef %i.aur, ptr noundef %i.aus, i32 noundef %i.auu, i32 noundef %i.auw) #13, !inline_history !79
  %i.auy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv539.i
  store ptr %i.aux, ptr %i.auy, align 8
  %i.auz = add nsw i32 %i.auh, 1                  ; 2 uses
  store i32 %i.auz, ptr %i.aug, align 4
  %.not302.i = icmp slt i32 %i.auz, %i.auj
  br i1 %.not302.i, label %bb.ia, label %bb.hy

bb.hy:                                            ; preds = %.lr.ph444.i
  store i32 0, ptr %i.aug, align 4
  %i.ava = load ptr, ptr %i.aup, align 16         ; 2 uses
  store ptr %i.ava, ptr %i.auq, align 8
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auf, i64 40 ; 2 uses
  %i.avc = load i32, ptr %i.avb, align 8
  %i.avd = add nsw i32 %i.avc, 1                  ; 2 uses
  store i32 %i.avd, ptr %i.avb, align 8
  %i.ave = getelementptr inbounds nuw i8, ptr %i.aum, i64 32
  %i.avf = load i32, ptr %i.ave, align 8
  %i.avg = icmp slt i32 %i.avd, %i.avf
  br i1 %i.avg, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.avh = getelementptr inbounds nuw i8, ptr %i.aum, i64 36
  %i.avi = load i32, ptr %i.avh, align 4
  %i.avj = sext i32 %i.avi to i64
  %i.avk = getelementptr inbounds i8, ptr %i.ava, i64 %i.avj
  store ptr %i.avk, ptr %i.aup, align 16
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy, %.lr.ph444.i
  %indvars.iv.next540.i = add nuw nsw i64 %indvars.iv539.i, 1 ; 2 uses
  %exitcond543.not.i = icmp eq i64 %indvars.iv.next540.i, %wide.trip.count.i
  br i1 %exitcond543.not.i, label %._crit_edge445.i, label %.lr.ph444.i, !llvm.loop !80
end_hunk_1
