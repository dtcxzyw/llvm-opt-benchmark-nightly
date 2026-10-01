Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/argon2-core?download=true
inline.NumInlined: 26
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.block_ = type { [128 x i64] }
%struct.crypto_generichash_blake2b_state = type { [384 x i8] }

@fill_segment = internal unnamed_addr global ptr @argon2_fill_segment_ref, align 8

; Function Attrs: nounwind ssp uwtable
define hidden void @argon2_finalize(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %struct.block_, align 8             ; 13 uses
  %i.b = alloca [1024 x i8], align 16             ; 5 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8              ; 5 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr [1024 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -1024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %2, ptr noundef nonnull readonly align 1 dereferenceable(1024) %i.l, i64 noundef 1024, i1 noundef false) #9
  %i.m = getelementptr i8, ptr %1, i64 36
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp ugt i32 %i.n, 1
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.p = add i32 %i.i, -1
  %wide.trip.count = zext i32 %i.n to i64
  %scevgep = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %scevgep25 = getelementptr i8, ptr %i.g, i64 1024
  %3 = shl i32 %i.i, 1
  %4 = add i32 %3, -1
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph, %xor_block.exit
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %xor_block.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %xor_block.exit ] ; 2 uses
  %i.q = trunc nuw i64 %indvars.iv to i32
  %i.r = mul i32 %i.i, %i.q
  %i.s = add i32 %i.p, %i.r
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr [1024 x i8], ptr %i.g, i64 %i.t ; 7 uses
  %5 = mul i32 %i.i, %indvar
  %6 = add i32 %4, %5
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 10
  %scevgep26 = getelementptr i8, ptr %scevgep25, i64 %8
  %bound0 = icmp ult ptr %2, %scevgep26
  %bound1 = icmp ult ptr %i.u, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %wide.load = load <2 x i64>, ptr %i.v, align 8, !alias.scope !16
  %wide.load27.a = load <2 x i64>, ptr %i.w, align 8, !alias.scope !16
  %i.x = getelementptr [8 x i8], ptr %2, i64 %index ; 3 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16       ; 2 uses
  %wide.load28 = load <2 x i64>, ptr %i.x, align 8, !alias.scope !17, !noalias !16
  %wide.load29 = load <2 x i64>, ptr %i.y, align 8, !alias.scope !17, !noalias !16
  %i.z = xor <2 x i64> %wide.load28, %wide.load
  %i.aa = xor <2 x i64> %wide.load29, %wide.load27.a
  store <2 x i64> %i.z, ptr %i.x, align 8, !alias.scope !17, !noalias !16
  store <2 x i64> %i.aa, ptr %i.y, align 8, !alias.scope !17, !noalias !16
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.u, i64 %index.next ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !16
  %wide.load27.1.a = load <2 x i64>, ptr %i.ac, align 8, !alias.scope !16
  %i.ad = getelementptr [8 x i8], ptr %2, i64 %index.next ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16     ; 2 uses
  %wide.load28.1 = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !17, !noalias !16
  %wide.load29.1 = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !17, !noalias !16
  %i.af = xor <2 x i64> %wide.load28.1, %wide.load.1
  %i.ag = xor <2 x i64> %wide.load29.1, %wide.load27.1.a
  store <2 x i64> %i.af, ptr %i.ad, align 8, !alias.scope !17, !noalias !16
  store <2 x i64> %i.ag, ptr %i.ae, align 8, !alias.scope !17, !noalias !16
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.ah = icmp eq i64 %index.next.1, 128
  br i1 %i.ah, label %xor_block.exit, label %vector.body, !llvm.loop !9

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %9 = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %12 = load i64, ptr %11, align 8
  %13 = xor i64 %12, %10
  store i64 %13, ptr %11, align 8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %14 = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv.next.i
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next.i ; 2 uses
  %17 = load i64, ptr %16, align 8
  %18 = xor i64 %17, %15
  store i64 %18, ptr %16, align 8
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %19 = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.1
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next.i.1 ; 2 uses
  %22 = load i64, ptr %21, align 8
  %23 = xor i64 %22, %20
  store i64 %23, ptr %21, align 8
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %24 = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.2
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next.i.2 ; 2 uses
  %27 = load i64, ptr %26, align 8
  %28 = xor i64 %27, %25
  store i64 %28, ptr %26, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 128
  br i1 %exitcond.not.i.3, label %xor_block.exit, label %scalar.ph, !llvm.loop !10

xor_block.exit:                                   ; preds = %vector.body, %scalar.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge, label %vector.memcheck, !llvm.loop !11

._crit_edge:                                      ; preds = %xor_block.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %indvars.iv.i18 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i19, %bb.c ] ; 3 uses
  %i.ai = shl nuw nsw i64 %indvars.iv.i18, 3      ; 2 uses
  %i.aj = getelementptr i8, ptr %i.b, i64 %i.ai
  %i.ak = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i18
  %i.al = load i64, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.al, ptr %i.a, align 8
  %i.am = sub nuw nsw i64 1024, %i.ai
  %i.an = call ptr @__memcpy_chk(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef %i.am) #9, !alias.scope !19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1 ; 2 uses
  %exitcond.not.i20 = icmp eq i64 %indvars.iv.next.i19, 128
  br i1 %exitcond.not.i20, label %store_block.exit, label %bb.c, !llvm.loop !15

