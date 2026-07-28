inline.NumInlined: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.asn1_object_st = type { ptr, ptr, i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [50 x i8] c"../../deps/openssl/openssl/crypto/asn1/a_object.c\00", align 1
@__func__.a2d_ASN1_OBJECT = private unnamed_addr constant [16 x i8] c"a2d_ASN1_OBJECT\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@__func__.i2a_ASN1_OBJECT = private unnamed_addr constant [16 x i8] c"i2a_ASN1_OBJECT\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"<INVALID>\00", align 1
@__func__.d2i_ASN1_OBJECT = private unnamed_addr constant [16 x i8] c"d2i_ASN1_OBJECT\00", align 1
@__func__.ossl_c2i_ASN1_OBJECT = private unnamed_addr constant [21 x i8] c"ossl_c2i_ASN1_OBJECT\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @i2d_ASN1_OBJECT(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14
  %i.h = tail call i32 @ASN1_object_size(i32 noundef 0, i32 noundef %i.g, i32 noundef 6) #5 ; 4 uses
  %i.i = icmp eq ptr %1, null
  %i.j = icmp eq i32 %i.h, -1
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = sext i32 %i.h to i64
  %i.n = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.m, ptr noundef nonnull @.str, i32 noundef 34) #5 ; 3 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !15
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.j, label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.k, ptr %i.a, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.018 = phi ptr [ %i.n, %bb.e ], [ null, %bb.f ] ; 2 uses
  %i.p = load i32, ptr %i.f, align 4, !tbaa !14
  call void @ASN1_put_object(ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.p, i32 noundef 6, i32 noundef 0) #5
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.s = load i32, ptr %i.f, align 4, !tbaa !14
  %i.t = sext i32 %i.s to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.t, i1 false)
  %.not = icmp eq ptr %.018, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.v = load i32, ptr %i.f, align 4, !tbaa !14
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.y = phi ptr [ %i.x, %bb.h ], [ %.018, %bb.g ]
  store ptr %i.y, ptr %1, align 8, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.c, %bb.a, %bb.b, %bb.i
  %.0 = phi i32 [ %i.h, %bb.i ], [ 0, %bb.a ], [ %i.h, %bb.c ], [ 0, %bb.b ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
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
define dso_local i32 @a2d_ASN1_OBJECT(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  switch i32 %3, label %bb.c [
    i32 0, label %bb.ac
    i32 -1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #6
  %i.c = trunc i64 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0122 = phi i32 [ %i.c, %bb.b ], [ %3, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.e = load i8, ptr %2, align 1, !tbaa !16      ; 3 uses
  %i.f = add i8 %i.e, -48
  %or.cond = icmp ult i8 %i.f, 3
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i8 %i.e to i64
  %i.h = icmp slt i32 %.0122, 2
  br i1 %i.h, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 71, ptr noundef nonnull @__func__.a2d_ASN1_OBJECT) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 122, ptr noundef null) #5
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @__func__.a2d_ASN1_OBJECT) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 138, ptr noundef null) #5
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.i = icmp eq i32 %.0122, 2
  br i1 %i.i, label %.sink.split, label %.lr.ph267

