Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/chacha20_ref?download=true
inline.NumInlined: 91
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
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
  %i.a = alloca [64 x i8], align 16               ; 19 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = load i32, ptr %0, align 4                ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 4
  %i.e = load <4 x i32>, ptr %i.d, align 4        ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 20
  %i.g = load <4 x i32>, ptr %i.f, align 4        ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 36
  %i.i = getelementptr i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.h, align 4              ; 2 uses
  %i.k = load i32, ptr %i.i, align 4              ; 2 uses
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
  %.0309 = phi ptr [ %i.ht, %bb.f ], [ %1, %bb.a ] ; 9 uses
  %.0307 = phi ptr [ %i.hs, %bb.f ], [ %2, %bb.a ] ; 5 uses
  %.0306 = phi i64 [ %i.hr, %bb.f ], [ %3, %bb.a ] ; 13 uses
  %.0289 = phi i32 [ %i.gg, %bb.f ], [ %i.o, %bb.a ] ; 3 uses
  %.0287 = phi i32 [ %spec.select, %bb.f ], [ %i.q, %bb.a ] ; 3 uses
  %.0285 = phi ptr [ %.1286, %bb.f ], [ null, %bb.a ]
  %i.ad = shl i64 %indvar, 6
  %i.ae = icmp ult i64 %.0306, 64                 ; 2 uses
  br i1 %i.ae, label %iter.check, label %.loopexit314

iter.check:                                       ; preds = %bb.b
  %.0309395 = ptrtoaddr ptr %.0309 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 noundef 0, i64 noundef 64, i1 noundef false) #6
  %min.iters.check = icmp ult i64 %.0306, 4
  %i.af = sub i64 %.0309395, %i.b
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check396 = icmp ult i64 %.0306, 32
  br i1 %min.iters.check396, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %.0306, 28
  %n.vec = and i64 %.0306, 32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr i8, ptr %.0309, i64 %index ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %wide.load = load <16 x i8>, ptr %i.ah, align 1
  %wide.load397 = load <16 x i8>, ptr %i.ai, align 1
  %i.aj = getelementptr i8, ptr %i.a, i64 %index  ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  store <16 x i8> %wide.load, ptr %i.aj, align 16
  store <16 x i8> %wide.load397, ptr %i.ak, align 16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !4

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0306, %n.vec
  br i1 %cmp.n, label %.loopexit314, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec398 = and i64 %.0306, 60                  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index399 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next401, %vec.epilog.vector.body ] ; 3 uses
  %i.am = getelementptr i8, ptr %.0309, i64 %index399
  %wide.load400 = load <4 x i8>, ptr %i.am, align 1
  %i.an = getelementptr i8, ptr %i.a, i64 %index399
  store <4 x i8> %wide.load400, ptr %i.an, align 4
  %index.next401 = add nuw i64 %index399, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next401, %n.vec398
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n402 = icmp eq i64 %.0306, %n.vec398
  br i1 %cmp.n402, label %.loopexit314, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec398, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.0306, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ap = getelementptr i8, ptr %.0309, i64 %indvars.iv.prol
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr i8, ptr %i.a, i64 %indvars.iv.prol
  store i8 %i.aq, ptr %i.ar, align 1
  %indvars.iv.next.prol = add nuw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !6

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.as = sub i64 %i.ad, %3
  %i.at = add i64 %i.as, %indvars.iv.ph
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %.loopexit314, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.av = getelementptr i8, ptr %.0309, i64 %indvars.iv
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.aw, ptr %i.ax, align 1
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %i.ay = getelementptr i8, ptr %.0309, i64 %indvars.iv.next
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = getelementptr i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.az, ptr %i.ba, align 1
  %indvars.iv.next.1 = add nuw i64 %indvars.iv, 2 ; 2 uses
  %i.bb = getelementptr i8, ptr %.0309, i64 %indvars.iv.next.1
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.1
  store i8 %i.bc, ptr %i.bd, align 1
  %indvars.iv.next.2 = add nuw i64 %indvars.iv, 3 ; 2 uses
  %i.be = getelementptr i8, ptr %.0309, i64 %indvars.iv.next.2
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.2
  store i8 %i.bf, ptr %i.bg, align 1
  %indvars.iv.next.3 = add nuw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %.0306
  br i1 %exitcond.not.3, label %.loopexit314, label %.lr.ph, !llvm.loop !7