store_block.exit:                                 ; preds = %bb.c
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr i8, ptr %0, i64 8
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = zext i32 %i.aq to i64
  %i.as = call i32 @blake2b_long(ptr noundef %i.ao, i64 noundef %i.ar, ptr noundef nonnull %i.b, i64 noundef 1024) #9 ; 0 uses
  call void @sodium_memzero(ptr noundef nonnull %2, i64 noundef 1024) #9
  call void @sodium_memzero(ptr noundef nonnull %i.b, i64 noundef 1024) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.at = getelementptr i8, ptr %0, i64 92
  %i.au = load i32, ptr %i.at, align 4
  call fastcc void @argon2_free_instance(ptr noundef %1, i32 noundef %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.d

bb.d:                                             ; preds = %store_block.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @blake2b_long(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @argon2_free_instance(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %clear_memory.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %.not7.i = icmp eq ptr %i.b, null
  br i1 %.not7.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 10
  tail call void @sodium_memzero(ptr noundef %i.d, i64 noundef %i.h) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.j, null
  br i1 %.not8.i, label %clear_memory.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  tail call void @sodium_memzero(ptr noundef nonnull %i.j, i64 noundef %i.n) #9
  br label %clear_memory.exit

clear_memory.exit:                                ; preds = %bb.a, %bb.d, %bb.e
  %i.o = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @free(ptr noundef %i.p) #9
  store ptr null, ptr %i.o, align 8
  %i.q = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i5 = icmp eq ptr %i.q, null
  br i1 %.not.i5, label %bb.h, label %bb.f

bb.f:                                             ; preds = %clear_memory.exit
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not6.i = icmp eq ptr %i.r, null
  br i1 %.not6.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %i.q, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %i.u = tail call i32 @munmap(ptr noundef nonnull %i.r, i64 noundef %i.t) #9
  %.not7.i6 = icmp eq i32 %i.u, 0
  br i1 %.not7.i6, label %bb.h, label %free_memory.exit

bb.h:                                             ; preds = %bb.g, %bb.f, %clear_memory.exit
  tail call void @free(ptr noundef %i.q) #9
  br label %free_memory.exit

free_memory.exit:                                 ; preds = %bb.g, %bb.h
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define hidden void @argon2_fill_memory_blocks(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 36         ; 5 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.0.0.insert.ext = zext i32 %1 to i64      ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.sroa.0.4.insert.shift = shl nuw i64 %indvars.iv, 32
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, %.sroa.0.0.insert.ext
  %i.e = load ptr, ptr @fill_segment, align 8
  tail call void %i.e(ptr noundef nonnull %0, i64 %.sroa.0.4.insert.insert, i64 0) #9, !callees !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.f = load i32, ptr %i.b, align 4              ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = icmp samesign ult i64 %indvars.iv.next, %i.g
  br i1 %i.h, label %bb.c, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.c
  %.not18.1 = icmp eq i32 %i.f, 0
  br i1 %.not18.1, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %.lr.ph.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %.lr.ph.1 ], [ 0, %._crit_edge ] ; 2 uses
  %.sroa.0.4.insert.shift.1 = shl nuw i64 %indvars.iv.1, 32
  %.sroa.0.4.insert.insert.1 = or disjoint i64 %.sroa.0.4.insert.shift.1, %.sroa.0.0.insert.ext
  %i.i = load ptr, ptr @fill_segment, align 8
  tail call void %i.i(ptr noundef nonnull %0, i64 %.sroa.0.4.insert.insert.1, i64 1) #9, !callees !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.j = load i32, ptr %i.b, align 4              ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = icmp samesign ult i64 %indvars.iv.next.1, %i.k
  br i1 %i.l, label %.lr.ph.1, label %._crit_edge.1, !llvm.loop !20

._crit_edge.1:                                    ; preds = %.lr.ph.1
  %i.m = icmp eq i32 %i.j, 0
  br i1 %i.m, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %._crit_edge.1, %.lr.ph.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %.lr.ph.2 ], [ 0, %._crit_edge.1 ] ; 2 uses
  %.sroa.0.4.insert.shift.2 = shl nuw i64 %indvars.iv.2, 32
  %.sroa.0.4.insert.insert.2 = or disjoint i64 %.sroa.0.4.insert.shift.2, %.sroa.0.0.insert.ext
  %i.n = load ptr, ptr @fill_segment, align 8
  tail call void %i.n(ptr noundef nonnull %0, i64 %.sroa.0.4.insert.insert.2, i64 2) #9, !callees !21
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %i.o = load i32, ptr %i.b, align 4              ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = icmp samesign ult i64 %indvars.iv.next.2, %i.p
  br i1 %i.q, label %.lr.ph.2, label %._crit_edge.2, !llvm.loop !20

._crit_edge.2:                                    ; preds = %.lr.ph.2
  %i.r = icmp eq i32 %i.o, 0
  br i1 %i.r, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %._crit_edge.2, %.lr.ph.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %.lr.ph.3 ], [ 0, %._crit_edge.2 ] ; 2 uses
  %.sroa.0.4.insert.shift.3 = shl nuw i64 %indvars.iv.3, 32
  %.sroa.0.4.insert.insert.3 = or disjoint i64 %.sroa.0.4.insert.shift.3, %.sroa.0.0.insert.ext
  %i.s = load ptr, ptr @fill_segment, align 8
  tail call void %i.s(ptr noundef nonnull %0, i64 %.sroa.0.4.insert.insert.3, i64 3) #9, !callees !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %i.t = load i32, ptr %i.b, align 4
  %i.u = zext i32 %i.t to i64
  %i.v = icmp samesign ult i64 %indvars.iv.next.3, %i.u
  br i1 %i.v, label %.lr.ph.3, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %.lr.ph.3, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(argmem: read) uwtable
define hidden range(i32 -29, 1) i32 @argon2_validate_inputs(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ult i32 %i.e, 16
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, null
  %i.o = getelementptr i8, ptr %0, i64 40
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not34 = icmp eq i32 %i.p, 0
  %spec.select = select i1 %.not34, i32 -6, i32 -19
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.q = icmp ult i32 %i.p, 8
  br i1 %i.q, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %0, i64 56
  %i.v = load i32, ptr %i.u, align 8
  %.not35 = icmp eq i32 %i.v, 0
  br i1 %.not35, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.w = getelementptr i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %0, i64 72
  %i.aa = load i32, ptr %i.z, align 8
  %.not36 = icmp eq i32 %i.aa, 0
  br i1 %.not36, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ab = getelementptr i8, ptr %0, i64 84
  %i.ac = load i32, ptr %i.ab, align 4            ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp ugt i32 %i.ac, 16777215
  br i1 %i.ae, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr i8, ptr %0, i64 80
  %i.ag = load i32, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp ult i32 %i.ag, 8
  %i.ai = shl nuw nsw i32 %i.ac, 3
  %i.aj = icmp ult i32 %i.ag, %i.ai
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr i8, ptr %0, i64 76
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr i8, ptr %0, i64 88
  %i.ao = load i32, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = icmp ugt i32 %i.ao, 16777215
  %. = select i1 %i.aq, i32 -29, i32 0
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.h, %bb.e, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -17, %bb.n ], [ -25, %bb.a ], [ -1, %bb.b ], [ %., %bb.r ], [ -2, %bb.c ], [ -28, %bb.q ], [ -14, %bb.o ], [ -18, %bb.e ], [ %spec.select, %bb.g ], [ -12, %bb.p ], [ -6, %bb.h ], [ -20, %bb.j ], [ -21, %bb.l ], [ -16, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nounwind ssp uwtable
define hidden range(i32 -25, 1) i32 @argon2_initialize(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 142 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 2 uses
  %2 = alloca %struct.crypto_generichash_blake2b_state, align 64 ; 18 uses
  %i.c = alloca [4 x i8], align 4                 ; 22 uses
  %i.d = alloca [72 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.e = icmp eq ptr %0, null
  %i.f = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #10 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 10                 ; 2 uses
  %i.r = icmp eq i32 %i.o, 0
  br i1 %i.r, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #10 ; 3 uses
  store ptr %i.s, ptr %0, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.u = tail call ptr @mmap(ptr noundef null, i64 noundef %i.q, i32 noundef 3, i32 noundef 32802, i32 noundef -1, i64 noundef 0) #9 ; 3 uses
  %magicptr.i = ptrtoint ptr %i.u to i64
  %magicptr.off.i = add i64 %magicptr.i, -1
  %switch.i = icmp ult i64 %magicptr.off.i, -2
  %i.v = load ptr, ptr %0, align 8                ; 2 uses
  br i1 %switch.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef %i.v) #9
  store ptr null, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.d
  %i.w = getelementptr i8, ptr %1, i64 92
  %i.x = load i32, ptr %i.w, align 4
  tail call fastcc void @argon2_free_instance(ptr noundef %0, i32 noundef %i.x)
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  store ptr %i.u, ptr %i.v, align 8
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 8
  store ptr %i.u, ptr %i.z, align 8
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  store i64 %i.q, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %0, i64 44
  %i.ad = load i32, ptr %i.ac, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.ae = call i32 @crypto_generichash_blake2b_init(ptr noundef nonnull %2, ptr noundef null, i64 noundef 0, i64 noundef 64) #9 ; 0 uses
  %i.af = getelementptr i8, ptr %1, i64 84
  %i.ag = load i32, ptr %i.af, align 4
  store i32 %i.ag, ptr %i.c, align 4
  %i.ah = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i64 noundef 4) #9 ; 0 uses
  %i.ai = getelementptr i8, ptr %1, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  store i32 %i.aj, ptr %i.c, align 4
  %i.ak = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i64 noundef 4) #9 ; 0 uses
  %i.al = getelementptr i8, ptr %1, i64 80
  %i.am = load i32, ptr %i.al, align 8
  store i32 %i.am, ptr %i.c, align 4
  %i.an = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i64 noundef 4) #9 ; 0 uses
