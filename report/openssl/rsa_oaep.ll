Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/rsa_oaep?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"crypto/rsa/rsa_oaep.c\00", align 1
@__func__.ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex = private unnamed_addr constant [40 x i8] c"ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex\00", align 1
@__func__.RSA_padding_check_PKCS1_OAEP_mgf1 = private unnamed_addr constant [34 x i8] c"RSA_padding_check_PKCS1_OAEP_mgf1\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @RSA_padding_add_PKCS1_OAEP(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex(ptr noundef null, ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
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
  %.070 = phi ptr [ %i.d, %bb.b ], [ %7, %bb.a ]  ; 3 uses
  %i.e = icmp eq ptr %8, null
  %spec.select = select i1 %i.e, ptr %.070, ptr %8 ; 2 uses
  %i.f = tail call i32 @EVP_MD_get_size(ptr noundef %.070) #6 ; 8 uses
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
  %i.l = or disjoint i32 %i.h, 1
  %.not = icmp sgt i32 %2, %i.l
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 104, ptr noundef nonnull @__func__.ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 120, ptr noundef null) #6
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %1, align 1, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  %i.n = zext nneg i32 %i.f to i64                ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 8 uses
  %i.q = sext i32 %6 to i64
  %i.r = tail call i32 @EVP_Digest(ptr noundef %5, i64 noundef %i.q, ptr noundef nonnull %i.p, ptr noundef null, ptr noundef %.070, ptr noundef null) #6
  %.not80 = icmp eq i32 %i.r, 0
  br i1 %.not80, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.t = sub nsw i32 %i.b, %4                     ; 2 uses
  %i.u = add i32 %i.t, %i.i
  %i.v = sext i32 %i.u to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 0, i64 %i.v, i1 false)
  %i.w = xor i32 %i.f, -1
  %i.x = add i32 %i.t, %i.w
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.p, i64 %i.y
  store i8 1, ptr %i.z, align 1, !tbaa !8
  %i.aa = zext nneg i32 %i.b to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aa
  %i.ac = sext i32 %4 to i64
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 %i.ad
  %i.af = sub nsw i64 0, %i.n
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  %i.ah = zext i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %3, i64 %i.ah, i1 false)
  %i.ai = tail call i32 @RAND_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.m, i64 noundef %i.n, i32 noundef 0) #6
  %i.aj = icmp slt i32 %i.ai, 1
  br i1 %i.aj, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = sub nuw nsw i32 %i.b, %i.f              ; 11 uses
  %i.al = zext nneg i32 %i.ak to i64              ; 3 uses
  %i.am = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.al, ptr noundef nonnull @.str, i32 noundef 126) #6 ; 10 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call i32 @PKCS1_MGF1(ptr noundef nonnull %i.am, i64 noundef %i.al, ptr noundef nonnull %i.m, i64 noundef %i.n, ptr noundef %spec.select)
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %.loopexit, label %.preheader81

.preheader81:                                     ; preds = %bb.l
  %.not96 = icmp eq i32 %i.ak, 0
  br i1 %.not96, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader81
  %wide.trip.count = zext nneg i32 %i.ak to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ak, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check97 = icmp ult i32 %i.ak, 32
  br i1 %min.iters.check97, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aq = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <16 x i8>, ptr %i.ar, align 1, !tbaa !8
  %wide.load98 = load <16 x i8>, ptr %i.as, align 1, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 %index ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %wide.load99 = load <16 x i8>, ptr %i.at, align 1, !tbaa !8
  %wide.load100 = load <16 x i8>, ptr %i.au, align 1, !tbaa !8
  %i.av = xor <16 x i8> %wide.load99, %wide.load
  %i.aw = xor <16 x i8> %wide.load100, %wide.load98
  store <16 x i8> %i.av, ptr %i.at, align 1, !tbaa !8
  store <16 x i8> %i.aw, ptr %i.au, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec101 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 %index102
  %wide.load103 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 %index102 ; 2 uses
  %wide.load104 = load <4 x i8>, ptr %i.az, align 1, !tbaa !8
  %i.ba = xor <4 x i8> %wide.load104, %wide.load103
  store <4 x i8> %i.ba, ptr %i.az, align 1, !tbaa !8
  %index.next105 = add nuw i64 %index102, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n106 = icmp eq i64 %n.vec101, %wide.trip.count
  br i1 %cmp.n106, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec101, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bg = xor i8 %i.bf, %i.bd
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader81
  %i.bh = call i32 @PKCS1_MGF1(ptr noundef nonnull %i.a, i64 noundef %i.n, ptr noundef nonnull %i.p, i64 noundef %i.al, ptr noundef %spec.select)
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %.loopexit, label %iter.check122

