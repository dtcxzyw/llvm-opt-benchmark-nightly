Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/chacha20_ref?download=true
inline.NumInlined: 91
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.crypto_stream_chacha20_implementation = type { ptr, ptr, ptr, ptr }
%struct.chacha_ctx = type { [16 x i32] }

@crypto_stream_chacha20_ref_implementation = hidden local_unnamed_addr global %struct.crypto_stream_chacha20_implementation { ptr @stream_ref, ptr @stream_ietf_ext_ref, ptr @stream_ref_xor_ic, ptr @stream_ietf_ext_ref_xor_ic }, align 8

; Function Attrs: nounwind ssp uwtable
define internal noundef i32 @stream_ref(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.chacha_ctx, align 16        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %4, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load <4 x i32>, ptr %3, align 1
  store <4 x i32> %i.b, ptr %i.a, align 16
  %i.c = getelementptr i8, ptr %3, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = load <4 x i32>, ptr %i.c, align 1
  store <4 x i32> %i.e, ptr %i.d, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load <2 x i32>, ptr %2, align 1
  store <2 x i32> %i.i, ptr %i.h, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %0, i8 noundef 0, i64 noundef range(i64 1, 0) %1, i1 noundef false) #6
  call fastcc void @chacha20_encrypt_bytes(ptr noundef %4, ptr noundef nonnull %0, ptr noundef nonnull %0, i64 noundef %1)
  call void @sodium_memzero(ptr noundef nonnull %4, i64 noundef 64) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal noundef i32 @stream_ietf_ext_ref(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.chacha_ctx, align 16        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %4, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load <4 x i32>, ptr %3, align 1
  store <4 x i32> %i.b, ptr %i.a, align 16
  %i.c = getelementptr i8, ptr %3, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = load <4 x i32>, ptr %i.c, align 1
  store <4 x i32> %i.e, ptr %i.d, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.h = load <2 x i32>, ptr %2, align 1
  store <2 x i32> %i.h, ptr %i.g, align 4
  %i.i = getelementptr i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i32 %i.j, ptr %i.k, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %0, i8 noundef 0, i64 noundef range(i64 1, 0) %1, i1 noundef false) #6
  call fastcc void @chacha20_encrypt_bytes(ptr noundef %4, ptr noundef nonnull %0, ptr noundef nonnull %0, i64 noundef %1)
  call void @sodium_memzero(ptr noundef nonnull %4, i64 noundef 64) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal noundef i32 @stream_ref_xor_ic(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %6 = alloca %struct.chacha_ctx, align 16        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.extract.trunc = trunc i64 %4 to i32
  %.sroa.4.0.extract.shift = lshr i64 %4, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %6, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.b = load <4 x i32>, ptr %5, align 1
  store <4 x i32> %i.b, ptr %i.a, align 16
  %i.c = getelementptr i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.e = load <4 x i32>, ptr %i.c, align 1
  store <4 x i32> %i.e, ptr %i.d, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 %.sroa.0.0.extract.trunc, ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 %.sroa.4.0.extract.trunc, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.i = load <2 x i32>, ptr %3, align 1
  store <2 x i32> %i.i, ptr %i.h, align 8
  call fastcc void @chacha20_encrypt_bytes(ptr noundef %6, ptr noundef %1, ptr noundef %0, i64 noundef %2)
  call void @sodium_memzero(ptr noundef nonnull %6, i64 noundef 64) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal noundef i32 @stream_ietf_ext_ref_xor_ic(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %6 = alloca %struct.chacha_ctx, align 16        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %6, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.b = load <4 x i32>, ptr %5, align 1
  store <4 x i32> %i.b, ptr %i.a, align 16
  %i.c = getelementptr i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.e = load <4 x i32>, ptr %i.c, align 1
  store <4 x i32> %i.e, ptr %i.d, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 %4, ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.h = load <2 x i32>, ptr %3, align 1
  store <2 x i32> %i.h, ptr %i.g, align 4
  %i.i = getelementptr i8, ptr %3, i64 8
  %i.j = load i32, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.j, ptr %i.k, align 4
  call fastcc void @chacha20_encrypt_bytes(ptr noundef %6, ptr noundef %1, ptr noundef %0, i64 noundef %2)
  call void @sodium_memzero(ptr noundef nonnull %6, i64 noundef 64) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind ssp memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @chacha20_encrypt_bytes(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 13 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = load i32, ptr %0, align 4                ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 4
  %i.e = load <4 x i32>, ptr %i.d, align 4        ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 20
  %i.g = load <4 x i32>, ptr %i.f, align 4        ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 36
  %i.i = getelementptr i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = load i32, ptr %i.h, align 4              ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 44
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr i8, ptr %0, i64 52         ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr i8, ptr %0, i64 56
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 60
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = extractelement <4 x i32> %i.e, i64 0
  %i.w = extractelement <4 x i32> %i.e, i64 1
  %i.x = extractelement <4 x i32> %i.e, i64 2
  %i.y = extractelement <4 x i32> %i.e, i64 3
  %i.z = extractelement <4 x i32> %i.g, i64 0
  %i.aa = extractelement <4 x i32> %i.g, i64 1
  %i.ab = extractelement <4 x i32> %i.g, i64 2
  %i.ac = extractelement <4 x i32> %i.g, i64 3
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %bb.a ] ; 2 uses
  %.0309 = phi ptr [ %i.he, %bb.f ], [ %1, %bb.a ] ; 5 uses
  %.0307 = phi ptr [ %i.hd, %bb.f ], [ %2, %bb.a ] ; 4 uses
  %.0306 = phi i64 [ %i.hc, %bb.f ], [ %3, %bb.a ] ; 12 uses
  %.0289 = phi i32 [ %i.fr, %bb.f ], [ %i.o, %bb.a ] ; 3 uses
  %.0287 = phi i32 [ %spec.select, %bb.f ], [ %i.q, %bb.a ] ; 3 uses
  %.0285 = phi ptr [ %.1286, %bb.f ], [ null, %bb.a ]
  %.0309396 = ptrtoaddr ptr %.0309 to i64
  %i.ad = shl i64 %indvar, 6
  %4 = xor i64 %i.ad, -1
  %5 = add i64 %3, %4                             ; 2 uses
  %i.ae = icmp ult i64 %.0306, 64                 ; 2 uses
  br i1 %i.ae, label %iter.check, label %.loopexit314

iter.check:                                       ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 noundef 0, i64 noundef 64, i1 noundef false) #6
  %min.iters.check = icmp ult i64 %.0306, 4
  br i1 %min.iters.check, label %.lr.ph.preheader.a, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 4294967295
  %8 = icmp ugt i64 %5, 4294967295
  %9 = or i1 %7, %8
  %i.af = sub i64 %.0309396, %i.b
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = select i1 %9, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader.a, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check397 = icmp ult i64 %.0306, 32
  br i1 %min.iters.check397, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %.0306, 28
  %n.vec = and i64 %.0306, 32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr i8, ptr %.0309, i64 %index ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %wide.load = load <16 x i8>, ptr %i.ah, align 1
  %wide.load398 = load <16 x i8>, ptr %i.ai, align 1
  %i.aj = getelementptr i8, ptr %i.a, i64 %index  ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  store <16 x i8> %wide.load, ptr %i.aj, align 16
  store <16 x i8> %wide.load398, ptr %i.ak, align 16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !4

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0306, %n.vec
  br i1 %cmp.n, label %.loopexit314, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader.a, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec399 = and i64 %.0306, 60                  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index400 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next402, %vec.epilog.vector.body ] ; 3 uses
  %i.am = getelementptr i8, ptr %.0309, i64 %index400
  %wide.load401 = load <4 x i8>, ptr %i.am, align 1
  %i.an = getelementptr i8, ptr %i.a, i64 %index400
  store <4 x i8> %wide.load401, ptr %i.an, align 4
  %index.next402 = add nuw i64 %index400, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next402, %n.vec399
  br i1 %i.ao, label %vec.epilog.middle.block.a, label %vec.epilog.vector.body, !llvm.loop !5