end_hunk_0
begin_hunk_1_@argon2_initialize:bb.a
  %i.ig = getelementptr i8, ptr %i.hu, i64 112
  store <2 x i64> %wide.load36.3, ptr %i.if, align 8
  store <2 x i64> %wide.load37.3, ptr %i.ig, align 8
  %wide.load36.4 = load <2 x i64>, ptr %i.cy, align 16
  %wide.load37.4 = load <2 x i64>, ptr %i.cz, align 16
  %i.ih = getelementptr i8, ptr %i.hu, i64 128
  %i.ii = getelementptr i8, ptr %i.hu, i64 144
  store <2 x i64> %wide.load36.4, ptr %i.ih, align 8
  store <2 x i64> %wide.load37.4, ptr %i.ii, align 8
  %wide.load36.5 = load <2 x i64>, ptr %i.da, align 16
  %wide.load37.5 = load <2 x i64>, ptr %i.db, align 16
  %i.ij = getelementptr i8, ptr %i.hu, i64 160
  %i.ik = getelementptr i8, ptr %i.hu, i64 176
  store <2 x i64> %wide.load36.5, ptr %i.ij, align 8
  store <2 x i64> %wide.load37.5, ptr %i.ik, align 8
  %wide.load36.6 = load <2 x i64>, ptr %i.dc, align 16
  %wide.load37.6 = load <2 x i64>, ptr %i.dd, align 16
  %i.il = getelementptr i8, ptr %i.hu, i64 192
  %i.im = getelementptr i8, ptr %i.hu, i64 208
  store <2 x i64> %wide.load36.6, ptr %i.il, align 8
  store <2 x i64> %wide.load37.6, ptr %i.im, align 8
  %wide.load36.7 = load <2 x i64>, ptr %i.de, align 16
  %wide.load37.7 = load <2 x i64>, ptr %i.df, align 16
  %i.in = getelementptr i8, ptr %i.hu, i64 224
  %i.io = getelementptr i8, ptr %i.hu, i64 240
  store <2 x i64> %wide.load36.7, ptr %i.in, align 8
  store <2 x i64> %wide.load37.7, ptr %i.io, align 8
  %wide.load36.8 = load <2 x i64>, ptr %i.dg, align 16
  %wide.load37.8 = load <2 x i64>, ptr %i.dh, align 16
  %i.ip = getelementptr i8, ptr %i.hu, i64 256
  %i.iq = getelementptr i8, ptr %i.hu, i64 272
  store <2 x i64> %wide.load36.8, ptr %i.ip, align 8
  store <2 x i64> %wide.load37.8, ptr %i.iq, align 8
  %wide.load36.9 = load <2 x i64>, ptr %i.di, align 16
  %wide.load37.9 = load <2 x i64>, ptr %i.dj, align 16
  %i.ir = getelementptr i8, ptr %i.hu, i64 288
  %i.is = getelementptr i8, ptr %i.hu, i64 304
  store <2 x i64> %wide.load36.9, ptr %i.ir, align 8
  store <2 x i64> %wide.load37.9, ptr %i.is, align 8
  %wide.load36.10 = load <2 x i64>, ptr %i.dk, align 16
  %wide.load37.10 = load <2 x i64>, ptr %i.dl, align 16
  %i.it = getelementptr i8, ptr %i.hu, i64 320
  %i.iu = getelementptr i8, ptr %i.hu, i64 336
  store <2 x i64> %wide.load36.10, ptr %i.it, align 8
  store <2 x i64> %wide.load37.10, ptr %i.iu, align 8
  %wide.load36.11 = load <2 x i64>, ptr %i.dm, align 16
  %wide.load37.11 = load <2 x i64>, ptr %i.dn, align 16
  %i.iv = getelementptr i8, ptr %i.hu, i64 352
  %i.iw = getelementptr i8, ptr %i.hu, i64 368
  store <2 x i64> %wide.load36.11, ptr %i.iv, align 8
  store <2 x i64> %wide.load37.11, ptr %i.iw, align 8
  %wide.load36.12 = load <2 x i64>, ptr %i.do, align 16
  %wide.load37.12 = load <2 x i64>, ptr %i.dp, align 16
  %i.ix = getelementptr i8, ptr %i.hu, i64 384
  %i.iy = getelementptr i8, ptr %i.hu, i64 400
  store <2 x i64> %wide.load36.12, ptr %i.ix, align 8
  store <2 x i64> %wide.load37.12, ptr %i.iy, align 8
  %wide.load36.13 = load <2 x i64>, ptr %i.dq, align 16
  %wide.load37.13 = load <2 x i64>, ptr %i.dr, align 16
  %i.iz = getelementptr i8, ptr %i.hu, i64 416
  %i.ja = getelementptr i8, ptr %i.hu, i64 432
  store <2 x i64> %wide.load36.13, ptr %i.iz, align 8
  store <2 x i64> %wide.load37.13, ptr %i.ja, align 8
  %wide.load36.14 = load <2 x i64>, ptr %i.ds, align 16
  %wide.load37.14 = load <2 x i64>, ptr %i.dt, align 16
  %i.jb = getelementptr i8, ptr %i.hu, i64 448
  %i.jc = getelementptr i8, ptr %i.hu, i64 464
  store <2 x i64> %wide.load36.14, ptr %i.jb, align 8
  store <2 x i64> %wide.load37.14, ptr %i.jc, align 8
  %wide.load36.15 = load <2 x i64>, ptr %i.du, align 16
  %wide.load37.15 = load <2 x i64>, ptr %i.dv, align 16
  %i.jd = getelementptr i8, ptr %i.hu, i64 480
  %i.je = getelementptr i8, ptr %i.hu, i64 496
  store <2 x i64> %wide.load36.15, ptr %i.jd, align 8
  store <2 x i64> %wide.load37.15, ptr %i.je, align 8
  %wide.load36.16 = load <2 x i64>, ptr %i.dw, align 16
  %wide.load37.16 = load <2 x i64>, ptr %i.dx, align 16
  %i.jf = getelementptr i8, ptr %i.hu, i64 512
  %i.jg = getelementptr i8, ptr %i.hu, i64 528
  store <2 x i64> %wide.load36.16, ptr %i.jf, align 8
  store <2 x i64> %wide.load37.16, ptr %i.jg, align 8
  %wide.load36.17 = load <2 x i64>, ptr %i.dy, align 16
  %wide.load37.17 = load <2 x i64>, ptr %i.dz, align 16
  %i.jh = getelementptr i8, ptr %i.hu, i64 544
  %i.ji = getelementptr i8, ptr %i.hu, i64 560
  store <2 x i64> %wide.load36.17, ptr %i.jh, align 8
  store <2 x i64> %wide.load37.17, ptr %i.ji, align 8
  %wide.load36.18 = load <2 x i64>, ptr %i.ea, align 16
  %wide.load37.18 = load <2 x i64>, ptr %i.eb, align 16
  %i.jj = getelementptr i8, ptr %i.hu, i64 576
  %i.jk = getelementptr i8, ptr %i.hu, i64 592
  store <2 x i64> %wide.load36.18, ptr %i.jj, align 8
  store <2 x i64> %wide.load37.18, ptr %i.jk, align 8
  %wide.load36.19 = load <2 x i64>, ptr %i.ec, align 16
  %wide.load37.19 = load <2 x i64>, ptr %i.ed, align 16
  %i.jl = getelementptr i8, ptr %i.hu, i64 608
  %i.jm = getelementptr i8, ptr %i.hu, i64 624
  store <2 x i64> %wide.load36.19, ptr %i.jl, align 8
  store <2 x i64> %wide.load37.19, ptr %i.jm, align 8
  %wide.load36.20 = load <2 x i64>, ptr %i.ee, align 16
  %wide.load37.20 = load <2 x i64>, ptr %i.ef, align 16
  %i.jn = getelementptr i8, ptr %i.hu, i64 640
  %i.jo = getelementptr i8, ptr %i.hu, i64 656
  store <2 x i64> %wide.load36.20, ptr %i.jn, align 8
  store <2 x i64> %wide.load37.20, ptr %i.jo, align 8
  %wide.load36.21 = load <2 x i64>, ptr %i.eg, align 16
  %wide.load37.21 = load <2 x i64>, ptr %i.eh, align 16
  %i.jp = getelementptr i8, ptr %i.hu, i64 672
  %i.jq = getelementptr i8, ptr %i.hu, i64 688
  store <2 x i64> %wide.load36.21, ptr %i.jp, align 8
  store <2 x i64> %wide.load37.21, ptr %i.jq, align 8
  %wide.load36.22 = load <2 x i64>, ptr %i.ei, align 16
  %wide.load37.22 = load <2 x i64>, ptr %i.ej, align 16
  %i.jr = getelementptr i8, ptr %i.hu, i64 704
  %i.js = getelementptr i8, ptr %i.hu, i64 720
  store <2 x i64> %wide.load36.22, ptr %i.jr, align 8
  store <2 x i64> %wide.load37.22, ptr %i.js, align 8
  %wide.load36.23 = load <2 x i64>, ptr %i.ek, align 16
  %wide.load37.23 = load <2 x i64>, ptr %i.el, align 16
  %i.jt = getelementptr i8, ptr %i.hu, i64 736
  %i.ju = getelementptr i8, ptr %i.hu, i64 752
  store <2 x i64> %wide.load36.23, ptr %i.jt, align 8
  store <2 x i64> %wide.load37.23, ptr %i.ju, align 8
  %wide.load36.24 = load <2 x i64>, ptr %i.em, align 16
  %wide.load37.24 = load <2 x i64>, ptr %i.en, align 16
  %i.jv = getelementptr i8, ptr %i.hu, i64 768
  %i.jw = getelementptr i8, ptr %i.hu, i64 784
  store <2 x i64> %wide.load36.24, ptr %i.jv, align 8
  store <2 x i64> %wide.load37.24, ptr %i.jw, align 8
  %wide.load36.25 = load <2 x i64>, ptr %i.eo, align 16
  %wide.load37.25 = load <2 x i64>, ptr %i.ep, align 16
  %i.jx = getelementptr i8, ptr %i.hu, i64 800
  %i.jy = getelementptr i8, ptr %i.hu, i64 816
  store <2 x i64> %wide.load36.25, ptr %i.jx, align 8
  store <2 x i64> %wide.load37.25, ptr %i.jy, align 8
  %wide.load36.26 = load <2 x i64>, ptr %i.eq, align 16
  %wide.load37.26 = load <2 x i64>, ptr %i.er, align 16
  %i.jz = getelementptr i8, ptr %i.hu, i64 832
  %i.ka = getelementptr i8, ptr %i.hu, i64 848
  store <2 x i64> %wide.load36.26, ptr %i.jz, align 8
  store <2 x i64> %wide.load37.26, ptr %i.ka, align 8
  %wide.load36.27 = load <2 x i64>, ptr %i.es, align 16
  %wide.load37.27 = load <2 x i64>, ptr %i.et, align 16
  %i.kb = getelementptr i8, ptr %i.hu, i64 864
  %i.kc = getelementptr i8, ptr %i.hu, i64 880
  store <2 x i64> %wide.load36.27, ptr %i.kb, align 8
  store <2 x i64> %wide.load37.27, ptr %i.kc, align 8
  %wide.load36.28 = load <2 x i64>, ptr %i.eu, align 16
  %wide.load37.28 = load <2 x i64>, ptr %i.ev, align 16
  %i.kd = getelementptr i8, ptr %i.hu, i64 896
  %i.ke = getelementptr i8, ptr %i.hu, i64 912
  store <2 x i64> %wide.load36.28, ptr %i.kd, align 8
  store <2 x i64> %wide.load37.28, ptr %i.ke, align 8
  %wide.load36.29 = load <2 x i64>, ptr %i.ew, align 16
  %wide.load37.29 = load <2 x i64>, ptr %i.ex, align 16
  %i.kf = getelementptr i8, ptr %i.hu, i64 928
  %i.kg = getelementptr i8, ptr %i.hu, i64 944
  store <2 x i64> %wide.load36.29, ptr %i.kf, align 8
  store <2 x i64> %wide.load37.29, ptr %i.kg, align 8
  %wide.load36.30 = load <2 x i64>, ptr %i.ey, align 16
  %wide.load37.30 = load <2 x i64>, ptr %i.ez, align 16
  %i.kh = getelementptr i8, ptr %i.hu, i64 960
  %i.ki = getelementptr i8, ptr %i.hu, i64 976
  store <2 x i64> %wide.load36.30, ptr %i.kh, align 8
  store <2 x i64> %wide.load37.30, ptr %i.ki, align 8
  %wide.load36.31 = load <2 x i64>, ptr %i.fa, align 16
  %wide.load37.31 = load <2 x i64>, ptr %i.fb, align 16
  %i.kj = getelementptr i8, ptr %i.hu, i64 992
  %i.kk = getelementptr i8, ptr %i.hu, i64 1008
  store <2 x i64> %wide.load36.31, ptr %i.kj, align 8
  store <2 x i64> %wide.load37.31, ptr %i.kk, align 8
  br label %load_block.exit.i