.loopexit314:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  %.1310 = phi ptr [ %.0309, %bb.b ], [ %i.a, %middle.block ], [ %i.a, %vec.epilog.middle.block ], [ %i.a, %.lr.ph ], [ %i.a, %.lr.ph.prol.loopexit ] ; 8 uses
  %.1308 = phi ptr [ %.0307, %bb.b ], [ %i.a, %middle.block ], [ %i.a, %vec.epilog.middle.block ], [ %i.a, %.lr.ph ], [ %i.a, %.lr.ph.prol.loopexit ] ; 12 uses
  %.1286 = phi ptr [ %.0285, %bb.b ], [ %.0307, %middle.block ], [ %.0307, %vec.epilog.middle.block ], [ %.0307, %.lr.ph ], [ %.0307, %.lr.ph.prol.loopexit ] ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %.loopexit314, %bb.c
  %.1333 = phi i32 [ 20, %.loopexit314 ], [ %i.ez, %bb.c ]
  %.0290332 = phi i32 [ %i.u, %.loopexit314 ], [ %i.dl, %bb.c ]
  %.0291331 = phi i32 [ %i.s, %.loopexit314 ], [ %i.eo, %bb.c ]
  %.0292330 = phi i32 [ %.0287, %.loopexit314 ], [ %i.ei, %bb.c ]
  %.0293329 = phi i32 [ %.0289, %.loopexit314 ], [ %i.es, %bb.c ]
  %.0294328 = phi i32 [ %i.m, %.loopexit314 ], [ %i.et, %bb.c ]
  %.0295327 = phi i32 [ %i.k, %.loopexit314 ], [ %i.ep, %bb.c ]
  %.0296326 = phi i32 [ %i.j, %.loopexit314 ], [ %i.ew, %bb.c ]
  %.0297325 = phi i32 [ %i.ac, %.loopexit314 ], [ %i.ej, %bb.c ]
  %.0298324 = phi i32 [ %i.ab, %.loopexit314 ], [ %i.el, %bb.c ] ; 2 uses
  %.0299323 = phi i32 [ %i.aa, %.loopexit314 ], [ %i.ev, %bb.c ] ; 2 uses
  %.0300322 = phi i32 [ %i.z, %.loopexit314 ], [ %i.er, %bb.c ] ; 2 uses
  %.0301321 = phi i32 [ %i.y, %.loopexit314 ], [ %i.ey, %bb.c ] ; 2 uses
  %.0302320 = phi i32 [ %i.x, %.loopexit314 ], [ %i.em, %bb.c ]
  %.0303319 = phi i32 [ %i.w, %.loopexit314 ], [ %i.eg, %bb.c ]
  %.0304318 = phi i32 [ %i.v, %.loopexit314 ], [ %i.ee, %bb.c ]
  %.0305317 = phi i32 [ %i.c, %.loopexit314 ], [ %i.dj, %bb.c ]
  %i.bh = add i32 %.0301321, %.0305317            ; 2 uses
  %i.bi = xor i32 %.0293329, %i.bh                ; 2 uses
  %i.bj = call noundef i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 16) ; 2 uses
  %i.bk = add i32 %i.bj, %.0297325                ; 2 uses
  %i.bl = xor i32 %i.bk, %.0301321                ; 2 uses
  %i.bm = call noundef i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 12) ; 2 uses
  %i.bn = add i32 %i.bm, %i.bh                    ; 2 uses
  %i.bo = xor i32 %i.bn, %i.bj                    ; 2 uses
  %i.bp = call noundef i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 8) ; 2 uses
  %i.bq = add i32 %i.bp, %i.bk                    ; 2 uses
  %i.br = xor i32 %i.bq, %i.bm                    ; 2 uses
  %i.bs = call noundef i32 @llvm.fshl.i32(i32 %i.br, i32 %i.br, i32 7) ; 2 uses
  %i.bt = add i32 %.0300322, %.0304318            ; 2 uses
  %i.bu = xor i32 %.0292330, %i.bt                ; 2 uses
  %i.bv = call noundef i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 16) ; 2 uses
  %i.bw = add i32 %i.bv, %.0296326                ; 2 uses
  %i.bx = xor i32 %i.bw, %.0300322                ; 2 uses
  %i.by = call noundef i32 @llvm.fshl.i32(i32 %i.bx, i32 %i.bx, i32 12) ; 2 uses
  %i.bz = add i32 %i.by, %i.bt                    ; 2 uses
  %i.ca = xor i32 %i.bz, %i.bv                    ; 2 uses
  %i.cb = call noundef i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 8) ; 2 uses
  %i.cc = add i32 %i.cb, %i.bw                    ; 2 uses
  %i.cd = xor i32 %i.cc, %i.by                    ; 2 uses
  %i.ce = call noundef i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 7) ; 2 uses
  %i.cf = add i32 %.0299323, %.0303319            ; 2 uses
  %i.cg = xor i32 %.0291331, %i.cf                ; 2 uses
  %i.ch = call noundef i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 16) ; 2 uses
  %i.ci = add i32 %i.ch, %.0295327                ; 2 uses
  %i.cj = xor i32 %i.ci, %.0299323                ; 2 uses
  %i.ck = call noundef i32 @llvm.fshl.i32(i32 %i.cj, i32 %i.cj, i32 12) ; 2 uses
  %i.cl = add i32 %i.ck, %i.cf                    ; 2 uses
  %i.cm = xor i32 %i.cl, %i.ch                    ; 2 uses
  %i.cn = call noundef i32 @llvm.fshl.i32(i32 %i.cm, i32 %i.cm, i32 8) ; 2 uses
  %i.co = add i32 %i.cn, %i.ci                    ; 2 uses
  %i.cp = xor i32 %i.co, %i.ck                    ; 2 uses
  %i.cq = call noundef i32 @llvm.fshl.i32(i32 %i.cp, i32 %i.cp, i32 7) ; 2 uses
  %i.cr = add i32 %.0298324, %.0302320            ; 2 uses
  %i.cs = xor i32 %.0290332, %i.cr                ; 2 uses
  %i.ct = call noundef i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cs, i32 16) ; 2 uses
  %i.cu = add i32 %i.ct, %.0294328                ; 2 uses
  %i.cv = xor i32 %i.cu, %.0298324                ; 2 uses
  %i.cw = call noundef i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 12) ; 2 uses
  %i.cx = add i32 %i.cw, %i.cr                    ; 2 uses
  %i.cy = xor i32 %i.cx, %i.ct                    ; 2 uses
  %i.cz = call noundef i32 @llvm.fshl.i32(i32 %i.cy, i32 %i.cy, i32 8) ; 2 uses
  %i.da = add i32 %i.cz, %i.cu                    ; 2 uses
  %i.db = xor i32 %i.da, %i.cw                    ; 2 uses
  %i.dc = call noundef i32 @llvm.fshl.i32(i32 %i.db, i32 %i.db, i32 7) ; 2 uses
  %i.dd = add i32 %i.ce, %i.bn                    ; 2 uses
  %i.de = xor i32 %i.dd, %i.cz                    ; 2 uses
  %i.df = call noundef i32 @llvm.fshl.i32(i32 %i.de, i32 %i.de, i32 16) ; 2 uses
  %i.dg = add i32 %i.df, %i.co                    ; 2 uses
  %i.dh = xor i32 %i.dg, %i.ce                    ; 2 uses
  %i.di = call noundef i32 @llvm.fshl.i32(i32 %i.dh, i32 %i.dh, i32 12) ; 2 uses
  %i.dj = add i32 %i.di, %i.dd                    ; 3 uses
  %i.dk = xor i32 %i.dj, %i.df                    ; 2 uses
  %i.dl = call noundef i32 @llvm.fshl.i32(i32 %i.dk, i32 %i.dk, i32 8) ; 3 uses
  %i.dm = add i32 %i.cq, %i.bz                    ; 2 uses
  %i.dn = xor i32 %i.dm, %i.bp                    ; 2 uses
  %i.do = call noundef i32 @llvm.fshl.i32(i32 %i.dn, i32 %i.dn, i32 16) ; 2 uses
  %i.dp = add i32 %i.do, %i.da                    ; 2 uses
  %i.dq = xor i32 %i.dp, %i.cq                    ; 2 uses
  %i.dr = call noundef i32 @llvm.fshl.i32(i32 %i.dq, i32 %i.dq, i32 12) ; 2 uses
  %i.ds = add i32 %i.dc, %i.cl                    ; 2 uses
  %i.dt = xor i32 %i.ds, %i.cb                    ; 2 uses
  %i.du = call noundef i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 16) ; 2 uses
  %i.dv = add i32 %i.du, %i.bq                    ; 2 uses
  %i.dw = xor i32 %i.dv, %i.dc                    ; 2 uses
  %i.dx = call noundef i32 @llvm.fshl.i32(i32 %i.dw, i32 %i.dw, i32 12) ; 2 uses
  %i.dy = add i32 %i.bs, %i.cx                    ; 2 uses
  %i.dz = xor i32 %i.dy, %i.cn                    ; 2 uses
  %i.ea = call noundef i32 @llvm.fshl.i32(i32 %i.dz, i32 %i.dz, i32 16) ; 2 uses
  %i.eb = add i32 %i.ea, %i.cc                    ; 2 uses
  %i.ec = xor i32 %i.eb, %i.bs                    ; 2 uses
  %i.ed = call noundef i32 @llvm.fshl.i32(i32 %i.ec, i32 %i.ec, i32 12) ; 2 uses
  %i.ee = add i32 %i.dr, %i.dm                    ; 3 uses
  %i.ef = xor i32 %i.ee, %i.do                    ; 2 uses
  %i.eg = add i32 %i.dx, %i.ds                    ; 3 uses
  %i.eh = xor i32 %i.eg, %i.du                    ; 2 uses
  %i.ei = call noundef i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eh, i32 8) ; 3 uses
  %i.ej = add i32 %i.ei, %i.dv                    ; 3 uses
  %i.ek = xor i32 %i.ej, %i.dx                    ; 2 uses
  %i.el = call noundef i32 @llvm.fshl.i32(i32 %i.ek, i32 %i.ek, i32 7) ; 2 uses
  %i.em = add i32 %i.ed, %i.dy                    ; 3 uses
  %i.en = xor i32 %i.em, %i.ea                    ; 2 uses
  %i.eo = call noundef i32 @llvm.fshl.i32(i32 %i.en, i32 %i.en, i32 8) ; 3 uses
  %i.ep = add i32 %i.dl, %i.dg                    ; 3 uses
  %i.eq = xor i32 %i.ep, %i.di                    ; 2 uses
  %i.er = call noundef i32 @llvm.fshl.i32(i32 %i.eq, i32 %i.eq, i32 7) ; 2 uses
  %i.es = call noundef i32 @llvm.fshl.i32(i32 %i.ef, i32 %i.ef, i32 8) ; 3 uses
  %i.et = add i32 %i.es, %i.dp                    ; 3 uses
  %i.eu = xor i32 %i.et, %i.dr                    ; 2 uses
  %i.ev = call noundef i32 @llvm.fshl.i32(i32 %i.eu, i32 %i.eu, i32 7) ; 2 uses
  %i.ew = add i32 %i.eo, %i.eb                    ; 3 uses
  %i.ex = xor i32 %i.ew, %i.ed                    ; 2 uses
  %i.ey = call noundef i32 @llvm.fshl.i32(i32 %i.ex, i32 %i.ex, i32 7) ; 2 uses
  %i.ez = add nsw i32 %.1333, -2                  ; 2 uses
  %.not = icmp eq i32 %i.ez, 0
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !8