vec.epilog.middle.block.a:                        ; preds = %vec.epilog.vector.body
  %cmp.n403 = icmp eq i64 %.0306, %n.vec399
  br i1 %cmp.n403, label %.loopexit314, label %.lr.ph.preheader.a

.lr.ph.preheader.a:                               ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block.a
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec399, %vec.epilog.middle.block.a ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader.a ] ; 3 uses
  %i.ap = getelementptr i8, ptr %.0309, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.aq, ptr %i.ar, align 1
  %indvars.iv.next.a = add i64 %indvars.iv, 1     ; 2 uses
  %10 = and i64 %indvars.iv.next.a, 4294967295
  %11 = icmp samesign ugt i64 %.0306, %10
  br i1 %11, label %.lr.ph, label %.loopexit314, !llvm.loop !6

.loopexit314:                                     ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block.a, %bb.b
  %.1310 = phi ptr [ %.0309, %bb.b ], [ %i.a, %middle.block ], [ %i.a, %vec.epilog.middle.block.a ], [ %i.a, %.lr.ph ] ; 8 uses
  %.1308 = phi ptr [ %.0307, %bb.b ], [ %i.a, %middle.block ], [ %i.a, %vec.epilog.middle.block.a ], [ %i.a, %.lr.ph ] ; 12 uses
  %.1286 = phi ptr [ %.0285, %bb.b ], [ %.0307, %middle.block ], [ %.0307, %vec.epilog.middle.block.a ], [ %.0307, %.lr.ph ] ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %.loopexit314, %bb.c
  %.1333 = phi i32 [ 20, %.loopexit314 ], [ %i.ek, %bb.c ]
  %.0290332 = phi i32 [ %i.u, %.loopexit314 ], [ %i.cw, %bb.c ]
  %.0291331 = phi i32 [ %i.s, %.loopexit314 ], [ %i.dz, %bb.c ]
  %.0292330 = phi i32 [ %.0287, %.loopexit314 ], [ %i.dt, %bb.c ]
  %.0293329 = phi i32 [ %.0289, %.loopexit314 ], [ %i.ed, %bb.c ]
  %.0294328 = phi i32 [ %i.m, %.loopexit314 ], [ %i.ee, %bb.c ]
  %.0295327 = phi i32 [ %i.j, %.loopexit314 ], [ %i.ea, %bb.c ]
  %.0296326 = phi i32 [ %i.k, %.loopexit314 ], [ %i.eh, %bb.c ]
  %.0297325 = phi i32 [ %i.ac, %.loopexit314 ], [ %i.du, %bb.c ]
  %.0298324 = phi i32 [ %i.ab, %.loopexit314 ], [ %i.dw, %bb.c ] ; 2 uses
  %.0299323 = phi i32 [ %i.aa, %.loopexit314 ], [ %i.eg, %bb.c ] ; 2 uses
  %.0300322 = phi i32 [ %i.z, %.loopexit314 ], [ %i.ec, %bb.c ] ; 2 uses
  %.0301321 = phi i32 [ %i.y, %.loopexit314 ], [ %i.ej, %bb.c ] ; 2 uses
  %.0302320 = phi i32 [ %i.x, %.loopexit314 ], [ %i.dx, %bb.c ]
  %.0303319 = phi i32 [ %i.w, %.loopexit314 ], [ %i.dr, %bb.c ]
  %.0304318 = phi i32 [ %i.v, %.loopexit314 ], [ %i.dp, %bb.c ]
  %.0305317 = phi i32 [ %i.c, %.loopexit314 ], [ %i.cu, %bb.c ]
  %i.as = add i32 %.0301321, %.0305317            ; 2 uses
  %i.at = xor i32 %.0293329, %i.as                ; 2 uses
  %i.au = call noundef i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 16) ; 2 uses
  %i.av = add i32 %i.au, %.0297325                ; 2 uses
  %i.aw = xor i32 %i.av, %.0301321                ; 2 uses
  %i.ax = call noundef i32 @llvm.fshl.i32(i32 %i.aw, i32 %i.aw, i32 12) ; 2 uses
  %i.ay = add i32 %i.ax, %i.as                    ; 2 uses
  %i.az = xor i32 %i.ay, %i.au                    ; 2 uses
  %i.ba = call noundef i32 @llvm.fshl.i32(i32 %i.az, i32 %i.az, i32 8) ; 2 uses
  %i.bb = add i32 %i.ba, %i.av                    ; 2 uses
  %i.bc = xor i32 %i.bb, %i.ax                    ; 2 uses
  %i.bd = call noundef i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 7) ; 2 uses
  %i.be = add i32 %.0300322, %.0304318            ; 2 uses
  %i.bf = xor i32 %.0292330, %i.be                ; 2 uses
  %i.bg = call noundef i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 16) ; 2 uses
  %i.bh = add i32 %i.bg, %.0296326                ; 2 uses
  %i.bi = xor i32 %i.bh, %.0300322                ; 2 uses
  %i.bj = call noundef i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 12) ; 2 uses
  %i.bk = add i32 %i.bj, %i.be                    ; 2 uses
  %i.bl = xor i32 %i.bk, %i.bg                    ; 2 uses
  %i.bm = call noundef i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 8) ; 2 uses
  %i.bn = add i32 %i.bm, %i.bh                    ; 2 uses
  %i.bo = xor i32 %i.bn, %i.bj                    ; 2 uses
  %i.bp = call noundef i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 7) ; 2 uses
  %i.bq = add i32 %.0299323, %.0303319            ; 2 uses
  %i.br = xor i32 %.0291331, %i.bq                ; 2 uses
  %i.bs = call noundef i32 @llvm.fshl.i32(i32 %i.br, i32 %i.br, i32 16) ; 2 uses
  %i.bt = add i32 %i.bs, %.0295327                ; 2 uses
  %i.bu = xor i32 %i.bt, %.0299323                ; 2 uses
  %i.bv = call noundef i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 12) ; 2 uses
  %i.bw = add i32 %i.bv, %i.bq                    ; 2 uses
  %i.bx = xor i32 %i.bw, %i.bs                    ; 2 uses
  %i.by = call noundef i32 @llvm.fshl.i32(i32 %i.bx, i32 %i.bx, i32 8) ; 2 uses
  %i.bz = add i32 %i.by, %i.bt                    ; 2 uses
  %i.ca = xor i32 %i.bz, %i.bv                    ; 2 uses
  %i.cb = call noundef i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 7) ; 2 uses
  %i.cc = add i32 %.0298324, %.0302320            ; 2 uses
  %i.cd = xor i32 %.0290332, %i.cc                ; 2 uses
  %i.ce = call noundef i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 16) ; 2 uses
  %i.cf = add i32 %i.ce, %.0294328                ; 2 uses
  %i.cg = xor i32 %i.cf, %.0298324                ; 2 uses
  %i.ch = call noundef i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 12) ; 2 uses
  %i.ci = add i32 %i.ch, %i.cc                    ; 2 uses
  %i.cj = xor i32 %i.ci, %i.ce                    ; 2 uses
  %i.ck = call noundef i32 @llvm.fshl.i32(i32 %i.cj, i32 %i.cj, i32 8) ; 2 uses
  %i.cl = add i32 %i.ck, %i.cf                    ; 2 uses
  %i.cm = xor i32 %i.cl, %i.ch                    ; 2 uses
  %i.cn = call noundef i32 @llvm.fshl.i32(i32 %i.cm, i32 %i.cm, i32 7) ; 2 uses
  %i.co = add i32 %i.bp, %i.ay                    ; 2 uses
  %i.cp = xor i32 %i.co, %i.ck                    ; 2 uses
  %i.cq = call noundef i32 @llvm.fshl.i32(i32 %i.cp, i32 %i.cp, i32 16) ; 2 uses
  %i.cr = add i32 %i.cq, %i.bz                    ; 2 uses
  %i.cs = xor i32 %i.cr, %i.bp                    ; 2 uses
  %i.ct = call noundef i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cs, i32 12) ; 2 uses
  %i.cu = add i32 %i.ct, %i.co                    ; 3 uses
  %i.cv = xor i32 %i.cu, %i.cq                    ; 2 uses
  %i.cw = call noundef i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 8) ; 3 uses
  %i.cx = add i32 %i.cb, %i.bk                    ; 2 uses
  %i.cy = xor i32 %i.cx, %i.ba                    ; 2 uses
  %i.cz = call noundef i32 @llvm.fshl.i32(i32 %i.cy, i32 %i.cy, i32 16) ; 2 uses
  %i.da = add i32 %i.cz, %i.cl                    ; 2 uses
  %i.db = xor i32 %i.da, %i.cb                    ; 2 uses
  %i.dc = call noundef i32 @llvm.fshl.i32(i32 %i.db, i32 %i.db, i32 12) ; 2 uses
  %i.dd = add i32 %i.cn, %i.bw                    ; 2 uses
  %i.de = xor i32 %i.dd, %i.bm                    ; 2 uses
  %i.df = call noundef i32 @llvm.fshl.i32(i32 %i.de, i32 %i.de, i32 16) ; 2 uses
  %i.dg = add i32 %i.df, %i.bb                    ; 2 uses
  %i.dh = xor i32 %i.dg, %i.cn                    ; 2 uses
  %i.di = call noundef i32 @llvm.fshl.i32(i32 %i.dh, i32 %i.dh, i32 12) ; 2 uses
  %i.dj = add i32 %i.bd, %i.ci                    ; 2 uses
  %i.dk = xor i32 %i.dj, %i.by                    ; 2 uses
  %i.dl = call noundef i32 @llvm.fshl.i32(i32 %i.dk, i32 %i.dk, i32 16) ; 2 uses
  %i.dm = add i32 %i.dl, %i.bn                    ; 2 uses
  %i.dn = xor i32 %i.dm, %i.bd                    ; 2 uses
  %i.do = call noundef i32 @llvm.fshl.i32(i32 %i.dn, i32 %i.dn, i32 12) ; 2 uses
  %i.dp = add i32 %i.dc, %i.cx                    ; 3 uses
  %i.dq = xor i32 %i.dp, %i.cz                    ; 2 uses
  %i.dr = add i32 %i.di, %i.dd                    ; 3 uses
  %i.ds = xor i32 %i.dr, %i.df                    ; 2 uses
  %i.dt = call noundef i32 @llvm.fshl.i32(i32 %i.ds, i32 %i.ds, i32 8) ; 3 uses
  %i.du = add i32 %i.dt, %i.dg                    ; 3 uses
  %i.dv = xor i32 %i.du, %i.di                    ; 2 uses
  %i.dw = call noundef i32 @llvm.fshl.i32(i32 %i.dv, i32 %i.dv, i32 7) ; 2 uses
  %i.dx = add i32 %i.do, %i.dj                    ; 3 uses
  %i.dy = xor i32 %i.dx, %i.dl                    ; 2 uses
  %i.dz = call noundef i32 @llvm.fshl.i32(i32 %i.dy, i32 %i.dy, i32 8) ; 3 uses
  %i.ea = add i32 %i.cw, %i.cr                    ; 3 uses
  %i.eb = xor i32 %i.ea, %i.ct                    ; 2 uses
  %i.ec = call noundef i32 @llvm.fshl.i32(i32 %i.eb, i32 %i.eb, i32 7) ; 2 uses
  %i.ed = call noundef i32 @llvm.fshl.i32(i32 %i.dq, i32 %i.dq, i32 8) ; 3 uses
  %i.ee = add i32 %i.ed, %i.da                    ; 3 uses
  %i.ef = xor i32 %i.ee, %i.dc                    ; 2 uses
  %i.eg = call noundef i32 @llvm.fshl.i32(i32 %i.ef, i32 %i.ef, i32 7) ; 2 uses
  %i.eh = add i32 %i.dz, %i.dm                    ; 3 uses
  %i.ei = xor i32 %i.eh, %i.do                    ; 2 uses
  %i.ej = call noundef i32 @llvm.fshl.i32(i32 %i.ei, i32 %i.ei, i32 7) ; 2 uses
  %i.ek = add nsw i32 %.1333, -2                  ; 2 uses
  %.not = icmp eq i32 %i.ek, 0
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !7