scalar.ph32:                                      ; preds = %vector.memcheck30, %scalar.ph32
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph32 ], [ 0, %vector.memcheck30 ] ; 6 uses
  %i.kl = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.km = getelementptr i8, ptr %i.a, i64 %i.kl
  %i.kn = load i64, ptr %i.km, align 16
  %i.ko = getelementptr [8 x i8], ptr %i.hu, i64 %indvars.iv.i.i
  store i64 %i.kn, ptr %i.ko, align 8
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.kp = shl nuw nsw i64 %indvars.iv.next.i.i, 3
  %i.kq = getelementptr i8, ptr %i.a, i64 %i.kp
  %i.kr = load i64, ptr %i.kq, align 8
  %i.ks = getelementptr [8 x i8], ptr %i.hu, i64 %indvars.iv.next.i.i
  store i64 %i.kr, ptr %i.ks, align 8
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.kt = shl nuw nsw i64 %indvars.iv.next.i.i.1, 3
  %i.ku = getelementptr i8, ptr %i.a, i64 %i.kt
  %i.kv = load i64, ptr %i.ku, align 16
  %i.kw = getelementptr [8 x i8], ptr %i.hu, i64 %indvars.iv.next.i.i.1
  store i64 %i.kv, ptr %i.kw, align 8
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.kx = shl nuw nsw i64 %indvars.iv.next.i.i.2, 3
  %i.ky = getelementptr i8, ptr %i.a, i64 %i.kx
  %i.kz = load i64, ptr %i.ky, align 8
  %i.la = getelementptr [8 x i8], ptr %i.hu, i64 %indvars.iv.next.i.i.2
  store i64 %i.kz, ptr %i.la, align 8
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 128
  br i1 %exitcond.not.i.i.3, label %load_block.exit.i, label %scalar.ph32, !llvm.loop !22