bb.d:                                             ; preds = %bb.c
  %i.fa = add i32 %i.dj, %i.c
  %i.fb = insertelement <4 x i32> poison, i32 %i.ee, i64 0
  %i.fc = insertelement <4 x i32> %i.fb, i32 %i.eg, i64 1
  %i.fd = insertelement <4 x i32> %i.fc, i32 %i.em, i64 2
  %i.fe = insertelement <4 x i32> %i.fd, i32 %i.ey, i64 3
  %i.ff = add <4 x i32> %i.fe, %i.e
  %i.fg = insertelement <4 x i32> poison, i32 %i.er, i64 0
  %i.fh = insertelement <4 x i32> %i.fg, i32 %i.ev, i64 1
  %i.fi = insertelement <4 x i32> %i.fh, i32 %i.el, i64 2
  %i.fj = insertelement <4 x i32> %i.fi, i32 %i.ej, i64 3
  %i.fk = add <4 x i32> %i.fj, %i.g
  %i.fl = add i32 %i.ew, %i.j
  %i.fm = add i32 %i.ep, %i.k
  %i.fn = add i32 %i.et, %i.m
  %i.fo = add i32 %i.es, %.0289
  %i.fp = add i32 %i.ei, %.0287
  %i.fq = add i32 %i.eo, %i.s
  %i.fr = add i32 %i.dl, %i.u
  %i.fs = load i32, ptr %.1310, align 1
  %i.ft = xor i32 %i.fs, %i.fa
  %i.fu = getelementptr i8, ptr %.1310, i64 4
  %i.fv = getelementptr i8, ptr %.1310, i64 20
  %i.fw = getelementptr i8, ptr %.1310, i64 36
  %i.fx = getelementptr i8, ptr %.1310, i64 52
  %i.fy = load i32, ptr %i.fx, align 1
  %i.fz = xor i32 %i.fy, %i.fp
  %i.ga = getelementptr i8, ptr %.1310, i64 56
  %i.gb = load i32, ptr %i.ga, align 1
  %i.gc = xor i32 %i.gb, %i.fq
  %i.gd = getelementptr i8, ptr %.1310, i64 60
  %i.ge = load i32, ptr %i.gd, align 1
  %i.gf = xor i32 %i.ge, %i.fr
  %i.gg = add i32 %.0289, 1                       ; 3 uses
  %.not313 = icmp eq i32 %i.gg, 0
  %i.gh = zext i1 %.not313 to i32
  %spec.select = add i32 %.0287, %i.gh            ; 2 uses
  %i.gi = getelementptr i8, ptr %.1308, i64 4
  %i.gj = load <4 x i32>, ptr %i.fu, align 1
  %i.gk = xor <4 x i32> %i.gj, %i.ff
  %i.gl = getelementptr i8, ptr %.1308, i64 20
  %i.gm = load <4 x i32>, ptr %i.fv, align 1
  %i.gn = xor <4 x i32> %i.gm, %i.fk
  %i.go = getelementptr i8, ptr %.1308, i64 36
  %i.gp = load <4 x i32>, ptr %i.fw, align 1
  %i.gq = insertelement <4 x i32> poison, i32 %i.fl, i64 0
  %i.gr = insertelement <4 x i32> %i.gq, i32 %i.fm, i64 1
  %i.gs = insertelement <4 x i32> %i.gr, i32 %i.fn, i64 2
  %i.gt = insertelement <4 x i32> %i.gs, i32 %i.fo, i64 3
  %i.gu = xor <4 x i32> %i.gp, %i.gt
  store i32 %i.ft, ptr %.1308, align 1
  store <4 x i32> %i.gk, ptr %i.gi, align 1
  store <4 x i32> %i.gn, ptr %i.gl, align 1
  store <4 x i32> %i.gu, ptr %i.go, align 1
  %i.gv = getelementptr i8, ptr %.1308, i64 52
  store i32 %i.fz, ptr %i.gv, align 1
  %i.gw = getelementptr i8, ptr %.1308, i64 56
  store i32 %i.gc, ptr %i.gw, align 1
  %i.gx = getelementptr i8, ptr %.1308, i64 60
  store i32 %i.gf, ptr %i.gx, align 1
  %i.gy = icmp ult i64 %.0306, 65
  br i1 %i.gy, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.1286404.le = ptrtoaddr ptr %.1286 to i64
  %.1308405.le = ptrtoaddr ptr %.1308 to i64
  br i1 %i.ae, label %iter.check420, label %.loopexit