bb.d:                                             ; preds = %bb.c
  %i.el = add i32 %i.cu, %i.c
  %i.em = insertelement <4 x i32> poison, i32 %i.dp, i64 0
  %i.en = insertelement <4 x i32> %i.em, i32 %i.dr, i64 1
  %i.eo = insertelement <4 x i32> %i.en, i32 %i.dx, i64 2
  %i.ep = insertelement <4 x i32> %i.eo, i32 %i.ej, i64 3
  %i.eq = add <4 x i32> %i.ep, %i.e
  %i.er = insertelement <4 x i32> poison, i32 %i.ec, i64 0
  %i.es = insertelement <4 x i32> %i.er, i32 %i.eg, i64 1
  %i.et = insertelement <4 x i32> %i.es, i32 %i.dw, i64 2
  %i.eu = insertelement <4 x i32> %i.et, i32 %i.du, i64 3
  %i.ev = add <4 x i32> %i.eu, %i.g
  %i.ew = add i32 %i.eh, %i.k
  %i.ex = add i32 %i.ea, %i.j
  %i.ey = add i32 %i.ee, %i.m
  %i.ez = add i32 %i.ed, %.0289
  %i.fa = add i32 %i.dt, %.0287
  %i.fb = add i32 %i.dz, %i.s
  %i.fc = add i32 %i.cw, %i.u
  %i.fd = load i32, ptr %.1310, align 1
  %i.fe = xor i32 %i.fd, %i.el
  %i.ff = getelementptr i8, ptr %.1310, i64 4
  %i.fg = getelementptr i8, ptr %.1310, i64 20
  %i.fh = getelementptr i8, ptr %.1310, i64 36
  %i.fi = getelementptr i8, ptr %.1310, i64 52
  %i.fj = load i32, ptr %i.fi, align 1
  %i.fk = xor i32 %i.fj, %i.fa
  %i.fl = getelementptr i8, ptr %.1310, i64 56
  %i.fm = load i32, ptr %i.fl, align 1
  %i.fn = xor i32 %i.fm, %i.fb
  %i.fo = getelementptr i8, ptr %.1310, i64 60
  %i.fp = load i32, ptr %i.fo, align 1
  %i.fq = xor i32 %i.fp, %i.fc
  %i.fr = add i32 %.0289, 1                       ; 3 uses
  %.not313 = icmp eq i32 %i.fr, 0
  %i.fs = zext i1 %.not313 to i32
  %spec.select = add i32 %.0287, %i.fs            ; 2 uses
  %i.ft = getelementptr i8, ptr %.1308, i64 4
  %i.fu = load <4 x i32>, ptr %i.ff, align 1
  %i.fv = xor <4 x i32> %i.fu, %i.eq
  %i.fw = getelementptr i8, ptr %.1308, i64 20
  %i.fx = load <4 x i32>, ptr %i.fg, align 1
  %i.fy = xor <4 x i32> %i.fx, %i.ev
  %i.fz = getelementptr i8, ptr %.1308, i64 36
  %i.ga = load <4 x i32>, ptr %i.fh, align 1
  %i.gb = insertelement <4 x i32> poison, i32 %i.ew, i64 0
  %i.gc = insertelement <4 x i32> %i.gb, i32 %i.ex, i64 1
  %i.gd = insertelement <4 x i32> %i.gc, i32 %i.ey, i64 2
  %i.ge = insertelement <4 x i32> %i.gd, i32 %i.ez, i64 3
  %i.gf = xor <4 x i32> %i.ga, %i.ge
  store i32 %i.fe, ptr %.1308, align 1
  store <4 x i32> %i.fv, ptr %i.ft, align 1
  store <4 x i32> %i.fy, ptr %i.fw, align 1
  store <4 x i32> %i.gf, ptr %i.fz, align 1
  %i.gg = getelementptr i8, ptr %.1308, i64 52
  store i32 %i.fk, ptr %i.gg, align 1
  %i.gh = getelementptr i8, ptr %.1308, i64 56
  store i32 %i.fn, ptr %i.gh, align 1
  %i.gi = getelementptr i8, ptr %.1308, i64 60
  store i32 %i.fq, ptr %i.gi, align 1
  %i.gj = icmp ult i64 %.0306, 65
  br i1 %i.gj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.1286405.le = ptrtoaddr ptr %.1286 to i64
  %.1308406.le = ptrtoaddr ptr %.1308 to i64
  br i1 %i.ae, label %iter.check421, label %.loopexit

