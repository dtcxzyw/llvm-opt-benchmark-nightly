Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/a_object?download=true
inline.NumInlined: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.asn1_object_st = type { ptr, ptr, i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/a_object.c\00", align 1
@__func__.a2d_ASN1_OBJECT = private unnamed_addr constant [16 x i8] c"a2d_ASN1_OBJECT\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@__func__.i2a_ASN1_OBJECT = private unnamed_addr constant [16 x i8] c"i2a_ASN1_OBJECT\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"<INVALID>\00", align 1
@__func__.d2i_ASN1_OBJECT = private unnamed_addr constant [16 x i8] c"d2i_ASN1_OBJECT\00", align 1
@__func__.ossl_c2i_ASN1_OBJECT = private unnamed_addr constant [21 x i8] c"ossl_c2i_ASN1_OBJECT\00", align 1

; Function Attrs: nounwind uwtable
define i32 @i2d_ASN1_OBJECT(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = tail call i32 @ASN1_object_size(i32 noundef 0, i32 noundef %i.g, i32 noundef 6) #6 ; 4 uses
  %i.i = icmp eq ptr %1, null
  %i.j = icmp eq i32 %i.h, -1
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = sext i32 %i.h to i64
  %i.n = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.m, ptr noundef nonnull @.str, i32 noundef 34) #6 ; 3 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !13
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.j, label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.k, ptr %i.a, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi ptr [ %i.n, %bb.e ], [ null, %bb.f ]  ; 2 uses
  %i.p = load i32, ptr %i.f, align 4, !tbaa !12
  call void @ASN1_put_object(ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.p, i32 noundef 6, i32 noundef 0) #6
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.s = load i32, ptr %i.f, align 4, !tbaa !12
  %i.t = sext i32 %i.s to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.t, i1 false)
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.v = load i32, ptr %i.f, align 4, !tbaa !12
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.y = phi ptr [ %i.x, %bb.h ], [ %.0, %bb.g ]
  store ptr %i.y, ptr %1, align 8, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.c, %bb.a, %bb.b, %bb.i
  %.018 = phi i32 [ %i.h, %bb.i ], [ 0, %bb.a ], [ %i.h, %bb.c ], [ 0, %bb.b ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.018
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ASN1_object_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_put_object(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @a2d_ASN1_OBJECT(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  switch i32 %3, label %bb.d [
    i32 0, label %bb.ad
    i32 -1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #7 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2147483646
  br i1 %i.c, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.d = trunc nuw nsw i64 %i.b to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 67, ptr noundef nonnull @__func__.a2d_ASN1_OBJECT) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 231, ptr noundef null) #6
  br label %.sink.split

bb.d:                                             ; preds = %.thread, %bb.a
  %.1134 = phi i32 [ %i.d, %.thread ], [ %3, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.f = load i8, ptr %2, align 1, !tbaa !14      ; 3 uses
  %i.g = add i8 %i.f, -48
  %or.cond = icmp ult i8 %i.g, 3
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = zext nneg i8 %i.f to i64
  %i.i = icmp slt i32 %.1134, 2
  br i1 %i.i, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 79, ptr noundef nonnull @__func__.a2d_ASN1_OBJECT) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 122, ptr noundef null) #6
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 84, ptr noundef nonnull @__func__.a2d_ASN1_OBJECT) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 138, ptr noundef null) #6
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  %i.j = icmp eq i32 %.1134, 2
  br i1 %i.j, label %.sink.split, label %.lr.ph280