iter.check420:                                    ; preds = %bb.e
  %i.gz = call i64 @llvm.usub.sat.i64(i64 %3, i64 64)
  %i.ha = add nuw i64 %i.gz, 63
  %i.hb = and i64 %i.ha, -64
  %i.hc = sub i64 %3, %i.hb                       ; 5 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.hc, i64 1) ; 3 uses
  %min.iters.check407 = icmp ult i64 %i.hc, 4
  %i.hd = sub i64 %.1308405.le, %.1286404.le
  %diff.check406 = icmp ugt i64 %i.hd, -32
  %or.cond433 = select i1 %min.iters.check407, i1 true, i1 %diff.check406
  br i1 %or.cond433, label %.lr.ph335.preheader, label %vector.main.loop.iter.check408

vector.main.loop.iter.check408:                   ; preds = %iter.check420
  %min.iters.check409 = icmp ult i64 %i.hc, 32
  br i1 %min.iters.check409, label %vec.epilog.ph424, label %vector.ph410

vector.ph410:                                     ; preds = %vector.main.loop.iter.check408
  %i.he = and i64 %umax, 28
  %n.vec411 = and i64 %umax, -32                  ; 4 uses
  br label %vector.body412

vector.body412:                                   ; preds = %vector.ph410, %vector.body412
  %index413 = phi i64 [ 0, %vector.ph410 ], [ %index.next416, %vector.body412 ] ; 3 uses
  %i.hf = getelementptr i8, ptr %.1308, i64 %index413 ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 16
  %wide.load414 = load <16 x i8>, ptr %i.hf, align 1
  %wide.load415 = load <16 x i8>, ptr %i.hg, align 1
  %i.hh = getelementptr i8, ptr %.1286, i64 %index413 ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 16
  store <16 x i8> %wide.load414, ptr %i.hh, align 1
  store <16 x i8> %wide.load415, ptr %i.hi, align 1
  %index.next416 = add nuw i64 %index413, 32      ; 2 uses
  %i.hj = icmp eq i64 %index.next416, %n.vec411
  br i1 %i.hj, label %middle.block417, label %vector.body412, !llvm.loop !9