iter.check421:                                    ; preds = %bb.e
  %i.gk = call i64 @llvm.usub.sat.i64(i64 %3, i64 64)
  %i.gl = add nuw i64 %i.gk, 63
  %i.gm = and i64 %i.gl, -64
  %i.gn = sub i64 %3, %i.gm                       ; 5 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.gn, i64 1) ; 3 uses
  %min.iters.check408 = icmp ult i64 %i.gn, 4
  %i.go = sub i64 %.1308406.le, %.1286405.le
  %diff.check407 = icmp ugt i64 %i.go, -32
  %or.cond434 = select i1 %min.iters.check408, i1 true, i1 %diff.check407
  br i1 %or.cond434, label %.lr.ph335.preheader, label %vector.main.loop.iter.check409

vector.main.loop.iter.check409:                   ; preds = %iter.check421
  %min.iters.check410 = icmp ult i64 %i.gn, 32
  br i1 %min.iters.check410, label %vec.epilog.ph425, label %vector.ph411

vector.ph411:                                     ; preds = %vector.main.loop.iter.check409
  %i.gp = and i64 %umax, 28
  %n.vec412 = and i64 %umax, -32                  ; 4 uses
  br label %vector.body413

vector.body413:                                   ; preds = %vector.body413, %vector.ph411
  %index414 = phi i64 [ 0, %vector.ph411 ], [ %index.next417, %vector.body413 ] ; 3 uses
  %i.gq = getelementptr i8, ptr %.1308, i64 %index414 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 16
  %wide.load415.a = load <16 x i8>, ptr %i.gq, align 1
  %wide.load416 = load <16 x i8>, ptr %i.gr, align 1
  %i.gs = getelementptr i8, ptr %.1286, i64 %index414 ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 16
  store <16 x i8> %wide.load415.a, ptr %i.gs, align 1
  store <16 x i8> %wide.load416, ptr %i.gt, align 1
  %index.next417 = add nuw i64 %index414, 32      ; 2 uses
  %i.gu = icmp eq i64 %index.next417, %n.vec412
  br i1 %i.gu, label %middle.block418, label %vector.body413, !llvm.loop !8

