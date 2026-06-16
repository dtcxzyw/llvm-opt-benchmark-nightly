inline.NumInlined: 22
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"../../deps/openssl/openssl/crypto/rsa/rsa_oaep.c\00", align 1
@__func__.ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex = private unnamed_addr constant [40 x i8] c"ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex\00", align 1
@__func__.RSA_padding_check_PKCS1_OAEP_mgf1 = private unnamed_addr constant [34 x i8] c"RSA_padding_check_PKCS1_OAEP_mgf1\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RSA_padding_add_PKCS1_OAEP(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex(ptr noundef null, ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = add nsw i32 %2, -1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = icmp eq ptr %7, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @EVP_sha1() #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.068 = phi ptr [ %i.d, %bb.b ], [ %7, %bb.a ]  ; 3 uses
  %i.e = icmp eq ptr %8, null
  %spec.select = select i1 %i.e, ptr %.068, ptr %8 ; 2 uses
  %i.f = tail call i32 @EVP_MD_get_size(ptr noundef %.068) #6 ; 8 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 93, ptr noundef nonnull @__func__.ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 181, ptr noundef null) #6
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.h = shl nuw nsw i32 %i.f, 1                  ; 2 uses
  %i.i = xor i32 %i.h, -1                         ; 2 uses
  %i.j = add i32 %i.b, %i.i
  %i.k = icmp sgt i32 %4, %i.j
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 99, ptr noundef nonnull @__func__.ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 110, ptr noundef null) #6
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %9 = or disjoint i32 %i.h, 1
  %.not = icmp sgt i32 %2, %9
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 104, ptr noundef nonnull @__func__.ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 120, ptr noundef null) #6
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %1, align 1, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  %i.m = zext nneg i32 %i.f to i64                ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 8 uses
  %i.p = sext i32 %6 to i64
  %i.q = tail call i32 @EVP_Digest(ptr noundef %5, i64 noundef %i.p, ptr noundef nonnull %i.o, ptr noundef null, ptr noundef %.068, ptr noundef null) #6
  %.not80 = icmp eq i32 %i.q, 0
  br i1 %.not80, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.s = sub nsw i32 %i.b, %4                     ; 2 uses
  %i.t = add i32 %i.s, %i.i
  %i.u = sext i32 %i.t to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.u, i1 false)
  %i.v = xor i32 %i.f, -1
  %i.w = add i32 %i.s, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.o, i64 %i.x
  store i8 1, ptr %i.y, align 1, !tbaa !9
  %i.z = zext nneg i32 %i.b to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z
  %i.ab = sext i32 %4 to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %i.ac
  %i.ae = sub nsw i64 0, %i.m
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae
  %i.ag = zext i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %3, i64 %i.ag, i1 false)
  %i.ah = tail call i32 @RAND_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.l, i64 noundef %i.m, i32 noundef 0) #6
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = sub nsw i32 %i.b, %i.f                  ; 11 uses
  %i.ak = sext i32 %i.aj to i64                   ; 3 uses
  %i.al = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.ak, ptr noundef nonnull @.str, i32 noundef 126) #6 ; 10 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = tail call i32 @PKCS1_MGF1(ptr noundef nonnull %i.al, i64 noundef %i.ak, ptr noundef nonnull %i.l, i64 noundef %i.m, ptr noundef %spec.select)
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.loopexit, label %.preheader81

.preheader81:                                     ; preds = %bb.l
  %i.ap = icmp sgt i32 %i.aj, 0
  br i1 %i.ap, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader81
  %wide.trip.count = zext nneg i32 %i.aj to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.aj, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check96 = icmp ult i32 %i.aj, 32
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <16 x i8>, ptr %i.aq, align 1, !tbaa !9
  %wide.load97 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 %index ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %wide.load98 = load <16 x i8>, ptr %i.as, align 1, !tbaa !9
  %wide.load99 = load <16 x i8>, ptr %i.at, align 1, !tbaa !9
  %i.au = xor <16 x i8> %wide.load98, %wide.load
  %i.av = xor <16 x i8> %wide.load99, %wide.load97
  store <16 x i8> %i.au, ptr %i.as, align 1, !tbaa !9
  store <16 x i8> %i.av, ptr %i.at, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec101 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 %index102
  %wide.load103 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 %index102 ; 2 uses
  %wide.load104 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !9
  %i.az = xor <4 x i8> %wide.load104, %wide.load103
  store <4 x i8> %i.az, ptr %i.ay, align 1, !tbaa !9
  %index.next105 = add nuw i64 %index102, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n106 = icmp eq i64 %n.vec101, %wide.trip.count
  br i1 %cmp.n106, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec101, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9
  %i.bf = xor i8 %i.be, %i.bc
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader81
  %i.bg = call i32 @PKCS1_MGF1(ptr noundef nonnull %i.a, i64 noundef %i.m, ptr noundef nonnull %i.o, i64 noundef %i.ak, ptr noundef %spec.select)
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %.loopexit, label %iter.check123