iter.check122:                                    ; preds = %._crit_edge
  %wide.trip.count89 = zext nneg i32 %i.f to i64  ; 6 uses
  %min.iters.check107 = icmp ult i32 %i.f, 4
  br i1 %min.iters.check107, label %.lr.ph84.preheader, label %vector.main.loop.iter.check108

vector.main.loop.iter.check108:                   ; preds = %iter.check122
  %min.iters.check109 = icmp ult i32 %i.f, 32
  br i1 %min.iters.check109, label %vec.epilog.ph126, label %vector.ph110

vector.ph110:                                     ; preds = %vector.main.loop.iter.check108
  %i.bj = and i64 %wide.trip.count89, 28
  %n.vec111 = and i64 %wide.trip.count89, 2147483616 ; 4 uses
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph110
  %index113 = phi i64 [ 0, %vector.ph110 ], [ %index.next118, %vector.body112 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %index113 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load114 = load <16 x i8>, ptr %i.bk, align 16, !tbaa !8
  %wide.load115 = load <16 x i8>, ptr %i.bl, align 16, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 %index113 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %wide.load116 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !8
  %wide.load117 = load <16 x i8>, ptr %i.bn, align 1, !tbaa !8
  %i.bo = xor <16 x i8> %wide.load116, %wide.load114
  %i.bp = xor <16 x i8> %wide.load117, %wide.load115
  store <16 x i8> %i.bo, ptr %i.bm, align 1, !tbaa !8
  store <16 x i8> %i.bp, ptr %i.bn, align 1, !tbaa !8
  %index.next118 = add nuw i64 %index113, 32      ; 2 uses
  %i.bq = icmp eq i64 %index.next118, %n.vec111
  br i1 %i.bq, label %middle.block119, label %vector.body112, !llvm.loop !16

middle.block119:                                  ; preds = %vector.body112
  %cmp.n120 = icmp eq i64 %n.vec111, %wide.trip.count89
  br i1 %cmp.n120, label %.loopexit, label %vec.epilog.iter.check124

vec.epilog.iter.check124:                         ; preds = %middle.block119
  %min.epilog.iters.check125 = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check125, label %.lr.ph84.preheader, label %vec.epilog.ph126, !prof !12

vec.epilog.ph126:                                 ; preds = %vector.main.loop.iter.check108, %vec.epilog.iter.check124
  %vec.epilog.resume.val121 = phi i64 [ %n.vec111, %vec.epilog.iter.check124 ], [ 0, %vector.main.loop.iter.check108 ]
  %n.vec127 = and i64 %wide.trip.count89, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body128

vec.epilog.vector.body128:                        ; preds = %vec.epilog.vector.body128, %vec.epilog.ph126
  %index129 = phi i64 [ %vec.epilog.resume.val121, %vec.epilog.ph126 ], [ %index.next132, %vec.epilog.vector.body128 ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %index129
  %wide.load130 = load <4 x i8>, ptr %i.br, align 4, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 %index129 ; 2 uses
  %wide.load131 = load <4 x i8>, ptr %i.bs, align 1, !tbaa !8
  %i.bt = xor <4 x i8> %wide.load131, %wide.load130
  store <4 x i8> %i.bt, ptr %i.bs, align 1, !tbaa !8
  %index.next132 = add nuw i64 %index129, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next132, %n.vec127
  br i1 %i.bu, label %vec.epilog.middle.block133, label %vec.epilog.vector.body128, !llvm.loop !17

vec.epilog.middle.block133:                       ; preds = %vec.epilog.vector.body128
  %cmp.n134 = icmp eq i64 %n.vec127, %wide.trip.count89
  br i1 %cmp.n134, label %.loopexit, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %iter.check122, %vec.epilog.iter.check124, %vec.epilog.middle.block133
  %indvars.iv86.ph = phi i64 [ 0, %iter.check122 ], [ %n.vec111, %vec.epilog.iter.check124 ], [ %n.vec127, %vec.epilog.middle.block133 ]
  br label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %.lr.ph84
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %.lr.ph84 ], [ %indvars.iv86.ph, %.lr.ph84.preheader ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv86
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv86 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !8
  %i.bz = xor i8 %i.by, %i.bw
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !8
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %.loopexit, label %.lr.ph84, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph84, %middle.block119, %vec.epilog.middle.block133, %._crit_edge, %bb.l, %bb.k, %bb.j, %bb.i
  %.068 = phi i32 [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %._crit_edge ], [ 0, %bb.i ], [ 1, %middle.block119 ], [ 1, %vec.epilog.middle.block133 ], [ 1, %.lr.ph84 ]
  %.066 = phi ptr [ null, %bb.j ], [ null, %bb.k ], [ %i.am, %bb.l ], [ %i.am, %._crit_edge ], [ null, %bb.i ], [ %i.am, %middle.block119 ], [ %i.am, %vec.epilog.middle.block133 ], [ %i.am, %.lr.ph84 ]
  %.0 = phi i32 [ 0, %bb.j ], [ %i.ak, %bb.k ], [ %i.ak, %bb.l ], [ %i.ak, %._crit_edge ], [ 0, %bb.i ], [ %i.ak, %middle.block119 ], [ %i.ak, %vec.epilog.middle.block133 ], [ %i.ak, %.lr.ph84 ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #6
  %i.ca = zext nneg i32 %.0 to i64
  call void @CRYPTO_clear_free(ptr noundef %.066, i64 noundef %i.ca, ptr noundef nonnull @.str, i32 noundef 147) #6
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.h, %bb.f, %bb.d
  %.071 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ %.068, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.071
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @EVP_sha1() local_unnamed_addr #2

declare i32 @EVP_MD_get_size(ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @EVP_Digest(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @PKCS1_MGF1(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = tail call ptr @EVP_MD_CTX_new() #6       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @EVP_MD_get_size(ptr noundef %4) #6 ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.k = zext nneg i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.03143 = phi i64 [ 0, %.lr.ph ], [ %i.v, %bb.i ] ; 4 uses
  %.03242 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %bb.i ] ; 5 uses
  %i.l = lshr i64 %.03242, 24
  %i.m = trunc i64 %i.l to i8
  store i8 %i.m, ptr %i.a, align 1, !tbaa !8
  %i.n = lshr i64 %.03242, 16
  %i.o = trunc i64 %i.n to i8
  store i8 %i.o, ptr %i.h, align 1, !tbaa !8
  %i.p = lshr i64 %.03242, 8
  %i.q = trunc i64 %i.p to i8
  store i8 %i.q, ptr %i.i, align 1, !tbaa !8
  %i.r = trunc i64 %.03242 to i8
  store i8 %i.r, ptr %i.j, align 1, !tbaa !8
  %i.s = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.c, ptr noundef %4, ptr noundef null) #6
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.c, ptr noundef %2, i64 noundef %3) #6
  %.not37 = icmp eq i32 %i.t, 0
  br i1 %.not37, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i64 noundef 4) #6
  %.not38 = icmp eq i32 %i.u, 0
  br i1 %.not38, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nuw nsw i64 %.03143, %i.k            ; 3 uses
  %.not39 = icmp sgt i64 %i.v, %1
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.03143
  %i.x = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.c, ptr noundef %i.w, ptr noundef null) #6
  %.not41 = icmp eq i32 %i.x, 0
  br i1 %.not41, label %.loopexit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.y = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef null) #6
  %.not40 = icmp eq i32 %i.y, 0
  br i1 %.not40, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.03143
  %i.aa = sub nsw i64 %1, %.03143
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 16 %i.b, i64 %i.aa, i1 false)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ab = add nuw nsw i64 %.03242, 1
  %i.ac = icmp slt i64 %i.v, %1
  br i1 %i.ac, label %bb.c, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.g, %bb.i, %bb.h, %.thread, %.preheader, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ 0, %.preheader ], [ 0, %.thread ], [ -1, %bb.h ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.c ], [ 0, %bb.i ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 64) #6
  call void @EVP_MD_CTX_free(ptr noundef %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @RSA_padding_add_PKCS1_OAEP_mgf1(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex(ptr noundef null, ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @RSA_padding_check_PKCS1_OAEP(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @RSA_padding_check_PKCS1_OAEP_mgf1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @RSA_padding_check_PKCS1_OAEP_mgf1(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = icmp eq ptr %7, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @EVP_sha1() #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0149 = phi ptr [ %i.d, %bb.b ], [ %7, %bb.a ] ; 3 uses
  %i.e = icmp eq ptr %8, null
  %spec.select = select i1 %i.e, ptr %.0149, ptr %8 ; 2 uses
  %i.f = tail call i32 @EVP_MD_get_size(ptr noundef %.0149) #6 ; 10 uses
  %i.g = icmp slt i32 %1, 1
  %i.h = icmp slt i32 %3, 1
  %or.cond = or i1 %i.g, %i.h
  %i.i = icmp slt i32 %i.f, 1
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond3, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i32 %4, %3
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = shl nuw nsw i32 %i.f, 1
  %i.l = add nuw nsw i32 %i.k, 2
  %i.m = icmp samesign ult i32 %4, %i.l
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 222, ptr noundef nonnull @__func__.RSA_padding_check_PKCS1_OAEP_mgf1) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 121, ptr noundef null) #6
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.n = xor i32 %i.f, -1                         ; 2 uses
  %i.o = add nsw i32 %4, %i.n                     ; 11 uses
  %i.p = sext i32 %i.o to i64                     ; 4 uses
end_hunk_0