middle.block418:                                  ; preds = %vector.body413
  %cmp.n419 = icmp eq i64 %i.gn, %n.vec412
  br i1 %cmp.n419, label %.loopexit, label %vec.epilog.iter.check423

vec.epilog.iter.check423:                         ; preds = %middle.block418
  %min.epilog.iters.check424 = icmp eq i64 %i.gp, 0
  br i1 %min.epilog.iters.check424, label %.lr.ph335.preheader, label %vec.epilog.ph425, !prof !14

vec.epilog.ph425:                                 ; preds = %vector.main.loop.iter.check409, %vec.epilog.iter.check423
  %vec.epilog.resume.val420 = phi i64 [ %n.vec412, %vec.epilog.iter.check423 ], [ 0, %vector.main.loop.iter.check409 ]
  %n.vec426 = and i64 %umax, -4                   ; 3 uses
  br label %vec.epilog.vector.body427

vec.epilog.vector.body427:                        ; preds = %vec.epilog.vector.body427, %vec.epilog.ph425
  %index428 = phi i64 [ %vec.epilog.resume.val420, %vec.epilog.ph425 ], [ %index.next430, %vec.epilog.vector.body427 ] ; 3 uses
  %i.gv = getelementptr i8, ptr %.1308, i64 %index428
  %wide.load429 = load <4 x i8>, ptr %i.gv, align 1
  %i.gw = getelementptr i8, ptr %.1286, i64 %index428
  store <4 x i8> %wide.load429, ptr %i.gw, align 1
  %index.next430 = add nuw i64 %index428, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next430, %n.vec426
  br i1 %i.gx, label %vec.epilog.middle.block431, label %vec.epilog.vector.body427, !llvm.loop !9