middle.block417:                                  ; preds = %vector.body412
  %cmp.n418 = icmp eq i64 %i.hc, %n.vec411
  br i1 %cmp.n418, label %.loopexit, label %vec.epilog.iter.check422

vec.epilog.iter.check422:                         ; preds = %middle.block417
  %min.epilog.iters.check423 = icmp eq i64 %i.he, 0
  br i1 %min.epilog.iters.check423, label %.lr.ph335.preheader, label %vec.epilog.ph424, !prof !15

vec.epilog.ph424:                                 ; preds = %vector.main.loop.iter.check408, %vec.epilog.iter.check422
  %vec.epilog.resume.val419 = phi i64 [ %n.vec411, %vec.epilog.iter.check422 ], [ 0, %vector.main.loop.iter.check408 ]
  %n.vec425 = and i64 %umax, -4                   ; 3 uses
  br label %vec.epilog.vector.body426

vec.epilog.vector.body426:                        ; preds = %vec.epilog.vector.body426, %vec.epilog.ph424
  %index427 = phi i64 [ %vec.epilog.resume.val419, %vec.epilog.ph424 ], [ %index.next429, %vec.epilog.vector.body426 ] ; 3 uses
  %i.hk = getelementptr i8, ptr %.1308, i64 %index427
  %wide.load428 = load <4 x i8>, ptr %i.hk, align 1
  %i.hl = getelementptr i8, ptr %.1286, i64 %index427
  store <4 x i8> %wide.load428, ptr %i.hl, align 1
  %index.next429 = add nuw i64 %index427, 4       ; 2 uses
  %i.hm = icmp eq i64 %index.next429, %n.vec425
  br i1 %i.hm, label %vec.epilog.middle.block430, label %vec.epilog.vector.body426, !llvm.loop !10

