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
  %i.ak = sub nsw i32 %i.b, %i.f                  ; 11 uses
  %9 = sext i32 %i.ak to i64                      ; 3 uses
  %i.al = tail call noalias ptr @CRYPTO_malloc(i64 noundef %9, ptr noundef nonnull @.str, i32 noundef 126) #6 ; 10 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = tail call i32 @PKCS1_MGF1(ptr noundef nonnull %i.al, i64 noundef %9, ptr noundef nonnull %i.m, i64 noundef %i.n, ptr noundef %spec.select)
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.loopexit, label %.preheader81

.preheader81:                                     ; preds = %bb.l
  %10 = icmp sgt i32 %i.ak, 0
  br i1 %10, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader81
  %wide.trip.count = zext nneg i32 %i.ak to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ak, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check96 = icmp ult i32 %i.ak, 32
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <16 x i8>, ptr %i.aq, align 1, !tbaa !8
  %wide.load97 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 %index ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %wide.load98 = load <16 x i8>, ptr %i.as, align 1, !tbaa !8
  %wide.load99 = load <16 x i8>, ptr %i.at, align 1, !tbaa !8
  %i.au = xor <16 x i8> %wide.load98, %wide.load
  %i.av = xor <16 x i8> %wide.load99, %wide.load97
  store <16 x i8> %i.au, ptr %i.as, align 1, !tbaa !8
  store <16 x i8> %i.av, ptr %i.at, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec100 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next104, %vec.epilog.vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 %index101
  %wide.load102 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 %index101 ; 2 uses
  %wide.load103 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !8
  %i.az = xor <4 x i8> %wide.load103, %wide.load102
  store <4 x i8> %i.az, ptr %i.ay, align 1, !tbaa !8
  %index.next104 = add nuw i64 %index101, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next104, %n.vec100
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n105 = icmp eq i64 %n.vec100, %wide.trip.count
  br i1 %cmp.n105, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec100, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  %i.bf = xor i8 %i.be, %i.bc
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader81
  %i.bg = call i32 @PKCS1_MGF1(ptr noundef nonnull %i.a, i64 noundef %i.n, ptr noundef nonnull %i.p, i64 noundef %9, ptr noundef %spec.select)
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %.loopexit, label %iter.check121

iter.check121:                                    ; preds = %._crit_edge
  %wide.trip.count89 = zext nneg i32 %i.f to i64  ; 6 uses
  %min.iters.check106 = icmp ult i32 %i.f, 4
  br i1 %min.iters.check106, label %.lr.ph84.preheader, label %vector.main.loop.iter.check107

vector.main.loop.iter.check107:                   ; preds = %iter.check121
  %min.iters.check108 = icmp ult i32 %i.f, 32
  br i1 %min.iters.check108, label %vec.epilog.ph125, label %vector.ph109

vector.ph109:                                     ; preds = %vector.main.loop.iter.check107
  %i.bi = and i64 %wide.trip.count89, 28
  %n.vec110 = and i64 %wide.trip.count89, 2147483616 ; 4 uses
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next117, %vector.body111 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %index112 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load113 = load <16 x i8>, ptr %i.bj, align 16, !tbaa !8
  %wide.load114 = load <16 x i8>, ptr %i.bk, align 16, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 %index112 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %wide.load115 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !8
  %wide.load116 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !8
  %i.bn = xor <16 x i8> %wide.load115, %wide.load113
  %i.bo = xor <16 x i8> %wide.load116, %wide.load114
  store <16 x i8> %i.bn, ptr %i.bl, align 1, !tbaa !8
  store <16 x i8> %i.bo, ptr %i.bm, align 1, !tbaa !8
  %index.next117 = add nuw i64 %index112, 32      ; 2 uses
  %i.bp = icmp eq i64 %index.next117, %n.vec110
  br i1 %i.bp, label %middle.block118, label %vector.body111, !llvm.loop !16

middle.block118:                                  ; preds = %vector.body111
  %cmp.n119 = icmp eq i64 %n.vec110, %wide.trip.count89
  br i1 %cmp.n119, label %.loopexit, label %vec.epilog.iter.check123

