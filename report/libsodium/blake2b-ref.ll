Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/blake2b-ref?download=true
inline.NumInlined: 34
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.blake2b_state = type <{ [8 x i64], [2 x i64], [2 x i64], [256 x i8], i64, i8 }>

@blake2b_compress = internal unnamed_addr global ptr @blake2b_compress_ref, align 8
@.str = private unnamed_addr constant [32 x i8] c"S->buflen <= BLAKE2B_BLOCKBYTES\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"crypto_generichash/blake2b/ref/blake2b-ref.c\00", align 1
@__PRETTY_FUNCTION__.blake2b_final = private unnamed_addr constant [55 x i8] c"int blake2b_final(blake2b_state *, uint8_t *, uint8_t)\00", align 1
@blake2b_IV = internal unnamed_addr constant [8 x i64] [i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935, i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809], align 16

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable
define hidden noundef i32 @blake2b_init_param(ptr noundef initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) @blake2b_IV, i64 64, i1 false)
  %i.a = getelementptr i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(297) %i.a, i8 noundef 0, i64 noundef 297, i1 noundef false) #8
  %i.b = load i64, ptr %1, align 1
  %i.c = xor i64 %i.b, 7640891576956012808
  store i64 %i.c, ptr %0, align 1
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 1
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = xor i64 %i.e, -4942790177534073029
  store i64 %i.g, ptr %i.f, align 1
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 1
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = xor i64 %i.i, 4354685564936845355
  store i64 %i.k, ptr %i.j, align 1
  %i.l = getelementptr i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 1
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = xor i64 %i.m, -6534734903238641935
  store i64 %i.o, ptr %i.n, align 1
  %i.p = getelementptr i8, ptr %1, i64 32
  %i.q = load i64, ptr %i.p, align 1
  %i.r = getelementptr i8, ptr %0, i64 32
  %i.s = xor i64 %i.q, 5840696475078001361
  store i64 %i.s, ptr %i.r, align 1
  %i.t = getelementptr i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 1
  %i.v = getelementptr i8, ptr %0, i64 40
  %i.w = xor i64 %i.u, -7276294671716946913
  store i64 %i.w, ptr %i.v, align 1
  %i.x = getelementptr i8, ptr %1, i64 48
  %i.y = load i64, ptr %i.x, align 1
  %i.z = getelementptr i8, ptr %0, i64 48
  %i.aa = xor i64 %i.y, 2270897969802886507
  store i64 %i.aa, ptr %i.z, align 1
  %i.ab = getelementptr i8, ptr %1, i64 56
  %i.ac = load i64, ptr %i.ab, align 1
  %i.ad = getelementptr i8, ptr %0, i64 56
  %i.ae = xor i64 %i.ac, 6620516959819538809
  store i64 %i.ae, ptr %i.ad, align 1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind ssp uwtable
define hidden noundef i32 @blake2b_init(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = add i8 %1, -65
  %or.cond = icmp ult i8 %i.a, -64
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @sodium_misuse() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.insert.ext = zext nneg i8 %1 to i64
  %i.b = getelementptr i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(297) %i.b, i8 noundef 0, i64 noundef 297, i1 noundef false) #8
  %i.c = xor i64 %.sroa.0.0.insert.ext, 7640891576939301128
  store i64 %i.c, ptr %0, align 1
  %i.d = getelementptr i8, ptr %0, i64 8
  store i64 -4942790177534073029, ptr %i.d, align 1
  %i.e = getelementptr i8, ptr %0, i64 16
  store i64 4354685564936845355, ptr %i.e, align 1
  %i.f = getelementptr i8, ptr %0, i64 24
  store i64 -6534734903238641935, ptr %i.f, align 1
  %i.g = getelementptr i8, ptr %0, i64 32
  store i64 5840696475078001361, ptr %i.g, align 1
  %i.h = getelementptr i8, ptr %0, i64 40
  store i64 -7276294671716946913, ptr %i.h, align 1
  %i.i = getelementptr i8, ptr %0, i64 48
  store i64 2270897969802886507, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %0, i64 56
  store i64 6620516959819538809, ptr %i.j, align 1
  ret i32 0
}