vec.epilog.middle.block430:                       ; preds = %vec.epilog.vector.body426
  %cmp.n431 = icmp eq i64 %i.hc, %n.vec425
  br i1 %cmp.n431, label %.loopexit, label %.lr.ph335.preheader

.lr.ph335.preheader:                              ; preds = %iter.check420, %vec.epilog.iter.check422, %vec.epilog.middle.block430
  %indvars.iv358.ph = phi i64 [ 0, %iter.check420 ], [ %n.vec411, %vec.epilog.iter.check422 ], [ %n.vec425, %vec.epilog.middle.block430 ]
  br label %.lr.ph335

.lr.ph335:                                        ; preds = %.lr.ph335.preheader, %.lr.ph335
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %.lr.ph335 ], [ %indvars.iv358.ph, %.lr.ph335.preheader ] ; 3 uses
  %i.hn = getelementptr i8, ptr %.1308, i64 %indvars.iv358
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = getelementptr i8, ptr %.1286, i64 %indvars.iv358
  store i8 %i.ho, ptr %i.hp, align 1
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1 ; 2 uses
  %i.hq = icmp samesign ult i64 %indvars.iv.next359, %.0306
  br i1 %i.hq, label %.lr.ph335, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph335, %middle.block417, %vec.epilog.middle.block430, %bb.e
  store i32 %i.gg, ptr %i.n, align 4
  store i32 %spec.select, ptr %i.p, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void

bb.f:                                             ; preds = %bb.d
  %i.hr = add i64 %.0306, -64
  %i.hs = getelementptr i8, ptr %.1308, i64 64
  %i.ht = getelementptr i8, ptr %.1310, i64 64
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
!4 = distinct !{!4, !12, !13, !14}
!5 = distinct !{!5, !12, !13, !14}
!6 = distinct !{!6, !16}
!7 = distinct !{!7, !12, !13}
!8 = distinct !{!8, !12}
!9 = distinct !{!9, !12, !13, !14}
!10 = distinct !{!10, !12, !13, !14}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"branch_weights", i32 4, i32 28}
!16 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