.lr.ph267:                                        ; preds = %bb.g
  %i.j = add nsw i32 %.0122, -2
  %i.k = load i8, ptr %i.d, align 1, !tbaa !16
  %i.l = sext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.n = icmp samesign ult i8 %i.e, 50
  %i.o = mul nuw nsw i64 %i.g, 40
  %i.p = add nsw i64 %i.o, -1920                  ; 2 uses
  %.not151 = icmp eq ptr %0, null
  %i.q = getelementptr i8, ptr %0, i64 -1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph267, %bb.aa
  %.096265 = phi ptr [ null, %.lr.ph267 ], [ %.197.lcssa.ph, %bb.aa ] ; 2 uses
  %.0102264 = phi ptr [ %i.m, %.lr.ph267 ], [ %i.s, %bb.aa ]
  %.0105263 = phi i32 [ 24, %.lr.ph267 ], [ %.3108, %bb.aa ] ; 3 uses
  %.0109262 = phi ptr [ %i.a, %.lr.ph267 ], [ %.3112, %bb.aa ] ; 13 uses
  %.0116261 = phi i32 [ %i.l, %.lr.ph267 ], [ %i.u, %bb.aa ]
  %.0119260 = phi i32 [ 0, %.lr.ph267 ], [ %.2121, %bb.aa ] ; 4 uses
  %.1123259 = phi i32 [ %i.j, %.lr.ph267 ], [ %.3125.ph, %bb.aa ]
  switch i32 %.0116261, label %.thread170.sink.split [
    i32 46, label %.lr.ph.preheader
    i32 32, label %.lr.ph.preheader
  ]