.lr.ph280:                                        ; preds = %bb.h
  %i.k = add nsw i32 %.1134, -2
  %i.l = load i8, ptr %i.e, align 1, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.n = icmp samesign ult i8 %i.f, 50
  %i.o = mul nuw nsw i64 %i.h, 40
  %i.p = add nuw nsw i64 %i.o, 4294965376
  %4 = and i64 %i.p, 4294967288                   ; 2 uses
  %.not160 = icmp eq ptr %0, null
  %i.q = getelementptr i8, ptr %0, i64 -1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph280, %bb.ab
  %.0101278 = phi ptr [ null, %.lr.ph280 ], [ %.1102.lcssa.ph, %bb.ab ] ; 2 uses
  %.0108277 = phi ptr [ %i.m, %.lr.ph280 ], [ %i.s, %bb.ab ]
  %.0111276 = phi i32 [ 24, %.lr.ph280 ], [ %.3114, %bb.ab ] ; 3 uses
  %.0115275 = phi ptr [ %i.a, %.lr.ph280 ], [ %.3118, %bb.ab ] ; 13 uses
  %.0120274 = phi i8 [ %i.l, %.lr.ph280 ], [ %i.t, %bb.ab ]
  %.0125273 = phi i32 [ 0, %.lr.ph280 ], [ %.2127, %bb.ab ] ; 4 uses
  %.2135272 = phi i32 [ %i.k, %.lr.ph280 ], [ %.4137.ph, %bb.ab ]
  switch i8 %.0120274, label %.thread183.sink.split [
    i8 46, label %.lr.ph.preheader
    i8 32, label %.lr.ph.preheader
  ]