iter.check123:                                    ; preds = %._crit_edge
  %wide.trip.count89 = zext nneg i32 %i.f to i64  ; 6 uses
  %min.iters.check107 = icmp ult i32 %i.f, 4
  br i1 %min.iters.check107, label %.lr.ph84.preheader, label %vector.main.loop.iter.check108

vector.main.loop.iter.check108:                   ; preds = %iter.check123
  %min.iters.check109 = icmp ult i32 %i.f, 32
  br i1 %min.iters.check109, label %vec.epilog.ph127, label %vector.ph110

vector.ph110:                                     ; preds = %vector.main.loop.iter.check108
  %n.mod.vf111 = and i64 %wide.trip.count89, 28
  %n.vec112 = and i64 %wide.trip.count89, 2147483616 ; 4 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph110
  %index114 = phi i64 [ 0, %vector.ph110 ], [ %index.next119, %vector.body113 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %index114 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load115 = load <16 x i8>, ptr %i.bi, align 16, !tbaa !9
  %wide.load116 = load <16 x i8>, ptr %i.bj, align 16, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %index114 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load117 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !9
  %wide.load118 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !9
  %i.bm = xor <16 x i8> %wide.load117, %wide.load115
  %i.bn = xor <16 x i8> %wide.load118, %wide.load116
  store <16 x i8> %i.bm, ptr %i.bk, align 1, !tbaa !9
  store <16 x i8> %i.bn, ptr %i.bl, align 1, !tbaa !9
  %index.next119 = add nuw i64 %index114, 32      ; 2 uses
  %i.bo = icmp eq i64 %index.next119, %n.vec112
  br i1 %i.bo, label %middle.block120, label %vector.body113, !llvm.loop !17

middle.block120:                                  ; preds = %vector.body113
  %cmp.n121 = icmp eq i64 %n.vec112, %wide.trip.count89
  br i1 %cmp.n121, label %.loopexit, label %vec.epilog.iter.check125

vec.epilog.iter.check125:                         ; preds = %middle.block120
  %min.epilog.iters.check126 = icmp eq i64 %n.mod.vf111, 0
  br i1 %min.epilog.iters.check126, label %.lr.ph84.preheader, label %vec.epilog.ph127, !prof !14

vec.epilog.ph127:                                 ; preds = %vector.main.loop.iter.check108, %vec.epilog.iter.check125
  %vec.epilog.resume.val122 = phi i64 [ %n.vec112, %vec.epilog.iter.check125 ], [ 0, %vector.main.loop.iter.check108 ]
  %n.vec129 = and i64 %wide.trip.count89, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body130

vec.epilog.vector.body130:                        ; preds = %vec.epilog.vector.body130, %vec.epilog.ph127
  %index131 = phi i64 [ %vec.epilog.resume.val122, %vec.epilog.ph127 ], [ %index.next134, %vec.epilog.vector.body130 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %index131
  %wide.load132 = load <4 x i8>, ptr %i.bp, align 4, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %index131 ; 2 uses
  %wide.load133 = load <4 x i8>, ptr %i.bq, align 1, !tbaa !9
  %i.br = xor <4 x i8> %wide.load133, %wide.load132
  store <4 x i8> %i.br, ptr %i.bq, align 1, !tbaa !9
  %index.next134 = add nuw i64 %index131, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next134, %n.vec129
  br i1 %i.bs, label %vec.epilog.middle.block135, label %vec.epilog.vector.body130, !llvm.loop !18

vec.epilog.middle.block135:                       ; preds = %vec.epilog.vector.body130
  %cmp.n136 = icmp eq i64 %n.vec129, %wide.trip.count89
end_hunk_0