.lr.ph.preheader:                                 ; preds = %bb.h, %bb.h
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %.197229 = phi ptr [ %.3163, %bb.p ], [ %.096265, %.lr.ph.preheader ] ; 7 uses
  %.098228 = phi i64 [ %.199, %bb.p ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %.1103227 = phi ptr [ %i.s, %bb.p ], [ %.0102264, %.lr.ph.preheader ] ; 2 uses
  %.0114226 = phi i32 [ %.1115160, %bb.p ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.2124225 = phi i32 [ %i.r, %bb.p ], [ %.1123259, %.lr.ph.preheader ] ; 2 uses
  %i.r = add nsw i32 %.2124225, -1                ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.1103227, i64 1 ; 2 uses
  %i.t = load i8, ptr %.1103227, align 1, !tbaa !16 ; 2 uses
  %i.u = sext i8 %i.t to i32                      ; 4 uses
  switch i8 %i.t, label %bb.i [
    i8 46, label %._crit_edge
    i8 32, label %._crit_edge
  ]

bb.i:                                             ; preds = %.lr.ph
  %i.v = call i32 @ossl_isdigit(i32 noundef %i.u) #5
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.thread170.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = icmp eq i32 %.0114226, 0                 ; 2 uses
  %i.x = icmp ugt i64 %.098228, 1844674407370955152
  %or.cond7 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond7, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.y = icmp eq ptr %.197229, null
  br i1 %i.y, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.z = call ptr @BN_new() #5                    ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.thread170, label %.thread

.thread:                                          ; preds = %bb.k, %bb.l
  %.2155 = phi ptr [ %i.z, %bb.l ], [ %.197229, %bb.k ] ; 3 uses
  %i.ab = call i32 @BN_set_word(ptr noundef nonnull %.2155, i64 noundef %.098228) #5
  %.not141 = icmp eq i32 %i.ab, 0
  br i1 %.not141, label %.thread170, label %.thread156

bb.m:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.o, label %.thread156

.thread156:                                       ; preds = %.thread, %bb.m
  %.3162 = phi ptr [ %.197229, %bb.m ], [ %.2155, %.thread ] ; 5 uses
  %i.ac = call i32 @BN_mul_word(ptr noundef %.3162, i64 noundef 10) #5
  %.not143 = icmp eq i32 %i.ac, 0
  br i1 %.not143, label %.thread170, label %bb.n

bb.n:                                             ; preds = %.thread156
  %i.ad = add nsw i32 %i.u, -48
  %i.ae = sext i32 %i.ad to i64
  %i.af = call i32 @BN_add_word(ptr noundef %.3162, i64 noundef %i.ae) #5
  %.not144 = icmp eq i32 %i.af, 0
  br i1 %.not144, label %.thread170, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ag = mul i64 %.098228, 10
  %i.ah = add nsw i32 %i.u, -48
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add i64 %i.ag, %i.ai
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.3163 = phi ptr [ %.3162, %bb.n ], [ %.197229, %bb.o ] ; 2 uses
  %.1115160 = phi i32 [ 1, %bb.n ], [ 0, %bb.o ]  ; 2 uses
  %.199 = phi i64 [ %.098228, %bb.n ], [ %i.aj, %bb.o ] ; 2 uses
  %i.ak = icmp samesign ult i32 %.2124225, 2
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.p, %.lr.ph, %.lr.ph
  %.0114.lcssa.ph = phi i32 [ %.1115160, %bb.p ], [ %.0114226, %.lr.ph ], [ %.0114226, %.lr.ph ] ; 2 uses
  %.098.lcssa.ph = phi i64 [ %.199, %bb.p ], [ %.098228, %.lr.ph ], [ %.098228, %.lr.ph ] ; 3 uses
  %.197.lcssa.ph = phi ptr [ %.3163, %bb.p ], [ %.197229, %.lr.ph ], [ %.197229, %.lr.ph ] ; 11 uses
  %.3125.ph = phi i32 [ 0, %bb.p ], [ %i.r, %.lr.ph ], [ %i.r, %.lr.ph ] ; 2 uses
  %i.al = icmp eq i32 %.0119260, 0
  br i1 %i.al, label %bb.q, label %bb.t

bb.q:                                             ; preds = %._crit_edge
  %i.am = icmp ugt i64 %.098.lcssa.ph, 39
  %or.cond9 = select i1 %i.n, i1 %i.am, i1 false
  br i1 %or.cond9, label %.thread170.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not145 = icmp eq i32 %.0114.lcssa.ph, 0
  br i1 %.not145, label %.thread324, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = call i32 @BN_add_word(ptr noundef %.197.lcssa.ph, i64 noundef %i.p) #5
  %.not146 = icmp eq i32 %i.an, 0
  br i1 %.not146, label %.thread170, label %.thread164

.thread324:                                       ; preds = %bb.r
  %i.ao = add i64 %.098.lcssa.ph, %i.p
  br label %.preheader186.preheader

bb.t:                                             ; preds = %._crit_edge
  %.not147 = icmp eq i32 %.0114.lcssa.ph, 0
  br i1 %.not147, label %.preheader186.preheader, label %.thread164

.preheader186.preheader:                          ; preds = %.thread324, %bb.t
  %.3101.ph = phi i64 [ %.098.lcssa.ph, %bb.t ], [ %i.ao, %.thread324 ]
  br label %.preheader186

.thread164:                                       ; preds = %bb.s, %bb.t
  %i.ap = call i32 @BN_num_bits(ptr noundef %.197.lcssa.ph) #5 ; 2 uses
  %i.aq = add nsw i32 %i.ap, 6
  %i.ar = sdiv i32 %i.aq, 7                       ; 3 uses
  %i.as = icmp sgt i32 %i.ar, %.0105263
  br i1 %i.as, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.thread164
  %.not148 = icmp eq ptr %.0109262, %i.a
  br i1 %.not148, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @CRYPTO_free(ptr noundef %.0109262, ptr noundef nonnull @.str, i32 noundef 133) #5
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.at = add nuw nsw i32 %i.ar, 32               ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = call noalias ptr @CRYPTO_malloc(i64 noundef %i.au, ptr noundef nonnull @.str, i32 noundef 135) #5 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.thread170.thread, label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread164
  %.1110 = phi ptr [ %i.av, %bb.w ], [ %.0109262, %.thread164 ] ; 4 uses
  %.1106 = phi i32 [ %i.at, %bb.w ], [ %.0105263, %.thread164 ] ; 2 uses
  %.off = add i32 %i.ap, 12
  %.not149249 = icmp ult i32 %.off, 13
  br i1 %.not149249, label %.loopexit, label %.lr.ph252

.lr.ph252:                                        ; preds = %bb.x, %bb.y
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %.in = phi i32 [ %i.ay, %bb.y ], [ %i.ar, %bb.x ]
  %i.ax = call i64 @BN_div_word(ptr noundef %.197.lcssa.ph, i64 noundef 128) #5 ; 2 uses
  %.not150 = icmp eq i64 %i.ax, -1
  br i1 %.not150, label %.thread170, label %bb.y

bb.y:                                             ; preds = %.lr.ph252
  %i.ay = add nsw i32 %.in, -1                    ; 2 uses
  %i.az = trunc i64 %i.ax to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.1110, i64 %indvars.iv
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !16
  %.not149 = icmp eq i32 %i.ay, 0
  br i1 %.not149, label %.loopexit.loopexit272, label %.lr.ph252, !llvm.loop !17

.preheader186:                                    ; preds = %.preheader186.preheader, %.preheader186
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %.preheader186 ], [ 0, %.preheader186.preheader ] ; 2 uses
  %.3101 = phi i64 [ %i.be, %.preheader186 ], [ %.3101.ph, %.preheader186.preheader ] ; 2 uses
  %i.bb = trunc i64 %.3101 to i8
  %i.bc = and i8 %i.bb, 127
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0109262, i64 %indvars.iv308
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !16
  %i.be = lshr i64 %.3101, 7                      ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.loopexit.loopexit, label %.preheader186

.loopexit.loopexit:                               ; preds = %.preheader186
  %i.bg = trunc nuw nsw i64 %indvars.iv.next309 to i32
  br label %.loopexit

.loopexit.loopexit272:                            ; preds = %bb.y
  %i.bh = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit272, %.loopexit.loopexit, %bb.x
  %.4130 = phi i32 [ %i.bg, %.loopexit.loopexit ], [ 0, %bb.x ], [ %i.bh, %.loopexit.loopexit272 ] ; 5 uses
  %.3112 = phi ptr [ %.0109262, %.loopexit.loopexit ], [ %.1110, %bb.x ], [ %.1110, %.loopexit.loopexit272 ] ; 10 uses
  %.3108 = phi i32 [ %.0105263, %.loopexit.loopexit ], [ %.1106, %bb.x ], [ %.1106, %.loopexit.loopexit272 ]
  %i.bi = add nsw i32 %.4130, %.0119260           ; 2 uses
  br i1 %.not151, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %i.bj = icmp sgt i32 %i.bi, %1
  br i1 %i.bj, label %.thread170.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.z
  %i.bk = icmp sgt i32 %.4130, 1
  br i1 %i.bk, label %iter.check, label %._crit_edge257

iter.check:                                       ; preds = %.preheader
  %i.bl = sext i32 %.0119260 to i64               ; 8 uses
  %i.bm = zext nneg i32 %.4130 to i64             ; 9 uses
  %i.bn = add nsw i64 %i.bm, -1                   ; 5 uses
  %min.iters.check = icmp ult i32 %.4130, 9
  br i1 %min.iters.check, label %.lr.ph256.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %0, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.q, i64 %i.bl
  %scevgep387 = getelementptr i8, ptr %i.bo, i64 %i.bm
  %scevgep389 = getelementptr i8, ptr %.3112, i64 1
  %scevgep390 = getelementptr i8, ptr %.3112, i64 %i.bm
  %bound0 = icmp ult ptr %scevgep, %scevgep390
  %bound1 = icmp ult ptr %scevgep389, %scevgep387
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph256.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check392 = icmp ult i32 %.4130, 33
  br i1 %min.iters.check392, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bn, 24
  %n.vec = and i64 %i.bn, -32                     ; 5 uses
  %i.bp = sub nsw i64 %i.bm, %n.vec
  %i.bq = add nsw i64 %n.vec, %i.bl               ; 2 uses
  %invariant.gep = getelementptr i8, ptr %.3112, i64 %i.bm
  %invariant.gep443 = getelementptr i8, ptr %0, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.br = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.br ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %gep, i64 -15
  %i.bt = getelementptr inbounds i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.bs, align 1, !tbaa !16, !alias.scope !19
  %wide.load393 = load <16 x i8>, ptr %i.bt, align 1, !tbaa !16, !alias.scope !19
  %i.bu = or <16 x i8> %wide.load, splat (i8 -128)
  %i.bv = or <16 x i8> %wide.load393, splat (i8 -128)
  %reverse = shufflevector <16 x i8> %i.bu, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse394 = shufflevector <16 x i8> %i.bv, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep444 = getelementptr i8, ptr %invariant.gep443, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %gep444, i64 16
  store <16 x i8> %reverse, ptr %gep444, align 1, !tbaa !16, !alias.scope !22, !noalias !19
  store <16 x i8> %reverse394, ptr %i.bw, align 1, !tbaa !16, !alias.scope !22, !noalias !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %._crit_edge257.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph256.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec397 = and i64 %i.bn, -8                   ; 4 uses
  %i.by = sub nsw i64 %i.bm, %n.vec397
  %i.bz = add nsw i64 %n.vec397, %i.bl            ; 2 uses
  %invariant.gep445 = getelementptr i8, ptr %.3112, i64 %i.bm
  %invariant.gep447 = getelementptr i8, ptr %0, i64 %i.bl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index398 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next401, %vec.epilog.vector.body ] ; 3 uses
  %i.ca = xor i64 %index398, -1
  %gep446 = getelementptr i8, ptr %invariant.gep445, i64 %i.ca
  %i.cb = getelementptr inbounds i8, ptr %gep446, i64 -7
  %wide.load399 = load <8 x i8>, ptr %i.cb, align 1, !tbaa !16, !alias.scope !19
  %i.cc = or <8 x i8> %wide.load399, splat (i8 -128)
  %reverse400 = shufflevector <8 x i8> %i.cc, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep448 = getelementptr i8, ptr %invariant.gep447, i64 %index398
  store <8 x i8> %reverse400, ptr %gep448, align 1, !tbaa !16, !alias.scope !22, !noalias !19
  %index.next401 = add nuw i64 %index398, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next401, %n.vec397
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n402 = icmp eq i64 %i.bn, %n.vec397
  br i1 %cmp.n402, label %._crit_edge257.loopexit, label %.lr.ph256.preheader