.lr.ph.preheader:                                 ; preds = %bb.i, %bb.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %.1102242 = phi ptr [ %.3176, %bb.q ], [ %.0101278, %.lr.ph.preheader ] ; 7 uses
  %.0104241 = phi i64 [ %.1105, %bb.q ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %.1109240 = phi ptr [ %i.s, %bb.q ], [ %.0108277, %.lr.ph.preheader ] ; 2 uses
  %.0123239 = phi i32 [ %.1124173, %bb.q ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.3136238 = phi i32 [ %i.r, %bb.q ], [ %.2135272, %.lr.ph.preheader ] ; 2 uses
  %i.r = add nsw i32 %.3136238, -1                ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.1109240, i64 1 ; 2 uses
  %i.t = load i8, ptr %.1109240, align 1, !tbaa !14 ; 3 uses
  %i.u = sext i8 %i.t to i32                      ; 3 uses
  switch i8 %i.t, label %bb.j [
    i8 46, label %._crit_edge
    i8 32, label %._crit_edge
  ]

bb.j:                                             ; preds = %.lr.ph
  %i.v = call i32 @ossl_isdigit(i32 noundef %i.u) #6
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.thread183.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = icmp eq i32 %.0123239, 0                 ; 2 uses
  %i.x = icmp ugt i64 %.0104241, 1844674407370955152
  %or.cond10 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond10, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.y = icmp eq ptr %.1102242, null
  br i1 %i.y, label %bb.m, label %.thread166

bb.m:                                             ; preds = %bb.l
  %i.z = call ptr @BN_new() #6                    ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.thread183, label %.thread166

.thread166:                                       ; preds = %bb.l, %bb.m
  %.2103168 = phi ptr [ %i.z, %bb.m ], [ %.1102242, %bb.l ] ; 3 uses
  %i.ab = call i32 @BN_set_word(ptr noundef nonnull %.2103168, i64 noundef %.0104241) #6
  %.not150 = icmp eq i32 %i.ab, 0
  br i1 %.not150, label %.thread183, label %.thread169

bb.n:                                             ; preds = %bb.k
  br i1 %i.w, label %bb.p, label %.thread169

.thread169:                                       ; preds = %.thread166, %bb.n
  %.3175 = phi ptr [ %.1102242, %bb.n ], [ %.2103168, %.thread166 ] ; 5 uses
  %i.ac = call i32 @BN_mul_word(ptr noundef %.3175, i64 noundef 10) #6
  %.not152 = icmp eq i32 %i.ac, 0
  br i1 %.not152, label %.thread183, label %bb.o

bb.o:                                             ; preds = %.thread169
  %i.ad = add nsw i32 %i.u, -48
  %i.ae = sext i32 %i.ad to i64
  %i.af = call i32 @BN_add_word(ptr noundef %.3175, i64 noundef %i.ae) #6
  %.not153 = icmp eq i32 %i.af, 0
  br i1 %.not153, label %.thread183, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ag = mul i64 %.0104241, 10
  %i.ah = add nsw i32 %i.u, -48
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add i64 %i.ag, %i.ai
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.3176 = phi ptr [ %.3175, %bb.o ], [ %.1102242, %bb.p ] ; 2 uses
  %.1124173 = phi i32 [ 1, %bb.o ], [ 0, %bb.p ]  ; 2 uses
  %.1105 = phi i64 [ %.0104241, %bb.o ], [ %i.aj, %bb.p ] ; 2 uses
  %i.ak = icmp samesign ult i32 %.3136238, 2
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.q, %.lr.ph, %.lr.ph
  %.0123.lcssa.ph = phi i32 [ %.1124173, %bb.q ], [ %.0123239, %.lr.ph ], [ %.0123239, %.lr.ph ] ; 2 uses
  %.0104.lcssa.ph = phi i64 [ %.1105, %bb.q ], [ %.0104241, %.lr.ph ], [ %.0104241, %.lr.ph ] ; 3 uses
  %.1102.lcssa.ph = phi ptr [ %.3176, %bb.q ], [ %.1102242, %.lr.ph ], [ %.1102242, %.lr.ph ] ; 11 uses
  %.4137.ph = phi i32 [ 0, %bb.q ], [ %i.r, %.lr.ph ], [ %i.r, %.lr.ph ] ; 2 uses
  %i.al = icmp eq i32 %.0125273, 0
  br i1 %i.al, label %bb.r, label %bb.u

bb.r:                                             ; preds = %._crit_edge
  %i.am = icmp ugt i64 %.0104.lcssa.ph, 39
  %or.cond12 = select i1 %i.n, i1 %i.am, i1 false
  br i1 %or.cond12, label %.thread183.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not154 = icmp eq i32 %.0123.lcssa.ph, 0
  br i1 %.not154, label %.thread337, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = call i32 @BN_add_word(ptr noundef %.1102.lcssa.ph, i64 noundef %4) #6
  %.not155 = icmp eq i32 %i.an, 0
  br i1 %.not155, label %.thread183, label %.thread177

.thread337:                                       ; preds = %bb.s
  %i.ao = add i64 %.0104.lcssa.ph, %4
  br label %.preheader199.preheader

bb.u:                                             ; preds = %._crit_edge
  %.not156 = icmp eq i32 %.0123.lcssa.ph, 0
  br i1 %.not156, label %.preheader199.preheader, label %.thread177

.preheader199.preheader:                          ; preds = %.thread337, %bb.u
  %.3107.ph = phi i64 [ %.0104.lcssa.ph, %bb.u ], [ %i.ao, %.thread337 ]
  br label %.preheader199

.thread177:                                       ; preds = %bb.t, %bb.u
  %i.ap = call i32 @BN_num_bits(ptr noundef %.1102.lcssa.ph) #6 ; 2 uses
  %i.aq = add nsw i32 %i.ap, 6
  %i.ar = sdiv i32 %i.aq, 7                       ; 3 uses
  %i.as = icmp sgt i32 %i.ar, %.0111276
  br i1 %i.as, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.thread177
  %.not157 = icmp eq ptr %.0115275, %i.a
  br i1 %.not157, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @CRYPTO_free(ptr noundef %.0115275, ptr noundef nonnull @.str, i32 noundef 141) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.at = add nuw nsw i32 %i.ar, 32               ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = call noalias ptr @CRYPTO_malloc(i64 noundef %i.au, ptr noundef nonnull @.str, i32 noundef 143) #6 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.thread183.thread, label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread177
  %.1116 = phi ptr [ %i.av, %bb.x ], [ %.0115275, %.thread177 ] ; 4 uses
  %.1112 = phi i32 [ %i.at, %bb.x ], [ %.0111276, %.thread177 ] ; 2 uses
  %.off = add i32 %i.ap, 12
  %.not158262 = icmp ult i32 %.off, 13
  br i1 %.not158262, label %.loopexit, label %.lr.ph265

.lr.ph265:                                        ; preds = %bb.y, %bb.z
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.z ], [ 0, %bb.y ] ; 2 uses
  %.in = phi i32 [ %i.ay, %bb.z ], [ %i.ar, %bb.y ]
  %i.ax = call i64 @BN_div_word(ptr noundef %.1102.lcssa.ph, i64 noundef 128) #6 ; 2 uses
  %.not159 = icmp eq i64 %i.ax, -1
  br i1 %.not159, label %.thread183, label %bb.z

bb.z:                                             ; preds = %.lr.ph265
  %i.ay = add nsw i32 %.in, -1                    ; 2 uses
  %i.az = trunc i64 %i.ax to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.1116, i64 %indvars.iv
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !14
  %.not158 = icmp eq i32 %i.ay, 0
  br i1 %.not158, label %.loopexit.loopexit285, label %.lr.ph265, !llvm.loop !20

.preheader199:                                    ; preds = %.preheader199.preheader, %.preheader199
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %.preheader199 ], [ 0, %.preheader199.preheader ] ; 2 uses
  %.3107 = phi i64 [ %i.be, %.preheader199 ], [ %.3107.ph, %.preheader199.preheader ] ; 2 uses
  %i.bb = trunc i64 %.3107 to i8
  %i.bc = and i8 %i.bb, 127
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0115275, i64 %indvars.iv321
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !14
  %i.be = lshr i64 %.3107, 7                      ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.loopexit.loopexit, label %.preheader199

