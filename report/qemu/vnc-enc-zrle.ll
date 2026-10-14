Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vnc-enc-zrle?download=true
inline.NumInlined: 86
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@zrle_send_framebuffer_update:bb.a
  store ptr %i.oa, ptr %i.ob, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 3768 ; 2 uses
  %i.od = load i64, ptr %i.oc, align 8
  %i.oe = trunc i64 %i.od to i32
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 3832 ; 2 uses
  store i32 %i.oe, ptr %i.of, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 3888
  store i32 0, ptr %i.og, align 8
  %i.oh = call i32 @deflate(ptr noundef nonnull %i.ni, i32 noundef 2) #9
  %.not31.i = icmp eq i32 %i.oh, 0
  br i1 %.not31.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.oi = load ptr, ptr @stderr, align 8
  %i.oj = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.oi, i32 noundef 1, ptr noundef nonnull @.str.5) #9 ; 0 uses
  br label %zrle_compress_data.exit

bb.bp:                                            ; preds = %bb.bn
  %i.ok = load i64, ptr %i.oc, align 8
  %i.ol = load i32, ptr %i.of, align 8
  %i.om = zext i32 %i.ol to i64
  %i.on = sub i64 %i.ok, %i.om                    ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 3776
  store i64 %i.on, ptr %i.oo, align 8
  %i.op = trunc i64 %i.on to i32
  br label %zrle_compress_data.exit