; Function Attrs: noreturn
declare void @sodium_misuse() local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define hidden noundef i32 @blake2b_init_salt_personal(ptr noundef %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = add i8 %1, -65
  %or.cond = icmp ult i8 %i.a, -64
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @sodium_misuse() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load <2 x i64>, ptr %2, align 1
  %i.c = xor <2 x i64> %i.b, <i64 5840696475078001361, i64 -7276294671716946913>
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.d = phi <2 x i64> [ %i.c, %bb.d ], [ <i64 5840696475078001361, i64 -7276294671716946913>, %bb.c ]
  %.not11 = icmp eq ptr %3, null
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = load <2 x i64>, ptr %3, align 1
  %i.f = xor <2 x i64> %i.e, <i64 2270897969802886507, i64 6620516959819538809>
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.g = phi <2 x i64> [ %i.f, %bb.f ], [ <i64 2270897969802886507, i64 6620516959819538809>, %bb.e ]
  %.sroa.0.0.insert.ext = zext nneg i8 %1 to i64
  %i.h = getelementptr i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(297) %i.h, i8 noundef 0, i64 noundef 297, i1 noundef false) #8
  %i.i = xor i64 %.sroa.0.0.insert.ext, 7640891576939301128
  store i64 %i.i, ptr %0, align 1
  %i.j = getelementptr i8, ptr %0, i64 8
  store i64 -4942790177534073029, ptr %i.j, align 1
  %i.k = getelementptr i8, ptr %0, i64 16
  store i64 4354685564936845355, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %0, i64 24
  store i64 -6534734903238641935, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %0, i64 32
  store <2 x i64> %i.d, ptr %i.m, align 1
  %i.n = getelementptr i8, ptr %0, i64 48
  store <2 x i64> %i.g, ptr %i.n, align 1
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define hidden noundef i32 @blake2b_init_key(ptr noundef %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(address_is_null) %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = add i8 %1, -65
  %or.cond = icmp ult i8 %i.b, -64
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @sodium_misuse() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  %i.d = add i8 %3, -65
  %i.e = icmp ult i8 %i.d, -64
  %or.cond7 = or i1 %i.c, %i.e
  br i1 %or.cond7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @sodium_misuse() #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.insert.ext = zext nneg i8 %1 to i64
  %.sroa.0.1.insert.ext = zext nneg i8 %3 to i64  ; 2 uses
  %.sroa.0.1.insert.shift = shl nuw nsw i64 %.sroa.0.1.insert.ext, 8
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.1.insert.shift, %.sroa.0.0.insert.ext
  %i.f = getelementptr i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(297) %i.f, i8 noundef 0, i64 noundef 297, i1 noundef false) #8
  %i.g = xor i64 %.sroa.0.1.insert.insert, 7640891576939301128
  store i64 %i.g, ptr %0, align 1
  %i.h = getelementptr i8, ptr %0, i64 8
  store i64 -4942790177534073029, ptr %i.h, align 1
  %i.i = getelementptr i8, ptr %0, i64 16
  store i64 4354685564936845355, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %0, i64 24
  store i64 -6534734903238641935, ptr %i.j, align 1
  %i.k = getelementptr i8, ptr %0, i64 32
  store i64 5840696475078001361, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %0, i64 40
  store i64 -7276294671716946913, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %0, i64 48
  store i64 2270897969802886507, ptr %i.m, align 1
  %i.n = getelementptr i8, ptr %0, i64 56
  store i64 6620516959819538809, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 noundef 0, i64 noundef 128, i1 noundef false) #8
  %i.o = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull %2, i64 noundef %.sroa.0.1.insert.ext, i64 noundef 128) #8, !alias.scope !8 ; 0 uses
  %i.p = call i32 @blake2b_update(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 128) ; 0 uses
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 128) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define hidden noundef i32 @blake2b_update(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not33 = icmp eq i64 %2, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 352        ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 224
  %.pre = load i64, ptr %i.a, align 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.f = phi i64 [ %.pre, %.lr.ph ], [ %i.aa, %bb.c ] ; 2 uses
  %.035 = phi i64 [ %2, %.lr.ph ], [ %i.ab, %bb.c ] ; 4 uses
  %.03034 = phi ptr [ %1, %.lr.ph ], [ %.131, %bb.c ] ; 3 uses
  %i.g = sub i64 256, %i.f                        ; 5 uses
  %i.h = icmp ugt i64 %.035, %i.g
  %i.i = getelementptr i8, ptr %i.b, i64 %i.f     ; 2 uses
  br i1 %i.h, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.i, ptr noundef nonnull align 1 %.03034, i64 noundef %.035, i1 noundef false) #8
  %i.j = load i64, ptr %i.a, align 1
  %i.k = add i64 %i.j, %.035
  store i64 %i.k, ptr %i.a, align 1
  br label %._crit_edge

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.i, ptr noundef nonnull align 1 %.03034, i64 noundef %i.g, i1 noundef false) #8
  %i.l = load i64, ptr %i.a, align 1
  %i.m = add i64 %i.l, %i.g
  store i64 %i.m, ptr %i.a, align 1
  %i.n = load i64, ptr %i.d, align 1
  %i.o = zext i64 %i.n to i128
  %i.p = shl nuw i128 %i.o, 64
  %i.q = load i64, ptr %i.c, align 1
  %i.r = zext i64 %i.q to i128
  %i.s = or disjoint i128 %i.p, %i.r
  %i.t = add i128 %i.s, 128                       ; 2 uses
  %i.u = trunc i128 %i.t to i64
  store i64 %i.u, ptr %i.c, align 1
  %i.v = lshr i128 %i.t, 64
  %i.w = trunc nuw i128 %i.v to i64
  store i64 %i.w, ptr %i.d, align 1
  %i.x = load ptr, ptr @blake2b_compress, align 8
  %i.y = tail call i32 %i.x(ptr noundef nonnull %0, ptr noundef %i.b) #8, !callees !4 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.b, ptr noundef nonnull align 1 dereferenceable(128) %i.e, i64 noundef 128, i1 noundef false) #8
  %i.z = load i64, ptr %i.a, align 1
  %i.aa = add i64 %i.z, -128                      ; 2 uses
  %i.ab = sub nuw i64 %.035, %i.g                 ; 2 uses
  store i64 %i.aa, ptr %i.a, align 1
  %.131 = getelementptr i8, ptr %.03034, i64 %i.g
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.c, %.thread, %bb.a
  ret i32 0
}

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define hidden noundef i32 @blake2b_init_key_salt_personal(ptr noundef %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(address_is_null) %2, i8 noundef zeroext %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = add i8 %1, -65
  %or.cond = icmp ult i8 %i.b, -64
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @sodium_misuse() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  %i.d = add i8 %3, -65
  %i.e = icmp ult i8 %i.d, -64
  %or.cond7 = or i1 %i.c, %i.e
  br i1 %or.cond7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @sodium_misuse() #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load <2 x i64>, ptr %4, align 1
  %i.g = xor <2 x i64> %i.f, <i64 5840696475078001361, i64 -7276294671716946913>
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.h = phi <2 x i64> [ %i.g, %bb.f ], [ <i64 5840696475078001361, i64 -7276294671716946913>, %bb.e ]
  %.not25 = icmp eq ptr %5, null
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = load <2 x i64>, ptr %5, align 1
  %i.j = xor <2 x i64> %i.i, <i64 2270897969802886507, i64 6620516959819538809>
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.k = phi <2 x i64> [ %i.j, %bb.h ], [ <i64 2270897969802886507, i64 6620516959819538809>, %bb.g ]
  %.sroa.0.1.insert.ext = zext nneg i8 %3 to i64  ; 2 uses
  %.sroa.0.1.insert.shift = shl nuw nsw i64 %.sroa.0.1.insert.ext, 8
  %.sroa.0.0.insert.ext = zext nneg i8 %1 to i64
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.1.insert.shift, %.sroa.0.0.insert.ext
  %i.l = getelementptr i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(297) %i.l, i8 noundef 0, i64 noundef 297, i1 noundef false) #8
  %i.m = xor i64 %.sroa.0.1.insert.insert, 7640891576939301128
  store i64 %i.m, ptr %0, align 1
  %i.n = getelementptr i8, ptr %0, i64 8
  store i64 -4942790177534073029, ptr %i.n, align 1
  %i.o = getelementptr i8, ptr %0, i64 16
  store i64 4354685564936845355, ptr %i.o, align 1
  %i.p = getelementptr i8, ptr %0, i64 24
  store i64 -6534734903238641935, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %0, i64 32
  store <2 x i64> %i.h, ptr %i.q, align 1
  %i.r = getelementptr i8, ptr %0, i64 48
  store <2 x i64> %i.k, ptr %i.r, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 noundef 0, i64 noundef 128, i1 noundef false) #8
  %i.s = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull %2, i64 noundef %.sroa.0.1.insert.ext, i64 noundef 128) #8, !alias.scope !14 ; 0 uses
  %i.t = call i32 @blake2b_update(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 128) ; 0 uses
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 128) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define hidden range(i32 -1, 1) i32 @blake2b_final(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = add i8 %2, -65
  %or.cond = icmp ult i8 %i.b, -64
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @sodium_misuse() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %.val = load i64, ptr %i.c, align 1
  %.not36 = icmp eq i64 %.val, 0
  br i1 %.not36, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 352        ; 4 uses
  %i.e = load i64, ptr %i.d, align 1              ; 2 uses
  %i.f = icmp ugt i64 %i.e, 128
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.i = load i64, ptr %i.h, align 1
  %i.j = zext i64 %i.i to i128
  %i.k = shl nuw i128 %i.j, 64
  %i.l = load i64, ptr %i.g, align 1
  %i.m = zext i64 %i.l to i128
  %i.n = or disjoint i128 %i.k, %i.m
  %i.o = add i128 %i.n, 128                       ; 2 uses
  %i.p = trunc i128 %i.o to i64
  store i64 %i.p, ptr %i.g, align 1
  %i.q = lshr i128 %i.o, 64
  %i.r = trunc nuw i128 %i.q to i64
  store i64 %i.r, ptr %i.h, align 1
  %i.s = load ptr, ptr @blake2b_compress, align 8
  %i.t = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.u = tail call i32 %i.s(ptr noundef nonnull %0, ptr noundef %i.t) #8, !callees !4 ; 0 uses
  %i.v = load i64, ptr %i.d, align 1
  %i.w = add i64 %i.v, -128                       ; 3 uses
  store i64 %i.w, ptr %i.d, align 1
  %i.x = icmp ult i64 %i.w, 129
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 306, ptr noundef nonnull @__PRETTY_FUNCTION__.blake2b_final) #9
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %0, i64 224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.t, ptr noundef nonnull align 1 %i.y, i64 noundef %i.w, i1 noundef false) #8
  %.pre = load i64, ptr %i.d, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.z = phi i64 [ %.pre, %bb.g ], [ %i.e, %bb.d ] ; 3 uses
  %i.aa = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 1
  %i.ad = zext i64 %i.ac to i128
  %i.ae = shl nuw i128 %i.ad, 64
  %i.af = load i64, ptr %i.aa, align 1
  %i.ag = zext i64 %i.af to i128
  %i.ah = or disjoint i128 %i.ae, %i.ag
  %i.ai = zext i64 %i.z to i128
  %i.aj = add i128 %i.ah, %i.ai                   ; 2 uses
  %i.ak = trunc i128 %i.aj to i64
  store i64 %i.ak, ptr %i.aa, align 1
  %i.al = lshr i128 %i.aj, 64
  %i.am = trunc nuw i128 %i.al to i64
  store i64 %i.am, ptr %i.ab, align 1
  %i.an = getelementptr i8, ptr %0, i64 360
  %i.ao = load i8, ptr %i.an, align 1
  %.not.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i, label %blake2b_set_lastblock.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr i8, ptr %0, i64 88
  store i64 -1, ptr %i.ap, align 1
  br label %blake2b_set_lastblock.exit