load_block.exit.i:                                ; preds = %scalar.ph32, %vector.body34
  store i32 1, ptr %i.cm, align 16
  %i.lb = call i32 @blake2b_long(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull %i.d, i64 noundef 72) #9 ; 0 uses
  %i.lc = load ptr, ptr %0, align 8
  %i.ld = getelementptr i8, ptr %i.lc, i64 8
  %i.le = load ptr, ptr %i.ld, align 8            ; 2 uses
  %i.lf = load i32, ptr %i.cq, align 8
  %i.lg = mul i32 %i.lf, %.018.i
  %i.lh = add i32 %i.lg, 1
  %i.li = zext i32 %i.lh to i64                   ; 2 uses
  %i.lj = getelementptr [1024 x i8], ptr %i.le, i64 %i.li ; 68 uses
  %i.lk = ptrtoaddr ptr %i.le to i64
  %i.ll = sub i64 %i.lk, %i.b
  %i.lm = shl nuw nsw i64 %i.li, 10
  %i.ln = add i64 %i.ll, %i.lm
  %i.lo = add i64 %i.ln, -1
  %diff.check = icmp ult i64 %i.lo, 31
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %load_block.exit.i
  %wide.load = load <2 x i64>, ptr %i.a, align 16
  %wide.load29 = load <2 x i64>, ptr %i.fc, align 16
  %i.lp = getelementptr i8, ptr %i.lj, i64 16
  store <2 x i64> %wide.load, ptr %i.lj, align 8
  store <2 x i64> %wide.load29, ptr %i.lp, align 8
  %wide.load.1 = load <2 x i64>, ptr %i.fd, align 16
  %wide.load29.1 = load <2 x i64>, ptr %i.fe, align 16
  %i.lq = getelementptr i8, ptr %i.lj, i64 32
  %i.lr = getelementptr i8, ptr %i.lj, i64 48
  store <2 x i64> %wide.load.1, ptr %i.lq, align 8
  store <2 x i64> %wide.load29.1, ptr %i.lr, align 8
  %wide.load.2 = load <2 x i64>, ptr %i.ff, align 16
  %wide.load29.2 = load <2 x i64>, ptr %i.fg, align 16
  %i.ls = getelementptr i8, ptr %i.lj, i64 64
  %i.lt = getelementptr i8, ptr %i.lj, i64 80
  store <2 x i64> %wide.load.2, ptr %i.ls, align 8
  store <2 x i64> %wide.load29.2, ptr %i.lt, align 8
  %wide.load.3 = load <2 x i64>, ptr %i.fh, align 16
  %wide.load29.3 = load <2 x i64>, ptr %i.fi, align 16
  %i.lu = getelementptr i8, ptr %i.lj, i64 96
  %i.lv = getelementptr i8, ptr %i.lj, i64 112
  store <2 x i64> %wide.load.3, ptr %i.lu, align 8
  store <2 x i64> %wide.load29.3, ptr %i.lv, align 8
  %wide.load.4 = load <2 x i64>, ptr %i.fj, align 16
  %wide.load29.4 = load <2 x i64>, ptr %i.fk, align 16
  %i.lw = getelementptr i8, ptr %i.lj, i64 128
  %i.lx = getelementptr i8, ptr %i.lj, i64 144
  store <2 x i64> %wide.load.4, ptr %i.lw, align 8
  store <2 x i64> %wide.load29.4, ptr %i.lx, align 8
  %wide.load.5 = load <2 x i64>, ptr %i.fl, align 16
  %wide.load29.5 = load <2 x i64>, ptr %i.fm, align 16
  %i.ly = getelementptr i8, ptr %i.lj, i64 160
  %i.lz = getelementptr i8, ptr %i.lj, i64 176
  store <2 x i64> %wide.load.5, ptr %i.ly, align 8
  store <2 x i64> %wide.load29.5, ptr %i.lz, align 8
  %wide.load.6 = load <2 x i64>, ptr %i.fn, align 16
  %wide.load29.6 = load <2 x i64>, ptr %i.fo, align 16
  %i.ma = getelementptr i8, ptr %i.lj, i64 192
  %i.mb = getelementptr i8, ptr %i.lj, i64 208
  store <2 x i64> %wide.load.6, ptr %i.ma, align 8
  store <2 x i64> %wide.load29.6, ptr %i.mb, align 8
  %wide.load.7 = load <2 x i64>, ptr %i.fp, align 16
  %wide.load29.7 = load <2 x i64>, ptr %i.fq, align 16
  %i.mc = getelementptr i8, ptr %i.lj, i64 224
  %i.md = getelementptr i8, ptr %i.lj, i64 240
  store <2 x i64> %wide.load.7, ptr %i.mc, align 8
  store <2 x i64> %wide.load29.7, ptr %i.md, align 8
  %wide.load.8 = load <2 x i64>, ptr %i.fr, align 16
  %wide.load29.8 = load <2 x i64>, ptr %i.fs, align 16
  %i.me = getelementptr i8, ptr %i.lj, i64 256
  %i.mf = getelementptr i8, ptr %i.lj, i64 272
  store <2 x i64> %wide.load.8, ptr %i.me, align 8
  store <2 x i64> %wide.load29.8, ptr %i.mf, align 8
  %wide.load.9 = load <2 x i64>, ptr %i.ft, align 16
  %wide.load29.9 = load <2 x i64>, ptr %i.fu, align 16
  %i.mg = getelementptr i8, ptr %i.lj, i64 288
  %i.mh = getelementptr i8, ptr %i.lj, i64 304
  store <2 x i64> %wide.load.9, ptr %i.mg, align 8
  store <2 x i64> %wide.load29.9, ptr %i.mh, align 8
  %wide.load.10 = load <2 x i64>, ptr %i.fv, align 16
  %wide.load29.10 = load <2 x i64>, ptr %i.fw, align 16
  %i.mi = getelementptr i8, ptr %i.lj, i64 320
  %i.mj = getelementptr i8, ptr %i.lj, i64 336
  store <2 x i64> %wide.load.10, ptr %i.mi, align 8
  store <2 x i64> %wide.load29.10, ptr %i.mj, align 8
  %wide.load.11 = load <2 x i64>, ptr %i.fx, align 16
  %wide.load29.11 = load <2 x i64>, ptr %i.fy, align 16
  %i.mk = getelementptr i8, ptr %i.lj, i64 352
  %i.ml = getelementptr i8, ptr %i.lj, i64 368
  store <2 x i64> %wide.load.11, ptr %i.mk, align 8
  store <2 x i64> %wide.load29.11, ptr %i.ml, align 8
  %wide.load.12 = load <2 x i64>, ptr %i.fz, align 16
  %wide.load29.12 = load <2 x i64>, ptr %i.ga, align 16
  %i.mm = getelementptr i8, ptr %i.lj, i64 384
  %i.mn = getelementptr i8, ptr %i.lj, i64 400
  store <2 x i64> %wide.load.12, ptr %i.mm, align 8
  store <2 x i64> %wide.load29.12, ptr %i.mn, align 8
  %wide.load.13 = load <2 x i64>, ptr %i.gb, align 16
  %wide.load29.13 = load <2 x i64>, ptr %i.gc, align 16
  %i.mo = getelementptr i8, ptr %i.lj, i64 416
  %i.mp = getelementptr i8, ptr %i.lj, i64 432
  store <2 x i64> %wide.load.13, ptr %i.mo, align 8
  store <2 x i64> %wide.load29.13, ptr %i.mp, align 8
  %wide.load.14 = load <2 x i64>, ptr %i.gd, align 16
  %wide.load29.14 = load <2 x i64>, ptr %i.ge, align 16
  %i.mq = getelementptr i8, ptr %i.lj, i64 448
  %i.mr = getelementptr i8, ptr %i.lj, i64 464
  store <2 x i64> %wide.load.14, ptr %i.mq, align 8
  store <2 x i64> %wide.load29.14, ptr %i.mr, align 8
  %wide.load.15 = load <2 x i64>, ptr %i.gf, align 16
  %wide.load29.15 = load <2 x i64>, ptr %i.gg, align 16
  %i.ms = getelementptr i8, ptr %i.lj, i64 480
  %i.mt = getelementptr i8, ptr %i.lj, i64 496
  store <2 x i64> %wide.load.15, ptr %i.ms, align 8
  store <2 x i64> %wide.load29.15, ptr %i.mt, align 8
  %wide.load.16 = load <2 x i64>, ptr %i.gh, align 16
  %wide.load29.16 = load <2 x i64>, ptr %i.gi, align 16
  %i.mu = getelementptr i8, ptr %i.lj, i64 512
  %i.mv = getelementptr i8, ptr %i.lj, i64 528
  store <2 x i64> %wide.load.16, ptr %i.mu, align 8
  store <2 x i64> %wide.load29.16, ptr %i.mv, align 8
  %wide.load.17 = load <2 x i64>, ptr %i.gj, align 16
  %wide.load29.17 = load <2 x i64>, ptr %i.gk, align 16
  %i.mw = getelementptr i8, ptr %i.lj, i64 544
  %i.mx = getelementptr i8, ptr %i.lj, i64 560
  store <2 x i64> %wide.load.17, ptr %i.mw, align 8
  store <2 x i64> %wide.load29.17, ptr %i.mx, align 8
  %wide.load.18 = load <2 x i64>, ptr %i.gl, align 16
  %wide.load29.18 = load <2 x i64>, ptr %i.gm, align 16
  %i.my = getelementptr i8, ptr %i.lj, i64 576
  %i.mz = getelementptr i8, ptr %i.lj, i64 592
  store <2 x i64> %wide.load.18, ptr %i.my, align 8
  store <2 x i64> %wide.load29.18, ptr %i.mz, align 8
  %wide.load.19 = load <2 x i64>, ptr %i.gn, align 16
  %wide.load29.19 = load <2 x i64>, ptr %i.go, align 16
  %i.na = getelementptr i8, ptr %i.lj, i64 608
  %i.nb = getelementptr i8, ptr %i.lj, i64 624
  store <2 x i64> %wide.load.19, ptr %i.na, align 8
  store <2 x i64> %wide.load29.19, ptr %i.nb, align 8
  %wide.load.20 = load <2 x i64>, ptr %i.gp, align 16
  %wide.load29.20 = load <2 x i64>, ptr %i.gq, align 16
  %i.nc = getelementptr i8, ptr %i.lj, i64 640
  %i.nd = getelementptr i8, ptr %i.lj, i64 656
  store <2 x i64> %wide.load.20, ptr %i.nc, align 8
  store <2 x i64> %wide.load29.20, ptr %i.nd, align 8
  %wide.load.21 = load <2 x i64>, ptr %i.gr, align 16
  %wide.load29.21 = load <2 x i64>, ptr %i.gs, align 16
  %i.ne = getelementptr i8, ptr %i.lj, i64 672
  %i.nf = getelementptr i8, ptr %i.lj, i64 688
  store <2 x i64> %wide.load.21, ptr %i.ne, align 8
  store <2 x i64> %wide.load29.21, ptr %i.nf, align 8
  %wide.load.22 = load <2 x i64>, ptr %i.gt, align 16
  %wide.load29.22 = load <2 x i64>, ptr %i.gu, align 16
  %i.ng = getelementptr i8, ptr %i.lj, i64 704
  %i.nh = getelementptr i8, ptr %i.lj, i64 720
  store <2 x i64> %wide.load.22, ptr %i.ng, align 8
  store <2 x i64> %wide.load29.22, ptr %i.nh, align 8
  %wide.load.23 = load <2 x i64>, ptr %i.gv, align 16
  %wide.load29.23 = load <2 x i64>, ptr %i.gw, align 16
  %i.ni = getelementptr i8, ptr %i.lj, i64 736
  %i.nj = getelementptr i8, ptr %i.lj, i64 752
  store <2 x i64> %wide.load.23, ptr %i.ni, align 8
  store <2 x i64> %wide.load29.23, ptr %i.nj, align 8
  %wide.load.24 = load <2 x i64>, ptr %i.gx, align 16
  %wide.load29.24 = load <2 x i64>, ptr %i.gy, align 16
  %i.nk = getelementptr i8, ptr %i.lj, i64 768
  %i.nl = getelementptr i8, ptr %i.lj, i64 784
  store <2 x i64> %wide.load.24, ptr %i.nk, align 8
  store <2 x i64> %wide.load29.24, ptr %i.nl, align 8
  %wide.load.25 = load <2 x i64>, ptr %i.gz, align 16
  %wide.load29.25 = load <2 x i64>, ptr %i.ha, align 16
  %i.nm = getelementptr i8, ptr %i.lj, i64 800
  %i.nn = getelementptr i8, ptr %i.lj, i64 816
  store <2 x i64> %wide.load.25, ptr %i.nm, align 8
  store <2 x i64> %wide.load29.25, ptr %i.nn, align 8
  %wide.load.26 = load <2 x i64>, ptr %i.hb, align 16
  %wide.load29.26 = load <2 x i64>, ptr %i.hc, align 16
  %i.no = getelementptr i8, ptr %i.lj, i64 832
  %i.np = getelementptr i8, ptr %i.lj, i64 848
  store <2 x i64> %wide.load.26, ptr %i.no, align 8
  store <2 x i64> %wide.load29.26, ptr %i.np, align 8
  %wide.load.27 = load <2 x i64>, ptr %i.hd, align 16
  %wide.load29.27 = load <2 x i64>, ptr %i.he, align 16
  %i.nq = getelementptr i8, ptr %i.lj, i64 864
  %i.nr = getelementptr i8, ptr %i.lj, i64 880
  store <2 x i64> %wide.load.27, ptr %i.nq, align 8
  store <2 x i64> %wide.load29.27, ptr %i.nr, align 8
  %wide.load.28 = load <2 x i64>, ptr %i.hf, align 16
  %wide.load29.28 = load <2 x i64>, ptr %i.hg, align 16
  %i.ns = getelementptr i8, ptr %i.lj, i64 896
  %i.nt = getelementptr i8, ptr %i.lj, i64 912
  store <2 x i64> %wide.load.28, ptr %i.ns, align 8
  store <2 x i64> %wide.load29.28, ptr %i.nt, align 8
  %wide.load.29 = load <2 x i64>, ptr %i.hh, align 16
  %wide.load29.29 = load <2 x i64>, ptr %i.hi, align 16
  %i.nu = getelementptr i8, ptr %i.lj, i64 928
  %i.nv = getelementptr i8, ptr %i.lj, i64 944
  store <2 x i64> %wide.load.29, ptr %i.nu, align 8
  store <2 x i64> %wide.load29.29, ptr %i.nv, align 8
  %wide.load.30 = load <2 x i64>, ptr %i.hj, align 16
  %wide.load29.30 = load <2 x i64>, ptr %i.hk, align 16
  %i.nw = getelementptr i8, ptr %i.lj, i64 960
  %i.nx = getelementptr i8, ptr %i.lj, i64 976
  store <2 x i64> %wide.load.30, ptr %i.nw, align 8
  store <2 x i64> %wide.load29.30, ptr %i.nx, align 8
  %wide.load.31 = load <2 x i64>, ptr %i.hl, align 16
  %wide.load29.31 = load <2 x i64>, ptr %i.hm, align 16
  %i.ny = getelementptr i8, ptr %i.lj, i64 992
  %i.nz = getelementptr i8, ptr %i.lj, i64 1008
  store <2 x i64> %wide.load.31, ptr %i.ny, align 8
  store <2 x i64> %wide.load29.31, ptr %i.nz, align 8
  br label %load_block.exit17.i