zrle_compress_data.exit:                          ; preds = %bb.bm, %bb.bo, %bb.bp
  %.1.i = phi i32 [ -1, %bb.bo ], [ %i.op, %bb.bp ], [ -1, %bb.bm ]
  %i.oq = load i32, ptr %i.f, align 8
  call void @vnc_framebuffer_update(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.oq) #9
  call void @vnc_write_u32(ptr noundef nonnull %0, i32 noundef %.1.i) #9
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 3792
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 3776
  %i.ou = load i64, ptr %i.ot, align 8
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef %i.os, i64 noundef %i.ou) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @vnc_zywrle_send_framebuffer_update(ptr noundef %0, ptr noundef initializes((3632, 3636)) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3632
  store i32 17, ptr %i.a, align 8
  tail call fastcc void @zrle_send_framebuffer_update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  ret i32 1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vnc_zrle_clear(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3880
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.d = tail call i32 @deflateEnd(ptr noundef nonnull %i.c) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3680
  tail call void @buffer_free(ptr noundef nonnull %i.e) #9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3640
  tail call void @buffer_free(ptr noundef nonnull %i.f) #9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3760
  tail call void @buffer_free(ptr noundef nonnull %i.g) #9
  ret void
}

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #1

declare void @buffer_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @vnc_framebuffer_update(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @vnc_write_u32(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @vnc_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @buffer_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @buffer_reserve(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @vnc_raw_send_framebuffer_update(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @palette_init(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @palette_put(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @palette_size(ptr noundef) local_unnamed_addr #1

declare void @vnc_write_u8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @palette_color(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @zrle_choose_palette_rle(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef range(i32 8, 33) %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 256) %6, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %7, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %8) unnamed_addr #0 {
bb.a:
  store i8 0, ptr %7, align 1
  store i8 0, ptr %8, align 1
  %i.a = mul i32 %1, %0                           ; 2 uses
  %i.b = lshr i32 %3, 3                           ; 4 uses
  %i.c = mul i32 %i.b, %i.a
  %i.d = sext i32 %i.c to i64
  %i.e = icmp ne i32 %3, 8
  %i.f = icmp ne i32 %6, 0
  %or.cond = and i1 %i.e, %i.f
  %.not = icmp samesign ult i32 %6, 128
  %or.cond42 = select i1 %or.cond, i1 %.not, i1 false
  %i.g = zext nneg i32 %6 to i64
  %i.h = select i1 %or.cond42, i64 %i.g, i64 0
  %.0 = lshr i64 %i.d, %i.h                       ; 2 uses
  %i.i = add nuw nsw i32 %i.b, 1
  %i.j = add i32 %5, %4
  %i.k = mul i32 %i.j, %i.i
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = icmp ugt i64 %.0, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %7, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i64 [ %i.l, %bb.b ], [ %.0, %bb.a ]   ; 2 uses
  %i.n = tail call i64 @palette_size(ptr noundef %2) #9
  %i.o = icmp ult i64 %i.n, 128
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i64 @palette_size(ptr noundef %2) #9
  %i.q = trunc i64 %i.p to i32
  %i.r = mul i32 %i.b, %i.q
  %i.s = shl i32 %4, 1
  %i.t = add i32 %i.s, %5
  %i.u = add i32 %i.t, %i.r
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp ugt i64 %.1, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %7, align 1
  store i8 1, ptr %8, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i64 [ %i.v, %bb.e ], [ %.1, %bb.d ]
  %i.x = tail call i64 @palette_size(ptr noundef %2) #9
  %i.y = icmp ult i64 %i.x, 17
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = tail call i64 @palette_size(ptr noundef %2) #9
  %i.aa = trunc i64 %i.z to i32
  %i.ab = mul i32 %i.b, %i.aa
  %i.ac = tail call i64 @palette_size(ptr noundef %2) #9
  %i.ad = getelementptr [4 x i8], ptr @bits_per_packed_pixel, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 -4
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = mul i32 %i.af, %i.a
  %i.ah = sdiv i32 %i.ag, 8
  %i.ai = add i32 %i.ah, %i.ab
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp ugt i64 %.2, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %7, align 1
  store i8 1, ptr %8, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.c
  ret void
}

declare i64 @palette_fill(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @palette_idx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @zrle_encode_tile16be(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 256) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca [256 x i32], align 16             ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.i = mul i32 %4, %3                           ; 3 uses
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %.idx = shl nsw i64 %i.j, 1
  %i.k = getelementptr inbounds i8, ptr %2, i64 %.idx ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -2
  %i.m = load i16, ptr %i.l, align 2
  %i.n = xor i16 %i.m, -1
  store i16 %i.n, ptr %i.k, align 2
  tail call void @palette_init(ptr noundef nonnull %i.h, i64 noundef 256, i32 noundef 16) #9
  %i.o = icmp sgt i32 %i.i, 0                     ; 2 uses
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.0121170 = phi ptr [ %.2, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %.0125169 = phi i32 [ %.1126, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.0127168 = phi i32 [ %.1128, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.p = load i16, ptr %.0121170, align 2         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0121170, i64 2 ; 3 uses
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.p to i32
  %.not136 = icmp eq i16 %i.r, %i.p
  br i1 %.not136, label %.preheader147, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.t = add i32 %.0125169, 1
  br label %bb.d

.preheader147:                                    ; preds = %.lr.ph, %.preheader147
  %.1122 = phi ptr [ %i.u, %.preheader147 ], [ %i.q, %.lr.ph ]
  %i.u = getelementptr inbounds nuw i8, ptr %.1122, i64 2 ; 3 uses
  %i.v = load i16, ptr %i.u, align 2
  %i.w = icmp eq i16 %i.v, %i.p
  br i1 %i.w, label %.preheader147, label %bb.c, !llvm.loop !44

bb.c:                                             ; preds = %.preheader147
  %i.x = add i32 %.0127168, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1128 = phi i32 [ %.0127168, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %.1126 = phi i32 [ %i.t, %bb.b ], [ %.0125169, %bb.c ] ; 2 uses
  %.2 = phi ptr [ %i.q, %bb.b ], [ %i.u, %bb.c ]  ; 2 uses
  %i.y = tail call i32 @palette_put(ptr noundef nonnull %i.h, i32 noundef %i.s) #9 ; 0 uses
  %i.z = icmp ult ptr %.2, %i.k
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0127.lcssa = phi i32 [ 0, %bb.a ], [ %.1128, %bb.d ]
  %.0125.lcssa = phi i32 [ 0, %bb.a ], [ %.1126, %bb.d ]
  %i.aa = tail call i64 @palette_size(ptr noundef nonnull %i.h) #9
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i8 0, ptr %i.f, align 1, !annotation !10
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 1) #9
  %i.ac = call i32 @palette_color(ptr noundef nonnull %i.h, i32 noundef 0, ptr noundef nonnull %i.f) #9
  %i.ad = trunc i32 %i.ac to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.ad, ptr %i.c, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  call fastcc void @zrle_choose_palette_rle(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.h, i32 noundef 16, i32 noundef %.0127.lcssa, i32 noundef %.0125.lcssa, i32 noundef %5, ptr noundef %i.d, ptr noundef %i.e)
  %i.ae = load i8, ptr %i.e, align 1, !range !7, !noundef !8
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  br i1 %i.af, label %bb.g, label %.thread144

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.g, i8 0, i64 1024, i1 false), !annotation !10
  %i.ag = tail call i64 @palette_size(ptr noundef nonnull %i.h) #9 ; 3 uses
  %i.ah = load i8, ptr %i.d, align 1, !range !7, !noundef !8 ; 2 uses
  %i.ai = shl nuw i8 %i.ah, 7
  %i.aj = trunc i64 %i.ag to i8
  %i.ak = or i8 %i.ai, %i.aj
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.ak) #9
  %i.al = call i64 @palette_fill(ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #9 ; 0 uses
  %.not210 = icmp eq i64 %i.ag, 0
  br i1 %.not210, label %._crit_edge189, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.g, %.lr.ph188
  %i.am = phi i64 [ %i.ar, %.lr.ph188 ], [ 0, %bb.g ]
  %.0123186 = phi i32 [ %i.aq, %.lr.ph188 ], [ 0, %bb.g ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = trunc i32 %i.ao to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.ap, ptr %i.b, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = add i32 %.0123186, 1                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = icmp ugt i64 %i.ag, %i.ar
  br i1 %i.as, label %.lr.ph188, label %._crit_edge189, !llvm.loop !46

._crit_edge189:                                   ; preds = %.lr.ph188, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  %i.at = trunc nuw i8 %i.ah to i1
  br i1 %i.at, label %.preheader, label %bb.q

.thread144:                                       ; preds = %bb.f
  %i.au = load i8, ptr %i.d, align 1, !range !7, !noundef !8 ; 2 uses
  %i.av = shl nuw i8 %i.au, 7
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.av) #9
  %i.aw = trunc nuw i8 %i.au to i1
  br i1 %i.aw, label %.preheader, label %.thread145

.preheader:                                       ; preds = %._crit_edge189, %.thread144
  br i1 %i.o, label %.lr.ph209, label %.loopexit

.lr.ph209:                                        ; preds = %.preheader, %bb.p
  %.3208 = phi ptr [ %.4, %bb.p ], [ %2, %.preheader ] ; 3 uses
  %i.ax = load i16, ptr %.3208, align 2           ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph209
  %.3.pn = phi ptr [ %.3208, %.lr.ph209 ], [ %.4, %bb.h ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3.pn, i64 2 ; 5 uses
  %i.ay = load i16, ptr %.4, align 2
  %i.az = icmp eq i16 %i.ay, %i.ax
  %i.ba = icmp ult ptr %.4, %i.k                  ; 2 uses
  %i.bb = and i1 %i.az, %i.ba
  br i1 %i.bb, label %bb.h, label %bb.i, !llvm.loop !47

bb.i:                                             ; preds = %bb.h
  %i.bc = ptrtoint ptr %.4 to i64
  %i.bd = ptrtoint ptr %.3208 to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = lshr exact i64 %i.be, 1
  %i.bg = trunc i64 %i.bf to i32                  ; 3 uses
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bh = zext i16 %i.ax to i32
  %i.bi = call i32 @palette_idx(ptr noundef nonnull %i.h, i32 noundef %i.bh) #9
  %i.bj = trunc i32 %i.bi to i8                   ; 4 uses
  %i.bk = icmp slt i32 %i.bg, 3
  br i1 %i.bk, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bl = icmp eq i32 %i.bg, 2
  br i1 %i.bl, label %bb.l, label %bb.p, !llvm.loop !48

bb.l:                                             ; preds = %bb.k
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bj) #9
  br label %bb.p, !llvm.loop !48

bb.m:                                             ; preds = %bb.j
  %i.bm = or i8 %i.bj, -128
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bm) #9
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.ax, ptr %i.a, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bn = add i32 %i.bg, -1                       ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 254
  br i1 %i.bo, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %bb.o, %.lr.ph205
  %.0120203 = phi i32 [ %i.bp, %.lr.ph205 ], [ %i.bn, %bb.o ] ; 2 uses
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext -1) #9
  %i.bp = add nsw i32 %.0120203, -255             ; 2 uses
  %i.bq = icmp samesign ugt i32 %.0120203, 509
  br i1 %i.bq, label %.lr.ph205, label %._crit_edge206, !llvm.loop !49

._crit_edge206:                                   ; preds = %.lr.ph205, %bb.o
  %.0120.lcssa = phi i32 [ %i.bn, %bb.o ], [ %i.bp, %.lr.ph205 ]
  %i.br = trunc i32 %.0120.lcssa to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.l, %._crit_edge206
  %.sink = phi i8 [ %i.br, %._crit_edge206 ], [ %i.bj, %bb.l ], [ %i.bj, %bb.k ]
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %.sink) #9
  br i1 %i.ba, label %.lr.ph209, label %.loopexit

bb.q:                                             ; preds = %._crit_edge189
  %i.bs = call i64 @palette_size(ptr noundef nonnull %i.h) #9
  %i.bt = icmp ult i64 %i.bs, 17
  br i1 %i.bt, label %bb.s, label %bb.r
end_hunk_0
begin_hunk_1_@zrle_encode_tile16be:bb.a
._crit_edge.i.loopexit.us.i:                      ; preds = %.lr.ph.i.us.i, %vec.epilog.middle.block, %middle.block
  %.lcssa344 = phi ptr [ %i.oi, %vec.epilog.middle.block ], [ %i.fp, %middle.block ], [ %i.ur, %.lr.ph.i.us.i ] ; 2 uses
  %.lcssa343 = phi ptr [ %i.ok, %vec.epilog.middle.block ], [ %i.fr, %middle.block ], [ %i.us, %.lr.ph.i.us.i ]
  %i.uu = getelementptr inbounds [2 x i8], ptr %.lcssa343, i64 %i.ex
  %i.uv = icmp ult ptr %.lcssa344, %i.dd
  br i1 %i.uv, label %iter.check, label %zywrle_rgbyuv_16be.exit.i, !llvm.loop !64

._crit_edge.i.i:                                  ; preds = %.lr.ph60.i.i, %._crit_edge.i.i
  br label %._crit_edge.i.i

zywrle_rgbyuv_16be.exit.i:                        ; preds = %._crit_edge.i.loopexit.us.i, %.thread.i.zywrle_rgbyuv_16be.exit.i_crit_edge
  %.idx434.i.pre-phi = phi i64 [ %.pre, %.thread.i.zywrle_rgbyuv_16be.exit.i_crit_edge ], [ %.idx62.i.i, %._crit_edge.i.loopexit.us.i ] ; 4 uses
  tail call fastcc void @wavelet(ptr noundef nonnull %i.cu, i32 noundef %i.cv, i32 noundef %i.cw, i32 noundef range(i32 1, 256) %5)
  %i.uw = icmp slt i32 %i.cv, 1                   ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit312.i, %zywrle_rgbyuv_16be.exit.i
  %.0243417.i = phi i32 [ 0, %zywrle_rgbyuv_16be.exit.i ], [ %i.yk, %.loopexit312.i ] ; 3 uses
  %.0245416.i = phi ptr [ %2, %zywrle_rgbyuv_16be.exit.i ], [ %.13258.i, %.loopexit312.i ] ; 3 uses
  %i.ux = shl i32 2, %.0243417.i                  ; 3 uses
  %i.uy = ashr exact i32 %i.ux, 1                 ; 2 uses
  %i.uz = sext i32 %i.uy to i64
  %i.va = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.uz ; 3 uses
  %i.vb = mul i32 %i.uy, %i.cv
  %i.vc = sext i32 %i.vb to i64                   ; 2 uses
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.va, i64 %i.vc ; 2 uses
  %i.ve = getelementptr inbounds i8, ptr %i.vd, i64 %.idx432.i
  br i1 %i.ev, label %.lr.ph363.i, label %.loopexit312.i

.lr.ph363.i:                                      ; preds = %bb.ab
  %i.vf = sext i32 %i.ux to i64                   ; 4 uses
  %i.vg = add i32 %i.ux, -1
  %i.vh = mul i32 %i.vg, %i.cv
  %i.vi = sext i32 %i.vh to i64                   ; 4 uses
  br i1 %i.uw, label %._crit_edge398.i, label %.lr.ph354.i.preheader.us

.lr.ph354.i.preheader.us:                         ; preds = %.lr.ph363.i, %._crit_edge355.i.loopexit.us
  %.0361.i.us = phi ptr [ %i.wa, %._crit_edge355.i.loopexit.us ], [ %i.vd, %.lr.ph363.i ] ; 2 uses
  %.1246359.i.us = phi ptr [ %i.vx, %._crit_edge355.i.loopexit.us ], [ %.0245416.i, %.lr.ph363.i ]
  %i.vj = getelementptr inbounds nuw i8, ptr %.0361.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph354.i.us

.lr.ph354.i.us:                                   ; preds = %.lr.ph354.i.us, %.lr.ph354.i.preheader.us
  %.1352.i.us = phi ptr [ %i.vy, %.lr.ph354.i.us ], [ %.0361.i.us, %.lr.ph354.i.preheader.us ] ; 4 uses
  %.2247350.i.us = phi ptr [ %i.vx, %.lr.ph354.i.us ], [ %.1246359.i.us, %.lr.ph354.i.preheader.us ] ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 2
  %i.vl = load i8, ptr %i.vk, align 1
  %i.vm = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 1
  %i.vn = load i8, ptr %i.vm, align 1             ; 2 uses
  %i.vo = load i8, ptr %.1352.i.us, align 1
  %i.vp = and i8 %i.vl, -8
  %i.vq = lshr i8 %i.vn, 5
  %i.vr = or disjoint i8 %i.vq, %i.vp
  store i8 %i.vr, ptr %.2247350.i.us, align 1
  %i.vs = lshr i8 %i.vo, 3
  %i.vt = shl i8 %i.vn, 3
  %i.vu = and i8 %i.vt, -32
  %i.vv = or disjoint i8 %i.vu, %i.vs
  %i.vw = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 1
  store i8 %i.vv, ptr %i.vw, align 1
  %i.vx = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 2 ; 3 uses
  %i.vy = getelementptr inbounds [4 x i8], ptr %.1352.i.us, i64 %i.vf ; 3 uses
  %i.vz = icmp ult ptr %i.vy, %i.vj
  br i1 %i.vz, label %.lr.ph354.i.us, label %._crit_edge355.i.loopexit.us, !llvm.loop !65

._crit_edge355.i.loopexit.us:                     ; preds = %.lr.ph354.i.us
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.vy, i64 %i.vi ; 2 uses
  %i.wb = icmp ult ptr %i.wa, %i.ve
  br i1 %i.wb, label %.lr.ph354.i.preheader.us, label %._crit_edge364.i, !llvm.loop !66

._crit_edge364.i:                                 ; preds = %._crit_edge355.i.loopexit.us
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.vc ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 %.idx432.i
  br label %.lr.ph371.i.preheader.us

.lr.ph371.i.preheader.us:                         ; preds = %._crit_edge364.i, %._crit_edge372.i.loopexit.us
  %.2378.i.us = phi ptr [ %i.wv, %._crit_edge372.i.loopexit.us ], [ %i.wc, %._crit_edge364.i ] ; 2 uses
  %.4249376.i.us = phi ptr [ %i.ws, %._crit_edge372.i.loopexit.us ], [ %i.vx, %._crit_edge364.i ]
  %i.we = getelementptr inbounds nuw i8, ptr %.2378.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph371.i.us

.lr.ph371.i.us:                                   ; preds = %.lr.ph371.i.us, %.lr.ph371.i.preheader.us
  %.3369.i.us = phi ptr [ %i.wt, %.lr.ph371.i.us ], [ %.2378.i.us, %.lr.ph371.i.preheader.us ] ; 4 uses
  %.5250367.i.us = phi ptr [ %i.ws, %.lr.ph371.i.us ], [ %.4249376.i.us, %.lr.ph371.i.preheader.us ] ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 2
  %i.wg = load i8, ptr %i.wf, align 1
  %i.wh = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 1
  %i.wi = load i8, ptr %i.wh, align 1             ; 2 uses
  %i.wj = load i8, ptr %.3369.i.us, align 1
  %i.wk = and i8 %i.wg, -8
  %i.wl = lshr i8 %i.wi, 5
  %i.wm = or disjoint i8 %i.wl, %i.wk
  store i8 %i.wm, ptr %.5250367.i.us, align 1
  %i.wn = lshr i8 %i.wj, 3
  %i.wo = shl i8 %i.wi, 3
  %i.wp = and i8 %i.wo, -32
  %i.wq = or disjoint i8 %i.wp, %i.wn
  %i.wr = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 1
  store i8 %i.wq, ptr %i.wr, align 1
  %i.ws = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 2 ; 3 uses
  %i.wt = getelementptr inbounds [4 x i8], ptr %.3369.i.us, i64 %i.vf ; 3 uses
  %i.wu = icmp ult ptr %i.wt, %i.we
  br i1 %i.wu, label %.lr.ph371.i.us, label %._crit_edge372.i.loopexit.us, !llvm.loop !67

._crit_edge372.i.loopexit.us:                     ; preds = %.lr.ph371.i.us
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.wt, i64 %i.vi ; 2 uses
  %i.ww = icmp ult ptr %i.wv, %i.wd
  br i1 %i.ww, label %.lr.ph371.i.preheader.us, label %._crit_edge381.i, !llvm.loop !68

._crit_edge381.i:                                 ; preds = %._crit_edge372.i.loopexit.us
  %i.wx = getelementptr inbounds nuw i8, ptr %i.va, i64 %.idx432.i
  br label %.lr.ph388.i.preheader.us

.lr.ph388.i.preheader.us:                         ; preds = %._crit_edge381.i, %._crit_edge389.i.loopexit.us
  %.4395.i.us = phi ptr [ %i.xp, %._crit_edge389.i.loopexit.us ], [ %i.va, %._crit_edge381.i ] ; 2 uses
  %.7252393.i.us = phi ptr [ %i.xm, %._crit_edge389.i.loopexit.us ], [ %i.ws, %._crit_edge381.i ]
  %i.wy = getelementptr inbounds nuw i8, ptr %.4395.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph388.i.us

.lr.ph388.i.us:                                   ; preds = %.lr.ph388.i.us, %.lr.ph388.i.preheader.us
  %.5386.i.us = phi ptr [ %i.xn, %.lr.ph388.i.us ], [ %.4395.i.us, %.lr.ph388.i.preheader.us ] ; 4 uses
  %.8253384.i.us = phi ptr [ %i.xm, %.lr.ph388.i.us ], [ %.7252393.i.us, %.lr.ph388.i.preheader.us ] ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 2
  %i.xa = load i8, ptr %i.wz, align 1
  %i.xb = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 1
  %i.xc = load i8, ptr %i.xb, align 1             ; 2 uses
  %i.xd = load i8, ptr %.5386.i.us, align 1
  %i.xe = and i8 %i.xa, -8
  %i.xf = lshr i8 %i.xc, 5
  %i.xg = or disjoint i8 %i.xf, %i.xe
  store i8 %i.xg, ptr %.8253384.i.us, align 1
  %i.xh = lshr i8 %i.xd, 3
  %i.xi = shl i8 %i.xc, 3
  %i.xj = and i8 %i.xi, -32
  %i.xk = or disjoint i8 %i.xj, %i.xh
  %i.xl = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 1
  store i8 %i.xk, ptr %i.xl, align 1
  %i.xm = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 2 ; 3 uses
  %i.xn = getelementptr inbounds [4 x i8], ptr %.5386.i.us, i64 %i.vf ; 3 uses
  %i.xo = icmp ult ptr %i.xn, %i.wy
  br i1 %i.xo, label %.lr.ph388.i.us, label %._crit_edge389.i.loopexit.us, !llvm.loop !69

._crit_edge389.i.loopexit.us:                     ; preds = %.lr.ph388.i.us
  %i.xp = getelementptr inbounds [4 x i8], ptr %i.xn, i64 %i.vi ; 2 uses
  %i.xq = icmp ult ptr %i.xp, %i.wx
  br i1 %i.xq, label %.lr.ph388.i.preheader.us, label %._crit_edge398.i, !llvm.loop !70

._crit_edge398.i:                                 ; preds = %._crit_edge389.i.loopexit.us, %.lr.ph363.i
  %.us-phi182 = phi ptr [ %.0245416.i, %.lr.ph363.i ], [ %i.xm, %._crit_edge389.i.loopexit.us ] ; 2 uses
  %.not = icmp ne i32 %.0243417.i, %i.ct
  %brmerge = or i1 %.not, %i.uw
  br i1 %brmerge, label %.loopexit312.i, label %.lr.ph413.i.us

.lr.ph413.i.us:                                   ; preds = %._crit_edge398.i, %._crit_edge406.i.loopexit.us
  %.6412.i.us = phi ptr [ %i.yi, %._crit_edge406.i.loopexit.us ], [ %i.cu, %._crit_edge398.i ] ; 2 uses
  %.10255410.i.us = phi ptr [ %i.yf, %._crit_edge406.i.loopexit.us ], [ %.us-phi182, %._crit_edge398.i ]
  %i.xr = getelementptr inbounds nuw i8, ptr %.6412.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph405.i.us

.lr.ph405.i.us:                                   ; preds = %.lr.ph405.i.us, %.lr.ph413.i.us
  %.7403.i.us = phi ptr [ %i.yg, %.lr.ph405.i.us ], [ %.6412.i.us, %.lr.ph413.i.us ] ; 4 uses
  %.11256401.i.us = phi ptr [ %i.yf, %.lr.ph405.i.us ], [ %.10255410.i.us, %.lr.ph413.i.us ] ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 2
  %i.xt = load i8, ptr %i.xs, align 1
  %i.xu = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 1
  %i.xv = load i8, ptr %i.xu, align 1             ; 2 uses
  %i.xw = load i8, ptr %.7403.i.us, align 1
  %i.xx = and i8 %i.xt, -8
  %i.xy = lshr i8 %i.xv, 5
  %i.xz = or disjoint i8 %i.xy, %i.xx
  store i8 %i.xz, ptr %.11256401.i.us, align 1
  %i.ya = lshr i8 %i.xw, 3
  %i.yb = shl i8 %i.xv, 3
  %i.yc = and i8 %i.yb, -32
  %i.yd = or disjoint i8 %i.yc, %i.ya
  %i.ye = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 1
  store i8 %i.yd, ptr %i.ye, align 1
  %i.yf = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 2 ; 3 uses
  %i.yg = getelementptr inbounds [4 x i8], ptr %.7403.i.us, i64 %i.vf ; 3 uses
  %i.yh = icmp ult ptr %i.yg, %i.xr
  br i1 %i.yh, label %.lr.ph405.i.us, label %._crit_edge406.i.loopexit.us, !llvm.loop !71

._crit_edge406.i.loopexit.us:                     ; preds = %.lr.ph405.i.us
  %i.yi = getelementptr inbounds [4 x i8], ptr %i.yg, i64 %i.vi ; 2 uses
  %i.yj = icmp ult ptr %i.yi, %i.dd
  br i1 %i.yj, label %.lr.ph413.i.us, label %.loopexit312.i, !llvm.loop !72

.loopexit312.i:                                   ; preds = %._crit_edge406.i.loopexit.us, %._crit_edge398.i, %bb.ab
  %.13258.i = phi ptr [ %.us-phi182, %._crit_edge398.i ], [ %.0245416.i, %bb.ab ], [ %i.yf, %._crit_edge406.i.loopexit.us ] ; 7 uses
  %i.yk = add nuw nsw i32 %.0243417.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.yk, %5
  br i1 %exitcond.not.i, label %bb.ac, label %bb.ab, !llvm.loop !73

bb.ac:                                            ; preds = %.loopexit312.i
  %.idx440.i = shl nsw i64 %i.j, 2                ; 3 uses
  %i.yl = getelementptr inbounds i8, ptr %i.cu, i64 %.idx440.i
  %i.ym = icmp slt i64 %.idx432.i, %.idx440.i
  br i1 %i.ym, label %.lr.ph423.i.preheader, label %zywrle_analyze_16be.exit

.lr.ph423.i.preheader:                            ; preds = %bb.ac
  %6 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %i.yn = add i64 %.idx432.i, %6
  %i.yo = add i64 %i.yn, 86852
  %i.yp = add i64 %.idx440.i, %6
  %i.yq = add i64 %i.yp, 86848
  %i.yr = tail call i64 @llvm.umax.i64(i64 %i.yo, i64 %i.yq)
  %i.ys = add i64 %i.yr, -86849
  %i.yt = add i64 %.idx432.i, %6
  %i.yu = sub i64 %i.ys, %i.yt                    ; 4 uses
  %i.yv = lshr i64 %i.yu, 2
  %i.yw = add nuw nsw i64 %i.yv, 1                ; 2 uses
  %min.iters.check419 = icmp ult i64 %i.yu, 240
  br i1 %min.iters.check419, label %.lr.ph423.i.preheader444, label %vector.memcheck420

vector.memcheck420:                               ; preds = %.lr.ph423.i.preheader
  %i.yx = lshr i64 %i.yu, 1
  %i.yy = and i64 %i.yx, 9223372036854775806
  %i.yz = getelementptr i8, ptr %.13258.i, i64 %i.yy
  %i.za = getelementptr i8, ptr %i.yz, i64 2
  %i.zb = and i64 %i.yu, -4
  %i.zc = getelementptr i8, ptr %0, i64 %i.zb
  %i.zd = getelementptr i8, ptr %i.zc, i64 %.idx432.i
  %i.ze = getelementptr i8, ptr %i.zd, i64 86850
  %bound0421 = icmp ult ptr %.13258.i, %i.ze
  %bound1422 = icmp ult ptr %i.dd, %i.za
  %found.conflict423 = and i1 %bound0421, %bound1422
  br i1 %found.conflict423, label %.lr.ph423.i.preheader444, label %vector.ph424

vector.ph424:                                     ; preds = %vector.memcheck420
  %i.zf = and i64 %i.yw, 7                        ; 2 uses
  %i.zg = icmp eq i64 %i.zf, 0
  %i.zh = select i1 %i.zg, i64 8, i64 %i.zf
  %n.vec425 = sub nsw i64 %i.yw, %i.zh            ; 3 uses
  %i.zi = shl i64 %n.vec425, 2
  %i.zj = getelementptr i8, ptr %i.dd, i64 %i.zi
  %i.zk = shl i64 %n.vec425, 1
  %i.zl = getelementptr i8, ptr %.13258.i, i64 %i.zk
  br label %vector.body426

vector.body426:                                   ; preds = %vector.body426, %vector.ph424
  %index427 = phi i64 [ 0, %vector.ph424 ], [ %index.next433, %vector.body426 ] ; 3 uses
  %i.zm = shl i64 %index427, 2                    ; 2 uses
  %next.gep428 = getelementptr i8, ptr %i.dd, i64 %i.zm
  %i.zn = getelementptr i8, ptr %i.dd, i64 %i.zm
  %next.gep429 = getelementptr i8, ptr %i.zn, i64 16
  %i.zo = shl i64 %index427, 1
  %next.gep430 = getelementptr i8, ptr %.13258.i, i64 %i.zo ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep428, align 2, !alias.scope !81
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec431 = load <8 x i16>, ptr %next.gep429, align 2, !alias.scope !81
  %strided.vec432 = shufflevector <8 x i16> %wide.vec431, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.zp = getelementptr i8, ptr %next.gep430, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep430, align 2, !alias.scope !82, !noalias !81
  store <4 x i16> %strided.vec432, ptr %i.zp, align 2, !alias.scope !82, !noalias !81
  %index.next433 = add nuw i64 %index427, 8       ; 2 uses
  %i.zq = icmp eq i64 %index.next433, %n.vec425
  br i1 %i.zq, label %.lr.ph423.i.preheader444, label %vector.body426, !llvm.loop !77

.lr.ph423.i.preheader444:                         ; preds = %vector.body426, %vector.memcheck420, %.lr.ph423.i.preheader
  %.8242420.i.ph = phi ptr [ %i.dd, %vector.memcheck420 ], [ %i.dd, %.lr.ph423.i.preheader ], [ %i.zj, %vector.body426 ]
  %.14259419.i.ph = phi ptr [ %.13258.i, %vector.memcheck420 ], [ %.13258.i, %.lr.ph423.i.preheader ], [ %i.zl, %vector.body426 ]
  br label %.lr.ph423.i

.lr.ph423.i:                                      ; preds = %.lr.ph423.i.preheader444, %.lr.ph423.i
  %.8242420.i = phi ptr [ %i.zt, %.lr.ph423.i ], [ %.8242420.i.ph, %.lr.ph423.i.preheader444 ] ; 2 uses
  %.14259419.i = phi ptr [ %i.zs, %.lr.ph423.i ], [ %.14259419.i.ph, %.lr.ph423.i.preheader444 ] ; 2 uses
  %i.zr = load i16, ptr %.8242420.i, align 2
  store i16 %i.zr, ptr %.14259419.i, align 2
  %i.zs = getelementptr inbounds nuw i8, ptr %.14259419.i, i64 2
  %i.zt = getelementptr inbounds nuw i8, ptr %.8242420.i, i64 4 ; 2 uses
  %i.zu = icmp ult ptr %i.zt, %i.yl
  br i1 %i.zu, label %.lr.ph423.i, label %zywrle_analyze_16be.exit, !llvm.loop !78

zywrle_analyze_16be.exit:                         ; preds = %.lr.ph423.i, %bb.w, %bb.ac
  %i.zv = or disjoint i32 %5, 128
  tail call fastcc void @zrle_encode_tile16be(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.zv)
  br label %.loopexit

bb.ad:                                            ; preds = %.thread145
  %i.zw = shl i32 %i.i, 1
  %i.zx = sext i32 %i.zw to i64
  tail call void @vnc_write(ptr noundef %0, ptr noundef %2, i64 noundef %i.zx) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge195.thread, %bb.p, %bb.s, %.preheader, %zywrle_analyze_16be.exit, %bb.ad, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @wavelet(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 1, 256) %3) unnamed_addr #5 {
bb.a:
  %i.a = mul i32 %2, %1                           ; 2 uses
  %i.b = sext i32 %i.a to i64
  %.idx = shl nsw i64 %i.b, 2
  %i.c = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.d = icmp sgt i32 %i.a, 0
  %i.e = sext i32 %1 to i64
  %.idx63 = shl nsw i64 %i.e, 2
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.idx63
  %i.g = icmp sgt i32 %1, 0
  %i.h = zext nneg i32 %3 to i64                  ; 2 uses
  %i.i = getelementptr [72 x i8], ptr @zywrle_param, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -72
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %filter_wavelet_square.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %filter_wavelet_square.exit ] ; 6 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.k = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  %i.l = shl i32 %1, %i.k
  %i.m = shl i32 8, %i.k                          ; 2 uses
  %i.n = trunc i64 %indvars.iv to i32
  %i.o = add i32 %i.n, 1
  %i.p = ashr i32 %1, %i.o
  %i.q = mul i32 %i.p, %i.m                       ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp sgt i32 %i.q, 0
  %i.t = shl i32 4, %i.k
  %i.u = add i32 %i.m, -2
  %i.v = sext i32 %i.t to i64                     ; 3 uses
  %i.w = sext i32 %i.u to i64
  %i.x = sext i32 %i.l to i64
  br i1 %i.s, label %.lr.ph.i.us, label %._crit_edge

.lr.ph.i.us:                                      ; preds = %.lr.ph, %wavelet_level.exit.loopexit.us
  %.057.us = phi ptr [ %i.cc, %wavelet_level.exit.loopexit.us ], [ %0, %.lr.ph ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.057.us, i64 %i.r
  br label %bb.c

bb.c:                                             ; preds = %harr.exit35.i.us, %.lr.ph.i.us
  %.036.i.us = phi ptr [ %.057.us, %.lr.ph.i.us ], [ %i.ca, %harr.exit35.i.us ] ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %.036.i.us, i64 %i.v ; 2 uses
  %i.aa = load i8, ptr %.036.i.us, align 1
  %i.ab = zext i8 %i.aa to i32                    ; 6 uses
  %i.ac = load i8, ptr %i.z, align 1
  %i.ad = zext i8 %i.ac to i32                    ; 6 uses
  %i.ae = xor i32 %i.ad, %i.ab
  %.not.i.i.us = icmp samesign ult i32 %i.ae, 128
  br i1 %.not.i.i.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = add nuw nsw i32 %i.ad, %i.ab            ; 2 uses
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = and i32 %i.ag, 128
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = sub nsw i32 0, %i.ad
  %spec.select.i.i.us = select i1 %i.ai, i32 %i.aj, i32 %i.ab
  br label %harr.exit.i.us

bb.e:                                             ; preds = %bb.c
  %i.ak = sub nsw i32 %i.ab, %i.ad                ; 2 uses
  %i.al = xor i32 %i.ak, %i.ab
  %i.am = and i32 %i.al, 128
  %i.an = icmp eq i32 %i.am, 0
  %spec.select22.i.i.us = select i1 %i.an, i32 %i.ab, i32 %i.ad
  br label %harr.exit.i.us

harr.exit.i.us:                                   ; preds = %bb.e, %bb.d
  %.021.i.i.us = phi i32 [ %spec.select.i.i.us, %bb.d ], [ %i.ak, %bb.e ]
  %.0.i.i.us = phi i32 [ %i.af, %bb.d ], [ %spec.select22.i.i.us, %bb.e ]
  %i.ao = trunc i32 %.0.i.i.us to i8
  store i8 %i.ao, ptr %.036.i.us, align 1
  %i.ap = trunc i32 %.021.i.i.us to i8
  store i8 %i.ap, ptr %i.z, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 1 ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.v ; 2 uses
  %i.as = load i8, ptr %i.aq, align 1
  %i.at = zext i8 %i.as to i32                    ; 6 uses
  %i.au = load i8, ptr %i.ar, align 1
  %i.av = zext i8 %i.au to i32                    ; 6 uses
  %i.aw = xor i32 %i.av, %i.at
  %.not.i24.i.us = icmp samesign ult i32 %i.aw, 128
  br i1 %.not.i24.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %harr.exit.i.us
  %i.ax = add nuw nsw i32 %i.av, %i.at            ; 2 uses
  %i.ay = xor i32 %i.ax, %i.av
  %i.az = and i32 %i.ay, 128
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = sub nsw i32 0, %i.av
  %spec.select.i25.i.us = select i1 %i.ba, i32 %i.bb, i32 %i.at
  br label %harr.exit29.i.us

bb.g:                                             ; preds = %harr.exit.i.us
  %i.bc = sub nsw i32 %i.at, %i.av                ; 2 uses
  %i.bd = xor i32 %i.bc, %i.at
  %i.be = and i32 %i.bd, 128
  %i.bf = icmp eq i32 %i.be, 0
  %spec.select22.i28.i.us = select i1 %i.bf, i32 %i.at, i32 %i.av
  br label %harr.exit29.i.us

harr.exit29.i.us:                                 ; preds = %bb.g, %bb.f
  %.021.i26.i.us = phi i32 [ %spec.select.i25.i.us, %bb.f ], [ %i.bc, %bb.g ]
  %.0.i27.i.us = phi i32 [ %i.ax, %bb.f ], [ %spec.select22.i28.i.us, %bb.g ]
  %i.bg = trunc i32 %.0.i27.i.us to i8
  store i8 %i.bg, ptr %i.aq, align 1
  %i.bh = trunc i32 %.021.i26.i.us to i8
end_hunk_1
begin_hunk_2_@wavelet:bb.a
  %i.hl = phi ptr [ %i.gh, %._crit_edge.i.unr-lcssa ], [ %.340.i.epil.init, %.epil.preheader ]
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.fi
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.fl
  %i.ho = add nuw nsw i32 %.03441.i, 1            ; 2 uses
  %exitcond47.not.i = icmp eq i32 %i.ho, %i.fe
  br i1 %exitcond47.not.i, label %._crit_edge43.i, label %.preheader.i, !llvm.loop !87

._crit_edge43.i:                                  ; preds = %._crit_edge.i
  %.1.idx.1.i = sext i32 %i.fd to i64             ; 2 uses
  %.1.1.i = getelementptr inbounds [4 x i8], ptr %0, i64 %.1.idx.1.i
  %xtraiter87 = and i32 %i.fm, 1
  %i.hp = icmp eq i32 %i.fr, 0
  %unroll_iter91 = and i32 %i.fm, 2147483646
  %lcmp.mod88.not = icmp eq i32 %xtraiter87, 0
  %lcmp.mod90 = trunc i32 %i.fm to i1
  br label %.preheader.1.i

.preheader.1.i:                                   ; preds = %._crit_edge.1.i, %._crit_edge43.i
  %.242.1.i = phi ptr [ %.1.1.i, %._crit_edge43.i ], [ %i.jk, %._crit_edge.1.i ] ; 2 uses
  %.03441.1.i = phi i32 [ 0, %._crit_edge43.i ], [ %i.jl, %._crit_edge.1.i ]
  br i1 %i.hp, label %.epil.preheader86, label %.preheader.1.i.new

.preheader.1.i.new:                               ; preds = %.preheader.1.i, %.preheader.1.i.new
  %.340.1.i = phi ptr [ %i.it, %.preheader.1.i.new ], [ %.242.1.i, %.preheader.1.i ] ; 5 uses
  %niter92 = phi i32 [ %niter92.next.1, %.preheader.1.i.new ], [ 0, %.preheader.1.i ]
  %i.hq = load i8, ptr %.340.1.i, align 1
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1
  store i8 %i.ht, ptr %.340.1.i, align 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.340.1.i, i64 1 ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1
  %i.hw = zext i8 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1
  store i8 %i.hy, ptr %i.hu, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %.340.1.i, i64 2 ; 2 uses
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = zext i8 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1
  store i8 %i.id, ptr %i.hz, align 1
  %i.ie = getelementptr inbounds [4 x i8], ptr %.340.1.i, i64 %i.fi ; 6 uses
  %i.if = load i8, ptr %i.ie, align 1
  %i.ig = zext i8 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1
  store i8 %i.ii, ptr %i.ie, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 1 ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 1
  %i.il = zext i8 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1
  store i8 %i.in, ptr %i.ij, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 2 ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1
  %i.iq = zext i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1
  store i8 %i.is, ptr %i.io, align 1
  %i.it = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %i.fi ; 2 uses
  %niter92.next.1 = add nuw nsw i32 %niter92, 2   ; 2 uses
  %niter92.ncmp.1 = icmp eq i32 %niter92.next.1, %unroll_iter91
  br i1 %niter92.ncmp.1, label %._crit_edge.1.i.unr-lcssa, label %.preheader.1.i.new, !llvm.loop !86

._crit_edge.1.i.unr-lcssa:                        ; preds = %.preheader.1.i.new
  br i1 %lcmp.mod88.not, label %._crit_edge.1.i, label %.epil.preheader86

.epil.preheader86:                                ; preds = %._crit_edge.1.i.unr-lcssa, %.preheader.1.i
  %.340.1.i.epil.init = phi ptr [ %.242.1.i, %.preheader.1.i ], [ %i.it, %._crit_edge.1.i.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.iu = load i8, ptr %.340.1.i.epil.init, align 1
  %i.iv = zext i8 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1
  store i8 %i.ix, ptr %.340.1.i.epil.init, align 1
  %i.iy = getelementptr inbounds nuw i8, ptr %.340.1.i.epil.init, i64 1 ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1
  %i.ja = zext i8 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1
  store i8 %i.jc, ptr %i.iy, align 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.340.1.i.epil.init, i64 2 ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1
  %i.jf = zext i8 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1
  store i8 %i.jh, ptr %i.jd, align 1
  br label %._crit_edge.1.i

._crit_edge.1.i:                                  ; preds = %._crit_edge.1.i.unr-lcssa, %.epil.preheader86
  %i.ji = phi ptr [ %i.ie, %._crit_edge.1.i.unr-lcssa ], [ %.340.1.i.epil.init, %.epil.preheader86 ]
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.fi
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %i.fl
  %i.jl = add nuw nsw i32 %.03441.1.i, 1          ; 2 uses
  %exitcond47.1.not.i = icmp eq i32 %i.jl, %i.fe
  br i1 %exitcond47.1.not.i, label %._crit_edge43.1.i, label %.preheader.1.i, !llvm.loop !87

._crit_edge43.1.i:                                ; preds = %._crit_edge.1.i
  %.1.2.i = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %.1.idx.1.i
  %xtraiter94 = and i32 %i.fm, 1
  %i.jm = icmp eq i32 %i.fr, 0
  %unroll_iter98 = and i32 %i.fm, 2147483646
  %lcmp.mod95.not = icmp eq i32 %xtraiter94, 0
  %lcmp.mod97 = trunc i32 %i.fm to i1
  br label %.preheader.2.i

.preheader.2.i:                                   ; preds = %._crit_edge.2.i, %._crit_edge43.1.i
  %.242.2.i = phi ptr [ %.1.2.i, %._crit_edge43.1.i ], [ %i.lh, %._crit_edge.2.i ] ; 2 uses
  %.03441.2.i = phi i32 [ 0, %._crit_edge43.1.i ], [ %i.li, %._crit_edge.2.i ]
  br i1 %i.jm, label %.epil.preheader93, label %.preheader.2.i.new

.preheader.2.i.new:                               ; preds = %.preheader.2.i, %.preheader.2.i.new
  %.340.2.i = phi ptr [ %i.kq, %.preheader.2.i.new ], [ %.242.2.i, %.preheader.2.i ] ; 5 uses
  %niter99 = phi i32 [ %niter99.next.1, %.preheader.2.i.new ], [ 0, %.preheader.2.i ]
  %i.jn = load i8, ptr %.340.2.i, align 1
  %i.jo = zext i8 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1
  store i8 %i.jq, ptr %.340.2.i, align 1
  %i.jr = getelementptr inbounds nuw i8, ptr %.340.2.i, i64 1 ; 2 uses
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = zext i8 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1
  store i8 %i.jv, ptr %i.jr, align 1
  %i.jw = getelementptr inbounds nuw i8, ptr %.340.2.i, i64 2 ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1
  %i.jy = zext i8 %i.jx to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1
  store i8 %i.ka, ptr %i.jw, align 1
  %i.kb = getelementptr inbounds [4 x i8], ptr %.340.2.i, i64 %i.fi ; 6 uses
  %i.kc = load i8, ptr %i.kb, align 1
  %i.kd = zext i8 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1
  store i8 %i.kf, ptr %i.kb, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 1 ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 1
  %i.ki = zext i8 %i.kh to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1
  store i8 %i.kk, ptr %i.kg, align 1
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kb, i64 2 ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1
  %i.kn = zext i8 %i.km to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1
  store i8 %i.kp, ptr %i.kl, align 1
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.fi ; 2 uses
  %niter99.next.1 = add nuw nsw i32 %niter99, 2   ; 2 uses
  %niter99.ncmp.1 = icmp eq i32 %niter99.next.1, %unroll_iter98
  br i1 %niter99.ncmp.1, label %._crit_edge.2.i.unr-lcssa, label %.preheader.2.i.new, !llvm.loop !86

._crit_edge.2.i.unr-lcssa:                        ; preds = %.preheader.2.i.new
  br i1 %lcmp.mod95.not, label %._crit_edge.2.i, label %.epil.preheader93

.epil.preheader93:                                ; preds = %._crit_edge.2.i.unr-lcssa, %.preheader.2.i
  %.340.2.i.epil.init = phi ptr [ %.242.2.i, %.preheader.2.i ], [ %i.kq, %._crit_edge.2.i.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.kr = load i8, ptr %.340.2.i.epil.init, align 1
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1
  store i8 %i.ku, ptr %.340.2.i.epil.init, align 1
  %i.kv = getelementptr inbounds nuw i8, ptr %.340.2.i.epil.init, i64 1 ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1
  %i.kx = zext i8 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1
  store i8 %i.kz, ptr %i.kv, align 1
  %i.la = getelementptr inbounds nuw i8, ptr %.340.2.i.epil.init, i64 2 ; 2 uses
  %i.lb = load i8, ptr %i.la, align 1
  %i.lc = zext i8 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1
  store i8 %i.le, ptr %i.la, align 1
  br label %._crit_edge.2.i

._crit_edge.2.i:                                  ; preds = %._crit_edge.2.i.unr-lcssa, %.epil.preheader93
  %i.lf = phi ptr [ %i.kb, %._crit_edge.2.i.unr-lcssa ], [ %.340.2.i.epil.init, %.epil.preheader93 ]
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.fi
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %i.fl
  %i.li = add nuw nsw i32 %.03441.2.i, 1          ; 2 uses
  %exitcond47.2.not.i = icmp eq i32 %i.li, %i.fe
  br i1 %exitcond47.2.not.i, label %filter_wavelet_square.exit, label %.preheader.2.i, !llvm.loop !87

filter_wavelet_square.exit:                       ; preds = %._crit_edge.2.i, %._crit_edge61, %.split.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %bb.q, label %bb.b, !llvm.loop !88

bb.q:                                             ; preds = %filter_wavelet_square.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @zrle_encode_tile16le(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 256) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca [256 x i32], align 16             ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.i = mul i32 %4, %3                           ; 3 uses
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %.idx = shl nsw i64 %i.j, 1
  %i.k = getelementptr inbounds i8, ptr %2, i64 %.idx ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -2
  %i.m = load i16, ptr %i.l, align 2
  %i.n = xor i16 %i.m, -1
  store i16 %i.n, ptr %i.k, align 2
  tail call void @palette_init(ptr noundef nonnull %i.h, i64 noundef 256, i32 noundef 16) #9
  %i.o = icmp sgt i32 %i.i, 0                     ; 2 uses
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.0121170 = phi ptr [ %.2, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %.0125169 = phi i32 [ %.1126, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.0127168 = phi i32 [ %.1128, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.p = load i16, ptr %.0121170, align 2         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0121170, i64 2 ; 3 uses
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.p to i32
  %.not136 = icmp eq i16 %i.r, %i.p
  br i1 %.not136, label %.preheader147, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.t = add i32 %.0125169, 1
  br label %bb.d

.preheader147:                                    ; preds = %.lr.ph, %.preheader147
  %.1122 = phi ptr [ %i.u, %.preheader147 ], [ %i.q, %.lr.ph ]
  %i.u = getelementptr inbounds nuw i8, ptr %.1122, i64 2 ; 3 uses
  %i.v = load i16, ptr %i.u, align 2
  %i.w = icmp eq i16 %i.v, %i.p
  br i1 %i.w, label %.preheader147, label %bb.c, !llvm.loop !89

bb.c:                                             ; preds = %.preheader147
  %i.x = add i32 %.0127168, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1128 = phi i32 [ %.0127168, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %.1126 = phi i32 [ %i.t, %bb.b ], [ %.0125169, %bb.c ] ; 2 uses
  %.2 = phi ptr [ %i.q, %bb.b ], [ %i.u, %bb.c ]  ; 2 uses
  %i.y = tail call i32 @palette_put(ptr noundef nonnull %i.h, i32 noundef %i.s) #9 ; 0 uses
  %i.z = icmp ult ptr %.2, %i.k
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0127.lcssa = phi i32 [ 0, %bb.a ], [ %.1128, %bb.d ]
  %.0125.lcssa = phi i32 [ 0, %bb.a ], [ %.1126, %bb.d ]
  %i.aa = tail call i64 @palette_size(ptr noundef nonnull %i.h) #9
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i8 0, ptr %i.f, align 1, !annotation !10
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 1) #9
  %i.ac = call i32 @palette_color(ptr noundef nonnull %i.h, i32 noundef 0, ptr noundef nonnull %i.f) #9
  %i.ad = trunc i32 %i.ac to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.ad, ptr %i.c, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  call fastcc void @zrle_choose_palette_rle(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.h, i32 noundef 16, i32 noundef %.0127.lcssa, i32 noundef %.0125.lcssa, i32 noundef %5, ptr noundef %i.d, ptr noundef %i.e)
  %i.ae = load i8, ptr %i.e, align 1, !range !7, !noundef !8
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  br i1 %i.af, label %bb.g, label %.thread144

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.g, i8 0, i64 1024, i1 false), !annotation !10
  %i.ag = tail call i64 @palette_size(ptr noundef nonnull %i.h) #9 ; 3 uses
  %i.ah = load i8, ptr %i.d, align 1, !range !7, !noundef !8 ; 2 uses
  %i.ai = shl nuw i8 %i.ah, 7
  %i.aj = trunc i64 %i.ag to i8
  %i.ak = or i8 %i.ai, %i.aj
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.ak) #9
  %i.al = call i64 @palette_fill(ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #9 ; 0 uses
  %.not210 = icmp eq i64 %i.ag, 0
  br i1 %.not210, label %._crit_edge189, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.g, %.lr.ph188
  %i.am = phi i64 [ %i.ar, %.lr.ph188 ], [ 0, %bb.g ]
  %.0123186 = phi i32 [ %i.aq, %.lr.ph188 ], [ 0, %bb.g ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = trunc i32 %i.ao to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.ap, ptr %i.b, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = add i32 %.0123186, 1                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = icmp ugt i64 %i.ag, %i.ar
  br i1 %i.as, label %.lr.ph188, label %._crit_edge189, !llvm.loop !91

._crit_edge189:                                   ; preds = %.lr.ph188, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  %i.at = trunc nuw i8 %i.ah to i1
  br i1 %i.at, label %.preheader, label %bb.q

.thread144:                                       ; preds = %bb.f
  %i.au = load i8, ptr %i.d, align 1, !range !7, !noundef !8 ; 2 uses
  %i.av = shl nuw i8 %i.au, 7
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.av) #9
  %i.aw = trunc nuw i8 %i.au to i1
  br i1 %i.aw, label %.preheader, label %.thread145

.preheader:                                       ; preds = %._crit_edge189, %.thread144
  br i1 %i.o, label %.lr.ph209, label %.loopexit

.lr.ph209:                                        ; preds = %.preheader, %bb.p
  %.3208 = phi ptr [ %.4, %bb.p ], [ %2, %.preheader ] ; 3 uses
  %i.ax = load i16, ptr %.3208, align 2           ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph209
  %.3.pn = phi ptr [ %.3208, %.lr.ph209 ], [ %.4, %bb.h ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3.pn, i64 2 ; 5 uses
  %i.ay = load i16, ptr %.4, align 2
  %i.az = icmp eq i16 %i.ay, %i.ax
  %i.ba = icmp ult ptr %.4, %i.k                  ; 2 uses
  %i.bb = and i1 %i.az, %i.ba
  br i1 %i.bb, label %bb.h, label %bb.i, !llvm.loop !92

bb.i:                                             ; preds = %bb.h
  %i.bc = ptrtoint ptr %.4 to i64
  %i.bd = ptrtoint ptr %.3208 to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = lshr exact i64 %i.be, 1
  %i.bg = trunc i64 %i.bf to i32                  ; 3 uses
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bh = zext i16 %i.ax to i32
  %i.bi = call i32 @palette_idx(ptr noundef nonnull %i.h, i32 noundef %i.bh) #9
  %i.bj = trunc i32 %i.bi to i8                   ; 4 uses
  %i.bk = icmp slt i32 %i.bg, 3
  br i1 %i.bk, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bl = icmp eq i32 %i.bg, 2
  br i1 %i.bl, label %bb.l, label %bb.p, !llvm.loop !93

bb.l:                                             ; preds = %bb.k
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bj) #9
  br label %bb.p, !llvm.loop !93

bb.m:                                             ; preds = %bb.j
  %i.bm = or i8 %i.bj, -128
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bm) #9
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.ax, ptr %i.a, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bn = add i32 %i.bg, -1                       ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 254
  br i1 %i.bo, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %bb.o, %.lr.ph205
  %.0120203 = phi i32 [ %i.bp, %.lr.ph205 ], [ %i.bn, %bb.o ] ; 2 uses
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext -1) #9
  %i.bp = add nsw i32 %.0120203, -255             ; 2 uses
  %i.bq = icmp samesign ugt i32 %.0120203, 509
  br i1 %i.bq, label %.lr.ph205, label %._crit_edge206, !llvm.loop !94

._crit_edge206:                                   ; preds = %.lr.ph205, %bb.o
  %.0120.lcssa = phi i32 [ %i.bn, %bb.o ], [ %i.bp, %.lr.ph205 ]
  %i.br = trunc i32 %.0120.lcssa to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.l, %._crit_edge206
  %.sink = phi i8 [ %i.br, %._crit_edge206 ], [ %i.bj, %bb.l ], [ %i.bj, %bb.k ]
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %.sink) #9
  br i1 %i.ba, label %.lr.ph209, label %.loopexit

bb.q:                                             ; preds = %._crit_edge189
  %i.bs = call i64 @palette_size(ptr noundef nonnull %i.h) #9
  %i.bt = icmp ult i64 %i.bs, 17
  br i1 %i.bt, label %bb.s, label %bb.r
end_hunk_2
begin_hunk_3_@zrle_encode_tile16le:bb.a
._crit_edge.i.loopexit.us.i:                      ; preds = %.lr.ph.i.us.i, %vec.epilog.middle.block, %middle.block
  %.lcssa344 = phi ptr [ %i.oi, %vec.epilog.middle.block ], [ %i.fp, %middle.block ], [ %i.ur, %.lr.ph.i.us.i ] ; 2 uses
  %.lcssa343 = phi ptr [ %i.ok, %vec.epilog.middle.block ], [ %i.fr, %middle.block ], [ %i.us, %.lr.ph.i.us.i ]
  %i.uu = getelementptr inbounds [2 x i8], ptr %.lcssa343, i64 %i.ex
  %i.uv = icmp ult ptr %.lcssa344, %i.dd
  br i1 %i.uv, label %iter.check, label %zywrle_rgbyuv_16le.exit.i, !llvm.loop !109

._crit_edge.i.i:                                  ; preds = %.lr.ph60.i.i, %._crit_edge.i.i
  br label %._crit_edge.i.i

zywrle_rgbyuv_16le.exit.i:                        ; preds = %._crit_edge.i.loopexit.us.i, %.thread.i.zywrle_rgbyuv_16le.exit.i_crit_edge
  %.idx434.i.pre-phi = phi i64 [ %.pre, %.thread.i.zywrle_rgbyuv_16le.exit.i_crit_edge ], [ %.idx62.i.i, %._crit_edge.i.loopexit.us.i ] ; 4 uses
  tail call fastcc void @wavelet(ptr noundef nonnull %i.cu, i32 noundef %i.cv, i32 noundef %i.cw, i32 noundef range(i32 1, 256) %5)
  %i.uw = icmp slt i32 %i.cv, 1                   ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit312.i, %zywrle_rgbyuv_16le.exit.i
  %.0243417.i = phi i32 [ 0, %zywrle_rgbyuv_16le.exit.i ], [ %i.yk, %.loopexit312.i ] ; 3 uses
  %.0245416.i = phi ptr [ %2, %zywrle_rgbyuv_16le.exit.i ], [ %.13258.i, %.loopexit312.i ] ; 3 uses
  %i.ux = shl i32 2, %.0243417.i                  ; 3 uses
  %i.uy = ashr exact i32 %i.ux, 1                 ; 2 uses
  %i.uz = sext i32 %i.uy to i64
  %i.va = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.uz ; 3 uses
  %i.vb = mul i32 %i.uy, %i.cv
  %i.vc = sext i32 %i.vb to i64                   ; 2 uses
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.va, i64 %i.vc ; 2 uses
  %i.ve = getelementptr inbounds i8, ptr %i.vd, i64 %.idx432.i
  br i1 %i.ev, label %.lr.ph363.i, label %.loopexit312.i

.lr.ph363.i:                                      ; preds = %bb.ab
  %i.vf = sext i32 %i.ux to i64                   ; 4 uses
  %i.vg = add i32 %i.ux, -1
  %i.vh = mul i32 %i.vg, %i.cv
  %i.vi = sext i32 %i.vh to i64                   ; 4 uses
  br i1 %i.uw, label %._crit_edge398.i, label %.lr.ph354.i.preheader.us

.lr.ph354.i.preheader.us:                         ; preds = %.lr.ph363.i, %._crit_edge355.i.loopexit.us
  %.0361.i.us = phi ptr [ %i.wa, %._crit_edge355.i.loopexit.us ], [ %i.vd, %.lr.ph363.i ] ; 2 uses
  %.1246359.i.us = phi ptr [ %i.vx, %._crit_edge355.i.loopexit.us ], [ %.0245416.i, %.lr.ph363.i ]
  %i.vj = getelementptr inbounds nuw i8, ptr %.0361.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph354.i.us

.lr.ph354.i.us:                                   ; preds = %.lr.ph354.i.us, %.lr.ph354.i.preheader.us
  %.1352.i.us = phi ptr [ %i.vy, %.lr.ph354.i.us ], [ %.0361.i.us, %.lr.ph354.i.preheader.us ] ; 4 uses
  %.2247350.i.us = phi ptr [ %i.vx, %.lr.ph354.i.us ], [ %.1246359.i.us, %.lr.ph354.i.preheader.us ] ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 2
  %i.vl = load i8, ptr %i.vk, align 1
  %i.vm = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 1
  %i.vn = load i8, ptr %i.vm, align 1             ; 2 uses
  %i.vo = load i8, ptr %.1352.i.us, align 1
  %i.vp = and i8 %i.vl, -8
  %i.vq = lshr i8 %i.vn, 5
  %i.vr = or disjoint i8 %i.vq, %i.vp
  %i.vs = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 1
  store i8 %i.vr, ptr %i.vs, align 1
  %i.vt = lshr i8 %i.vo, 3
  %i.vu = shl i8 %i.vn, 3
  %i.vv = and i8 %i.vu, -32
  %i.vw = or disjoint i8 %i.vv, %i.vt
  store i8 %i.vw, ptr %.2247350.i.us, align 1
  %i.vx = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 2 ; 3 uses
  %i.vy = getelementptr inbounds [4 x i8], ptr %.1352.i.us, i64 %i.vf ; 3 uses
  %i.vz = icmp ult ptr %i.vy, %i.vj
  br i1 %i.vz, label %.lr.ph354.i.us, label %._crit_edge355.i.loopexit.us, !llvm.loop !110

._crit_edge355.i.loopexit.us:                     ; preds = %.lr.ph354.i.us
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.vy, i64 %i.vi ; 2 uses
  %i.wb = icmp ult ptr %i.wa, %i.ve
  br i1 %i.wb, label %.lr.ph354.i.preheader.us, label %._crit_edge364.i, !llvm.loop !111

._crit_edge364.i:                                 ; preds = %._crit_edge355.i.loopexit.us
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.vc ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 %.idx432.i
  br label %.lr.ph371.i.preheader.us

.lr.ph371.i.preheader.us:                         ; preds = %._crit_edge364.i, %._crit_edge372.i.loopexit.us
  %.2378.i.us = phi ptr [ %i.wv, %._crit_edge372.i.loopexit.us ], [ %i.wc, %._crit_edge364.i ] ; 2 uses
  %.4249376.i.us = phi ptr [ %i.ws, %._crit_edge372.i.loopexit.us ], [ %i.vx, %._crit_edge364.i ]
  %i.we = getelementptr inbounds nuw i8, ptr %.2378.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph371.i.us

.lr.ph371.i.us:                                   ; preds = %.lr.ph371.i.us, %.lr.ph371.i.preheader.us
  %.3369.i.us = phi ptr [ %i.wt, %.lr.ph371.i.us ], [ %.2378.i.us, %.lr.ph371.i.preheader.us ] ; 4 uses
  %.5250367.i.us = phi ptr [ %i.ws, %.lr.ph371.i.us ], [ %.4249376.i.us, %.lr.ph371.i.preheader.us ] ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 2
  %i.wg = load i8, ptr %i.wf, align 1
  %i.wh = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 1
  %i.wi = load i8, ptr %i.wh, align 1             ; 2 uses
  %i.wj = load i8, ptr %.3369.i.us, align 1
  %i.wk = and i8 %i.wg, -8
  %i.wl = lshr i8 %i.wi, 5
  %i.wm = or disjoint i8 %i.wl, %i.wk
  %i.wn = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 1
  store i8 %i.wm, ptr %i.wn, align 1
  %i.wo = lshr i8 %i.wj, 3
  %i.wp = shl i8 %i.wi, 3
  %i.wq = and i8 %i.wp, -32
  %i.wr = or disjoint i8 %i.wq, %i.wo
  store i8 %i.wr, ptr %.5250367.i.us, align 1
  %i.ws = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 2 ; 3 uses
  %i.wt = getelementptr inbounds [4 x i8], ptr %.3369.i.us, i64 %i.vf ; 3 uses
  %i.wu = icmp ult ptr %i.wt, %i.we
  br i1 %i.wu, label %.lr.ph371.i.us, label %._crit_edge372.i.loopexit.us, !llvm.loop !112

._crit_edge372.i.loopexit.us:                     ; preds = %.lr.ph371.i.us
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.wt, i64 %i.vi ; 2 uses
  %i.ww = icmp ult ptr %i.wv, %i.wd
  br i1 %i.ww, label %.lr.ph371.i.preheader.us, label %._crit_edge381.i, !llvm.loop !113

._crit_edge381.i:                                 ; preds = %._crit_edge372.i.loopexit.us
  %i.wx = getelementptr inbounds nuw i8, ptr %i.va, i64 %.idx432.i
  br label %.lr.ph388.i.preheader.us

.lr.ph388.i.preheader.us:                         ; preds = %._crit_edge381.i, %._crit_edge389.i.loopexit.us
  %.4395.i.us = phi ptr [ %i.xp, %._crit_edge389.i.loopexit.us ], [ %i.va, %._crit_edge381.i ] ; 2 uses
  %.7252393.i.us = phi ptr [ %i.xm, %._crit_edge389.i.loopexit.us ], [ %i.ws, %._crit_edge381.i ]
  %i.wy = getelementptr inbounds nuw i8, ptr %.4395.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph388.i.us

.lr.ph388.i.us:                                   ; preds = %.lr.ph388.i.us, %.lr.ph388.i.preheader.us
  %.5386.i.us = phi ptr [ %i.xn, %.lr.ph388.i.us ], [ %.4395.i.us, %.lr.ph388.i.preheader.us ] ; 4 uses
  %.8253384.i.us = phi ptr [ %i.xm, %.lr.ph388.i.us ], [ %.7252393.i.us, %.lr.ph388.i.preheader.us ] ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 2
  %i.xa = load i8, ptr %i.wz, align 1
  %i.xb = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 1
  %i.xc = load i8, ptr %i.xb, align 1             ; 2 uses
  %i.xd = load i8, ptr %.5386.i.us, align 1
  %i.xe = and i8 %i.xa, -8
  %i.xf = lshr i8 %i.xc, 5
  %i.xg = or disjoint i8 %i.xf, %i.xe
  %i.xh = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 1
  store i8 %i.xg, ptr %i.xh, align 1
  %i.xi = lshr i8 %i.xd, 3
  %i.xj = shl i8 %i.xc, 3
  %i.xk = and i8 %i.xj, -32
  %i.xl = or disjoint i8 %i.xk, %i.xi
  store i8 %i.xl, ptr %.8253384.i.us, align 1
  %i.xm = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 2 ; 3 uses
  %i.xn = getelementptr inbounds [4 x i8], ptr %.5386.i.us, i64 %i.vf ; 3 uses
  %i.xo = icmp ult ptr %i.xn, %i.wy
  br i1 %i.xo, label %.lr.ph388.i.us, label %._crit_edge389.i.loopexit.us, !llvm.loop !114

._crit_edge389.i.loopexit.us:                     ; preds = %.lr.ph388.i.us
  %i.xp = getelementptr inbounds [4 x i8], ptr %i.xn, i64 %i.vi ; 2 uses
  %i.xq = icmp ult ptr %i.xp, %i.wx
  br i1 %i.xq, label %.lr.ph388.i.preheader.us, label %._crit_edge398.i, !llvm.loop !115

._crit_edge398.i:                                 ; preds = %._crit_edge389.i.loopexit.us, %.lr.ph363.i
  %.us-phi182 = phi ptr [ %.0245416.i, %.lr.ph363.i ], [ %i.xm, %._crit_edge389.i.loopexit.us ] ; 2 uses
  %.not = icmp ne i32 %.0243417.i, %i.ct
  %brmerge = or i1 %.not, %i.uw
  br i1 %brmerge, label %.loopexit312.i, label %.lr.ph413.i.us

.lr.ph413.i.us:                                   ; preds = %._crit_edge398.i, %._crit_edge406.i.loopexit.us
  %.6412.i.us = phi ptr [ %i.yi, %._crit_edge406.i.loopexit.us ], [ %i.cu, %._crit_edge398.i ] ; 2 uses
  %.10255410.i.us = phi ptr [ %i.yf, %._crit_edge406.i.loopexit.us ], [ %.us-phi182, %._crit_edge398.i ]
  %i.xr = getelementptr inbounds nuw i8, ptr %.6412.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph405.i.us

.lr.ph405.i.us:                                   ; preds = %.lr.ph405.i.us, %.lr.ph413.i.us
  %.7403.i.us = phi ptr [ %i.yg, %.lr.ph405.i.us ], [ %.6412.i.us, %.lr.ph413.i.us ] ; 4 uses
  %.11256401.i.us = phi ptr [ %i.yf, %.lr.ph405.i.us ], [ %.10255410.i.us, %.lr.ph413.i.us ] ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 2
  %i.xt = load i8, ptr %i.xs, align 1
  %i.xu = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 1
  %i.xv = load i8, ptr %i.xu, align 1             ; 2 uses
  %i.xw = load i8, ptr %.7403.i.us, align 1
  %i.xx = and i8 %i.xt, -8
  %i.xy = lshr i8 %i.xv, 5
  %i.xz = or disjoint i8 %i.xy, %i.xx
  %i.ya = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 1
  store i8 %i.xz, ptr %i.ya, align 1
  %i.yb = lshr i8 %i.xw, 3
  %i.yc = shl i8 %i.xv, 3
  %i.yd = and i8 %i.yc, -32
  %i.ye = or disjoint i8 %i.yd, %i.yb
  store i8 %i.ye, ptr %.11256401.i.us, align 1
  %i.yf = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 2 ; 3 uses
  %i.yg = getelementptr inbounds [4 x i8], ptr %.7403.i.us, i64 %i.vf ; 3 uses
  %i.yh = icmp ult ptr %i.yg, %i.xr
  br i1 %i.yh, label %.lr.ph405.i.us, label %._crit_edge406.i.loopexit.us, !llvm.loop !116

._crit_edge406.i.loopexit.us:                     ; preds = %.lr.ph405.i.us
  %i.yi = getelementptr inbounds [4 x i8], ptr %i.yg, i64 %i.vi ; 2 uses
  %i.yj = icmp ult ptr %i.yi, %i.dd
  br i1 %i.yj, label %.lr.ph413.i.us, label %.loopexit312.i, !llvm.loop !117

.loopexit312.i:                                   ; preds = %._crit_edge406.i.loopexit.us, %._crit_edge398.i, %bb.ab
  %.13258.i = phi ptr [ %.us-phi182, %._crit_edge398.i ], [ %.0245416.i, %bb.ab ], [ %i.yf, %._crit_edge406.i.loopexit.us ] ; 7 uses
  %i.yk = add nuw nsw i32 %.0243417.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.yk, %5
  br i1 %exitcond.not.i, label %bb.ac, label %bb.ab, !llvm.loop !118

bb.ac:                                            ; preds = %.loopexit312.i
  %.idx440.i = shl nsw i64 %i.j, 2                ; 3 uses
  %i.yl = getelementptr inbounds i8, ptr %i.cu, i64 %.idx440.i
  %i.ym = icmp slt i64 %.idx432.i, %.idx440.i
  br i1 %i.ym, label %.lr.ph423.i.preheader, label %zywrle_analyze_16le.exit

.lr.ph423.i.preheader:                            ; preds = %bb.ac
  %6 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %i.yn = add i64 %.idx432.i, %6
  %i.yo = add i64 %i.yn, 86852
  %i.yp = add i64 %.idx440.i, %6
  %i.yq = add i64 %i.yp, 86848
  %i.yr = tail call i64 @llvm.umax.i64(i64 %i.yo, i64 %i.yq)
  %i.ys = add i64 %i.yr, -86849
  %i.yt = add i64 %.idx432.i, %6
  %i.yu = sub i64 %i.ys, %i.yt                    ; 4 uses
  %i.yv = lshr i64 %i.yu, 2
  %i.yw = add nuw nsw i64 %i.yv, 1                ; 2 uses
  %min.iters.check419 = icmp ult i64 %i.yu, 240
  br i1 %min.iters.check419, label %.lr.ph423.i.preheader444, label %vector.memcheck420

vector.memcheck420:                               ; preds = %.lr.ph423.i.preheader
  %i.yx = lshr i64 %i.yu, 1
  %i.yy = and i64 %i.yx, 9223372036854775806
  %i.yz = getelementptr i8, ptr %.13258.i, i64 %i.yy
  %i.za = getelementptr i8, ptr %i.yz, i64 2
  %i.zb = and i64 %i.yu, -4
  %i.zc = getelementptr i8, ptr %0, i64 %i.zb
  %i.zd = getelementptr i8, ptr %i.zc, i64 %.idx432.i
  %i.ze = getelementptr i8, ptr %i.zd, i64 86850
  %bound0421 = icmp ult ptr %.13258.i, %i.ze
  %bound1422 = icmp ult ptr %i.dd, %i.za
  %found.conflict423 = and i1 %bound0421, %bound1422
  br i1 %found.conflict423, label %.lr.ph423.i.preheader444, label %vector.ph424

vector.ph424:                                     ; preds = %vector.memcheck420
  %i.zf = and i64 %i.yw, 7                        ; 2 uses
  %i.zg = icmp eq i64 %i.zf, 0
  %i.zh = select i1 %i.zg, i64 8, i64 %i.zf
  %n.vec425 = sub nsw i64 %i.yw, %i.zh            ; 3 uses
  %i.zi = shl i64 %n.vec425, 2
  %i.zj = getelementptr i8, ptr %i.dd, i64 %i.zi
  %i.zk = shl i64 %n.vec425, 1
  %i.zl = getelementptr i8, ptr %.13258.i, i64 %i.zk
  br label %vector.body426

vector.body426:                                   ; preds = %vector.body426, %vector.ph424
  %index427 = phi i64 [ 0, %vector.ph424 ], [ %index.next433, %vector.body426 ] ; 3 uses
  %i.zm = shl i64 %index427, 2                    ; 2 uses
  %next.gep428 = getelementptr i8, ptr %i.dd, i64 %i.zm
  %i.zn = getelementptr i8, ptr %i.dd, i64 %i.zm
  %next.gep429 = getelementptr i8, ptr %i.zn, i64 16
  %i.zo = shl i64 %index427, 1
  %next.gep430 = getelementptr i8, ptr %.13258.i, i64 %i.zo ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep428, align 2, !alias.scope !126
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec431 = load <8 x i16>, ptr %next.gep429, align 2, !alias.scope !126
  %strided.vec432 = shufflevector <8 x i16> %wide.vec431, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.zp = getelementptr i8, ptr %next.gep430, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep430, align 2, !alias.scope !127, !noalias !126
  store <4 x i16> %strided.vec432, ptr %i.zp, align 2, !alias.scope !127, !noalias !126
  %index.next433 = add nuw i64 %index427, 8       ; 2 uses
  %i.zq = icmp eq i64 %index.next433, %n.vec425
  br i1 %i.zq, label %.lr.ph423.i.preheader444, label %vector.body426, !llvm.loop !122

.lr.ph423.i.preheader444:                         ; preds = %vector.body426, %vector.memcheck420, %.lr.ph423.i.preheader
  %.8242420.i.ph = phi ptr [ %i.dd, %vector.memcheck420 ], [ %i.dd, %.lr.ph423.i.preheader ], [ %i.zj, %vector.body426 ]
  %.14259419.i.ph = phi ptr [ %.13258.i, %vector.memcheck420 ], [ %.13258.i, %.lr.ph423.i.preheader ], [ %i.zl, %vector.body426 ]
  br label %.lr.ph423.i

.lr.ph423.i:                                      ; preds = %.lr.ph423.i.preheader444, %.lr.ph423.i
  %.8242420.i = phi ptr [ %i.zt, %.lr.ph423.i ], [ %.8242420.i.ph, %.lr.ph423.i.preheader444 ] ; 2 uses
  %.14259419.i = phi ptr [ %i.zs, %.lr.ph423.i ], [ %.14259419.i.ph, %.lr.ph423.i.preheader444 ] ; 2 uses
  %i.zr = load i16, ptr %.8242420.i, align 2
  store i16 %i.zr, ptr %.14259419.i, align 2
  %i.zs = getelementptr inbounds nuw i8, ptr %.14259419.i, i64 2
  %i.zt = getelementptr inbounds nuw i8, ptr %.8242420.i, i64 4 ; 2 uses
  %i.zu = icmp ult ptr %i.zt, %i.yl
  br i1 %i.zu, label %.lr.ph423.i, label %zywrle_analyze_16le.exit, !llvm.loop !123

zywrle_analyze_16le.exit:                         ; preds = %.lr.ph423.i, %bb.w, %bb.ac
  %i.zv = or disjoint i32 %5, 128
  tail call fastcc void @zrle_encode_tile16le(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.zv)
  br label %.loopexit

bb.ad:                                            ; preds = %.thread145
  %i.zw = shl i32 %i.i, 1
  %i.zx = sext i32 %i.zw to i64
  tail call void @vnc_write(ptr noundef %0, ptr noundef %2, i64 noundef %i.zx) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge195.thread, %bb.p, %bb.s, %.preheader, %zywrle_analyze_16le.exit, %bb.ad, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @zrle_encode_tile15be(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 256) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca [256 x i32], align 16             ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.i = mul i32 %4, %3                           ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %.idx = shl nsw i64 %i.j, 1
  %i.k = getelementptr inbounds i8, ptr %2, i64 %.idx ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -2
  %i.m = load i16, ptr %i.l, align 2
  %i.n = xor i16 %i.m, -1
  store i16 %i.n, ptr %i.k, align 2
  tail call void @palette_init(ptr noundef nonnull %i.h, i64 noundef 256, i32 noundef 15) #9
  %i.o = icmp sgt i32 %i.i, 0                     ; 2 uses
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.0121170 = phi ptr [ %.2, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %.0125169 = phi i32 [ %.1126, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.0127168 = phi i32 [ %.1128, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.p = load i16, ptr %.0121170, align 2         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0121170, i64 2 ; 3 uses
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.p to i32
  %.not136 = icmp eq i16 %i.r, %i.p
  br i1 %.not136, label %.preheader147, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.t = add i32 %.0125169, 1
  br label %bb.d

.preheader147:                                    ; preds = %.lr.ph, %.preheader147
  %.1122 = phi ptr [ %i.u, %.preheader147 ], [ %i.q, %.lr.ph ]
  %i.u = getelementptr inbounds nuw i8, ptr %.1122, i64 2 ; 3 uses
  %i.v = load i16, ptr %i.u, align 2
  %i.w = icmp eq i16 %i.v, %i.p
  br i1 %i.w, label %.preheader147, label %bb.c, !llvm.loop !128

bb.c:                                             ; preds = %.preheader147
  %i.x = add i32 %.0127168, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1128 = phi i32 [ %.0127168, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %.1126 = phi i32 [ %i.t, %bb.b ], [ %.0125169, %bb.c ] ; 2 uses
  %.2 = phi ptr [ %i.q, %bb.b ], [ %i.u, %bb.c ]  ; 2 uses
  %i.y = tail call i32 @palette_put(ptr noundef nonnull %i.h, i32 noundef %i.s) #9 ; 0 uses
  %i.z = icmp ult ptr %.2, %i.k
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !129

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0127.lcssa = phi i32 [ 0, %bb.a ], [ %.1128, %bb.d ]
  %.0125.lcssa = phi i32 [ 0, %bb.a ], [ %.1126, %bb.d ]
  %i.aa = tail call i64 @palette_size(ptr noundef nonnull %i.h) #9
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i8 0, ptr %i.f, align 1, !annotation !10
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 1) #9
  %i.ac = call i32 @palette_color(ptr noundef nonnull %i.h, i32 noundef 0, ptr noundef nonnull %i.f) #9
  %i.ad = trunc i32 %i.ac to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.ad, ptr %i.c, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  call fastcc void @zrle_choose_palette_rle(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.h, i32 noundef 16, i32 noundef %.0127.lcssa, i32 noundef %.0125.lcssa, i32 noundef %5, ptr noundef %i.d, ptr noundef %i.e)
  %i.ae = load i8, ptr %i.e, align 1, !range !7, !noundef !8
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  br i1 %i.af, label %bb.g, label %.thread144

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.g, i8 0, i64 1024, i1 false), !annotation !10
  %i.ag = tail call i64 @palette_size(ptr noundef nonnull %i.h) #9 ; 3 uses
  %i.ah = load i8, ptr %i.d, align 1, !range !7, !noundef !8 ; 2 uses
  %i.ai = shl nuw i8 %i.ah, 7
  %i.aj = trunc i64 %i.ag to i8
  %i.ak = or i8 %i.ai, %i.aj
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.ak) #9
  %i.al = call i64 @palette_fill(ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #9 ; 0 uses
  %.not210 = icmp eq i64 %i.ag, 0
  br i1 %.not210, label %._crit_edge189, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.g, %.lr.ph188
  %i.am = phi i64 [ %i.ar, %.lr.ph188 ], [ 0, %bb.g ]
  %.0123186 = phi i32 [ %i.aq, %.lr.ph188 ], [ 0, %bb.g ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = trunc i32 %i.ao to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.ap, ptr %i.b, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = add i32 %.0123186, 1                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = icmp ugt i64 %i.ag, %i.ar
  br i1 %i.as, label %.lr.ph188, label %._crit_edge189, !llvm.loop !130

._crit_edge189:                                   ; preds = %.lr.ph188, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  %i.at = trunc nuw i8 %i.ah to i1
  br i1 %i.at, label %.preheader, label %bb.q

.thread144:                                       ; preds = %bb.f
  %i.au = load i8, ptr %i.d, align 1, !range !7, !noundef !8 ; 2 uses
  %i.av = shl nuw i8 %i.au, 7
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.av) #9
  %i.aw = trunc nuw i8 %i.au to i1
  br i1 %i.aw, label %.preheader, label %.thread145

.preheader:                                       ; preds = %._crit_edge189, %.thread144
  br i1 %i.o, label %.lr.ph209, label %.loopexit

.lr.ph209:                                        ; preds = %.preheader, %bb.p
  %.3208 = phi ptr [ %.4, %bb.p ], [ %2, %.preheader ] ; 3 uses
  %i.ax = load i16, ptr %.3208, align 2           ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph209
  %.3.pn = phi ptr [ %.3208, %.lr.ph209 ], [ %.4, %bb.h ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3.pn, i64 2 ; 5 uses
  %i.ay = load i16, ptr %.4, align 2
  %i.az = icmp eq i16 %i.ay, %i.ax
  %i.ba = icmp ult ptr %.4, %i.k                  ; 2 uses
  %i.bb = and i1 %i.az, %i.ba
  br i1 %i.bb, label %bb.h, label %bb.i, !llvm.loop !131

bb.i:                                             ; preds = %bb.h
  %i.bc = ptrtoint ptr %.4 to i64
  %i.bd = ptrtoint ptr %.3208 to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = lshr exact i64 %i.be, 1
  %i.bg = trunc i64 %i.bf to i32                  ; 3 uses
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bh = zext i16 %i.ax to i32
  %i.bi = call i32 @palette_idx(ptr noundef nonnull %i.h, i32 noundef %i.bh) #9
  %i.bj = trunc i32 %i.bi to i8                   ; 4 uses
  %i.bk = icmp slt i32 %i.bg, 3
  br i1 %i.bk, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bl = icmp eq i32 %i.bg, 2
  br i1 %i.bl, label %bb.l, label %bb.p, !llvm.loop !132

bb.l:                                             ; preds = %bb.k
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bj) #9
  br label %bb.p, !llvm.loop !132

bb.m:                                             ; preds = %bb.j
  %i.bm = or i8 %i.bj, -128
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bm) #9
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.ax, ptr %i.a, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bn = add i32 %i.bg, -1                       ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 254
  br i1 %i.bo, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %bb.o, %.lr.ph205
  %.0120203 = phi i32 [ %i.bp, %.lr.ph205 ], [ %i.bn, %bb.o ] ; 2 uses
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext -1) #9
  %i.bp = add nsw i32 %.0120203, -255             ; 2 uses
  %i.bq = icmp samesign ugt i32 %.0120203, 509
  br i1 %i.bq, label %.lr.ph205, label %._crit_edge206, !llvm.loop !133

._crit_edge206:                                   ; preds = %.lr.ph205, %bb.o
  %.0120.lcssa = phi i32 [ %i.bn, %bb.o ], [ %i.bp, %.lr.ph205 ]
  %i.br = trunc i32 %.0120.lcssa to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.l, %._crit_edge206
  %.sink = phi i8 [ %i.br, %._crit_edge206 ], [ %i.bj, %bb.l ], [ %i.bj, %bb.k ]
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %.sink) #9
  br i1 %i.ba, label %.lr.ph209, label %.loopexit

bb.q:                                             ; preds = %._crit_edge189
  %i.bs = call i64 @palette_size(ptr noundef nonnull %i.h) #9
  %i.bt = icmp ult i64 %i.bs, 17
  br i1 %i.bt, label %bb.s, label %bb.r
end_hunk_3
begin_hunk_4_@zrle_encode_tile15be:bb.a
  %i.uy = icmp ult ptr %.lcssa344, %i.dd
  br i1 %i.uy, label %iter.check, label %zywrle_rgbyuv_15be.exit.i, !llvm.loop !148

._crit_edge.i.i:                                  ; preds = %.lr.ph60.i.i, %._crit_edge.i.i
  br label %._crit_edge.i.i

zywrle_rgbyuv_15be.exit.i:                        ; preds = %._crit_edge.i.loopexit.us.i, %.thread.i.zywrle_rgbyuv_15be.exit.i_crit_edge
  %.idx434.i.pre-phi = phi i64 [ %.pre, %.thread.i.zywrle_rgbyuv_15be.exit.i_crit_edge ], [ %.idx62.i.i, %._crit_edge.i.loopexit.us.i ] ; 4 uses
  tail call fastcc void @wavelet(ptr noundef nonnull %i.cu, i32 noundef %i.cv, i32 noundef %i.cw, i32 noundef range(i32 1, 256) %5)
  %i.uz = icmp slt i32 %i.cv, 1                   ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit312.i, %zywrle_rgbyuv_15be.exit.i
  %.0243417.i = phi i32 [ 0, %zywrle_rgbyuv_15be.exit.i ], [ %i.yr, %.loopexit312.i ] ; 3 uses
  %.0245416.i = phi ptr [ %2, %zywrle_rgbyuv_15be.exit.i ], [ %.13258.i, %.loopexit312.i ] ; 3 uses
  %i.va = shl i32 2, %.0243417.i                  ; 3 uses
  %i.vb = ashr exact i32 %i.va, 1                 ; 2 uses
  %i.vc = sext i32 %i.vb to i64
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.vc ; 3 uses
  %i.ve = mul i32 %i.vb, %i.cv
  %i.vf = sext i32 %i.ve to i64                   ; 2 uses
  %i.vg = getelementptr inbounds [4 x i8], ptr %i.vd, i64 %i.vf ; 2 uses
  %i.vh = getelementptr inbounds i8, ptr %i.vg, i64 %.idx432.i
  br i1 %i.ev, label %.lr.ph363.i, label %.loopexit312.i

.lr.ph363.i:                                      ; preds = %bb.ab
  %i.vi = sext i32 %i.va to i64                   ; 4 uses
  %i.vj = add i32 %i.va, -1
  %i.vk = mul i32 %i.vj, %i.cv
  %i.vl = sext i32 %i.vk to i64                   ; 4 uses
  br i1 %i.uz, label %._crit_edge398.i, label %.lr.ph354.i.preheader.us

.lr.ph354.i.preheader.us:                         ; preds = %.lr.ph363.i, %._crit_edge355.i.loopexit.us
  %.0361.i.us = phi ptr [ %i.we, %._crit_edge355.i.loopexit.us ], [ %i.vg, %.lr.ph363.i ] ; 2 uses
  %.1246359.i.us = phi ptr [ %i.wb, %._crit_edge355.i.loopexit.us ], [ %.0245416.i, %.lr.ph363.i ]
  %i.vm = getelementptr inbounds nuw i8, ptr %.0361.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph354.i.us

.lr.ph354.i.us:                                   ; preds = %.lr.ph354.i.us, %.lr.ph354.i.preheader.us
  %.1352.i.us = phi ptr [ %i.wc, %.lr.ph354.i.us ], [ %.0361.i.us, %.lr.ph354.i.preheader.us ] ; 4 uses
  %.2247350.i.us = phi ptr [ %i.wb, %.lr.ph354.i.us ], [ %.1246359.i.us, %.lr.ph354.i.preheader.us ] ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 2
  %i.vo = load i8, ptr %i.vn, align 1
  %i.vp = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 1
  %i.vq = load i8, ptr %i.vp, align 1             ; 2 uses
  %i.vr = load i8, ptr %.1352.i.us, align 1
  %i.vs = lshr i8 %i.vo, 1
  %i.vt = and i8 %i.vs, 124
  %i.vu = lshr i8 %i.vq, 6
  %i.vv = or disjoint i8 %i.vu, %i.vt
  store i8 %i.vv, ptr %.2247350.i.us, align 1
  %i.vw = lshr i8 %i.vr, 3
  %i.vx = shl i8 %i.vq, 2
  %i.vy = and i8 %i.vx, -32
  %i.vz = or disjoint i8 %i.vy, %i.vw
  %i.wa = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 1
  store i8 %i.vz, ptr %i.wa, align 1
  %i.wb = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 2 ; 3 uses
  %i.wc = getelementptr inbounds [4 x i8], ptr %.1352.i.us, i64 %i.vi ; 3 uses
  %i.wd = icmp ult ptr %i.wc, %i.vm
  br i1 %i.wd, label %.lr.ph354.i.us, label %._crit_edge355.i.loopexit.us, !llvm.loop !149

._crit_edge355.i.loopexit.us:                     ; preds = %.lr.ph354.i.us
  %i.we = getelementptr inbounds [4 x i8], ptr %i.wc, i64 %i.vl ; 2 uses
  %i.wf = icmp ult ptr %i.we, %i.vh
  br i1 %i.wf, label %.lr.ph354.i.preheader.us, label %._crit_edge364.i, !llvm.loop !150

._crit_edge364.i:                                 ; preds = %._crit_edge355.i.loopexit.us
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.vf ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 %.idx432.i
  br label %.lr.ph371.i.preheader.us

.lr.ph371.i.preheader.us:                         ; preds = %._crit_edge364.i, %._crit_edge372.i.loopexit.us
  %.2378.i.us = phi ptr [ %i.xa, %._crit_edge372.i.loopexit.us ], [ %i.wg, %._crit_edge364.i ] ; 2 uses
  %.4249376.i.us = phi ptr [ %i.wx, %._crit_edge372.i.loopexit.us ], [ %i.wb, %._crit_edge364.i ]
  %i.wi = getelementptr inbounds nuw i8, ptr %.2378.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph371.i.us

.lr.ph371.i.us:                                   ; preds = %.lr.ph371.i.us, %.lr.ph371.i.preheader.us
  %.3369.i.us = phi ptr [ %i.wy, %.lr.ph371.i.us ], [ %.2378.i.us, %.lr.ph371.i.preheader.us ] ; 4 uses
  %.5250367.i.us = phi ptr [ %i.wx, %.lr.ph371.i.us ], [ %.4249376.i.us, %.lr.ph371.i.preheader.us ] ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 2
  %i.wk = load i8, ptr %i.wj, align 1
  %i.wl = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 1
  %i.wm = load i8, ptr %i.wl, align 1             ; 2 uses
  %i.wn = load i8, ptr %.3369.i.us, align 1
  %i.wo = lshr i8 %i.wk, 1
  %i.wp = and i8 %i.wo, 124
  %i.wq = lshr i8 %i.wm, 6
  %i.wr = or disjoint i8 %i.wq, %i.wp
  store i8 %i.wr, ptr %.5250367.i.us, align 1
  %i.ws = lshr i8 %i.wn, 3
  %i.wt = shl i8 %i.wm, 2
  %i.wu = and i8 %i.wt, -32
  %i.wv = or disjoint i8 %i.wu, %i.ws
  %i.ww = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 1
  store i8 %i.wv, ptr %i.ww, align 1
  %i.wx = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 2 ; 3 uses
  %i.wy = getelementptr inbounds [4 x i8], ptr %.3369.i.us, i64 %i.vi ; 3 uses
  %i.wz = icmp ult ptr %i.wy, %i.wi
  br i1 %i.wz, label %.lr.ph371.i.us, label %._crit_edge372.i.loopexit.us, !llvm.loop !151

._crit_edge372.i.loopexit.us:                     ; preds = %.lr.ph371.i.us
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.vl ; 2 uses
  %i.xb = icmp ult ptr %i.xa, %i.wh
  br i1 %i.xb, label %.lr.ph371.i.preheader.us, label %._crit_edge381.i, !llvm.loop !152

._crit_edge381.i:                                 ; preds = %._crit_edge372.i.loopexit.us
  %i.xc = getelementptr inbounds nuw i8, ptr %i.vd, i64 %.idx432.i
  br label %.lr.ph388.i.preheader.us

.lr.ph388.i.preheader.us:                         ; preds = %._crit_edge381.i, %._crit_edge389.i.loopexit.us
  %.4395.i.us = phi ptr [ %i.xv, %._crit_edge389.i.loopexit.us ], [ %i.vd, %._crit_edge381.i ] ; 2 uses
  %.7252393.i.us = phi ptr [ %i.xs, %._crit_edge389.i.loopexit.us ], [ %i.wx, %._crit_edge381.i ]
  %i.xd = getelementptr inbounds nuw i8, ptr %.4395.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph388.i.us

.lr.ph388.i.us:                                   ; preds = %.lr.ph388.i.us, %.lr.ph388.i.preheader.us
  %.5386.i.us = phi ptr [ %i.xt, %.lr.ph388.i.us ], [ %.4395.i.us, %.lr.ph388.i.preheader.us ] ; 4 uses
  %.8253384.i.us = phi ptr [ %i.xs, %.lr.ph388.i.us ], [ %.7252393.i.us, %.lr.ph388.i.preheader.us ] ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 2
  %i.xf = load i8, ptr %i.xe, align 1
  %i.xg = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 1
  %i.xh = load i8, ptr %i.xg, align 1             ; 2 uses
  %i.xi = load i8, ptr %.5386.i.us, align 1
  %i.xj = lshr i8 %i.xf, 1
  %i.xk = and i8 %i.xj, 124
  %i.xl = lshr i8 %i.xh, 6
  %i.xm = or disjoint i8 %i.xl, %i.xk
  store i8 %i.xm, ptr %.8253384.i.us, align 1
  %i.xn = lshr i8 %i.xi, 3
  %i.xo = shl i8 %i.xh, 2
  %i.xp = and i8 %i.xo, -32
  %i.xq = or disjoint i8 %i.xp, %i.xn
  %i.xr = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 1
  store i8 %i.xq, ptr %i.xr, align 1
  %i.xs = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 2 ; 3 uses
  %i.xt = getelementptr inbounds [4 x i8], ptr %.5386.i.us, i64 %i.vi ; 3 uses
  %i.xu = icmp ult ptr %i.xt, %i.xd
  br i1 %i.xu, label %.lr.ph388.i.us, label %._crit_edge389.i.loopexit.us, !llvm.loop !153

._crit_edge389.i.loopexit.us:                     ; preds = %.lr.ph388.i.us
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.xt, i64 %i.vl ; 2 uses
  %i.xw = icmp ult ptr %i.xv, %i.xc
  br i1 %i.xw, label %.lr.ph388.i.preheader.us, label %._crit_edge398.i, !llvm.loop !154

._crit_edge398.i:                                 ; preds = %._crit_edge389.i.loopexit.us, %.lr.ph363.i
  %.us-phi182 = phi ptr [ %.0245416.i, %.lr.ph363.i ], [ %i.xs, %._crit_edge389.i.loopexit.us ] ; 2 uses
  %.not = icmp ne i32 %.0243417.i, %i.ct
  %brmerge = or i1 %.not, %i.uz
  br i1 %brmerge, label %.loopexit312.i, label %.lr.ph413.i.us

.lr.ph413.i.us:                                   ; preds = %._crit_edge398.i, %._crit_edge406.i.loopexit.us
  %.6412.i.us = phi ptr [ %i.yp, %._crit_edge406.i.loopexit.us ], [ %i.cu, %._crit_edge398.i ] ; 2 uses
  %.10255410.i.us = phi ptr [ %i.ym, %._crit_edge406.i.loopexit.us ], [ %.us-phi182, %._crit_edge398.i ]
  %i.xx = getelementptr inbounds nuw i8, ptr %.6412.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph405.i.us

.lr.ph405.i.us:                                   ; preds = %.lr.ph405.i.us, %.lr.ph413.i.us
  %.7403.i.us = phi ptr [ %i.yn, %.lr.ph405.i.us ], [ %.6412.i.us, %.lr.ph413.i.us ] ; 4 uses
  %.11256401.i.us = phi ptr [ %i.ym, %.lr.ph405.i.us ], [ %.10255410.i.us, %.lr.ph413.i.us ] ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 2
  %i.xz = load i8, ptr %i.xy, align 1
  %i.ya = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 1
  %i.yb = load i8, ptr %i.ya, align 1             ; 2 uses
  %i.yc = load i8, ptr %.7403.i.us, align 1
  %i.yd = lshr i8 %i.xz, 1
  %i.ye = and i8 %i.yd, 124
  %i.yf = lshr i8 %i.yb, 6
  %i.yg = or disjoint i8 %i.yf, %i.ye
  store i8 %i.yg, ptr %.11256401.i.us, align 1
  %i.yh = lshr i8 %i.yc, 3
  %i.yi = shl i8 %i.yb, 2
  %i.yj = and i8 %i.yi, -32
  %i.yk = or disjoint i8 %i.yj, %i.yh
  %i.yl = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 1
  store i8 %i.yk, ptr %i.yl, align 1
  %i.ym = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 2 ; 3 uses
  %i.yn = getelementptr inbounds [4 x i8], ptr %.7403.i.us, i64 %i.vi ; 3 uses
  %i.yo = icmp ult ptr %i.yn, %i.xx
  br i1 %i.yo, label %.lr.ph405.i.us, label %._crit_edge406.i.loopexit.us, !llvm.loop !155

._crit_edge406.i.loopexit.us:                     ; preds = %.lr.ph405.i.us
  %i.yp = getelementptr inbounds [4 x i8], ptr %i.yn, i64 %i.vl ; 2 uses
  %i.yq = icmp ult ptr %i.yp, %i.dd
  br i1 %i.yq, label %.lr.ph413.i.us, label %.loopexit312.i, !llvm.loop !156

.loopexit312.i:                                   ; preds = %._crit_edge406.i.loopexit.us, %._crit_edge398.i, %bb.ab
  %.13258.i = phi ptr [ %.us-phi182, %._crit_edge398.i ], [ %.0245416.i, %bb.ab ], [ %i.ym, %._crit_edge406.i.loopexit.us ] ; 7 uses
  %i.yr = add nuw nsw i32 %.0243417.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.yr, %5
  br i1 %exitcond.not.i, label %bb.ac, label %bb.ab, !llvm.loop !157

bb.ac:                                            ; preds = %.loopexit312.i
  %.idx440.i = shl nsw i64 %i.j, 2                ; 3 uses
  %i.ys = getelementptr inbounds i8, ptr %i.cu, i64 %.idx440.i
  %i.yt = icmp slt i64 %.idx432.i, %.idx440.i
  br i1 %i.yt, label %.lr.ph423.i.preheader, label %zywrle_analyze_15be.exit

.lr.ph423.i.preheader:                            ; preds = %bb.ac
  %6 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %i.yu = add i64 %.idx432.i, %6
  %i.yv = add i64 %i.yu, 86852
  %i.yw = add i64 %.idx440.i, %6
  %i.yx = add i64 %i.yw, 86848
  %i.yy = tail call i64 @llvm.umax.i64(i64 %i.yv, i64 %i.yx)
  %i.yz = add i64 %i.yy, -86849
  %i.za = add i64 %.idx432.i, %6
  %i.zb = sub i64 %i.yz, %i.za                    ; 4 uses
  %i.zc = lshr i64 %i.zb, 2
  %i.zd = add nuw nsw i64 %i.zc, 1                ; 2 uses
  %min.iters.check419 = icmp ult i64 %i.zb, 240
  br i1 %min.iters.check419, label %.lr.ph423.i.preheader444, label %vector.memcheck420

vector.memcheck420:                               ; preds = %.lr.ph423.i.preheader
  %i.ze = lshr i64 %i.zb, 1
  %i.zf = and i64 %i.ze, 9223372036854775806
  %i.zg = getelementptr i8, ptr %.13258.i, i64 %i.zf
  %i.zh = getelementptr i8, ptr %i.zg, i64 2
  %i.zi = and i64 %i.zb, -4
  %i.zj = getelementptr i8, ptr %0, i64 %i.zi
  %i.zk = getelementptr i8, ptr %i.zj, i64 %.idx432.i
  %i.zl = getelementptr i8, ptr %i.zk, i64 86850
  %bound0421 = icmp ult ptr %.13258.i, %i.zl
  %bound1422 = icmp ult ptr %i.dd, %i.zh
  %found.conflict423 = and i1 %bound0421, %bound1422
  br i1 %found.conflict423, label %.lr.ph423.i.preheader444, label %vector.ph424

vector.ph424:                                     ; preds = %vector.memcheck420
  %i.zm = and i64 %i.zd, 7                        ; 2 uses
  %i.zn = icmp eq i64 %i.zm, 0
  %i.zo = select i1 %i.zn, i64 8, i64 %i.zm
  %n.vec425 = sub nsw i64 %i.zd, %i.zo            ; 3 uses
  %i.zp = shl i64 %n.vec425, 2
  %i.zq = getelementptr i8, ptr %i.dd, i64 %i.zp
  %i.zr = shl i64 %n.vec425, 1
  %i.zs = getelementptr i8, ptr %.13258.i, i64 %i.zr
  br label %vector.body426

vector.body426:                                   ; preds = %vector.body426, %vector.ph424
  %index427 = phi i64 [ 0, %vector.ph424 ], [ %index.next433, %vector.body426 ] ; 3 uses
  %i.zt = shl i64 %index427, 2                    ; 2 uses
  %next.gep428 = getelementptr i8, ptr %i.dd, i64 %i.zt
  %i.zu = getelementptr i8, ptr %i.dd, i64 %i.zt
  %next.gep429 = getelementptr i8, ptr %i.zu, i64 16
  %i.zv = shl i64 %index427, 1
  %next.gep430 = getelementptr i8, ptr %.13258.i, i64 %i.zv ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep428, align 2, !alias.scope !165
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec431 = load <8 x i16>, ptr %next.gep429, align 2, !alias.scope !165
  %strided.vec432 = shufflevector <8 x i16> %wide.vec431, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.zw = getelementptr i8, ptr %next.gep430, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep430, align 2, !alias.scope !166, !noalias !165
  store <4 x i16> %strided.vec432, ptr %i.zw, align 2, !alias.scope !166, !noalias !165
  %index.next433 = add nuw i64 %index427, 8       ; 2 uses
  %i.zx = icmp eq i64 %index.next433, %n.vec425
  br i1 %i.zx, label %.lr.ph423.i.preheader444, label %vector.body426, !llvm.loop !161

.lr.ph423.i.preheader444:                         ; preds = %vector.body426, %vector.memcheck420, %.lr.ph423.i.preheader
  %.8242420.i.ph = phi ptr [ %i.dd, %vector.memcheck420 ], [ %i.dd, %.lr.ph423.i.preheader ], [ %i.zq, %vector.body426 ]
  %.14259419.i.ph = phi ptr [ %.13258.i, %vector.memcheck420 ], [ %.13258.i, %.lr.ph423.i.preheader ], [ %i.zs, %vector.body426 ]
  br label %.lr.ph423.i

.lr.ph423.i:                                      ; preds = %.lr.ph423.i.preheader444, %.lr.ph423.i
  %.8242420.i = phi ptr [ %i.aaa, %.lr.ph423.i ], [ %.8242420.i.ph, %.lr.ph423.i.preheader444 ] ; 2 uses
  %.14259419.i = phi ptr [ %i.zz, %.lr.ph423.i ], [ %.14259419.i.ph, %.lr.ph423.i.preheader444 ] ; 2 uses
  %i.zy = load i16, ptr %.8242420.i, align 2
  store i16 %i.zy, ptr %.14259419.i, align 2
  %i.zz = getelementptr inbounds nuw i8, ptr %.14259419.i, i64 2
  %i.aaa = getelementptr inbounds nuw i8, ptr %.8242420.i, i64 4 ; 2 uses
  %i.aab = icmp ult ptr %i.aaa, %i.ys
  br i1 %i.aab, label %.lr.ph423.i, label %zywrle_analyze_15be.exit, !llvm.loop !162

zywrle_analyze_15be.exit:                         ; preds = %.lr.ph423.i, %bb.w, %bb.ac
  %i.aac = or disjoint i32 %5, 128
  tail call fastcc void @zrle_encode_tile15be(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.aac)
  br label %.loopexit

bb.ad:                                            ; preds = %.thread145
  tail call void @vnc_write(ptr noundef %0, ptr noundef %2, i64 noundef %i.j) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge195.thread, %bb.p, %bb.s, %.preheader, %zywrle_analyze_15be.exit, %bb.ad, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @zrle_encode_tile15le(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 256) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca [256 x i32], align 16             ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.i = mul i32 %4, %3                           ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %.idx = shl nsw i64 %i.j, 1
  %i.k = getelementptr inbounds i8, ptr %2, i64 %.idx ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -2
  %i.m = load i16, ptr %i.l, align 2
  %i.n = xor i16 %i.m, -1
  store i16 %i.n, ptr %i.k, align 2
  tail call void @palette_init(ptr noundef nonnull %i.h, i64 noundef 256, i32 noundef 15) #9
  %i.o = icmp sgt i32 %i.i, 0                     ; 2 uses
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.0121170 = phi ptr [ %.2, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %.0125169 = phi i32 [ %.1126, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.0127168 = phi i32 [ %.1128, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.p = load i16, ptr %.0121170, align 2         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0121170, i64 2 ; 3 uses
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.p to i32
  %.not136 = icmp eq i16 %i.r, %i.p
  br i1 %.not136, label %.preheader147, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.t = add i32 %.0125169, 1
  br label %bb.d

.preheader147:                                    ; preds = %.lr.ph, %.preheader147
  %.1122 = phi ptr [ %i.u, %.preheader147 ], [ %i.q, %.lr.ph ]
  %i.u = getelementptr inbounds nuw i8, ptr %.1122, i64 2 ; 3 uses
  %i.v = load i16, ptr %i.u, align 2
  %i.w = icmp eq i16 %i.v, %i.p
  br i1 %i.w, label %.preheader147, label %bb.c, !llvm.loop !167

bb.c:                                             ; preds = %.preheader147
  %i.x = add i32 %.0127168, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1128 = phi i32 [ %.0127168, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %.1126 = phi i32 [ %i.t, %bb.b ], [ %.0125169, %bb.c ] ; 2 uses
  %.2 = phi ptr [ %i.q, %bb.b ], [ %i.u, %bb.c ]  ; 2 uses
  %i.y = tail call i32 @palette_put(ptr noundef nonnull %i.h, i32 noundef %i.s) #9 ; 0 uses
  %i.z = icmp ult ptr %.2, %i.k
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !168

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0127.lcssa = phi i32 [ 0, %bb.a ], [ %.1128, %bb.d ]
  %.0125.lcssa = phi i32 [ 0, %bb.a ], [ %.1126, %bb.d ]
  %i.aa = tail call i64 @palette_size(ptr noundef nonnull %i.h) #9
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i8 0, ptr %i.f, align 1, !annotation !10
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 1) #9
  %i.ac = call i32 @palette_color(ptr noundef nonnull %i.h, i32 noundef 0, ptr noundef nonnull %i.f) #9
  %i.ad = trunc i32 %i.ac to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.ad, ptr %i.c, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  call fastcc void @zrle_choose_palette_rle(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.h, i32 noundef 16, i32 noundef %.0127.lcssa, i32 noundef %.0125.lcssa, i32 noundef %5, ptr noundef %i.d, ptr noundef %i.e)
  %i.ae = load i8, ptr %i.e, align 1, !range !7, !noundef !8
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  br i1 %i.af, label %bb.g, label %.thread144

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.g, i8 0, i64 1024, i1 false), !annotation !10
  %i.ag = tail call i64 @palette_size(ptr noundef nonnull %i.h) #9 ; 3 uses
  %i.ah = load i8, ptr %i.d, align 1, !range !7, !noundef !8 ; 2 uses
  %i.ai = shl nuw i8 %i.ah, 7
  %i.aj = trunc i64 %i.ag to i8
  %i.ak = or i8 %i.ai, %i.aj
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.ak) #9
  %i.al = call i64 @palette_fill(ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #9 ; 0 uses
  %.not210 = icmp eq i64 %i.ag, 0
  br i1 %.not210, label %._crit_edge189, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.g, %.lr.ph188
  %i.am = phi i64 [ %i.ar, %.lr.ph188 ], [ 0, %bb.g ]
  %.0123186 = phi i32 [ %i.aq, %.lr.ph188 ], [ 0, %bb.g ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = trunc i32 %i.ao to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.ap, ptr %i.b, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = add i32 %.0123186, 1                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = icmp ugt i64 %i.ag, %i.ar
  br i1 %i.as, label %.lr.ph188, label %._crit_edge189, !llvm.loop !169

._crit_edge189:                                   ; preds = %.lr.ph188, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  %i.at = trunc nuw i8 %i.ah to i1
  br i1 %i.at, label %.preheader, label %bb.q

.thread144:                                       ; preds = %bb.f
  %i.au = load i8, ptr %i.d, align 1, !range !7, !noundef !8 ; 2 uses
  %i.av = shl nuw i8 %i.au, 7
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.av) #9
  %i.aw = trunc nuw i8 %i.au to i1
  br i1 %i.aw, label %.preheader, label %.thread145

.preheader:                                       ; preds = %._crit_edge189, %.thread144
  br i1 %i.o, label %.lr.ph209, label %.loopexit

.lr.ph209:                                        ; preds = %.preheader, %bb.p
  %.3208 = phi ptr [ %.4, %bb.p ], [ %2, %.preheader ] ; 3 uses
  %i.ax = load i16, ptr %.3208, align 2           ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph209
  %.3.pn = phi ptr [ %.3208, %.lr.ph209 ], [ %.4, %bb.h ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3.pn, i64 2 ; 5 uses
  %i.ay = load i16, ptr %.4, align 2
  %i.az = icmp eq i16 %i.ay, %i.ax
  %i.ba = icmp ult ptr %.4, %i.k                  ; 2 uses
  %i.bb = and i1 %i.az, %i.ba
  br i1 %i.bb, label %bb.h, label %bb.i, !llvm.loop !170

bb.i:                                             ; preds = %bb.h
  %i.bc = ptrtoint ptr %.4 to i64
  %i.bd = ptrtoint ptr %.3208 to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = lshr exact i64 %i.be, 1
  %i.bg = trunc i64 %i.bf to i32                  ; 3 uses
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bh = zext i16 %i.ax to i32
  %i.bi = call i32 @palette_idx(ptr noundef nonnull %i.h, i32 noundef %i.bh) #9
  %i.bj = trunc i32 %i.bi to i8                   ; 4 uses
  %i.bk = icmp slt i32 %i.bg, 3
  br i1 %i.bk, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bl = icmp eq i32 %i.bg, 2
  br i1 %i.bl, label %bb.l, label %bb.p, !llvm.loop !171

bb.l:                                             ; preds = %bb.k
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bj) #9
  br label %bb.p, !llvm.loop !171

bb.m:                                             ; preds = %bb.j
  %i.bm = or i8 %i.bj, -128
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.bm) #9
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.ax, ptr %i.a, align 2
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bn = add i32 %i.bg, -1                       ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 254
  br i1 %i.bo, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %bb.o, %.lr.ph205
  %.0120203 = phi i32 [ %i.bp, %.lr.ph205 ], [ %i.bn, %bb.o ] ; 2 uses
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext -1) #9
  %i.bp = add nsw i32 %.0120203, -255             ; 2 uses
  %i.bq = icmp samesign ugt i32 %.0120203, 509
  br i1 %i.bq, label %.lr.ph205, label %._crit_edge206, !llvm.loop !172

._crit_edge206:                                   ; preds = %.lr.ph205, %bb.o
  %.0120.lcssa = phi i32 [ %i.bn, %bb.o ], [ %i.bp, %.lr.ph205 ]
  %i.br = trunc i32 %.0120.lcssa to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.l, %._crit_edge206
  %.sink = phi i8 [ %i.br, %._crit_edge206 ], [ %i.bj, %bb.l ], [ %i.bj, %bb.k ]
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %.sink) #9
  br i1 %i.ba, label %.lr.ph209, label %.loopexit

bb.q:                                             ; preds = %._crit_edge189
  %i.bs = call i64 @palette_size(ptr noundef nonnull %i.h) #9
  %i.bt = icmp ult i64 %i.bs, 17
  br i1 %i.bt, label %bb.s, label %bb.r
end_hunk_4
begin_hunk_5_@zrle_encode_tile15le:bb.a
  %i.uy = icmp ult ptr %.lcssa344, %i.dd
  br i1 %i.uy, label %iter.check, label %zywrle_rgbyuv_15le.exit.i, !llvm.loop !187

._crit_edge.i.i:                                  ; preds = %.lr.ph60.i.i, %._crit_edge.i.i
  br label %._crit_edge.i.i

zywrle_rgbyuv_15le.exit.i:                        ; preds = %._crit_edge.i.loopexit.us.i, %.thread.i.zywrle_rgbyuv_15le.exit.i_crit_edge
  %.idx434.i.pre-phi = phi i64 [ %.pre, %.thread.i.zywrle_rgbyuv_15le.exit.i_crit_edge ], [ %.idx62.i.i, %._crit_edge.i.loopexit.us.i ] ; 4 uses
  tail call fastcc void @wavelet(ptr noundef nonnull %i.cu, i32 noundef %i.cv, i32 noundef %i.cw, i32 noundef range(i32 1, 256) %5)
  %i.uz = icmp slt i32 %i.cv, 1                   ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit312.i, %zywrle_rgbyuv_15le.exit.i
  %.0243417.i = phi i32 [ 0, %zywrle_rgbyuv_15le.exit.i ], [ %i.yr, %.loopexit312.i ] ; 3 uses
  %.0245416.i = phi ptr [ %2, %zywrle_rgbyuv_15le.exit.i ], [ %.13258.i, %.loopexit312.i ] ; 3 uses
  %i.va = shl i32 2, %.0243417.i                  ; 3 uses
  %i.vb = ashr exact i32 %i.va, 1                 ; 2 uses
  %i.vc = sext i32 %i.vb to i64
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.vc ; 3 uses
  %i.ve = mul i32 %i.vb, %i.cv
  %i.vf = sext i32 %i.ve to i64                   ; 2 uses
  %i.vg = getelementptr inbounds [4 x i8], ptr %i.vd, i64 %i.vf ; 2 uses
  %i.vh = getelementptr inbounds i8, ptr %i.vg, i64 %.idx432.i
  br i1 %i.ev, label %.lr.ph363.i, label %.loopexit312.i

.lr.ph363.i:                                      ; preds = %bb.ab
  %i.vi = sext i32 %i.va to i64                   ; 4 uses
  %i.vj = add i32 %i.va, -1
  %i.vk = mul i32 %i.vj, %i.cv
  %i.vl = sext i32 %i.vk to i64                   ; 4 uses
  br i1 %i.uz, label %._crit_edge398.i, label %.lr.ph354.i.preheader.us

.lr.ph354.i.preheader.us:                         ; preds = %.lr.ph363.i, %._crit_edge355.i.loopexit.us
  %.0361.i.us = phi ptr [ %i.we, %._crit_edge355.i.loopexit.us ], [ %i.vg, %.lr.ph363.i ] ; 2 uses
  %.1246359.i.us = phi ptr [ %i.wb, %._crit_edge355.i.loopexit.us ], [ %.0245416.i, %.lr.ph363.i ]
  %i.vm = getelementptr inbounds nuw i8, ptr %.0361.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph354.i.us

.lr.ph354.i.us:                                   ; preds = %.lr.ph354.i.us, %.lr.ph354.i.preheader.us
  %.1352.i.us = phi ptr [ %i.wc, %.lr.ph354.i.us ], [ %.0361.i.us, %.lr.ph354.i.preheader.us ] ; 4 uses
  %.2247350.i.us = phi ptr [ %i.wb, %.lr.ph354.i.us ], [ %.1246359.i.us, %.lr.ph354.i.preheader.us ] ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 2
  %i.vo = load i8, ptr %i.vn, align 1
  %i.vp = getelementptr inbounds nuw i8, ptr %.1352.i.us, i64 1
  %i.vq = load i8, ptr %i.vp, align 1             ; 2 uses
  %i.vr = load i8, ptr %.1352.i.us, align 1
  %i.vs = lshr i8 %i.vo, 1
  %i.vt = and i8 %i.vs, 124
  %i.vu = lshr i8 %i.vq, 6
  %i.vv = or disjoint i8 %i.vu, %i.vt
  %i.vw = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 1
  store i8 %i.vv, ptr %i.vw, align 1
  %i.vx = lshr i8 %i.vr, 3
  %i.vy = shl i8 %i.vq, 2
  %i.vz = and i8 %i.vy, -32
  %i.wa = or disjoint i8 %i.vz, %i.vx
  store i8 %i.wa, ptr %.2247350.i.us, align 1
  %i.wb = getelementptr inbounds nuw i8, ptr %.2247350.i.us, i64 2 ; 3 uses
  %i.wc = getelementptr inbounds [4 x i8], ptr %.1352.i.us, i64 %i.vi ; 3 uses
  %i.wd = icmp ult ptr %i.wc, %i.vm
  br i1 %i.wd, label %.lr.ph354.i.us, label %._crit_edge355.i.loopexit.us, !llvm.loop !188

._crit_edge355.i.loopexit.us:                     ; preds = %.lr.ph354.i.us
  %i.we = getelementptr inbounds [4 x i8], ptr %i.wc, i64 %i.vl ; 2 uses
  %i.wf = icmp ult ptr %i.we, %i.vh
  br i1 %i.wf, label %.lr.ph354.i.preheader.us, label %._crit_edge364.i, !llvm.loop !189

._crit_edge364.i:                                 ; preds = %._crit_edge355.i.loopexit.us
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.vf ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 %.idx432.i
  br label %.lr.ph371.i.preheader.us

.lr.ph371.i.preheader.us:                         ; preds = %._crit_edge364.i, %._crit_edge372.i.loopexit.us
  %.2378.i.us = phi ptr [ %i.xa, %._crit_edge372.i.loopexit.us ], [ %i.wg, %._crit_edge364.i ] ; 2 uses
  %.4249376.i.us = phi ptr [ %i.wx, %._crit_edge372.i.loopexit.us ], [ %i.wb, %._crit_edge364.i ]
  %i.wi = getelementptr inbounds nuw i8, ptr %.2378.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph371.i.us

.lr.ph371.i.us:                                   ; preds = %.lr.ph371.i.us, %.lr.ph371.i.preheader.us
  %.3369.i.us = phi ptr [ %i.wy, %.lr.ph371.i.us ], [ %.2378.i.us, %.lr.ph371.i.preheader.us ] ; 4 uses
  %.5250367.i.us = phi ptr [ %i.wx, %.lr.ph371.i.us ], [ %.4249376.i.us, %.lr.ph371.i.preheader.us ] ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 2
  %i.wk = load i8, ptr %i.wj, align 1
  %i.wl = getelementptr inbounds nuw i8, ptr %.3369.i.us, i64 1
  %i.wm = load i8, ptr %i.wl, align 1             ; 2 uses
  %i.wn = load i8, ptr %.3369.i.us, align 1
  %i.wo = lshr i8 %i.wk, 1
  %i.wp = and i8 %i.wo, 124
  %i.wq = lshr i8 %i.wm, 6
  %i.wr = or disjoint i8 %i.wq, %i.wp
  %i.ws = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 1
  store i8 %i.wr, ptr %i.ws, align 1
  %i.wt = lshr i8 %i.wn, 3
  %i.wu = shl i8 %i.wm, 2
  %i.wv = and i8 %i.wu, -32
  %i.ww = or disjoint i8 %i.wv, %i.wt
  store i8 %i.ww, ptr %.5250367.i.us, align 1
  %i.wx = getelementptr inbounds nuw i8, ptr %.5250367.i.us, i64 2 ; 3 uses
  %i.wy = getelementptr inbounds [4 x i8], ptr %.3369.i.us, i64 %i.vi ; 3 uses
  %i.wz = icmp ult ptr %i.wy, %i.wi
  br i1 %i.wz, label %.lr.ph371.i.us, label %._crit_edge372.i.loopexit.us, !llvm.loop !190

._crit_edge372.i.loopexit.us:                     ; preds = %.lr.ph371.i.us
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.vl ; 2 uses
  %i.xb = icmp ult ptr %i.xa, %i.wh
  br i1 %i.xb, label %.lr.ph371.i.preheader.us, label %._crit_edge381.i, !llvm.loop !191

._crit_edge381.i:                                 ; preds = %._crit_edge372.i.loopexit.us
  %i.xc = getelementptr inbounds nuw i8, ptr %i.vd, i64 %.idx432.i
  br label %.lr.ph388.i.preheader.us

.lr.ph388.i.preheader.us:                         ; preds = %._crit_edge381.i, %._crit_edge389.i.loopexit.us
  %.4395.i.us = phi ptr [ %i.xv, %._crit_edge389.i.loopexit.us ], [ %i.vd, %._crit_edge381.i ] ; 2 uses
  %.7252393.i.us = phi ptr [ %i.xs, %._crit_edge389.i.loopexit.us ], [ %i.wx, %._crit_edge381.i ]
  %i.xd = getelementptr inbounds nuw i8, ptr %.4395.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph388.i.us

.lr.ph388.i.us:                                   ; preds = %.lr.ph388.i.us, %.lr.ph388.i.preheader.us
  %.5386.i.us = phi ptr [ %i.xt, %.lr.ph388.i.us ], [ %.4395.i.us, %.lr.ph388.i.preheader.us ] ; 4 uses
  %.8253384.i.us = phi ptr [ %i.xs, %.lr.ph388.i.us ], [ %.7252393.i.us, %.lr.ph388.i.preheader.us ] ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 2
  %i.xf = load i8, ptr %i.xe, align 1
  %i.xg = getelementptr inbounds nuw i8, ptr %.5386.i.us, i64 1
  %i.xh = load i8, ptr %i.xg, align 1             ; 2 uses
  %i.xi = load i8, ptr %.5386.i.us, align 1
  %i.xj = lshr i8 %i.xf, 1
  %i.xk = and i8 %i.xj, 124
  %i.xl = lshr i8 %i.xh, 6
  %i.xm = or disjoint i8 %i.xl, %i.xk
  %i.xn = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 1
  store i8 %i.xm, ptr %i.xn, align 1
  %i.xo = lshr i8 %i.xi, 3
  %i.xp = shl i8 %i.xh, 2
  %i.xq = and i8 %i.xp, -32
  %i.xr = or disjoint i8 %i.xq, %i.xo
  store i8 %i.xr, ptr %.8253384.i.us, align 1
  %i.xs = getelementptr inbounds nuw i8, ptr %.8253384.i.us, i64 2 ; 3 uses
  %i.xt = getelementptr inbounds [4 x i8], ptr %.5386.i.us, i64 %i.vi ; 3 uses
  %i.xu = icmp ult ptr %i.xt, %i.xd
  br i1 %i.xu, label %.lr.ph388.i.us, label %._crit_edge389.i.loopexit.us, !llvm.loop !192

._crit_edge389.i.loopexit.us:                     ; preds = %.lr.ph388.i.us
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.xt, i64 %i.vl ; 2 uses
  %i.xw = icmp ult ptr %i.xv, %i.xc
  br i1 %i.xw, label %.lr.ph388.i.preheader.us, label %._crit_edge398.i, !llvm.loop !193

._crit_edge398.i:                                 ; preds = %._crit_edge389.i.loopexit.us, %.lr.ph363.i
  %.us-phi182 = phi ptr [ %.0245416.i, %.lr.ph363.i ], [ %i.xs, %._crit_edge389.i.loopexit.us ] ; 2 uses
  %.not = icmp ne i32 %.0243417.i, %i.ct
  %brmerge = or i1 %.not, %i.uz
  br i1 %brmerge, label %.loopexit312.i, label %.lr.ph413.i.us

.lr.ph413.i.us:                                   ; preds = %._crit_edge398.i, %._crit_edge406.i.loopexit.us
  %.6412.i.us = phi ptr [ %i.yp, %._crit_edge406.i.loopexit.us ], [ %i.cu, %._crit_edge398.i ] ; 2 uses
  %.10255410.i.us = phi ptr [ %i.ym, %._crit_edge406.i.loopexit.us ], [ %.us-phi182, %._crit_edge398.i ]
  %i.xx = getelementptr inbounds nuw i8, ptr %.6412.i.us, i64 %.idx434.i.pre-phi
  br label %.lr.ph405.i.us

.lr.ph405.i.us:                                   ; preds = %.lr.ph405.i.us, %.lr.ph413.i.us
  %.7403.i.us = phi ptr [ %i.yn, %.lr.ph405.i.us ], [ %.6412.i.us, %.lr.ph413.i.us ] ; 4 uses
  %.11256401.i.us = phi ptr [ %i.ym, %.lr.ph405.i.us ], [ %.10255410.i.us, %.lr.ph413.i.us ] ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 2
  %i.xz = load i8, ptr %i.xy, align 1
  %i.ya = getelementptr inbounds nuw i8, ptr %.7403.i.us, i64 1
  %i.yb = load i8, ptr %i.ya, align 1             ; 2 uses
  %i.yc = load i8, ptr %.7403.i.us, align 1
  %i.yd = lshr i8 %i.xz, 1
  %i.ye = and i8 %i.yd, 124
  %i.yf = lshr i8 %i.yb, 6
  %i.yg = or disjoint i8 %i.yf, %i.ye
  %i.yh = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 1
  store i8 %i.yg, ptr %i.yh, align 1
  %i.yi = lshr i8 %i.yc, 3
  %i.yj = shl i8 %i.yb, 2
  %i.yk = and i8 %i.yj, -32
  %i.yl = or disjoint i8 %i.yk, %i.yi
  store i8 %i.yl, ptr %.11256401.i.us, align 1
  %i.ym = getelementptr inbounds nuw i8, ptr %.11256401.i.us, i64 2 ; 3 uses
  %i.yn = getelementptr inbounds [4 x i8], ptr %.7403.i.us, i64 %i.vi ; 3 uses
  %i.yo = icmp ult ptr %i.yn, %i.xx
  br i1 %i.yo, label %.lr.ph405.i.us, label %._crit_edge406.i.loopexit.us, !llvm.loop !194

._crit_edge406.i.loopexit.us:                     ; preds = %.lr.ph405.i.us
  %i.yp = getelementptr inbounds [4 x i8], ptr %i.yn, i64 %i.vl ; 2 uses
  %i.yq = icmp ult ptr %i.yp, %i.dd
  br i1 %i.yq, label %.lr.ph413.i.us, label %.loopexit312.i, !llvm.loop !195

.loopexit312.i:                                   ; preds = %._crit_edge406.i.loopexit.us, %._crit_edge398.i, %bb.ab
  %.13258.i = phi ptr [ %.us-phi182, %._crit_edge398.i ], [ %.0245416.i, %bb.ab ], [ %i.ym, %._crit_edge406.i.loopexit.us ] ; 7 uses
  %i.yr = add nuw nsw i32 %.0243417.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.yr, %5
  br i1 %exitcond.not.i, label %bb.ac, label %bb.ab, !llvm.loop !196

bb.ac:                                            ; preds = %.loopexit312.i
  %.idx440.i = shl nsw i64 %i.j, 2                ; 3 uses
  %i.ys = getelementptr inbounds i8, ptr %i.cu, i64 %.idx440.i
  %i.yt = icmp slt i64 %.idx432.i, %.idx440.i
  br i1 %i.yt, label %.lr.ph423.i.preheader, label %zywrle_analyze_15le.exit

.lr.ph423.i.preheader:                            ; preds = %bb.ac
  %6 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %i.yu = add i64 %.idx432.i, %6
  %i.yv = add i64 %i.yu, 86852
  %i.yw = add i64 %.idx440.i, %6
  %i.yx = add i64 %i.yw, 86848
  %i.yy = tail call i64 @llvm.umax.i64(i64 %i.yv, i64 %i.yx)
  %i.yz = add i64 %i.yy, -86849
  %i.za = add i64 %.idx432.i, %6
  %i.zb = sub i64 %i.yz, %i.za                    ; 4 uses
  %i.zc = lshr i64 %i.zb, 2
  %i.zd = add nuw nsw i64 %i.zc, 1                ; 2 uses
  %min.iters.check419 = icmp ult i64 %i.zb, 240
  br i1 %min.iters.check419, label %.lr.ph423.i.preheader444, label %vector.memcheck420

vector.memcheck420:                               ; preds = %.lr.ph423.i.preheader
  %i.ze = lshr i64 %i.zb, 1
  %i.zf = and i64 %i.ze, 9223372036854775806
  %i.zg = getelementptr i8, ptr %.13258.i, i64 %i.zf
  %i.zh = getelementptr i8, ptr %i.zg, i64 2
  %i.zi = and i64 %i.zb, -4
  %i.zj = getelementptr i8, ptr %0, i64 %i.zi
  %i.zk = getelementptr i8, ptr %i.zj, i64 %.idx432.i
  %i.zl = getelementptr i8, ptr %i.zk, i64 86850
  %bound0421 = icmp ult ptr %.13258.i, %i.zl
  %bound1422 = icmp ult ptr %i.dd, %i.zh
  %found.conflict423 = and i1 %bound0421, %bound1422
  br i1 %found.conflict423, label %.lr.ph423.i.preheader444, label %vector.ph424

vector.ph424:                                     ; preds = %vector.memcheck420
  %i.zm = and i64 %i.zd, 7                        ; 2 uses
  %i.zn = icmp eq i64 %i.zm, 0
  %i.zo = select i1 %i.zn, i64 8, i64 %i.zm
  %n.vec425 = sub nsw i64 %i.zd, %i.zo            ; 3 uses
  %i.zp = shl i64 %n.vec425, 2
  %i.zq = getelementptr i8, ptr %i.dd, i64 %i.zp
  %i.zr = shl i64 %n.vec425, 1
  %i.zs = getelementptr i8, ptr %.13258.i, i64 %i.zr
  br label %vector.body426

vector.body426:                                   ; preds = %vector.body426, %vector.ph424
  %index427 = phi i64 [ 0, %vector.ph424 ], [ %index.next433, %vector.body426 ] ; 3 uses
  %i.zt = shl i64 %index427, 2                    ; 2 uses
  %next.gep428 = getelementptr i8, ptr %i.dd, i64 %i.zt
  %i.zu = getelementptr i8, ptr %i.dd, i64 %i.zt
  %next.gep429 = getelementptr i8, ptr %i.zu, i64 16
  %i.zv = shl i64 %index427, 1
  %next.gep430 = getelementptr i8, ptr %.13258.i, i64 %i.zv ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep428, align 2, !alias.scope !204
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec431 = load <8 x i16>, ptr %next.gep429, align 2, !alias.scope !204
  %strided.vec432 = shufflevector <8 x i16> %wide.vec431, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.zw = getelementptr i8, ptr %next.gep430, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep430, align 2, !alias.scope !205, !noalias !204
  store <4 x i16> %strided.vec432, ptr %i.zw, align 2, !alias.scope !205, !noalias !204
  %index.next433 = add nuw i64 %index427, 8       ; 2 uses
  %i.zx = icmp eq i64 %index.next433, %n.vec425
  br i1 %i.zx, label %.lr.ph423.i.preheader444, label %vector.body426, !llvm.loop !200

.lr.ph423.i.preheader444:                         ; preds = %vector.body426, %vector.memcheck420, %.lr.ph423.i.preheader
  %.8242420.i.ph = phi ptr [ %i.dd, %vector.memcheck420 ], [ %i.dd, %.lr.ph423.i.preheader ], [ %i.zq, %vector.body426 ]
  %.14259419.i.ph = phi ptr [ %.13258.i, %vector.memcheck420 ], [ %.13258.i, %.lr.ph423.i.preheader ], [ %i.zs, %vector.body426 ]
  br label %.lr.ph423.i

.lr.ph423.i:                                      ; preds = %.lr.ph423.i.preheader444, %.lr.ph423.i
  %.8242420.i = phi ptr [ %i.aaa, %.lr.ph423.i ], [ %.8242420.i.ph, %.lr.ph423.i.preheader444 ] ; 2 uses
  %.14259419.i = phi ptr [ %i.zz, %.lr.ph423.i ], [ %.14259419.i.ph, %.lr.ph423.i.preheader444 ] ; 2 uses
  %i.zy = load i16, ptr %.8242420.i, align 2
  store i16 %i.zy, ptr %.14259419.i, align 2
  %i.zz = getelementptr inbounds nuw i8, ptr %.14259419.i, i64 2
  %i.aaa = getelementptr inbounds nuw i8, ptr %.8242420.i, i64 4 ; 2 uses
  %i.aab = icmp ult ptr %i.aaa, %i.ys
  br i1 %i.aab, label %.lr.ph423.i, label %zywrle_analyze_15le.exit, !llvm.loop !201

zywrle_analyze_15le.exit:                         ; preds = %.lr.ph423.i, %bb.w, %bb.ac
  %i.aac = or disjoint i32 %5, 128
  tail call fastcc void @zrle_encode_tile15le(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.aac)
  br label %.loopexit

bb.ad:                                            ; preds = %.thread145
  tail call void @vnc_write(ptr noundef %0, ptr noundef %2, i64 noundef %i.j) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge195.thread, %bb.p, %bb.s, %.preheader, %zywrle_analyze_15le.exit, %bb.ad, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @zrle_encode_tile24abe(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 256) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca [256 x i32], align 16             ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.j = mul i32 %4, %3                           ; 2 uses
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 2
  %i.l = getelementptr inbounds i8, ptr %2, i64 %.idx ; 5 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = xor i32 %i.n, -1
  store i32 %i.o, ptr %i.l, align 4
  tail call void @palette_init(ptr noundef nonnull %i.i, i64 noundef 256, i32 noundef 32) #9
  %i.p = icmp sgt i32 %i.j, 0                     ; 3 uses
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.0125156 = phi ptr [ %.2, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %.0129155 = phi i32 [ %.1130, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.0131154 = phi i32 [ %.1132, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.q = load i32, ptr %.0125156, align 4         ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0125156, i64 4 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4
  %.not140 = icmp eq i32 %i.s, %i.q
  br i1 %.not140, label %.preheader153, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.t = add i32 %.0129155, 1
  br label %bb.d

.preheader153:                                    ; preds = %.lr.ph, %.preheader153
  %.1126 = phi ptr [ %i.u, %.preheader153 ], [ %i.r, %.lr.ph ]
  %i.u = getelementptr inbounds nuw i8, ptr %.1126, i64 4 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, %i.q
  br i1 %i.w, label %.preheader153, label %bb.c, !llvm.loop !206

bb.c:                                             ; preds = %.preheader153
  %i.x = add i32 %.0131154, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1132 = phi i32 [ %.0131154, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %.1130 = phi i32 [ %i.t, %bb.b ], [ %.0129155, %bb.c ] ; 2 uses
  %.2 = phi ptr [ %i.r, %bb.b ], [ %i.u, %bb.c ]  ; 2 uses
  %i.y = tail call i32 @palette_put(ptr noundef nonnull %i.i, i32 noundef %i.q) #9 ; 0 uses
  %i.z = icmp ult ptr %.2, %i.l
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !207

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0131.lcssa = phi i32 [ 0, %bb.a ], [ %.1132, %bb.d ]
  %.0129.lcssa = phi i32 [ 0, %bb.a ], [ %.1130, %bb.d ]
  %i.aa = tail call i64 @palette_size(ptr noundef nonnull %i.i) #9
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store i8 0, ptr %i.g, align 1, !annotation !10
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 1) #9
  %i.ac = call i32 @palette_color(ptr noundef nonnull %i.i, i32 noundef 0, ptr noundef nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.ac, ptr %i.d, align 4
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  call fastcc void @zrle_choose_palette_rle(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.i, i32 noundef 24, i32 noundef %.0131.lcssa, i32 noundef %.0129.lcssa, i32 noundef %5, ptr noundef %i.e, ptr noundef %i.f)
  %i.ad = load i8, ptr %i.f, align 1, !range !7, !noundef !8
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  br i1 %i.ae, label %bb.g, label %.thread148

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false), !annotation !10
  %i.af = tail call i64 @palette_size(ptr noundef nonnull %i.i) #9 ; 3 uses
  %i.ag = load i8, ptr %i.e, align 1, !range !7, !noundef !8 ; 2 uses
  %i.ah = shl nuw i8 %i.ag, 7
  %i.ai = trunc i64 %i.af to i8
  %i.aj = or i8 %i.ah, %i.ai
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %i.aj) #9
  %i.ak = call i64 @palette_fill(ptr noundef nonnull %i.i, ptr noundef nonnull %i.h) #9 ; 0 uses
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %._crit_edge163, label %.lr.ph162

.lr.ph162:                                        ; preds = %bb.g, %.lr.ph162
  %i.al = phi i64 [ %i.ap, %.lr.ph162 ], [ 0, %bb.g ]
  %.0127160 = phi i32 [ %i.ao, %.lr.ph162 ], [ 0, %bb.g ]
  %i.am = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.an, ptr %i.c, align 4
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ao = add i32 %.0127160, 1                    ; 2 uses
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = icmp ugt i64 %i.af, %i.ap
  br i1 %i.aq, label %.lr.ph162, label %._crit_edge163, !llvm.loop !208

._crit_edge163:                                   ; preds = %.lr.ph162, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
end_hunk_5