.loopexit.loopexit:                               ; preds = %.preheader199
  %i.bg = trunc nuw nsw i64 %indvars.iv.next322 to i32
  br label %.loopexit

.loopexit.loopexit285:                            ; preds = %bb.z
  %i.bh = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit285, %.loopexit.loopexit, %bb.y
  %.4132 = phi i32 [ %i.bg, %.loopexit.loopexit ], [ 0, %bb.y ], [ %i.bh, %.loopexit.loopexit285 ] ; 5 uses
  %.3118 = phi ptr [ %.0115275, %.loopexit.loopexit ], [ %.1116, %bb.y ], [ %.1116, %.loopexit.loopexit285 ] ; 10 uses
  %.3114 = phi i32 [ %.0111276, %.loopexit.loopexit ], [ %.1112, %bb.y ], [ %.1112, %.loopexit.loopexit285 ]
  %i.bi = add nsw i32 %.4132, %.0125273           ; 2 uses
  br i1 %.not160, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.bj = icmp sgt i32 %i.bi, %1
  br i1 %i.bj, label %.thread183.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.aa
  %i.bk = icmp sgt i32 %.4132, 1
  br i1 %i.bk, label %iter.check, label %._crit_edge270

iter.check:                                       ; preds = %.preheader
  %i.bl = sext i32 %.0125273 to i64               ; 8 uses
  %i.bm = zext nneg i32 %.4132 to i64             ; 9 uses
  %i.bn = add nsw i64 %i.bm, -1                   ; 5 uses
  %min.iters.check = icmp ult i32 %.4132, 9
  br i1 %min.iters.check, label %.lr.ph269.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %0, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.q, i64 %i.bl
  %scevgep400 = getelementptr i8, ptr %i.bo, i64 %i.bm
  %scevgep402 = getelementptr i8, ptr %.3118, i64 1
  %scevgep403 = getelementptr i8, ptr %.3118, i64 %i.bm
  %bound0 = icmp ult ptr %scevgep, %scevgep403
  %bound1 = icmp ult ptr %scevgep402, %scevgep400
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph269.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check405 = icmp ult i32 %.4132, 33
  br i1 %min.iters.check405, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bp = and i64 %i.bn, 24
  %n.vec = and i64 %i.bn, -32                     ; 5 uses
  %i.bq = sub nsw i64 %i.bm, %n.vec
  %i.br = add nsw i64 %n.vec, %i.bl               ; 2 uses
  %invariant.gep = getelementptr i8, ptr %.3118, i64 %i.bm
  %invariant.gep455 = getelementptr i8, ptr %0, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.bs ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %gep, i64 -15
  %i.bu = getelementptr inbounds i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.bt, align 1, !tbaa !14, !alias.scope !27
  %wide.load406 = load <16 x i8>, ptr %i.bu, align 1, !tbaa !14, !alias.scope !27
  %i.bv = or <16 x i8> %wide.load, splat (i8 -128)
  %i.bw = or <16 x i8> %wide.load406, splat (i8 -128)
  %reverse = shufflevector <16 x i8> %i.bv, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse407 = shufflevector <16 x i8> %i.bw, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep456 = getelementptr i8, ptr %invariant.gep455, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %gep456, i64 16
  store <16 x i8> %reverse, ptr %gep456, align 1, !tbaa !14, !alias.scope !28, !noalias !27
  store <16 x i8> %reverse407, ptr %i.bx, align 1, !tbaa !14, !alias.scope !28, !noalias !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %._crit_edge270.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph269.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec409 = and i64 %i.bn, -8                   ; 4 uses
  %i.bz = sub nsw i64 %i.bm, %n.vec409
  %i.ca = add nsw i64 %n.vec409, %i.bl            ; 2 uses
  %invariant.gep457 = getelementptr i8, ptr %.3118, i64 %i.bm
  %invariant.gep459 = getelementptr i8, ptr %0, i64 %i.bl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index410 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next413, %vec.epilog.vector.body ] ; 3 uses
  %i.cb = xor i64 %index410, -1
  %gep458 = getelementptr i8, ptr %invariant.gep457, i64 %i.cb
  %i.cc = getelementptr inbounds i8, ptr %gep458, i64 -7
  %wide.load411 = load <8 x i8>, ptr %i.cc, align 1, !tbaa !14, !alias.scope !27
  %i.cd = or <8 x i8> %wide.load411, splat (i8 -128)
  %reverse412 = shufflevector <8 x i8> %i.cd, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep460 = getelementptr i8, ptr %invariant.gep459, i64 %index410
  store <8 x i8> %reverse412, ptr %gep460, align 1, !tbaa !14, !alias.scope !28, !noalias !27
  %index.next413 = add nuw i64 %index410, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next413, %n.vec409
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n414 = icmp eq i64 %i.bn, %n.vec409
  br i1 %cmp.n414, label %._crit_edge270.loopexit, label %.lr.ph269.preheader