scalar.ph:                                        ; preds = %load_block.exit.i, %scalar.ph
  %indvars.iv.i14.i = phi i64 [ %indvars.iv.next.i15.i.3, %scalar.ph ], [ 0, %load_block.exit.i ] ; 6 uses
  %i.oa = shl nuw nsw i64 %indvars.iv.i14.i, 3
  %i.ob = getelementptr i8, ptr %i.a, i64 %i.oa
  %i.oc = load i64, ptr %i.ob, align 16
  %i.od = getelementptr [8 x i8], ptr %i.lj, i64 %indvars.iv.i14.i
  store i64 %i.oc, ptr %i.od, align 8
  %indvars.iv.next.i15.i = or disjoint i64 %indvars.iv.i14.i, 1 ; 2 uses
  %i.oe = shl nuw nsw i64 %indvars.iv.next.i15.i, 3
  %i.of = getelementptr i8, ptr %i.a, i64 %i.oe
  %i.og = load i64, ptr %i.of, align 8
  %i.oh = getelementptr [8 x i8], ptr %i.lj, i64 %indvars.iv.next.i15.i
  store i64 %i.og, ptr %i.oh, align 8
  %indvars.iv.next.i15.i.1 = or disjoint i64 %indvars.iv.i14.i, 2 ; 2 uses
  %i.oi = shl nuw nsw i64 %indvars.iv.next.i15.i.1, 3
  %i.oj = getelementptr i8, ptr %i.a, i64 %i.oi
  %i.ok = load i64, ptr %i.oj, align 16
  %i.ol = getelementptr [8 x i8], ptr %i.lj, i64 %indvars.iv.next.i15.i.1
  store i64 %i.ok, ptr %i.ol, align 8
  %indvars.iv.next.i15.i.2 = or disjoint i64 %indvars.iv.i14.i, 3 ; 2 uses
  %i.om = shl nuw nsw i64 %indvars.iv.next.i15.i.2, 3
  %i.on = getelementptr i8, ptr %i.a, i64 %i.om
  %i.oo = load i64, ptr %i.on, align 8
  %i.op = getelementptr [8 x i8], ptr %i.lj, i64 %indvars.iv.next.i15.i.2
  store i64 %i.oo, ptr %i.op, align 8
  %indvars.iv.next.i15.i.3 = add nuw nsw i64 %indvars.iv.i14.i, 4 ; 2 uses
  %exitcond.not.i16.i.3 = icmp eq i64 %indvars.iv.next.i15.i.3, 128
  br i1 %exitcond.not.i16.i.3, label %load_block.exit17.i, label %scalar.ph, !llvm.loop !23

