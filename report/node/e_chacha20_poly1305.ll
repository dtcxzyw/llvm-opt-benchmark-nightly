inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 13 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit31, label %.preheader30.preheader

.preheader30.preheader:                           ; preds = %bb.a
  %i.c = load i32, ptr %1, align 1
  store i32 %i.c, ptr %i.b, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.h, ptr %i.i, align 4, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.k, ptr %i.l, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i32, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.n, ptr %i.o, align 4, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = load i32, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.q, ptr %i.r, align 4, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i32, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.t, ptr %i.u, align 4, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i32, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.w, ptr %i.x, align 4, !tbaa !15
  br label %.loopexit31

.loopexit31:                                      ; preds = %.preheader30.preheader, %bb.a
  %.not29 = icmp eq ptr %2, null
  br i1 %.not29, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit31
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.z = load i32, ptr %2, align 1
  store i32 %i.z, ptr %i.y, align 4, !tbaa !5
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !5
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !5
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !5
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 0, ptr %i.aj, align 8, !tbaa !16
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @chacha_cipher(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 10 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16   ; 4 uses
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
  %diff.check = icmp ugt i64 %i.p, -32
  %i.q = add i64 %i.e, %i.l
  %i.r = sub i64 %i.b, %i.q
  %i.s = add i64 %i.r, -49
  %diff.check120 = icmp ult i64 %i.s, 31
  %conflict.rdx = or i1 %diff.check, %diff.check120
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check121 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph.a

vector.ph.a:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.o, 28
  %n.vec = and i64 %i.o, 96                       ; 6 uses
  %4 = add nuw nsw i64 %n.vec, %i.l               ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %5 = sub i64 %3, %n.vec                         ; 2 uses
  %i.u = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  %i.v = getelementptr i8, ptr %2, i64 16
  %wide.load = load <16 x i8>, ptr %2, align 1, !tbaa !15
  %wide.load123 = load <16 x i8>, ptr %i.v, align 1, !tbaa !15
  %i.w = getelementptr i8, ptr %i.k, i64 %i.l     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load124 = load <16 x i8>, ptr %i.w, align 1, !tbaa !15
  %wide.load125 = load <16 x i8>, ptr %i.x, align 1, !tbaa !15
  %i.y = xor <16 x i8> %wide.load124, %wide.load
  %i.z = xor <16 x i8> %wide.load125, %wide.load123
  %i.aa = getelementptr i8, ptr %1, i64 16
  store <16 x i8> %i.y, ptr %1, align 1, !tbaa !15
  store <16 x i8> %i.z, ptr %i.aa, align 1, !tbaa !15
  %cmp.n.a = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n.a, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph.a
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec130 = and i64 %i.o, 124                   ; 6 uses
  %i.ab = add nuw nsw i64 %n.vec130, %i.l         ; 2 uses
  %i.ac = getelementptr i8, ptr %1, i64 %n.vec130 ; 2 uses
  %i.ad = sub i64 %3, %n.vec130                   ; 2 uses
  %i.ae = getelementptr i8, ptr %2, i64 %n.vec130 ; 2 uses
  %invariant.gep.a = getelementptr i8, ptr %i.k, i64 %i.l
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index131 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next136, %vec.epilog.vector.body ] ; 4 uses
  %next.gep132 = getelementptr i8, ptr %1, i64 %index131
  %next.gep133 = getelementptr i8, ptr %2, i64 %index131
  %wide.load134 = load <4 x i8>, ptr %next.gep133, align 1, !tbaa !15
  %gep = getelementptr i8, ptr %invariant.gep.a, i64 %index131
  %wide.load135 = load <4 x i8>, ptr %gep, align 1, !tbaa !15
  %i.af = xor <4 x i8> %wide.load135, %wide.load134
  store <4 x i8> %i.af, ptr %next.gep132, align 1, !tbaa !15
  %index.next136 = add nuw i64 %index131, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n137 = icmp eq i64 %i.o, %n.vec130
  br i1 %cmp.n137, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.l, %iter.check ], [ %i.l, %vector.memcheck ], [ %4, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  %.06783.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  %.06982.ph = phi i64 [ %3, %iter.check ], [ %3, %vector.memcheck ], [ %5, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  %.07281.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.u, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.06783 = phi ptr [ %i.am, %vec.epilog.scalar.ph ], [ %.06783.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.06982 = phi i64 [ %i.an, %vec.epilog.scalar.ph ], [ %.06982.ph, %vec.epilog.scalar.ph.preheader ]
  %.07281 = phi ptr [ %i.ah, %vec.epilog.scalar.ph ], [ %.07281.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.07281, i64 1 ; 2 uses
  %i.ai = load i8, ptr %.07281, align 1, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !15
  %i.al = xor i8 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %.06783, i64 1 ; 2 uses
  store i8 %i.al, ptr %.06783, align 1, !tbaa !15
  %i.an = add i64 %.06982, -1                     ; 3 uses
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = icmp samesign ult i64 %indvars.iv, 63
  %i.aq = and i1 %i.ao, %i.ap
  br i1 %i.aq, label %vec.epilog.scalar.ph, label %._crit_edge.loopexit, !llvm.loop !23

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph.a
  %.lcssa119 = phi ptr [ %i.ae, %vec.epilog.middle.block ], [ %i.u, %vector.ph.a ], [ %i.ah, %vec.epilog.scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %i.ab, %vec.epilog.middle.block ], [ %4, %vector.ph.a ], [ %indvars.iv.next, %vec.epilog.scalar.ph ]
  %.lcssa118 = phi ptr [ %i.ac, %vec.epilog.middle.block ], [ %i.t, %vector.ph.a ], [ %i.am, %vec.epilog.scalar.ph ]
  %.lcssa117 = phi i64 [ %i.ad, %vec.epilog.middle.block ], [ %5, %vector.ph.a ], [ %i.an, %vec.epilog.scalar.ph ]
  %i.ar = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.072.lcssa = phi ptr [ %2, %.preheader ], [ %.lcssa119, %._crit_edge.loopexit ] ; 3 uses
  %.069.lcssa = phi i64 [ %3, %.preheader ], [ %.lcssa117, %._crit_edge.loopexit ] ; 4 uses
  %.067.lcssa = phi ptr [ %1, %.preheader ], [ %.lcssa118, %._crit_edge.loopexit ] ; 3 uses
  %.065.lcssa = phi i32 [ %i.g, %.preheader ], [ %i.ar, %._crit_edge.loopexit ] ; 2 uses
  store i32 %.065.lcssa, ptr %i.f, align 8, !tbaa !16
  %i.as = icmp eq i64 %.069.lcssa, 0
  br i1 %i.as, label %bb.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.at = icmp eq i32 %.065.lcssa, 64
  br i1 %i.at, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !5
  %i.aw = add i32 %i.av, 1                        ; 2 uses
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !5
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !5
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !5
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.173 = phi ptr [ %.072.lcssa, %bb.d ], [ %.072.lcssa, %bb.c ], [ %.072.lcssa, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.170 = phi i64 [ %.069.lcssa, %bb.d ], [ %.069.lcssa, %bb.c ], [ %.069.lcssa, %bb.b ], [ %3, %bb.a ] ; 7 uses
  %.168 = phi ptr [ %.067.lcssa, %bb.d ], [ %.067.lcssa, %bb.c ], [ %.067.lcssa, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.bb = trunc i64 %.170 to i32
  %i.bc = and i32 %i.bb, 63                       ; 2 uses
  %i.bd = and i64 %.170, -64                      ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %.not7888 = icmp eq i64 %i.bd, 0
  br i1 %.not7888, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.e
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !5
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph94, %bb.h
  %.06392 = phi i32 [ %i.bf, %.lr.ph94 ], [ %spec.select, %bb.h ]
  %.291 = phi ptr [ %.168, %.lr.ph94 ], [ %i.bq, %bb.h ] ; 2 uses
  %.27190 = phi i64 [ %i.bd, %.lr.ph94 ], [ %i.bo, %bb.h ] ; 2 uses
  %.27489 = phi ptr [ %.173, %.lr.ph94 ], [ %i.bp, %bb.h ] ; 2 uses
  %i.bh = lshr exact i64 %.27190, 6
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 268435456) ; 3 uses
  %i.bi = trunc nuw nsw i64 %spec.store.select to i32
  %i.bj = add i32 %.06392, %i.bi                  ; 2 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = icmp samesign ugt i64 %spec.store.select, %i.bk ; 2 uses
  %spec.select = select i1 %i.bl, i32 0, i32 %i.bj ; 3 uses
  %i.bm = select i1 %i.bl, i64 %i.bk, i64 0
  %spec.select80 = sub nuw nsw i64 %spec.store.select, %i.bm
  %i.bn = shl nuw nsw i64 %spec.select80, 6       ; 4 uses
  tail call void @ChaCha20_ctr32(ptr noundef %.291, ptr noundef %.27489, i64 noundef %i.bn, ptr noundef nonnull %i.d, ptr noundef nonnull %i.be) #8
  %i.bo = sub i64 %.27190, %i.bn                  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.27489, i64 %i.bn ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.291, i64 %i.bn ; 2 uses
  store i32 %spec.select, ptr %i.be, align 8, !tbaa !5
  %i.br = icmp eq i32 %spec.select, 0
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = load i32, ptr %i.bg, align 4, !tbaa !5
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.bg, align 4, !tbaa !5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not78 = icmp eq i64 %i.bo, 0
  br i1 %.not78, label %._crit_edge95, label %bb.f, !llvm.loop !24

._crit_edge95:                                    ; preds = %bb.h, %bb.e
  %.274.lcssa = phi ptr [ %.173, %bb.e ], [ %i.bp, %bb.h ] ; 8 uses
  %.2.lcssa = phi ptr [ %.168, %bb.e ], [ %i.bq, %bb.h ] ; 8 uses
  %.2.lcssa143 = ptrtoaddr ptr %.2.lcssa to i64   ; 2 uses
  %.274.lcssa144 = ptrtoaddr ptr %.274.lcssa to i64
  %.not79 = icmp eq i32 %i.bc, 0
  br i1 %.not79, label %bb.i, label %iter.check164

iter.check164:                                    ; preds = %._crit_edge95
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bu, i8 0, i64 64, i1 false)
  tail call void @ChaCha20_ctr32(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bu, i64 noundef 64, ptr noundef nonnull %i.d, ptr noundef nonnull %i.be) #8
  %wide.trip.count = and i64 %.170, 63            ; 6 uses
  %min.iters.check148 = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check148, label %vec.epilog.scalar.ph165.preheader, label %vector.memcheck142

vector.memcheck142:                               ; preds = %iter.check164
  %i.bv = sub i64 %.274.lcssa144, %.2.lcssa143
  %diff.check145 = icmp ugt i64 %i.bv, -16
  %i.bw = sub i64 %.2.lcssa143, %i.e
  %i.bx = add i64 %i.bw, -49
  %diff.check146 = icmp ult i64 %i.bx, 15
  %conflict.rdx147 = or i1 %diff.check145, %diff.check146
  br i1 %conflict.rdx147, label %vec.epilog.scalar.ph165.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %vector.memcheck142
  %min.iters.check150 = icmp samesign ult i64 %wide.trip.count, 16
  br i1 %min.iters.check150, label %vec.epilog.ph168, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %n.mod.vf152 = and i64 %.170, 12
  %n.vec153 = and i64 %.170, 48                   ; 4 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph151
  %index155 = phi i64 [ 0, %vector.ph151 ], [ %index.next160, %vector.body154 ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.274.lcssa, i64 %index155 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %wide.load156 = load <8 x i8>, ptr %i.by, align 1, !tbaa !15
  %wide.load157 = load <8 x i8>, ptr %i.bz, align 1, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %index155 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %wide.load158 = load <8 x i8>, ptr %i.ca, align 1, !tbaa !15
  %wide.load159 = load <8 x i8>, ptr %i.cb, align 1, !tbaa !15
  %i.cc = xor <8 x i8> %wide.load158, %wide.load156
  %i.cd = xor <8 x i8> %wide.load159, %wide.load157
  %i.ce = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %index155 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store <8 x i8> %i.cc, ptr %i.ce, align 1, !tbaa !15
  store <8 x i8> %i.cd, ptr %i.cf, align 1, !tbaa !15
  %index.next160 = add nuw i64 %index155, 16      ; 2 uses
  %i.cg = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.cg, label %middle.block161, label %vector.body154, !llvm.loop !25

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %wide.trip.count, %n.vec153
  br i1 %cmp.n162, label %.loopexit, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block161
  %min.epilog.iters.check167 = icmp eq i64 %n.mod.vf152, 0
  br i1 %min.epilog.iters.check167, label %vec.epilog.scalar.ph165.preheader, label %vec.epilog.ph168, !prof !26

vec.epilog.ph168:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check166
  %vec.epilog.resume.val163 = phi i64 [ %n.vec153, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check149 ]
  %n.vec170 = and i64 %.170, 60                   ; 3 uses
  br label %vec.epilog.vector.body171

vec.epilog.vector.body171:                        ; preds = %vec.epilog.vector.body171, %vec.epilog.ph168
  %index172 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph168 ], [ %index.next175, %vec.epilog.vector.body171 ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.274.lcssa, i64 %index172
  %wide.load173 = load <4 x i8>, ptr %i.ch, align 1, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 %index172
  %wide.load174 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !15
  %i.cj = xor <4 x i8> %wide.load174, %wide.load173
  %i.ck = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %index172
  store <4 x i8> %i.cj, ptr %i.ck, align 1, !tbaa !15
  %index.next175 = add nuw i64 %index172, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next175, %n.vec170
  br i1 %i.cl, label %vec.epilog.middle.block176, label %vec.epilog.vector.body171, !llvm.loop !27

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body171
  %cmp.n177 = icmp eq i64 %wide.trip.count, %n.vec170
  br i1 %cmp.n177, label %.loopexit, label %vec.epilog.scalar.ph165.preheader

vec.epilog.scalar.ph165.preheader:                ; preds = %vector.memcheck142, %iter.check164, %vec.epilog.iter.check166, %vec.epilog.middle.block176
  %indvars.iv105.ph = phi i64 [ 0, %iter.check164 ], [ 0, %vector.memcheck142 ], [ %n.vec153, %vec.epilog.iter.check166 ], [ %n.vec170, %vec.epilog.middle.block176 ] ; 3 uses
  %xtraiter = and i64 %.170, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph165.prol.loopexit, label %vec.epilog.scalar.ph165.prol

vec.epilog.scalar.ph165.prol:                     ; preds = %vec.epilog.scalar.ph165.preheader, %vec.epilog.scalar.ph165.prol
  %indvars.iv105.prol = phi i64 [ %indvars.iv.next106.prol, %vec.epilog.scalar.ph165.prol ], [ %indvars.iv105.ph, %vec.epilog.scalar.ph165.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph165.prol ], [ 0, %vec.epilog.scalar.ph165.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.274.lcssa, i64 %indvars.iv105.prol
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv105.prol
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !15
  %i.cq = xor i8 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv105.prol
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !15
  %indvars.iv.next106.prol = add nuw nsw i64 %indvars.iv105.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph165.prol.loopexit, label %vec.epilog.scalar.ph165.prol, !llvm.loop !28

vec.epilog.scalar.ph165.prol.loopexit:            ; preds = %vec.epilog.scalar.ph165.prol, %vec.epilog.scalar.ph165.preheader
  %indvars.iv105.unr = phi i64 [ %indvars.iv105.ph, %vec.epilog.scalar.ph165.preheader ], [ %indvars.iv.next106.prol, %vec.epilog.scalar.ph165.prol ]
  %i.cs = sub nsw i64 %indvars.iv105.ph, %wide.trip.count
  %i.ct = icmp ugt i64 %i.cs, -4
  br i1 %i.ct, label %.loopexit, label %vec.epilog.scalar.ph165

vec.epilog.scalar.ph165:                          ; preds = %vec.epilog.scalar.ph165.prol.loopexit, %vec.epilog.scalar.ph165
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.3, %vec.epilog.scalar.ph165 ], [ %indvars.iv105.unr, %vec.epilog.scalar.ph165.prol.loopexit ] ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.274.lcssa, i64 %indvars.iv105
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv105
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !15
  %i.cy = xor i8 %i.cx, %i.cv
  %i.cz = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv105
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !15
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.274.lcssa, i64 %indvars.iv.next106
  %i.db = load i8, ptr %i.da, align 1, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.next106
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !15
  %i.de = xor i8 %i.dd, %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv.next106
  store i8 %i.de, ptr %i.df, align 1, !tbaa !15
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.274.lcssa, i64 %indvars.iv.next106.1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !15
  %i.di = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.next106.1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !15
  %i.dk = xor i8 %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv.next106.1
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !15
  %indvars.iv.next106.2 = add nuw nsw i64 %indvars.iv105, 3 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.274.lcssa, i64 %indvars.iv.next106.2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.next106.2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !15
  %i.dq = xor i8 %i.dp, %i.dn
  %i.dr = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv.next106.2
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !15
  %indvars.iv.next106.3 = add nuw nsw i64 %indvars.iv105, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next106.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph165, !llvm.loop !30

.loopexit:                                        ; preds = %vec.epilog.scalar.ph165.prol.loopexit, %vec.epilog.scalar.ph165, %vec.epilog.middle.block176, %middle.block161
  store i32 %i.bc, ptr %i.f, align 8, !tbaa !16
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 24 uses
  %i.d = icmp ne ptr %1, null
  %i.e = icmp ne ptr %2, null                     ; 2 uses
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store i64 -1, ptr %i.g, align 8, !tbaa !31
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 196
  %i.i = load i32, ptr %i.h, align 4, !tbaa !34   ; 2 uses
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
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %chacha_init_key.exit, label %.preheader30.preheader.i

.preheader30.preheader.i:                         ; preds = %bb.e
  %i.o = load i32, ptr %1, align 1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i32, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.t, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load i32, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.w, ptr %i.x, align 4, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = load i32, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ai = load i32, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !15
  br label %chacha_init_key.exit

chacha_init_key.exit:                             ; preds = %bb.e, %.preheader30.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.am = load <4 x i32>, ptr %i.a, align 16      ; 2 uses
  %i.an = load i32, ptr %i.al, align 4
  store <4 x i32> %i.am, ptr %i.ak, align 8, !tbaa !5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i32 0, ptr %i.ao, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i32 %i.an, ptr %i.ap, align 8, !tbaa !5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.ar = shufflevector <4 x i32> %i.am, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %i.ar, ptr %i.aq, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.not.i27 = icmp eq ptr %1, null
  br i1 %.not.i27, label %chacha_init_key.exit29, label %.preheader30.preheader.i28

.preheader30.preheader.i28:                       ; preds = %bb.f
  %i.as = load i32, ptr %1, align 1
  store i32 %i.as, ptr %i.c, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.au = load i32, ptr %i.at, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.au, ptr %i.av, align 4, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load i32, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ba = load i32, ptr %i.az, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bg = load i32, ptr %i.bf, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load i32, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bm = load i32, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !15
  br label %chacha_init_key.exit29

chacha_init_key.exit29:                           ; preds = %bb.f, %.preheader30.preheader.i28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i32 0, ptr %i.bo, align 8, !tbaa !16
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 46 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !31   ; 23 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 188 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35
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
  store i32 0, ptr %i.o, align 8, !tbaa !5
  br i1 %i.n, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.p = add nuw nsw i64 %i.f, 127
  %i.q = and i64 %i.p, 448                        ; 2 uses
  call void @ChaCha20_ctr32(ptr noundef nonnull %i.a, ptr noundef nonnull @zero, i64 noundef %i.q, ptr noundef nonnull %i.d, ptr noundef nonnull %i.o) #8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  call void @Poly1305_Init(ptr noundef nonnull %i.r, ptr noundef nonnull %i.a) #8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 0, ptr %i.s, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i64 13, ptr %i.u, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store i64 %i.f, ptr %i.v, align 8, !tbaa !38
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
  store i32 1, ptr %i.o, align 8, !tbaa !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 0, ptr %i.af, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  call void @Poly1305_Update(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ag, i64 noundef 16) #8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i64 13, ptr %i.ah, align 8, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store i64 %i.f, ptr %i.ai, align 8, !tbaa !38
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
  %.0102.i = phi i64 [ %i.ad, %bb.i ], [ 32, %bb.e ], [ 16, %bb.m ]
  %.0101.i = phi i64 [ %i.q, %bb.i ], [ 64, %bb.e ], [ 64, %bb.m ]
  %.0100.i = phi ptr [ %i.z, %bb.i ], [ %2, %bb.e ], [ %i.ak, %bb.m ]
  %.099.i = phi ptr [ %i.aa, %bb.i ], [ %1, %bb.e ], [ %i.al, %bb.m ] ; 2 uses
  %.098.i = phi ptr [ %i.m, %bb.i ], [ %i.m, %bb.e ], [ %i.l, %bb.m ] ; 3 uses
  %.1.i = phi ptr [ %.097.i, %bb.i ], [ %i.l, %bb.e ], [ %i.l, %bb.m ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 2 uses
  call void @Poly1305_Update(ptr noundef nonnull %i.ap, ptr noundef nonnull %.098.i, i64 noundef %.0102.i) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef %.0101.i) #8
  %i.aq = call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #8
  %.not108.i = icmp eq i32 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 132 ; 2 uses
  %i.as = select i1 %.not108.i, ptr %.098.i, ptr %i.ar
  call void @Poly1305_Final(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.as) #8
  store i64 -1, ptr %i.e, align 8, !tbaa !31
  %i.at = call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #8
  %.not109.i = icmp eq i32 %i.at, 0
  br i1 %.not109.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.099.i, ptr noundef nonnull align 4 dereferenceable(16) %i.ar, i64 16, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.au = call i32 @CRYPTO_memcmp(ptr noundef nonnull %.098.i, ptr noundef %.0100.i, i64 noundef 16) #8
  %.not110.i = icmp eq i32 %i.au, 0
  br i1 %.not110.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = add i64 %3, -16
  %i.aw = sub i64 16, %3
  %i.ax = getelementptr inbounds i8, ptr %.099.i, i64 %i.aw
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
  store i32 0, ptr %i.az, align 8, !tbaa !5
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  tail call void @ChaCha20_ctr32(ptr noundef nonnull %i.ba, ptr noundef nonnull @zero, i64 noundef 64, ptr noundef nonnull %i.d, ptr noundef nonnull %i.az) #8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 2 uses
  tail call void @Poly1305_Init(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.ba) #8
  store i32 1, ptr %i.az, align 8, !tbaa !5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 0, ptr %i.bc, align 8, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.g, align 4, !tbaa !35
  br i1 %i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  tail call void @Poly1305_Update(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.be, i64 noundef 13) #8
  store i64 13, ptr %i.bd, align 8, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store i32 1, ptr %i.bf, align 8, !tbaa !39
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.a
  %.not116 = icmp eq ptr %2, null
  br i1 %.not116, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.u
  %.not121137 = icmp eq i64 %i.f, %3
  br label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.bg = icmp eq ptr %1, null
  br i1 %i.bg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  tail call void @Poly1305_Update(ptr noundef nonnull %i.bh, ptr noundef nonnull %2, i64 noundef %3) #8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !37
  %i.bk = add i64 %i.bj, %3
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store i32 1, ptr %i.bl, align 8, !tbaa !39
  %i.bm = trunc i64 %3 to i32
  br label %bb.aw

bb.x:                                             ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !39
  %.not117 = icmp eq i32 %i.bo, 0
  br i1 %.not117, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !37
  %i.br = and i64 %i.bq, 15                       ; 2 uses
  %.not118 = icmp eq i64 %i.br, 0
  br i1 %.not118, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.bt = sub nuw nsw i64 16, %i.br
  tail call void @Poly1305_Update(ptr noundef nonnull %i.bs, ptr noundef nonnull @zero, i64 noundef %i.bt) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i32 0, ptr %i.bn, align 8, !tbaa !39
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  store i64 -1, ptr %i.e, align 8, !tbaa !31
  %i.bu = icmp eq i64 %i.f, -1
  br i1 %i.bu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = add i64 %i.f, 16
  %.not119 = icmp eq i64 %3, %i.bv
  br i1 %.not119, label %bb.ad, label %bb.aw

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.0105 = phi i64 [ %i.f, %bb.ac ], [ %3, %bb.ab ] ; 9 uses
  %i.bw = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #8
  %.not120 = icmp eq i32 %i.bw, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  br i1 %.not120, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = tail call i32 @chacha_cipher(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %.0105) ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  tail call void @Poly1305_Update(ptr noundef nonnull %i.bz, ptr noundef nonnull %1, i64 noundef %.0105) #8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  tail call void @Poly1305_Update(ptr noundef nonnull %i.ca, ptr noundef nonnull %2, i64 noundef %.0105) #8
  %i.cb = tail call i32 @chacha_cipher(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %.0105) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cc = load i64, ptr %i.bx, align 8, !tbaa !38
  %i.cd = add i64 %i.cc, %.0105
  store i64 %i.cd, ptr %i.bx, align 8, !tbaa !38
  %.0107 = getelementptr inbounds nuw i8, ptr %1, i64 %.0105
  %.0108 = getelementptr inbounds nuw i8, ptr %2, i64 %.0105
  %.not121 = icmp eq i64 %.0105, %3
  br i1 %.not121, label %bb.av, label %bb.ah

bb.ah:                                            ; preds = %.thread, %bb.ag
  %.not121142 = phi i1 [ %.not121137, %.thread ], [ false, %bb.ag ]
  %.1106141 = phi i64 [ %i.f, %.thread ], [ %.0105, %bb.ag ] ; 2 uses
  %.0107140 = phi ptr [ %1, %.thread ], [ %.0107, %bb.ag ] ; 2 uses
  %.0108139 = phi ptr [ null, %.thread ], [ %.0108, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !39
  %.not122 = icmp eq i32 %i.cf, 0
  br i1 %.not122, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !37
  %i.ci = and i64 %i.ch, 15                       ; 2 uses
  %.not123 = icmp eq i64 %i.ci, 0
  br i1 %.not123, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.ck = sub nuw nsw i64 16, %i.ci
  tail call void @Poly1305_Update(ptr noundef nonnull %i.cj, ptr noundef nonnull @zero, i64 noundef %i.ck) #8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store i32 0, ptr %i.ce, align 8, !tbaa !39
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !38
  %i.co = and i64 %i.cn, 15                       ; 2 uses
  %.not124 = icmp eq i64 %i.co, 0
  br i1 %.not124, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.cq = sub nuw nsw i64 16, %i.co
  tail call void @Poly1305_Update(ptr noundef nonnull %i.cp, ptr noundef nonnull @zero, i64 noundef %i.cq) #8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 2 uses
  tail call void @Poly1305_Update(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cl, i64 noundef 16) #8
  %i.cs = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #8
  %.not125 = icmp eq i32 %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 132 ; 3 uses
  %i.cu = select i1 %.not125, ptr %i.b, ptr %i.ct
  call void @Poly1305_Final(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cu) #8
  store i32 0, ptr %i.g, align 4, !tbaa !35
  %.not126 = icmp eq ptr %.0108139, null
  %or.cond133 = select i1 %.not126, i1 true, i1 %.not121142
  %i.cv = call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef nonnull %0) #8
  %.not128 = icmp eq i32 %i.cv, 0                 ; 2 uses
  br i1 %or.cond133, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %.not128, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0107140, ptr noundef nonnull align 4 dereferenceable(16) %i.ct, i64 16, i1 false)
  br label %.critedge

bb.aq:                                            ; preds = %bb.ao
  %i.cw = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.b, ptr noundef nonnull %.0108139, i64 noundef 16) #8
  %.not131 = icmp eq i32 %i.cw, 0
  br i1 %.not131, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cx = sub i64 0, %.1106141
  %i.cy = getelementptr inbounds i8, ptr %.0107140, i64 %i.cx
  call void @llvm.memset.p0.i64(ptr align 1 %i.cy, i8 0, i64 %.1106141, i1 false)
  br label %bb.au

bb.as:                                            ; preds = %bb.an
  br i1 %.not128, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.as
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !40
  %i.db = sext i32 %i.da to i64
  %i.dc = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ct, i64 noundef %i.db) #8
  %.not129 = icmp eq i32 %i.dc, 0
  br i1 %.not129, label %.critedge, label %bb.au

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
  %.1 = phi i32 [ %i.bm, %bb.w ], [ %i.dd, %bb.av ], [ -1, %bb.au ], [ %.0.i, %chacha20_poly1305_tls_cipher.exit ], [ -1, %bb.ac ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @chacha20_poly1305_cleanup(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 24 uses
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
  store ptr %i.f, ptr %i.a, align 8, !tbaa !9
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 508, ptr noundef nonnull @__func__.chacha20_poly1305_ctrl) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, ptr noundef null) #8
  br label %.critedge

.thread:                                          ; preds = %bb.b, %bb.c
  %.096110 = phi ptr [ %i.f, %bb.c ], [ %i.b, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.096110, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %.096110, i64 196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  store i32 12, ptr %i.i, align 4, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %.096110, i64 200
  store i64 -1, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %.096110, i64 148
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
  store ptr %i.n, ptr %i.o, align 8, !tbaa !9
  %.not108 = icmp eq ptr %i.n, null
  br i1 %.not108, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 527, ptr noundef nonnull @__func__.chacha20_poly1305_ctrl) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 173, ptr noundef null) #8
  br label %.critedge

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.q = load i32, ptr %i.p, align 4, !tbaa !34
  store i32 %i.q, ptr %3, align 4, !tbaa !5
  br label %.critedge

bb.i:                                             ; preds = %bb.a
  %i.r = add i32 %2, -13
  %or.cond = icmp ult i32 %i.r, -12
  br i1 %or.cond, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  store i32 %2, ptr %i.s, align 4, !tbaa !34
  br label %.critedge

bb.k:                                             ; preds = %bb.a
  %.not106 = icmp eq i32 %2, 12
  br i1 %.not106, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.t = load i32, ptr %3, align 1                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.t, ptr %i.u, align 4, !tbaa !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 %i.t, ptr %i.v, align 8, !tbaa !5
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = load i32, ptr %i.w, align 1              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.x, ptr %i.y, align 8, !tbaa !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i32 %i.x, ptr %i.z, align 4, !tbaa !5
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i32, ptr %i.aa, align 1            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i32 %i.ab, ptr %i.ad, align 8, !tbaa !5
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
  store i32 %2, ptr %i.ah, align 8, !tbaa !40
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
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !15
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
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !15
  %i.bb = trunc i32 %i.ax to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.0 = phi i32 [ %i.au, %bb.t ], [ %i.ax, %bb.v ]
  %i.bd = zext nneg i32 %.0 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !31
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !5
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bk = load <2 x i32>, ptr %i.bi, align 4, !tbaa !5
  %i.bl = load <2 x i32>, ptr %i.am, align 4
  %i.bm = xor <2 x i32> %i.bl, %i.bk
  store <2 x i32> %i.bm, ptr %i.bj, align 8, !tbaa !5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  store i32 0, ptr %i.bn, align 4, !tbaa !35
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
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 120}
!10 = !{!"evp_cipher_ctx_st", !11, i64 0, !13, i64 8, !6, i64 16, !6, i64 20, !7, i64 24, !7, i64 40, !7, i64 56, !6, i64 88, !12, i64 96, !6, i64 104, !6, i64 108, !14, i64 112, !12, i64 120, !6, i64 128, !6, i64 132, !7, i64 136, !14, i64 168, !12, i64 176, !11, i64 184}
!11 = !{!"p1 _ZTS13evp_cipher_st", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS9engine_st", !12, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !6, i64 112}
!17 = !{!"", !7, i64 0, !7, i64 32, !7, i64 48, !6, i64 112}
!18 = !{!"branch_weights", i32 4, i32 28}
!19 = distinct !{!19, !20, !21, !22}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !20, !21}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20, !21, !22}
!26 = !{!"branch_weights", i32 4, i32 12}
!27 = distinct !{!27, !20, !21, !22}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = distinct !{!30, !20, !21}
!31 = !{!32, !14, i64 200}
!32 = !{!"", !17, i64 0, !7, i64 120, !7, i64 132, !7, i64 148, !33, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !14, i64 200}
!33 = !{!"", !14, i64 0, !14, i64 8}
!34 = !{!32, !6, i64 196}
!35 = !{!32, !6, i64 188}
!36 = !{!32, !6, i64 112}
!37 = !{!32, !14, i64 168}
!38 = !{!32, !14, i64 176}
!39 = !{!32, !6, i64 184}
!40 = !{!32, !6, i64 192}
end_hunk_0