.lr.ph269.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv326.ph = phi i64 [ %i.bm, %iter.check ], [ %i.bm, %vector.memcheck ], [ %i.bq, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  %indvars.iv324.ph = phi i64 [ %i.bl, %iter.check ], [ %i.bl, %vector.memcheck ], [ %i.br, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.lr.ph269

.lr.ph269:                                        ; preds = %.lr.ph269.preheader, %.lr.ph269
  %indvars.iv326 = phi i64 [ %indvars.iv.next327, %.lr.ph269 ], [ %indvars.iv326.ph, %.lr.ph269.preheader ] ; 2 uses
  %indvars.iv324 = phi i64 [ %indvars.iv.next325, %.lr.ph269 ], [ %indvars.iv324.ph, %.lr.ph269.preheader ] ; 2 uses
  %indvars.iv.next327 = add nsw i64 %indvars.iv326, -1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.3118, i64 %indvars.iv.next327
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !14
  %i.ch = or i8 %i.cg, -128
  %indvars.iv.next325 = add nsw i64 %indvars.iv324, 1 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %0, i64 %indvars.iv324
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !14
  %i.cj = icmp samesign ugt i64 %indvars.iv326, 2
  br i1 %i.cj, label %.lr.ph269, label %._crit_edge270.loopexit, !llvm.loop !26

._crit_edge270.loopexit:                          ; preds = %.lr.ph269, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next325.lcssa = phi i64 [ %i.ca, %vec.epilog.middle.block ], [ %i.br, %middle.block ], [ %indvars.iv.next325, %.lr.ph269 ]
  %i.ck = trunc nsw i64 %indvars.iv.next325.lcssa to i32
  br label %._crit_edge270

._crit_edge270:                                   ; preds = %._crit_edge270.loopexit, %.preheader
end_hunk_0