load_block.exit17.i:                              ; preds = %scalar.ph, %vector.body
  %i.oq = add nuw i32 %.018.i, 1                  ; 2 uses
  %i.or = load i32, ptr %i.cn, align 4
  %i.os = icmp ult i32 %i.oq, %i.or
  br i1 %i.os, label %vector.memcheck30, label %argon2_fill_first_blocks.exit, !llvm.loop !24

argon2_fill_first_blocks.exit:                    ; preds = %load_block.exit17.i, %argon2_initial_hash.exit
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 1024) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @sodium_memzero(ptr noundef nonnull %i.d, i64 noundef 72) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.a, %argon2_fill_first_blocks.exit, %bb.g
  %.0 = phi i32 [ 0, %argon2_fill_first_blocks.exit ], [ -25, %bb.a ], [ -22, %bb.g ], [ -22, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define hidden noundef i32 @_crypto_pwhash_argon2_pick_best_implementation() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @sodium_runtime_has_avx512f() #9
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %argon2_pick_best_implementation.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @sodium_runtime_has_avx2() #9
  %.not1.i = icmp eq i32 %i.b, 0
  br i1 %.not1.i, label %bb.c, label %argon2_pick_best_implementation.exit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @sodium_runtime_has_ssse3() #9
  %.not2.i = icmp eq i32 %i.c, 0
  %argon2_fill_segment_ref.argon2_fill_segment_ssse3.i = select i1 %.not2.i, ptr @argon2_fill_segment_ref, ptr @argon2_fill_segment_ssse3
  br label %argon2_pick_best_implementation.exit

argon2_pick_best_implementation.exit:             ; preds = %bb.a, %bb.b, %bb.c
  %argon2_fill_segment_ref.sink.i = phi ptr [ @argon2_fill_segment_avx2, %bb.b ], [ %argon2_fill_segment_ref.argon2_fill_segment_ssse3.i, %bb.c ], [ @argon2_fill_segment_avx512f, %bb.a ]
  store ptr %argon2_fill_segment_ref.sink.i, ptr @fill_segment, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @argon2_fill_segment_ref(ptr noundef, i64, i64) #2

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

declare i32 @crypto_generichash_blake2b_init(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @crypto_generichash_blake2b_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @crypto_generichash_blake2b_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare extern_weak i32 @sodium_runtime_has_avx512f() local_unnamed_addr #2

declare void @argon2_fill_segment_avx512f(ptr noundef, i64, i64) #2

declare extern_weak i32 @sodium_runtime_has_avx2() local_unnamed_addr #2

declare void @argon2_fill_segment_avx2(ptr noundef, i64, i64) #2

declare extern_weak i32 @sodium_runtime_has_ssse3() local_unnamed_addr #2

declare void @argon2_fill_segment_ssse3(ptr noundef, i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind ssp willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!"llvm.loop.isvectorized", i32 1}
!6 = distinct !{!6, !"LVerDomain"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !4, !5, !18}
!10 = distinct !{!10, !4, !5}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !"memcpy.inline"}
!13 = distinct !{!13, !12, !"memcpy.inline: argument 1"}
!14 = distinct !{!14, !12, !"memcpy.inline: argument 0"}
!15 = distinct !{!15, !4}
!16 = !{!7}
!17 = !{!8}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!14, !13}
!20 = distinct !{!20, !4}
!21 = !{ptr @argon2_fill_segment_avx2, ptr @argon2_fill_segment_avx512f, ptr @argon2_fill_segment_ref, ptr @argon2_fill_segment_ssse3}
!22 = distinct !{!22, !4, !5}
!23 = distinct !{!23, !4, !5}
!24 = distinct !{!24, !4}
end_hunk_1