.lr.ph256.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv313.ph = phi i64 [ %i.bm, %iter.check ], [ %i.bm, %vector.memcheck ], [ %i.bp, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ]
  %indvars.iv311.ph = phi i64 [ %i.bl, %iter.check ], [ %i.bl, %vector.memcheck ], [ %i.bq, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  br label %.lr.ph256

.lr.ph256:                                        ; preds = %.lr.ph256.preheader, %.lr.ph256
  %indvars.iv313 = phi i64 [ %indvars.iv.next314, %.lr.ph256 ], [ %indvars.iv313.ph, %.lr.ph256.preheader ] ; 2 uses
  %indvars.iv311 = phi i64 [ %indvars.iv.next312, %.lr.ph256 ], [ %indvars.iv311.ph, %.lr.ph256.preheader ] ; 2 uses
  %indvars.iv.next314 = add nsw i64 %indvars.iv313, -1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.3112, i64 %indvars.iv.next314
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !16
  %i.cg = or i8 %i.cf, -128
  %indvars.iv.next312 = add nsw i64 %indvars.iv311, 1 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %indvars.iv311
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !16
  %i.ci = icmp samesign ugt i64 %indvars.iv313, 2
  br i1 %i.ci, label %.lr.ph256, label %._crit_edge257.loopexit, !llvm.loop !29

._crit_edge257.loopexit:                          ; preds = %.lr.ph256, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next312.lcssa = phi i64 [ %i.bz, %vec.epilog.middle.block ], [ %i.bq, %middle.block ], [ %indvars.iv.next312, %.lr.ph256 ]
  %i.cj = trunc nsw i64 %indvars.iv.next312.lcssa to i32
  br label %._crit_edge257

._crit_edge257:                                   ; preds = %._crit_edge257.loopexit, %.preheader
end_hunk_0