vec.epilog.middle.block431:                       ; preds = %vec.epilog.vector.body427
  %cmp.n432 = icmp eq i64 %i.gn, %n.vec426
  br i1 %cmp.n432, label %.loopexit, label %.lr.ph335.preheader

.lr.ph335.preheader:                              ; preds = %iter.check421, %vec.epilog.iter.check423, %vec.epilog.middle.block431
  %indvars.iv358.ph = phi i64 [ 0, %iter.check421 ], [ %n.vec412, %vec.epilog.iter.check423 ], [ %n.vec426, %vec.epilog.middle.block431 ]
  br label %.lr.ph335

.lr.ph335:                                        ; preds = %.lr.ph335.preheader, %.lr.ph335
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %.lr.ph335 ], [ %indvars.iv358.ph, %.lr.ph335.preheader ] ; 3 uses
  %i.gy = getelementptr i8, ptr %.1308, i64 %indvars.iv358
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = getelementptr i8, ptr %.1286, i64 %indvars.iv358
  store i8 %i.gz, ptr %i.ha, align 1
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1 ; 2 uses
  %i.hb = icmp samesign ult i64 %indvars.iv.next359, %.0306
  br i1 %i.hb, label %.lr.ph335, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph335, %middle.block418, %vec.epilog.middle.block431, %bb.e
  store i32 %i.fr, ptr %i.n, align 4
  store i32 %spec.select, ptr %i.p, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void

bb.f:                                             ; preds = %bb.d
  %i.hc = add i64 %.0306, -64
  %i.hd = getelementptr i8, ptr %.1308, i64 64
  %i.he = getelementptr i8, ptr %.1310, i64 64
  %indvar.next = add i64 %indvar, 1
  br label %bb.b
}

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind ssp memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = distinct !{!4, !11, !12, !13}
!5 = distinct !{!5, !11, !12, !13}
!6 = distinct !{!6, !11, !12}
!7 = distinct !{!7, !11}
!8 = distinct !{!8, !11, !12, !13}
!9 = distinct !{!9, !11, !12, !13}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"branch_weights", i32 4, i32 28}
end_hunk_0