vec.epilog.iter.check123:                         ; preds = %middle.block118
  %min.epilog.iters.check124 = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check124, label %.lr.ph84.preheader, label %vec.epilog.ph125, !prof !13

vec.epilog.ph125:                                 ; preds = %vector.main.loop.iter.check107, %vec.epilog.iter.check123
  %vec.epilog.resume.val120 = phi i64 [ %n.vec110, %vec.epilog.iter.check123 ], [ 0, %vector.main.loop.iter.check107 ]
  %n.vec126 = and i64 %wide.trip.count89, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body127

vec.epilog.vector.body127:                        ; preds = %vec.epilog.vector.body127, %vec.epilog.ph125
  %index128 = phi i64 [ %vec.epilog.resume.val120, %vec.epilog.ph125 ], [ %index.next131, %vec.epilog.vector.body127 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %index128
  %wide.load129 = load <4 x i8>, ptr %i.bq, align 4, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 %index128 ; 2 uses
  %wide.load130 = load <4 x i8>, ptr %i.br, align 1, !tbaa !8
  %i.bs = xor <4 x i8> %wide.load130, %wide.load129
  store <4 x i8> %i.bs, ptr %i.br, align 1, !tbaa !8
  %index.next131 = add nuw i64 %index128, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.bt, label %vec.epilog.middle.block132, label %vec.epilog.vector.body127, !llvm.loop !17

vec.epilog.middle.block132:                       ; preds = %vec.epilog.vector.body127
  %cmp.n133 = icmp eq i64 %n.vec126, %wide.trip.count89
  br i1 %cmp.n133, label %.loopexit, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %iter.check121, %vec.epilog.iter.check123, %vec.epilog.middle.block132
  %indvars.iv86.ph = phi i64 [ 0, %iter.check121 ], [ %n.vec110, %vec.epilog.iter.check123 ], [ %n.vec126, %vec.epilog.middle.block132 ]
  br label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %.lr.ph84
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %.lr.ph84 ], [ %indvars.iv86.ph, %.lr.ph84.preheader ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv86
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv86 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !8
  %i.by = xor i8 %i.bx, %i.bv
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !8
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %.loopexit, label %.lr.ph84, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph84, %middle.block118, %vec.epilog.middle.block132, %._crit_edge, %bb.l, %bb.k, %bb.j, %bb.i
  %.068 = phi i32 [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %._crit_edge ], [ 0, %bb.i ], [ 1, %middle.block118 ], [ 1, %vec.epilog.middle.block132 ], [ 1, %.lr.ph84 ]
  %.066 = phi ptr [ null, %bb.j ], [ null, %bb.k ], [ %i.al, %bb.l ], [ %i.al, %._crit_edge ], [ null, %bb.i ], [ %i.al, %middle.block118 ], [ %i.al, %vec.epilog.middle.block132 ], [ %i.al, %.lr.ph84 ]
  %.0 = phi i32 [ 0, %bb.j ], [ %i.ak, %bb.k ], [ %i.ak, %bb.l ], [ %i.ak, %._crit_edge ], [ 0, %bb.i ], [ %i.ak, %middle.block118 ], [ %i.ak, %vec.epilog.middle.block132 ], [ %i.ak, %.lr.ph84 ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #6
  %11 = sext i32 %.0 to i64
  call void @CRYPTO_clear_free(ptr noundef %.066, i64 noundef %11, ptr noundef nonnull @.str, i32 noundef 147) #6
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
  %i.q = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.p, ptr noundef nonnull @.str, i32 noundef 227) #6 ; 17 uses
  %i.r = icmp eq ptr %i.q, null
  %.pre229 = zext nneg i32 %4 to i64              ; 3 uses
  br i1 %i.r, label %._crit_edge228, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call noalias ptr @CRYPTO_malloc(i64 noundef %.pre229, ptr noundef nonnull @.str, i32 noundef 231) #6 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %._crit_edge228, label %.lr.ph.preheader
end_hunk_0