blake2b_set_lastblock.exit:                       ; preds = %bb.h, %bb.i
  store i64 -1, ptr %i.c, align 1
  %i.aq = getelementptr i8, ptr %0, i64 96        ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.z
  %i.as = sub i64 256, %i.z
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ar, i8 noundef 0, i64 noundef %i.as, i1 noundef false) #8
  %i.at = load ptr, ptr @blake2b_compress, align 8
  %i.au = tail call i32 %i.at(ptr noundef nonnull %0, ptr noundef %i.aq) #8, !callees !4 ; 0 uses
  %i.av = load <2 x i64>, ptr %0, align 1
  store <2 x i64> %i.av, ptr %i.a, align 16
  %i.aw = getelementptr i8, ptr %0, i64 16
  %i.ax = load <2 x i64>, ptr %i.aw, align 1
  %.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x i64> %i.ax, ptr %.16..sroa_idx, align 16
  %i.ay = getelementptr i8, ptr %0, i64 32
  %i.az = load <2 x i64>, ptr %i.ay, align 1
  %.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x i64> %i.az, ptr %.32..sroa_idx, align 16
  %i.ba = getelementptr i8, ptr %0, i64 48
  %i.bb = load <2 x i64>, ptr %i.ba, align 1
  %.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <2 x i64> %i.bb, ptr %.48..sroa_idx, align 16
  %i.bc = zext nneg i8 %2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 16 %i.a, i64 noundef %i.bc, i1 noundef false) #8
  tail call void @sodium_memzero(ptr noundef nonnull %0, i64 noundef 64) #8
  tail call void @sodium_memzero(ptr noundef %i.aq, i64 noundef 256) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %blake2b_set_lastblock.exit
  %.0 = phi i32 [ 0, %blake2b_set_lastblock.exit ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define hidden noundef i32 @blake2b(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i8 noundef zeroext %3, i64 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca [1 x %struct.blake2b_state], align 64 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @sodium_misuse() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @sodium_misuse() #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = add i8 %3, -65
  %or.cond4 = icmp ult i8 %i.d, -64
  br i1 %or.cond4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @sodium_misuse() #9
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.e = icmp eq ptr %2, null
  %i.f = icmp ne i8 %5, 0                         ; 2 uses
  %or.cond7 = and i1 %i.e, %i.f
  br i1 %or.cond7, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @sodium_misuse() #9
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.g = icmp ugt i8 %5, 64
  br i1 %i.g, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @sodium_misuse() #9
  unreachable

bb.k:                                             ; preds = %bb.i
  br i1 %i.f, label %bb.l, label %blake2b_init.exit

bb.l:                                             ; preds = %bb.k
  %i.h = call i32 @blake2b_init_key(ptr noundef nonnull %6, i8 noundef zeroext %3, ptr noundef %2, i8 noundef zeroext %5) ; 0 uses
  br label %bb.m

blake2b_init.exit:                                ; preds = %bb.k
  %.sroa.0.0.insert.ext.i = zext nneg i8 %3 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(297) %i.i, i8 noundef 0, i64 noundef 297, i1 noundef false) #8
  %i.j = xor i64 %.sroa.0.0.insert.ext.i, 7640891576939301128
  store i64 %i.j, ptr %6, align 64
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 -4942790177534073029, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 4354685564936845355, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 -6534734903238641935, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 5840696475078001361, ptr %i.n, align 32
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 -7276294671716946913, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 2270897969802886507, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 6620516959819538809, ptr %i.q, align 8
  br label %bb.m

bb.m:                                             ; preds = %blake2b_init.exit, %bb.l
  %i.r = call i32 @blake2b_update(ptr noundef nonnull %6, ptr noundef %1, i64 noundef %4) ; 0 uses
  %i.s = call i32 @blake2b_final(ptr noundef nonnull %6, ptr noundef nonnull %0, i8 noundef zeroext %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define hidden noundef i32 @blake2b_salt_personal(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i8 noundef zeroext %3, i64 noundef %4, i8 noundef zeroext %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(address_is_null) %7) local_unnamed_addr #2 {
bb.a:
  %8 = alloca [1 x %struct.blake2b_state], align 64 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @sodium_misuse() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @sodium_misuse() #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = add i8 %3, -65
  %or.cond4 = icmp ult i8 %i.d, -64
  br i1 %or.cond4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @sodium_misuse() #9
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.e = icmp eq ptr %2, null
  %i.f = icmp ne i8 %5, 0                         ; 2 uses
  %or.cond7 = and i1 %i.e, %i.f
  br i1 %or.cond7, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @sodium_misuse() #9
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.g = icmp ugt i8 %5, 64
  br i1 %i.g, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @sodium_misuse() #9
  unreachable

bb.k:                                             ; preds = %bb.i
  br i1 %i.f, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.h = call i32 @blake2b_init_key_salt_personal(ptr noundef nonnull %8, i8 noundef zeroext %3, ptr noundef %2, i8 noundef zeroext %5, ptr noundef %6, ptr noundef %7) ; 0 uses
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.i = load <2 x i64>, ptr %6, align 1
  %i.j = xor <2 x i64> %i.i, <i64 5840696475078001361, i64 -7276294671716946913>
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.k = phi <2 x i64> [ %i.j, %bb.n ], [ <i64 5840696475078001361, i64 -7276294671716946913>, %bb.m ]
  %.not11.i = icmp eq ptr %7, null
  br i1 %.not11.i, label %blake2b_init_salt_personal.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.l = load <2 x i64>, ptr %7, align 1
  %i.m = xor <2 x i64> %i.l, <i64 2270897969802886507, i64 6620516959819538809>
  br label %blake2b_init_salt_personal.exit

blake2b_init_salt_personal.exit:                  ; preds = %bb.o, %bb.p
  %i.n = phi <2 x i64> [ %i.m, %bb.p ], [ <i64 2270897969802886507, i64 6620516959819538809>, %bb.o ]
  %.sroa.0.0.insert.ext.i = zext nneg i8 %3 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(297) %i.o, i8 noundef 0, i64 noundef 297, i1 noundef false) #8
  %i.p = xor i64 %.sroa.0.0.insert.ext.i, 7640891576939301128
  store i64 %i.p, ptr %8, align 64
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 -4942790177534073029, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 4354685564936845355, ptr %i.r, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 -6534734903238641935, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <2 x i64> %i.k, ptr %i.t, align 32
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <2 x i64> %i.n, ptr %i.u, align 16
  br label %bb.q

bb.q:                                             ; preds = %blake2b_init_salt_personal.exit, %bb.l
  %i.v = call i32 @blake2b_update(ptr noundef nonnull %8, ptr noundef %1, i64 noundef %4) ; 0 uses
  %i.w = call i32 @blake2b_final(ptr noundef nonnull %8, ptr noundef nonnull %0, i8 noundef zeroext %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define hidden noundef i32 @blake2b_pick_best_implementation() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @sodium_runtime_has_avx2() #8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @sodium_runtime_has_sse41() #8
  %.not1 = icmp eq i32 %i.b, 0
  br i1 %.not1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @sodium_runtime_has_ssse3() #8
  %.not2 = icmp eq i32 %i.c, 0
  %blake2b_compress_ref.blake2b_compress_ssse3 = select i1 %.not2, ptr @blake2b_compress_ref, ptr @blake2b_compress_ssse3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %blake2b_compress_ref.sink = phi ptr [ @blake2b_compress_sse41, %bb.b ], [ %blake2b_compress_ref.blake2b_compress_ssse3, %bb.c ], [ @blake2b_compress_avx2, %bb.a ]
  store ptr %blake2b_compress_ref.sink, ptr @blake2b_compress, align 8
  ret i32 0
}

declare extern_weak i32 @sodium_runtime_has_avx2() local_unnamed_addr #4

declare i32 @blake2b_compress_avx2(ptr noundef, ptr noundef) #4

declare extern_weak i32 @sodium_runtime_has_sse41() local_unnamed_addr #4

declare i32 @blake2b_compress_sse41(ptr noundef, ptr noundef) #4

declare extern_weak i32 @sodium_runtime_has_ssse3() local_unnamed_addr #4

declare i32 @blake2b_compress_ssse3(ptr noundef, ptr noundef) #4

declare i32 @blake2b_compress_ref(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{ptr @blake2b_compress_avx2, ptr @blake2b_compress_ref, ptr @blake2b_compress_sse41, ptr @blake2b_compress_ssse3}
!5 = distinct !{!5, i1 false, !"memcpy.inline"}
!6 = distinct !{!6, !5, !"memcpy.inline: argument 1"}
!7 = distinct !{!7, !5, !"memcpy.inline: argument 0"}
!8 = !{!7, !6}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, i1 false, !"memcpy.inline"}
!12 = distinct !{!12, !11, !"memcpy.inline: argument 1"}
!13 = distinct !{!13, !11, !"memcpy.inline: argument 0"}
!14 = !{!13, !12}
end_hunk_0
