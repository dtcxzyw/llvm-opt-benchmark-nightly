Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/e_chacha20_poly1305?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CRYPTO_REF_COUNT = type { i32 }

@chacha20 = internal constant { i32, i32, i32, i32, i64, i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, %struct.CRYPTO_REF_COUNT, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 1019, i32 1, i32 32, i32 16, i64 48, i32 1, [4 x i8] zeroinitializer, ptr @chacha_init_key, ptr @chacha_cipher, ptr null, i32 120, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.CRYPTO_REF_COUNT zeroinitializer, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@chacha20_poly1305 = internal global { i32, i32, i32, i32, i64, i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, %struct.CRYPTO_REF_COUNT, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 1018, i32 1, i32 32, i32 12, i64 3148912, i32 1, [4 x i8] zeroinitializer, ptr @chacha20_poly1305_init_key, ptr @chacha20_poly1305_cipher, ptr @chacha20_poly1305_cleanup, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @chacha20_poly1305_ctrl, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.CRYPTO_REF_COUNT zeroinitializer, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@zero = internal constant [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [60 x i8] c"../../deps/openssl/openssl/crypto/evp/e_chacha20_poly1305.c\00", align 1
@__func__.chacha20_poly1305_ctrl = private unnamed_addr constant [23 x i8] c"chacha20_poly1305_ctrl\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @EVP_chacha20() local_unnamed_addr #0 {
bb.a:
  ret ptr @chacha20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @EVP_chacha20_poly1305() local_unnamed_addr #0 {
bb.a:
  ret ptr @chacha20_poly1305
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @chacha_init_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 13 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit31, label %.preheader30.preheader

.preheader30.preheader:                           ; preds = %bb.a
  %i.c = load i32, ptr %1, align 1
  store i32 %i.c, ptr %i.b, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.h, ptr %i.i, align 4, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.k, ptr %i.l, align 4, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i32, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.n, ptr %i.o, align 4, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = load i32, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.q, ptr %i.r, align 4, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i32, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.t, ptr %i.u, align 4, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i32, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.w, ptr %i.x, align 4, !tbaa !16
  br label %.loopexit31

.loopexit31:                                      ; preds = %.preheader30.preheader, %bb.a
  %.not29 = icmp eq ptr %2, null
  br i1 %.not29, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit31
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.z = load i32, ptr %2, align 1
  store i32 %i.z, ptr %i.y, align 4, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 0, ptr %i.aj, align 8, !tbaa !19
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @chacha_cipher(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 10 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19   ; 4 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = icmp ne i64 %3, 0
  %i.i = icmp ult i32 %i.g, 64
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  %i.l = zext nneg i32 %i.g to i64                ; 8 uses
  %i.m = add i64 %3, -1
  %i.n = sub nuw nsw i64 63, %i.l
  %umin = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 3 uses
  %i.o = add nuw nsw i64 %umin, 1                 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.p = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.p, -16
  %i.q = add i64 %i.e, %i.l
  %i.r = sub i64 %i.b, %i.q
  %i.s = add i64 %i.r, -49
  %diff.check120 = icmp ult i64 %i.s, 15
  %conflict.rdx = or i1 %diff.check, %diff.check120
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check121 = icmp samesign ult i64 %umin, 15
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.o, 12
  %n.vec = and i64 %i.o, 112                      ; 7 uses
  %i.u = add nuw nsw i64 %n.vec, %i.l             ; 2 uses
  %i.v = sub i64 %3, %n.vec                       ; 2 uses
  %i.w = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.k, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %next.gep122 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep, align 1, !tbaa !16
  %wide.load123 = load <8 x i8>, ptr %i.y, align 1, !tbaa !16
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load124 = load <8 x i8>, ptr %gep, align 1, !tbaa !16
  %wide.load125 = load <8 x i8>, ptr %i.z, align 1, !tbaa !16
  %4 = xor <8 x i8> %wide.load124, %wide.load
  %5 = xor <8 x i8> %wide.load125, %wide.load123
  %i.aa = getelementptr i8, ptr %next.gep122, i64 8
  store <8 x i8> %4, ptr %next.gep122, align 1, !tbaa !16
  store <8 x i8> %5, ptr %i.aa, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec129 = and i64 %i.o, 124                   ; 6 uses
  %i.ac = add nuw nsw i64 %n.vec129, %i.l         ; 2 uses
  %i.ad = sub i64 %3, %n.vec129                   ; 2 uses
  %i.ae = getelementptr i8, ptr %2, i64 %n.vec129 ; 2 uses
  %i.af = getelementptr i8, ptr %1, i64 %n.vec129 ; 2 uses
  %invariant.gep185 = getelementptr i8, ptr %i.k, i64 %i.l
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index130 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next135, %vec.epilog.vector.body ] ; 4 uses
  %next.gep131 = getelementptr i8, ptr %2, i64 %index130
  %next.gep132 = getelementptr i8, ptr %1, i64 %index130
  %wide.load133 = load <4 x i8>, ptr %next.gep131, align 1, !tbaa !16
  %gep186 = getelementptr i8, ptr %invariant.gep185, i64 %index130
  %wide.load134 = load <4 x i8>, ptr %gep186, align 1, !tbaa !16
  %i.ag = xor <4 x i8> %wide.load134, %wide.load133
  store <4 x i8> %i.ag, ptr %next.gep132, align 1, !tbaa !16
  %index.next135 = add nuw i64 %index130, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n136 = icmp eq i64 %i.o, %n.vec129
  br i1 %cmp.n136, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.l, %iter.check ], [ %i.l, %vector.memcheck ], [ %i.u, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  %.06683.ph = phi i64 [ %3, %iter.check ], [ %3, %vector.memcheck ], [ %i.v, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  %.06882.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %.07181.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.06683 = phi i64 [ %i.ao, %vec.epilog.scalar.ph ], [ %.06683.ph, %vec.epilog.scalar.ph.preheader ]
  %.06882 = phi ptr [ %i.ai, %vec.epilog.scalar.ph ], [ %.06882.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.07181 = phi ptr [ %i.an, %vec.epilog.scalar.ph ], [ %.07181.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.06882, i64 1 ; 2 uses
  %i.aj = load i8, ptr %.06882, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.am = xor i8 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %.07181, i64 1 ; 2 uses
  store i8 %i.am, ptr %.07181, align 1, !tbaa !16
  %i.ao = add i64 %.06683, -1                     ; 3 uses
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = icmp samesign ult i64 %indvars.iv, 63
  %i.ar = and i1 %i.ap, %i.aq
  br i1 %i.ar, label %vec.epilog.scalar.ph, label %._crit_edge.loopexit, !llvm.loop !28

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa119 = phi ptr [ %i.ae, %vec.epilog.middle.block ], [ %i.w, %middle.block ], [ %i.ai, %vec.epilog.scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %i.ac, %vec.epilog.middle.block ], [ %i.u, %middle.block ], [ %indvars.iv.next, %vec.epilog.scalar.ph ]
  %.lcssa118 = phi ptr [ %i.af, %vec.epilog.middle.block ], [ %i.x, %middle.block ], [ %i.an, %vec.epilog.scalar.ph ]
  %.lcssa117 = phi i64 [ %i.ad, %vec.epilog.middle.block ], [ %i.v, %middle.block ], [ %i.ao, %vec.epilog.scalar.ph ]
  %i.as = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.071.lcssa = phi ptr [ %1, %.preheader ], [ %.lcssa118, %._crit_edge.loopexit ] ; 3 uses
  %.068.lcssa = phi ptr [ %2, %.preheader ], [ %.lcssa119, %._crit_edge.loopexit ] ; 3 uses
  %.066.lcssa = phi i64 [ %3, %.preheader ], [ %.lcssa117, %._crit_edge.loopexit ] ; 4 uses
  %.064.lcssa = phi i32 [ %i.g, %.preheader ], [ %i.as, %._crit_edge.loopexit ] ; 2 uses
  store i32 %.064.lcssa, ptr %i.f, align 8, !tbaa !19
  %i.at = icmp eq i64 %.066.lcssa, 0
  br i1 %i.at, label %bb.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.au = icmp eq i32 %.064.lcssa, 64
  br i1 %i.au, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !17
  %i.ax = add i32 %i.aw, 1                        ; 2 uses
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !17
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !17
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.172 = phi ptr [ %.071.lcssa, %bb.d ], [ %.071.lcssa, %bb.c ], [ %.071.lcssa, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.169 = phi ptr [ %.068.lcssa, %bb.d ], [ %.068.lcssa, %bb.c ], [ %.068.lcssa, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.167 = phi i64 [ %.066.lcssa, %bb.d ], [ %.066.lcssa, %bb.c ], [ %.066.lcssa, %bb.b ], [ %3, %bb.a ] ; 7 uses
  %i.bc = trunc i64 %.167 to i32
  %i.bd = and i32 %i.bc, 63                       ; 2 uses
  %i.be = and i64 %.167, -64                      ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %.not7888 = icmp eq i64 %i.be, 0
  br i1 %.not7888, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.e
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph94, %bb.h
  %.06392 = phi i32 [ %i.bg, %.lr.ph94 ], [ %spec.select, %bb.h ]
  %.291 = phi i64 [ %i.be, %.lr.ph94 ], [ %i.bp, %bb.h ] ; 2 uses
  %.27090 = phi ptr [ %.169, %.lr.ph94 ], [ %i.bq, %bb.h ] ; 2 uses
  %.27389 = phi ptr [ %.172, %.lr.ph94 ], [ %i.br, %bb.h ] ; 2 uses
  %i.bi = lshr exact i64 %.291, 6
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 268435456) ; 3 uses
  %i.bj = trunc nuw nsw i64 %spec.store.select to i32
  %i.bk = add i32 %.06392, %i.bj                  ; 2 uses
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = icmp samesign ugt i64 %spec.store.select, %i.bl ; 2 uses
  %spec.select = select i1 %i.bm, i32 0, i32 %i.bk ; 3 uses
  %i.bn = select i1 %i.bm, i64 %i.bl, i64 0
  %spec.select80 = sub nuw nsw i64 %spec.store.select, %i.bn
  %i.bo = shl nuw nsw i64 %spec.select80, 6       ; 4 uses
  tail call void @ChaCha20_ctr32(ptr noundef %.27389, ptr noundef %.27090, i64 noundef %i.bo, ptr noundef nonnull %i.d, ptr noundef nonnull %i.bf) #8
  %i.bp = sub i64 %.291, %i.bo                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.27090, i64 %i.bo ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.27389, i64 %i.bo ; 2 uses
  store i32 %spec.select, ptr %i.bf, align 8, !tbaa !17
  %i.bs = icmp eq i32 %spec.select, 0
  br i1 %i.bs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bt = load i32, ptr %i.bh, align 4, !tbaa !17
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bh, align 4, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not78 = icmp eq i64 %i.bp, 0
  br i1 %.not78, label %._crit_edge95, label %bb.f, !llvm.loop !29

._crit_edge95:                                    ; preds = %bb.h, %bb.e
  %.273.lcssa = phi ptr [ %.172, %bb.e ], [ %i.br, %bb.h ] ; 8 uses
  %.270.lcssa = phi ptr [ %.169, %bb.e ], [ %i.bq, %bb.h ] ; 8 uses
  %.273.lcssa142 = ptrtoaddr ptr %.273.lcssa to i64 ; 2 uses
  %.270.lcssa143 = ptrtoaddr ptr %.270.lcssa to i64
  %.not79 = icmp eq i32 %i.bd, 0
  br i1 %.not79, label %bb.i, label %iter.check162

iter.check162:                                    ; preds = %._crit_edge95
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, i8 0, i64 64, i1 false)
  tail call void @ChaCha20_ctr32(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bv, i64 noundef 64, ptr noundef nonnull %i.d, ptr noundef nonnull %i.bf) #8
  %wide.trip.count = and i64 %.167, 63            ; 6 uses
  %min.iters.check147 = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check147, label %vec.epilog.scalar.ph163.preheader, label %vector.memcheck141

vector.memcheck141:                               ; preds = %iter.check162
  %i.bw = sub i64 %.270.lcssa143, %.273.lcssa142
  %diff.check144 = icmp ugt i64 %i.bw, -16
  %i.bx = sub i64 %.273.lcssa142, %i.e
  %i.by = add i64 %i.bx, -49
  %diff.check145 = icmp ult i64 %i.by, 15
  %conflict.rdx146 = or i1 %diff.check144, %diff.check145
  br i1 %conflict.rdx146, label %vec.epilog.scalar.ph163.preheader, label %vector.main.loop.iter.check148

vector.main.loop.iter.check148:                   ; preds = %vector.memcheck141
  %min.iters.check149 = icmp samesign ult i64 %wide.trip.count, 16
  br i1 %min.iters.check149, label %vec.epilog.ph166, label %vector.ph150

vector.ph150:                                     ; preds = %vector.main.loop.iter.check148
  %i.bz = and i64 %.167, 12
  %n.vec151 = and i64 %.167, 48                   ; 4 uses
  br label %vector.body152

vector.body152:                                   ; preds = %vector.ph150, %vector.body152
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body152 ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %index153 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %wide.load154 = load <8 x i8>, ptr %i.ca, align 1, !tbaa !16
  %wide.load155 = load <8 x i8>, ptr %i.cb, align 1, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 %index153 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %wide.load156 = load <8 x i8>, ptr %i.cc, align 1, !tbaa !16
  %wide.load157 = load <8 x i8>, ptr %i.cd, align 1, !tbaa !16
  %i.ce = xor <8 x i8> %wide.load156, %wide.load154
  %i.cf = xor <8 x i8> %wide.load157, %wide.load155
  %i.cg = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %index153 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store <8 x i8> %i.ce, ptr %i.cg, align 1, !tbaa !16
  store <8 x i8> %i.cf, ptr %i.ch, align 1, !tbaa !16
  %index.next158 = add nuw i64 %index153, 16      ; 2 uses
  %i.ci = icmp eq i64 %index.next158, %n.vec151
  br i1 %i.ci, label %middle.block159, label %vector.body152, !llvm.loop !30

middle.block159:                                  ; preds = %vector.body152
  %cmp.n160 = icmp eq i64 %wide.trip.count, %n.vec151
  br i1 %cmp.n160, label %.loopexit, label %vec.epilog.iter.check164

vec.epilog.iter.check164:                         ; preds = %middle.block159
  %min.epilog.iters.check165 = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check165, label %vec.epilog.scalar.ph163.preheader, label %vec.epilog.ph166, !prof !37

vec.epilog.ph166:                                 ; preds = %vector.main.loop.iter.check148, %vec.epilog.iter.check164
  %vec.epilog.resume.val161 = phi i64 [ %n.vec151, %vec.epilog.iter.check164 ], [ 0, %vector.main.loop.iter.check148 ]
  %n.vec167 = and i64 %.167, 60                   ; 3 uses
  br label %vec.epilog.vector.body168

vec.epilog.vector.body168:                        ; preds = %vec.epilog.vector.body168, %vec.epilog.ph166
  %index169 = phi i64 [ %vec.epilog.resume.val161, %vec.epilog.ph166 ], [ %index.next172, %vec.epilog.vector.body168 ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %index169
  %wide.load170 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 %index169
  %wide.load171 = load <4 x i8>, ptr %i.ck, align 1, !tbaa !16
  %i.cl = xor <4 x i8> %wide.load171, %wide.load170
  %i.cm = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %index169
  store <4 x i8> %i.cl, ptr %i.cm, align 1, !tbaa !16
  %index.next172 = add nuw i64 %index169, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next172, %n.vec167
  br i1 %i.cn, label %vec.epilog.middle.block173, label %vec.epilog.vector.body168, !llvm.loop !31

vec.epilog.middle.block173:                       ; preds = %vec.epilog.vector.body168
  %cmp.n174 = icmp eq i64 %wide.trip.count, %n.vec167
  br i1 %cmp.n174, label %.loopexit, label %vec.epilog.scalar.ph163.preheader

vec.epilog.scalar.ph163.preheader:                ; preds = %iter.check162, %vector.memcheck141, %vec.epilog.iter.check164, %vec.epilog.middle.block173
  %indvars.iv105.ph = phi i64 [ 0, %iter.check162 ], [ 0, %vector.memcheck141 ], [ %n.vec151, %vec.epilog.iter.check164 ], [ %n.vec167, %vec.epilog.middle.block173 ] ; 3 uses
  %xtraiter = and i64 %.167, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph163.prol.loopexit, label %vec.epilog.scalar.ph163.prol

vec.epilog.scalar.ph163.prol:                     ; preds = %vec.epilog.scalar.ph163.preheader, %vec.epilog.scalar.ph163.prol
  %indvars.iv105.prol = phi i64 [ %indvars.iv.next106.prol, %vec.epilog.scalar.ph163.prol ], [ %indvars.iv105.ph, %vec.epilog.scalar.ph163.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph163.prol ], [ 0, %vec.epilog.scalar.ph163.preheader ]
  %i.co = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv105.prol
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv105.prol
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !16
  %i.cs = xor i8 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv105.prol
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !16
  %indvars.iv.next106.prol = add nuw nsw i64 %indvars.iv105.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph163.prol.loopexit, label %vec.epilog.scalar.ph163.prol, !llvm.loop !32

vec.epilog.scalar.ph163.prol.loopexit:            ; preds = %vec.epilog.scalar.ph163.prol, %vec.epilog.scalar.ph163.preheader
  %indvars.iv105.unr = phi i64 [ %indvars.iv105.ph, %vec.epilog.scalar.ph163.preheader ], [ %indvars.iv.next106.prol, %vec.epilog.scalar.ph163.prol ]
  %i.cu = sub nsw i64 %indvars.iv105.ph, %wide.trip.count
  %i.cv = icmp ugt i64 %i.cu, -4
  br i1 %i.cv, label %.loopexit, label %vec.epilog.scalar.ph163

vec.epilog.scalar.ph163:                          ; preds = %vec.epilog.scalar.ph163.prol.loopexit, %vec.epilog.scalar.ph163
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.3, %vec.epilog.scalar.ph163 ], [ %indvars.iv105.unr, %vec.epilog.scalar.ph163.prol.loopexit ] ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv105
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv105
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !16
  %i.da = xor i8 %i.cz, %i.cx
  %i.db = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv105
  store i8 %i.da, ptr %i.db, align 1, !tbaa !16
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv.next106
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !16
  %i.de = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv.next106
  %i.df = load i8, ptr %i.de, align 1, !tbaa !16
  %i.dg = xor i8 %i.df, %i.dd
  %i.dh = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv.next106
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !16
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv.next106.1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv.next106.1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !16
  %i.dm = xor i8 %i.dl, %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv.next106.1
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !16
  %indvars.iv.next106.2 = add nuw nsw i64 %indvars.iv105, 3 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 %indvars.iv.next106.2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv.next106.2
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !16
  %i.ds = xor i8 %i.dr, %i.dp
  %i.dt = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 %indvars.iv.next106.2
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !16
  %indvars.iv.next106.3 = add nuw nsw i64 %indvars.iv105, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next106.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph163, !llvm.loop !33

.loopexit:                                        ; preds = %vec.epilog.scalar.ph163.prol.loopexit, %vec.epilog.scalar.ph163, %vec.epilog.middle.block173, %middle.block159
  store i32 %i.bd, ptr %i.f, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge95, %.loopexit, %._crit_edge
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @ChaCha20_ctr32(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @chacha20_poly1305_init_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 %3) #6 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 24 uses
  %i.d = icmp ne ptr %1, null                     ; 3 uses
  %i.e = icmp ne ptr %2, null                     ; 2 uses
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store i64 -1, ptr %i.g, align 8, !tbaa !22
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 196
  %i.i = load i32, ptr %i.h, align 4, !tbaa !23   ; 2 uses
  %i.j = icmp slt i32 %i.i, 17
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = sext i32 %i.i to i64                     ; 2 uses
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %2, i64 %i.l, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.d, label %.preheader30.preheader.i, label %chacha_init_key.exit

.preheader30.preheader.i:                         ; preds = %bb.e
  %i.o = load i32, ptr %1, align 1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i32, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.t, ptr %i.u, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load i32, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.w, ptr %i.x, align 4, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = load i32, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ai = load i32, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !16
  br label %chacha_init_key.exit

chacha_init_key.exit:                             ; preds = %bb.e, %.preheader30.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.am = load <4 x i32>, ptr %i.a, align 16      ; 2 uses
  %i.an = load i32, ptr %i.al, align 4
  store <4 x i32> %i.am, ptr %i.ak, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i32 0, ptr %i.ao, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i32 %i.an, ptr %i.ap, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.ar = shufflevector <4 x i32> %i.am, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %i.ar, ptr %i.aq, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  br i1 %i.d, label %.preheader30.preheader.i28, label %chacha_init_key.exit29

.preheader30.preheader.i28:                       ; preds = %bb.f
  %i.as = load i32, ptr %1, align 1
  store i32 %i.as, ptr %i.c, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.au = load i32, ptr %i.at, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.au, ptr %i.av, align 4, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load i32, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ba = load i32, ptr %i.az, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bg = load i32, ptr %i.bf, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load i32, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bm = load i32, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !16
  br label %chacha_init_key.exit29

chacha_init_key.exit29:                           ; preds = %bb.f, %.preheader30.preheader.i28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i32 0, ptr %i.bo, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %chacha_init_key.exit, %chacha_init_key.exit29, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @chacha20_poly1305_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 {
bb.a:
  %i.a = alloca [288 x i8], align 16              ; 9 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 46 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22   ; 23 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 188 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ne i64 %i.f, -1                     ; 2 uses
  %i.j = icmp ne ptr %1, null
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.k = add i64 %i.f, 16
  %.not.i = icmp eq i64 %3, %i.k
  br i1 %.not.i, label %bb.d, label %chacha20_poly1305_tls_cipher.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 4 uses
  %i.n = icmp ult i64 %i.f, 193
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 6 uses
  store i32 0, ptr %i.o, align 8, !tbaa !17
  br i1 %i.n, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.p = add nuw nsw i64 %i.f, 127
  %i.q = and i64 %i.p, 448                        ; 2 uses
  call void @ChaCha20_ctr32(ptr noundef nonnull %i.a, ptr noundef nonnull @zero, i64 noundef %i.q, ptr noundef nonnull %i.d, ptr noundef nonnull %i.o) #8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  call void @Poly1305_Init(ptr noundef nonnull %i.r, ptr noundef nonnull %i.a) #8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 0, ptr %i.s, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i64 13, ptr %i.u, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store i64 %i.f, ptr %i.v, align 8, !tbaa !41
  %.not106.i = icmp eq i64 %i.f, 0
  br i1 %.not106.i, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #8
  %.not107.i = icmp eq i32 %i.w, 0
  br i1 %.not107.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = call ptr @xor128_encrypt_n_pad(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.l, i64 noundef %i.f) #8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.y = call ptr @xor128_decrypt_n_pad(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.l, i64 noundef %i.f) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.097.i = phi ptr [ %i.x, %bb.g ], [ %i.y, %bb.h ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.ab = ptrtoint ptr %.097.i to i64
  %i.ac = ptrtoint ptr %i.m to i64
  %reass.sub = sub i64 %i.ab, %i.ac
  %i.ad = add i64 %reass.sub, 16
  br label %bb.n

bb.j:                                             ; preds = %bb.d
  call void @ChaCha20_ctr32(ptr noundef nonnull %i.a, ptr noundef nonnull @zero, i64 noundef 64, ptr noundef nonnull %i.d, ptr noundef nonnull %i.o) #8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 5 uses
  call void @Poly1305_Init(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a) #8
  store i32 1, ptr %i.o, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 0, ptr %i.af, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  call void @Poly1305_Update(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ag, i64 noundef 16) #8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i64 13, ptr %i.ah, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store i64 %i.f, ptr %i.ai, align 8, !tbaa !41
  %i.aj = call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #8
  %.not105.i = icmp eq i32 %i.aj, 0
  br i1 %.not105.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @ChaCha20_ctr32(ptr noundef nonnull %1, ptr noundef %2, i64 noundef %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.o) #8
  call void @Poly1305_Update(ptr noundef nonnull %i.ae, ptr noundef nonnull %1, i64 noundef %i.f) #8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @Poly1305_Update(ptr noundef nonnull %i.ae, ptr noundef %2, i64 noundef %i.f) #8
  call void @ChaCha20_ctr32(ptr noundef nonnull %1, ptr noundef %2, i64 noundef %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.o) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.am = sub i64 0, %i.f
  %i.an = and i64 %i.am, 15
  call void @Poly1305_Update(ptr noundef nonnull %i.ae, ptr noundef nonnull @zero, i64 noundef %i.an) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i, %bb.e
  %.0102.i = phi ptr [ %i.z, %bb.i ], [ %2, %bb.e ], [ %i.ak, %bb.m ]
  %.0101.i = phi ptr [ %i.aa, %bb.i ], [ %1, %bb.e ], [ %i.al, %bb.m ] ; 2 uses
  %.0100.i = phi i64 [ %i.ad, %bb.i ], [ 32, %bb.e ], [ 16, %bb.m ]
  %.099.i = phi i64 [ %i.q, %bb.i ], [ 64, %bb.e ], [ 64, %bb.m ]
  %.098.i = phi ptr [ %i.m, %bb.i ], [ %i.m, %bb.e ], [ %i.l, %bb.m ] ; 3 uses
  %.1.i = phi ptr [ %.097.i, %bb.i ], [ %i.l, %bb.e ], [ %i.l, %bb.m ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 2 uses
  call void @Poly1305_Update(ptr noundef nonnull %i.ap, ptr noundef nonnull %.098.i, i64 noundef %.0100.i) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef %.099.i) #8
  %i.aq = call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #8
  %.not108.i = icmp eq i32 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 132 ; 2 uses
  %i.as = select i1 %.not108.i, ptr %.098.i, ptr %i.ar
  call void @Poly1305_Final(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.as) #8
  store i64 -1, ptr %i.e, align 8, !tbaa !22
  %i.at = call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #8
  %.not109.i = icmp eq i32 %i.at, 0
  br i1 %.not109.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0101.i, ptr noundef nonnull align 4 dereferenceable(16) %i.ar, i64 16, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.au = call i32 @CRYPTO_memcmp(ptr noundef nonnull %.098.i, ptr noundef %.0102.i, i64 noundef 16) #8
  %.not110.i = icmp eq i32 %i.au, 0
  br i1 %.not110.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = add i64 %3, -16
  %i.aw = sub i64 16, %3
  %i.ax = getelementptr inbounds i8, ptr %.0101.i, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr align 1 %i.ax, i8 0, i64 %i.av, i1 false)
  br label %chacha20_poly1305_tls_cipher.exit

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ay = trunc i64 %3 to i32
  br label %chacha20_poly1305_tls_cipher.exit

chacha20_poly1305_tls_cipher.exit:                ; preds = %bb.c, %bb.q, %bb.r
  %.0.i = phi i32 [ -1, %bb.q ], [ %i.ay, %bb.r ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.aw

bb.s:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  store i32 0, ptr %i.az, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  tail call void @ChaCha20_ctr32(ptr noundef nonnull %i.ba, ptr noundef nonnull @zero, i64 noundef 64, ptr noundef nonnull %i.d, ptr noundef nonnull %i.az) #8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 2 uses
  tail call void @Poly1305_Init(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.ba) #8
  store i32 1, ptr %i.az, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 0, ptr %i.bc, align 8, !tbaa !39
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.g, align 4, !tbaa !24
  br i1 %i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  tail call void @Poly1305_Update(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.be, i64 noundef 13) #8
  store i64 13, ptr %i.bd, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store i32 1, ptr %i.bf, align 8, !tbaa !42
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.a
  %.not117 = icmp eq ptr %2, null
  br i1 %.not117, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.u
  %.not122138 = icmp eq i64 %i.f, %3
  br label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.bg = icmp eq ptr %1, null
  br i1 %i.bg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  tail call void @Poly1305_Update(ptr noundef nonnull %i.bh, ptr noundef nonnull %2, i64 noundef %3) #8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !40
  %i.bk = add i64 %i.bj, %3
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store i32 1, ptr %i.bl, align 8, !tbaa !42
  %i.bm = trunc i64 %3 to i32
  br label %bb.aw

bb.x:                                             ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !42
  %.not118 = icmp eq i32 %i.bo, 0
  br i1 %.not118, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !40
  %i.br = and i64 %i.bq, 15                       ; 2 uses
  %.not119 = icmp eq i64 %i.br, 0
  br i1 %.not119, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.bt = sub nuw nsw i64 16, %i.br
  tail call void @Poly1305_Update(ptr noundef nonnull %i.bs, ptr noundef nonnull @zero, i64 noundef %i.bt) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i32 0, ptr %i.bn, align 8, !tbaa !42
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  store i64 -1, ptr %i.e, align 8, !tbaa !22
  %i.bu = icmp eq i64 %i.f, -1
  br i1 %i.bu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = add i64 %i.f, 16
  %.not120 = icmp eq i64 %3, %i.bv
  br i1 %.not120, label %bb.ad, label %bb.aw

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.0104 = phi i64 [ %i.f, %bb.ac ], [ %3, %bb.ab ] ; 9 uses
  %i.bw = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #8
  %.not121 = icmp eq i32 %i.bw, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  br i1 %.not121, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = tail call i32 @chacha_cipher(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %.0104) ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  tail call void @Poly1305_Update(ptr noundef nonnull %i.bz, ptr noundef nonnull %1, i64 noundef %.0104) #8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  tail call void @Poly1305_Update(ptr noundef nonnull %i.ca, ptr noundef nonnull %2, i64 noundef %.0104) #8
  %i.cb = tail call i32 @chacha_cipher(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %.0104) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cc = load i64, ptr %i.bx, align 8, !tbaa !41
  %i.cd = add i64 %i.cc, %.0104
  store i64 %i.cd, ptr %i.bx, align 8, !tbaa !41
  %.0107 = getelementptr inbounds nuw i8, ptr %2, i64 %.0104
  %.0108 = getelementptr inbounds nuw i8, ptr %1, i64 %.0104
  %.not122 = icmp eq i64 %.0104, %3
  br i1 %.not122, label %bb.av, label %bb.ah

bb.ah:                                            ; preds = %.thread, %bb.ag
  %.not122143 = phi i1 [ %.not122138, %.thread ], [ false, %bb.ag ]
  %.1142 = phi i64 [ %i.f, %.thread ], [ %.0104, %bb.ag ] ; 2 uses
  %.0107141 = phi ptr [ null, %.thread ], [ %.0107, %bb.ag ] ; 2 uses
  %.0108140 = phi ptr [ %1, %.thread ], [ %.0108, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !42
  %.not123 = icmp eq i32 %i.cf, 0
  br i1 %.not123, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !40
  %i.ci = and i64 %i.ch, 15                       ; 2 uses
  %.not124 = icmp eq i64 %i.ci, 0
  br i1 %.not124, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.ck = sub nuw nsw i64 16, %i.ci
  tail call void @Poly1305_Update(ptr noundef nonnull %i.cj, ptr noundef nonnull @zero, i64 noundef %i.ck) #8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store i32 0, ptr %i.ce, align 8, !tbaa !42
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !41
  %i.co = and i64 %i.cn, 15                       ; 2 uses
  %.not125 = icmp eq i64 %i.co, 0
  br i1 %.not125, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.cq = sub nuw nsw i64 16, %i.co
  tail call void @Poly1305_Update(ptr noundef nonnull %i.cp, ptr noundef nonnull @zero, i64 noundef %i.cq) #8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 2 uses
  tail call void @Poly1305_Update(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cl, i64 noundef 16) #8
  %i.cs = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #8
  %.not126 = icmp eq i32 %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 132 ; 3 uses
  %i.cu = select i1 %.not126, ptr %i.b, ptr %i.ct
  call void @Poly1305_Final(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cu) #8
  store i32 0, ptr %i.g, align 4, !tbaa !24
  %.not127 = icmp eq ptr %.0107141, null
  %or.cond134 = select i1 %.not127, i1 true, i1 %.not122143
  %i.cv = call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #8
  %.not129 = icmp eq i32 %i.cv, 0                 ; 2 uses
  br i1 %or.cond134, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %.not129, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0108140, ptr noundef nonnull align 4 dereferenceable(16) %i.ct, i64 16, i1 false)
  br label %.critedge

bb.aq:                                            ; preds = %bb.ao
  %i.cw = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.b, ptr noundef nonnull %.0107141, i64 noundef 16) #8
  %.not132 = icmp eq i32 %i.cw, 0
  br i1 %.not132, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cx = sub i64 0, %.1142
  %i.cy = getelementptr inbounds i8, ptr %.0108140, i64 %i.cx
  call void @llvm.memset.p0.i64(ptr align 1 %i.cy, i8 0, i64 %.1142, i1 false)
  br label %bb.au

bb.as:                                            ; preds = %bb.an
  br i1 %.not129, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.as
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !25
  %i.db = sext i32 %i.da to i64
  %i.dc = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ct, i64 noundef %i.db) #8
  %.not130 = icmp eq i32 %i.dc, 0
  br i1 %.not130, label %.critedge, label %bb.au

.critedge:                                        ; preds = %bb.as, %bb.at, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.aw

bb.av:                                            ; preds = %.critedge, %bb.ag
  %i.dd = trunc i64 %3 to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.ac, %bb.av, %bb.w, %chacha20_poly1305_tls_cipher.exit
  %.1106 = phi i32 [ %i.bm, %bb.w ], [ %i.dd, %bb.av ], [ -1, %bb.au ], [ %.0.i, %chacha20_poly1305_tls_cipher.exit ], [ -1, %bb.ac ]
  ret i32 %.1106
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @chacha20_poly1305_cleanup(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @Poly1305_ctx_size() #8
  %i.d = add i64 %i.c, 208
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef %i.d) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 17) i32 @chacha20_poly1305_ctrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 24 uses
  switch i32 %1, label %bb.x [
    i32 0, label %bb.b
    i32 8, label %bb.e
    i32 37, label %bb.h
    i32 9, label %bb.i
    i32 18, label %bb.k
    i32 17, label %bb.m
    i32 16, label %bb.p
    i32 22, label %bb.s
    i32 23, label %.critedge
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @Poly1305_ctx_size() #8
  %i.e = add i64 %i.d, 208
  %i.f = tail call noalias ptr @CRYPTO_zalloc(i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 506) #8 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 508, ptr noundef nonnull @__func__.chacha20_poly1305_ctrl) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, ptr noundef null) #8
  br label %.critedge

.thread:                                          ; preds = %bb.b, %bb.c
  %.095110 = phi ptr [ %i.f, %bb.c ], [ %i.b, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.095110, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %.095110, i64 196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  store i32 12, ptr %i.i, align 4, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %.095110, i64 200
  store i64 -1, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %.095110, i64 148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %.critedge

bb.e:                                             ; preds = %bb.a
  %.not107 = icmp eq ptr %i.b, null
  br i1 %.not107, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i64 @Poly1305_ctx_size() #8
  %i.m = add i64 %i.l, 208
  %i.n = tail call ptr @CRYPTO_memdup(ptr noundef nonnull %i.b, i64 noundef %i.m, ptr noundef nonnull @.str, i32 noundef 525) #8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 120
  store ptr %i.n, ptr %i.o, align 8, !tbaa !15
  %.not108 = icmp eq ptr %i.n, null
  br i1 %.not108, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 527, ptr noundef nonnull @__func__.chacha20_poly1305_ctrl) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 173, ptr noundef null) #8
  br label %.critedge

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.q = load i32, ptr %i.p, align 4, !tbaa !23
  store i32 %i.q, ptr %3, align 4, !tbaa !17
  br label %.critedge

bb.i:                                             ; preds = %bb.a
  %i.r = add i32 %2, -13
  %or.cond = icmp ult i32 %i.r, -12
  br i1 %or.cond, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  store i32 %2, ptr %i.s, align 4, !tbaa !23
  br label %.critedge

bb.k:                                             ; preds = %bb.a
  %.not106 = icmp eq i32 %2, 12
  br i1 %.not106, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.t = load i32, ptr %3, align 1                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.t, ptr %i.u, align 4, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 %i.t, ptr %i.v, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = load i32, ptr %i.w, align 1              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.x, ptr %i.y, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i32 %i.x, ptr %i.z, align 4, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i32, ptr %i.aa, align 1            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i32 %i.ab, ptr %i.ad, align 8, !tbaa !17
  br label %.critedge

bb.m:                                             ; preds = %bb.a
  %i.ae = add i32 %2, -17
  %or.cond3 = icmp ult i32 %i.ae, -16
  br i1 %or.cond3, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not105 = icmp eq ptr %3, null
  br i1 %.not105, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.ag = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull align 1 %3, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store i32 %2, ptr %i.ah, align 8, !tbaa !25
  br label %.critedge

bb.p:                                             ; preds = %bb.a
  %i.ai = add i32 %2, -17
  %or.cond5 = icmp ult i32 %i.ai, -16
  br i1 %or.cond5, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #8
  %.not104 = icmp eq i32 %i.aj, 0
  br i1 %.not104, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.al = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr nonnull align 4 %i.ak, i64 %i.al, i1 false)
  br label %.critedge

bb.s:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 13
  br i1 %.not, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.am, ptr noundef nonnull align 1 dereferenceable(13) %3, i64 13, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.aq, %i.at            ; 3 uses
  %i.av = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #8
  %.not103 = icmp eq i32 %i.av, 0
  br i1 %.not103, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.aw = icmp samesign ult i32 %i.au, 16
  br i1 %i.aw, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = add nsw i32 %i.au, -16                  ; 3 uses
  %i.ay = lshr i32 %i.ax, 8
  %i.az = trunc nuw i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 159
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !16
  %i.bb = trunc i32 %i.ax to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i8 %i.bb, ptr %i.bc, align 4, !tbaa !16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.0 = phi i32 [ %i.au, %bb.t ], [ %i.ax, %bb.v ]
  %i.bd = zext nneg i32 %.0 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bk = load <2 x i32>, ptr %i.bi, align 4, !tbaa !17
  %i.bl = load <2 x i32>, ptr %i.am, align 4
  %i.bm = xor <2 x i32> %i.bl, %i.bk
  store <2 x i32> %i.bm, ptr %i.bj, align 8, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  store i32 0, ptr %i.bn, align 4, !tbaa !24
  br label %.critedge

bb.x:                                             ; preds = %bb.a
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.g, %bb.a, %bb.w, %bb.u, %bb.s, %bb.p, %bb.q, %bb.n, %bb.o, %bb.m, %bb.k, %bb.i, %bb.x, %bb.r, %bb.l, %bb.j, %bb.h, %.thread, %bb.d
  %.2 = phi i32 [ -1, %bb.x ], [ 0, %bb.d ], [ 1, %.thread ], [ 1, %bb.a ], [ 0, %bb.g ], [ 1, %bb.h ], [ 0, %bb.u ], [ 1, %bb.j ], [ 0, %bb.i ], [ 1, %bb.l ], [ 0, %bb.k ], [ 0, %bb.m ], [ 1, %bb.n ], [ 1, %bb.r ], [ 0, %bb.p ], [ 0, %bb.s ], [ 1, %bb.o ], [ 0, %bb.q ], [ 16, %bb.w ], [ 1, %bb.f ], [ 1, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @Poly1305_Init(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Poly1305_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef) local_unnamed_addr #4

declare void @Poly1305_Final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @xor128_encrypt_n_pad(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @xor128_decrypt_n_pad(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @Poly1305_ctx_size() local_unnamed_addr #4

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @CRYPTO_memdup(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS13evp_cipher_st", !10, i64 0}
!12 = !{!"p1 _ZTS9engine_st", !10, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"evp_cipher_ctx_st", !11, i64 0, !12, i64 8, !7, i64 16, !7, i64 20, !6, i64 24, !6, i64 40, !6, i64 56, !7, i64 88, !10, i64 96, !7, i64 104, !7, i64 108, !13, i64 112, !10, i64 120, !7, i64 128, !7, i64 132, !6, i64 136, !13, i64 168, !10, i64 176, !11, i64 184}
!15 = !{!14, !10, i64 120}
!16 = !{!6, !6, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!"", !6, i64 0, !6, i64 32, !6, i64 48, !7, i64 112}
!19 = !{!18, !7, i64 112}
!20 = !{!"", !13, i64 0, !13, i64 8}
!21 = !{!"", !18, i64 0, !6, i64 120, !6, i64 132, !6, i64 148, !20, i64 168, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !13, i64 200}
!22 = !{!21, !13, i64 200}
!23 = !{!21, !7, i64 196}
!24 = !{!21, !7, i64 188}
!25 = !{!21, !7, i64 192}
!26 = distinct !{!26, !34, !35, !36}
!27 = distinct !{!27, !34, !35, !36}
!28 = distinct !{!28, !34, !35}
!29 = distinct !{!29, !34}
!30 = distinct !{!30, !34, !35, !36}
!31 = distinct !{!31, !34, !35, !36}
!32 = distinct !{!32, !38}
!33 = distinct !{!33, !34, !35}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!"branch_weights", i32 4, i32 12}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!21, !7, i64 112}
!40 = !{!21, !13, i64 168}
!41 = !{!21, !13, i64 176}
!42 = !{!21, !7, i64 184}
end_hunk_0
