Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/rsa_crypt?download=true
inline.NumInlined: 31
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [59 x i8] c"/opt-bench/work/aws-lc/aws-lc/crypto/rsa_extra/rsa_crypt.c\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @RSA_padding_add_PKCS1_OAEP_mgf1(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = icmp eq ptr %6, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @EVP_sha1() #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.071 = phi ptr [ %i.c, %bb.b ], [ %6, %bb.a ]  ; 3 uses
  %i.d = icmp eq ptr %7, null
  %spec.select = select i1 %i.d, ptr %.071, ptr %7 ; 2 uses
  %i.e = tail call i64 @EVP_MD_size(ptr noundef %.071) #6 ; 19 uses
  %i.f = shl i64 %i.e, 1                          ; 3 uses
  %i.g = add i64 %i.f, 2
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 126, ptr noundef nonnull @.str, i32 noundef 47) #6
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.i = add i64 %1, -1                           ; 5 uses
  %i.j = xor i64 %i.f, -1                         ; 2 uses
  %i.k = add i64 %i.i, %i.j
  %i.l = icmp ugt i64 %3, %i.k
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 114, ptr noundef nonnull @.str, i32 noundef 53) #6
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %.not = icmp ugt i64 %i.i, %i.f
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 126, ptr noundef nonnull @.str, i32 noundef 58) #6
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %0, align 1, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 8 uses
  %i.p = tail call i32 @EVP_Digest(ptr noundef %4, i64 noundef %5, ptr noundef nonnull %i.o, ptr noundef null, ptr noundef %.071, ptr noundef null) #6
  %.not81 = icmp eq i32 %i.p, 0
  br i1 %.not81, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = sub i64 %i.i, %3                         ; 2 uses
  %i.r = add i64 %i.q, %i.j                       ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %OPENSSL_memset.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.r, i1 false)
  br label %OPENSSL_memset.exit

OPENSSL_memset.exit:                              ; preds = %bb.j, %bb.k
  %i.u = xor i64 %i.e, -1
  %i.v = getelementptr i8, ptr %i.o, i64 %i.q
  %i.w = getelementptr i8, ptr %i.v, i64 %i.u
  store i8 1, ptr %i.w, align 1, !tbaa !8
  %i.x = icmp eq i64 %3, 0
  br i1 %i.x, label %OPENSSL_memcpy.exit, label %bb.l

bb.l:                                             ; preds = %OPENSSL_memset.exit
  %i.y = getelementptr i8, ptr %i.n, i64 %1
  %i.z = sub i64 0, %3
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %i.ab = sub i64 0, %i.e
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr readonly align 1 %2, i64 %3, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %OPENSSL_memset.exit, %bb.l
  %i.ad = tail call i32 @RAND_bytes(ptr noundef nonnull %i.m, i64 noundef %i.e) #6
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.n, label %bb.m

bb.m:                                             ; preds = %OPENSSL_memcpy.exit
  tail call void @abort() #7
  unreachable

bb.n:                                             ; preds = %OPENSSL_memcpy.exit
  %i.af = sub i64 %i.i, %i.e                      ; 12 uses
  %i.ag = tail call ptr @OPENSSL_malloc(i64 noundef %i.af) #6 ; 13 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call i32 @PKCS1_MGF1(ptr noundef nonnull %i.ag, i64 noundef %i.af, ptr noundef nonnull %i.m, i64 noundef %i.e, ptr noundef %spec.select) #6
  %.not82 = icmp eq i32 %i.ai, 0
  br i1 %.not82, label %.loopexit, label %.preheader84

.preheader84:                                     ; preds = %bb.o
  %.not88 = icmp eq i64 %i.i, %i.e
  br i1 %.not88, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader84
  %min.iters.check = icmp ult i64 %i.af, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %0, i64 %1
  %scevgep97 = getelementptr i8, ptr %i.ag, i64 %i.af
  %bound0 = icmp ult ptr %i.o, %scevgep97
  %bound1 = icmp ult ptr %i.ag, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check98 = icmp ult i64 %i.af, 32
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.af, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !tbaa !8, !alias.scope !38
  %wide.load99 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !8, !alias.scope !38
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 %index ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %wide.load100 = load <16 x i8>, ptr %i.al, align 1, !tbaa !8, !alias.scope !39, !noalias !38
  %wide.load101 = load <16 x i8>, ptr %i.am, align 1, !tbaa !8, !alias.scope !39, !noalias !38
  %i.an = xor <16 x i8> %wide.load100, %wide.load
  %i.ao = xor <16 x i8> %wide.load101, %wide.load99
  store <16 x i8> %i.an, ptr %i.al, align 1, !tbaa !8, !alias.scope !39, !noalias !38
  store <16 x i8> %i.ao, ptr %i.am, align 1, !tbaa !8, !alias.scope !39, !noalias !38
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %8 = and i64 %i.af, 28
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %8, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec102 = and i64 %i.af, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index103
  %wide.load104 = load <4 x i8>, ptr %i.aq, align 1, !tbaa !8, !alias.scope !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 %index103 ; 2 uses
  %wide.load105 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !8, !alias.scope !39, !noalias !38
  %i.as = xor <4 x i8> %wide.load105, %wide.load104
  store <4 x i8> %i.as, ptr %i.ar, align 1, !tbaa !8, !alias.scope !39, !noalias !38
  %index.next106 = add nuw i64 %index103, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next106, %n.vec102
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !33

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.af, %n.vec102
  br i1 %cmp.n107, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06785.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec102, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader84
  %i.au = call i32 @PKCS1_MGF1(ptr noundef nonnull %i.a, i64 noundef %i.e, ptr noundef nonnull %i.o, i64 noundef %i.af, ptr noundef %spec.select) #6
  %.not83 = icmp eq i32 %i.au, 0
  br i1 %.not83, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %.not89 = icmp eq i64 %i.e, 0
  br i1 %.not89, label %.loopexit, label %iter.check123

iter.check123:                                    ; preds = %.preheader
  %min.iters.check108 = icmp ult i64 %i.e, 4
  br i1 %min.iters.check108, label %.lr.ph87.preheader, label %vector.main.loop.iter.check109

vector.main.loop.iter.check109:                   ; preds = %iter.check123
  %min.iters.check110 = icmp ult i64 %i.e, 32
  br i1 %min.iters.check110, label %vec.epilog.ph127, label %vector.ph111

vector.ph111:                                     ; preds = %vector.main.loop.iter.check109
  %n.vec112 = and i64 %i.e, -32                   ; 4 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph111
  %index114 = phi i64 [ 0, %vector.ph111 ], [ %index.next119, %vector.body113 ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %index114 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load115 = load <16 x i8>, ptr %i.av, align 16, !tbaa !8
  %wide.load116 = load <16 x i8>, ptr %i.aw, align 16, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 %index114 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load117 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !8
  %wide.load118 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !8
  %i.az = xor <16 x i8> %wide.load117, %wide.load115
  %i.ba = xor <16 x i8> %wide.load118, %wide.load116
  store <16 x i8> %i.az, ptr %i.ax, align 1, !tbaa !8
  store <16 x i8> %i.ba, ptr %i.ay, align 1, !tbaa !8
  %index.next119 = add nuw i64 %index114, 32      ; 2 uses
  %i.bb = icmp eq i64 %index.next119, %n.vec112
  br i1 %i.bb, label %middle.block120, label %vector.body113, !llvm.loop !34

middle.block120:                                  ; preds = %vector.body113
  %9 = and i64 %i.e, 28
  %cmp.n121 = icmp eq i64 %i.e, %n.vec112
  br i1 %cmp.n121, label %.loopexit, label %vec.epilog.iter.check125

vec.epilog.iter.check125:                         ; preds = %middle.block120
  %min.epilog.iters.check126 = icmp eq i64 %9, 0
  br i1 %min.epilog.iters.check126, label %.lr.ph87.preheader, label %vec.epilog.ph127, !prof !12

vec.epilog.ph127:                                 ; preds = %vector.main.loop.iter.check109, %vec.epilog.iter.check125
  %vec.epilog.resume.val122 = phi i64 [ %n.vec112, %vec.epilog.iter.check125 ], [ 0, %vector.main.loop.iter.check109 ]
  %n.vec128 = and i64 %i.e, -4                    ; 3 uses
  br label %vec.epilog.vector.body129

vec.epilog.vector.body129:                        ; preds = %vec.epilog.vector.body129, %vec.epilog.ph127
  %index130 = phi i64 [ %vec.epilog.resume.val122, %vec.epilog.ph127 ], [ %index.next133, %vec.epilog.vector.body129 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %index130
  %wide.load131 = load <4 x i8>, ptr %i.bc, align 4, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 %index130 ; 2 uses
  %wide.load132 = load <4 x i8>, ptr %i.bd, align 1, !tbaa !8
  %i.be = xor <4 x i8> %wide.load132, %wide.load131
  store <4 x i8> %i.be, ptr %i.bd, align 1, !tbaa !8
  %index.next133 = add nuw i64 %index130, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next133, %n.vec128
  br i1 %i.bf, label %vec.epilog.middle.block134, label %vec.epilog.vector.body129, !llvm.loop !35

vec.epilog.middle.block134:                       ; preds = %vec.epilog.vector.body129
  %cmp.n135 = icmp eq i64 %i.e, %n.vec128
  br i1 %cmp.n135, label %.loopexit, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %iter.check123, %vec.epilog.iter.check125, %vec.epilog.middle.block134
  %.086.ph = phi i64 [ 0, %iter.check123 ], [ %n.vec112, %vec.epilog.iter.check125 ], [ %n.vec128, %vec.epilog.middle.block134 ]
  br label %.lr.ph87

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.06785 = phi i64 [ %i.bl, %.lr.ph ], [ %.06785.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06785
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 %.06785 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = xor i8 %i.bj, %i.bh
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !8
  %i.bl = add nuw i64 %.06785, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !36

.lr.ph87:                                         ; preds = %.lr.ph87.preheader, %.lr.ph87
  %.086 = phi i64 [ %i.br, %.lr.ph87 ], [ %.086.ph, %.lr.ph87.preheader ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.086
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 %.086 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !8
  %i.bq = xor i8 %i.bp, %i.bn
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !8
  %i.br = add nuw nsw i64 %.086, 1                ; 2 uses
  %exitcond90.not = icmp eq i64 %i.br, %i.e
  br i1 %exitcond90.not, label %.loopexit, label %.lr.ph87, !llvm.loop !37

.loopexit:                                        ; preds = %.lr.ph87, %middle.block120, %vec.epilog.middle.block134, %.preheader, %._crit_edge, %bb.o, %bb.n, %bb.i
  %.069 = phi ptr [ null, %bb.n ], [ null, %bb.i ], [ %i.ag, %._crit_edge ], [ %i.ag, %bb.o ], [ %i.ag, %.preheader ], [ %i.ag, %middle.block120 ], [ %i.ag, %vec.epilog.middle.block134 ], [ %i.ag, %.lr.ph87 ]
  %.068 = phi i32 [ 0, %bb.n ], [ 0, %bb.i ], [ 0, %._crit_edge ], [ 0, %bb.o ], [ 1, %.preheader ], [ 1, %middle.block120 ], [ 1, %vec.epilog.middle.block134 ], [ 1, %.lr.ph87 ]
  call void @OPENSSL_free(ptr noundef %.069) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.h, %.loopexit, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ %.068, %.loopexit ]
  ret i32 %.1
}

declare ptr @EVP_sha1() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i64 @EVP_MD_size(ptr noundef) local_unnamed_addr #1

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_Digest(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RAND_bytes(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #1

declare i32 @PKCS1_MGF1(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @RSA_padding_check_PKCS1_OAEP_mgf1(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 2 uses
  %i.c = icmp eq ptr %7, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @EVP_sha1() #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.075 = phi ptr [ %i.d, %bb.b ], [ %7, %bb.a ]  ; 3 uses
  %i.e = icmp eq ptr %8, null
  %spec.select = select i1 %i.e, ptr %.075, ptr %8 ; 2 uses
  %i.f = tail call i64 @EVP_MD_size(ptr noundef %.075) #6 ; 17 uses
  %i.g = shl i64 %i.f, 1
  %i.h = add i64 %i.g, 2
  %i.i = icmp ult i64 %4, %i.h
  br i1 %i.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = xor i64 %i.f, -1
  %i.k = add i64 %4, %i.j                         ; 17 uses
  %i.l = tail call ptr @OPENSSL_malloc(i64 noundef %i.k) #6 ; 16 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.f ; 5 uses
  %i.p = call i32 @PKCS1_MGF1(ptr noundef nonnull %i.a, i64 noundef %i.f, ptr noundef nonnull %i.o, i64 noundef %i.k, ptr noundef %spec.select) #6
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.l, label %.preheader99

.preheader99:                                     ; preds = %bb.e
  %.not113 = icmp eq i64 %i.f, 0
  br i1 %.not113, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader99
  %min.iters.check = icmp ult i64 %i.f, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check130 = icmp ult i64 %i.f, 32
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.f, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <16 x i8>, ptr %i.q, align 1, !tbaa !8
  %wide.load131 = load <16 x i8>, ptr %i.r, align 1, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %wide.load132 = load <16 x i8>, ptr %i.s, align 16, !tbaa !8
  %wide.load133 = load <16 x i8>, ptr %i.t, align 16, !tbaa !8
  %i.u = xor <16 x i8> %wide.load132, %wide.load
  %i.v = xor <16 x i8> %wide.load133, %wide.load131
  store <16 x i8> %i.u, ptr %i.s, align 16, !tbaa !8
  store <16 x i8> %i.v, ptr %i.t, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %9 = and i64 %i.f, 28
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %9, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %i.f, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %vec.epilog.vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %index135
  %wide.load136 = load <4 x i8>, ptr %i.x, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %index135 ; 2 uses
  %wide.load137 = load <4 x i8>, ptr %i.y, align 4, !tbaa !8
  %i.z = xor <4 x i8> %wide.load137, %wide.load136
  store <4 x i8> %i.z, ptr %i.y, align 4, !tbaa !8
  %index.next138 = add nuw i64 %index135, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next138, %n.vec134
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !41

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n139 = icmp eq i64 %i.f, %n.vec134
  br i1 %cmp.n139, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.082100.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec134, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader99
  %i.ab = call i32 @PKCS1_MGF1(ptr noundef nonnull %i.l, i64 noundef %i.k, ptr noundef nonnull %i.a, i64 noundef %i.f, ptr noundef %spec.select) #6
  %.not92 = icmp eq i32 %i.ab, 0
  br i1 %.not92, label %bb.l, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %.not114 = icmp eq i64 %i.k, 0
  br i1 %.not114, label %._crit_edge103, label %iter.check156

iter.check156:                                    ; preds = %.preheader
  %min.iters.check141 = icmp ult i64 %i.k, 4
  br i1 %min.iters.check141, label %.lr.ph102.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check156
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.k
  %scevgep140 = getelementptr i8, ptr %3, i64 %4
  %bound0 = icmp ult ptr %i.l, %scevgep140
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph102.preheader, label %vector.main.loop.iter.check142

vector.main.loop.iter.check142:                   ; preds = %vector.memcheck
  %min.iters.check143 = icmp ult i64 %i.k, 32
  br i1 %min.iters.check143, label %vec.epilog.ph160, label %vector.ph144

vector.ph144:                                     ; preds = %vector.main.loop.iter.check142
  %n.vec145 = and i64 %i.k, -32                   ; 4 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next152, %vector.body146 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %index147 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load148 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !8, !alias.scope !50
  %wide.load149 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !8, !alias.scope !50
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %index147 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load150 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !8, !alias.scope !51, !noalias !50
  %wide.load151 = load <16 x i8>, ptr %i.af, align 1, !tbaa !8, !alias.scope !51, !noalias !50
  %i.ag = xor <16 x i8> %wide.load150, %wide.load148
  %i.ah = xor <16 x i8> %wide.load151, %wide.load149
  store <16 x i8> %i.ag, ptr %i.ae, align 1, !tbaa !8, !alias.scope !51, !noalias !50
  store <16 x i8> %i.ah, ptr %i.af, align 1, !tbaa !8, !alias.scope !51, !noalias !50
  %index.next152 = add nuw i64 %index147, 32      ; 2 uses
  %i.ai = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.ai, label %middle.block153, label %vector.body146, !llvm.loop !45

middle.block153:                                  ; preds = %vector.body146
  %10 = and i64 %i.k, 28
  %cmp.n154 = icmp eq i64 %i.k, %n.vec145
  br i1 %cmp.n154, label %._crit_edge103, label %vec.epilog.iter.check158

vec.epilog.iter.check158:                         ; preds = %middle.block153
  %min.epilog.iters.check159 = icmp eq i64 %10, 0
  br i1 %min.epilog.iters.check159, label %.lr.ph102.preheader, label %vec.epilog.ph160, !prof !12

vec.epilog.ph160:                                 ; preds = %vector.main.loop.iter.check142, %vec.epilog.iter.check158
  %vec.epilog.resume.val155 = phi i64 [ %n.vec145, %vec.epilog.iter.check158 ], [ 0, %vector.main.loop.iter.check142 ]
  %n.vec161 = and i64 %i.k, -4                    ; 3 uses
  br label %vec.epilog.vector.body162

vec.epilog.vector.body162:                        ; preds = %vec.epilog.vector.body162, %vec.epilog.ph160
  %index163 = phi i64 [ %vec.epilog.resume.val155, %vec.epilog.ph160 ], [ %index.next166, %vec.epilog.vector.body162 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %index163
  %wide.load164 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !8, !alias.scope !50
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %index163 ; 2 uses
  %wide.load165 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !8, !alias.scope !51, !noalias !50
  %i.al = xor <4 x i8> %wide.load165, %wide.load164
  store <4 x i8> %i.al, ptr %i.ak, align 1, !tbaa !8, !alias.scope !51, !noalias !50
  %index.next166 = add nuw i64 %index163, 4       ; 2 uses
  %i.am = icmp eq i64 %index.next166, %n.vec161
  br i1 %i.am, label %vec.epilog.middle.block167, label %vec.epilog.vector.body162, !llvm.loop !46

vec.epilog.middle.block167:                       ; preds = %vec.epilog.vector.body162
  %cmp.n168 = icmp eq i64 %i.k, %n.vec161
  br i1 %cmp.n168, label %._crit_edge103, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %vector.memcheck, %iter.check156, %vec.epilog.iter.check158, %vec.epilog.middle.block167
  %.081101.ph = phi i64 [ 0, %iter.check156 ], [ 0, %vector.memcheck ], [ %n.vec145, %vec.epilog.iter.check158 ], [ %n.vec161, %vec.epilog.middle.block167 ]
  br label %.lr.ph102

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.082100 = phi i64 [ %i.as, %.lr.ph ], [ %.082100.ph, %.lr.ph.preheader ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 %.082100
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %.082100 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %i.ar = xor i8 %i.aq, %i.ao
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !8
  %i.as = add nuw nsw i64 %.082100, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

._crit_edge103:                                   ; preds = %.lr.ph102, %middle.block153, %vec.epilog.middle.block167, %.preheader
  %i.at = call i32 @EVP_Digest(ptr noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef %.075, ptr noundef null) #6
  %.not93 = icmp eq i32 %i.at, 0
  br i1 %.not93, label %bb.l, label %bb.f

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %.lr.ph102
  %.081101 = phi i64 [ %i.az, %.lr.ph102 ], [ %.081101.ph, %.lr.ph102.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 %.081101
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %.081101 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8
  %i.ay = xor i8 %i.ax, %i.av
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !8
  %i.az = add nuw i64 %.081101, 1                 ; 2 uses
  %exitcond117.not = icmp eq i64 %i.az, %i.k
  br i1 %exitcond117.not, label %._crit_edge103, label %.lr.ph102, !llvm.loop !48

bb.f:                                             ; preds = %._crit_edge103
  %i.ba = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.l, ptr noundef nonnull %i.b, i64 noundef %i.f) #6
  %i.bb = icmp ult i64 %i.f, %i.k
  br i1 %i.bb, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %bb.f
  %i.bc = icmp ne i32 %i.ba, 0
  %i.bd = load i8, ptr %3, align 1, !tbaa !8
  %i.be = icmp ne i8 %i.bd, 0
  %i.bf = or i1 %i.bc, %i.be
  %i.bg = sext i1 %i.bf to i64
  br label %.lr.ph109

._crit_edge110.loopexit:                          ; preds = %.lr.ph109
  %i.bh = or i64 %i.bw, %.080104
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %._crit_edge110.loopexit, %bb.f
  %.079.lcssa = phi i64 [ -1, %bb.f ], [ %i.bh, %._crit_edge110.loopexit ]
  %.078.lcssa = phi i64 [ 0, %bb.f ], [ %i.bs, %._crit_edge110.loopexit ]
  %i.bi = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.079.lcssa) #8, !srcloc !13
  %.not94 = icmp eq i64 %i.bi, 0
  br i1 %.not94, label %bb.g, label %bb.k

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %.lr.ph109
  %.077107 = phi i64 [ %i.bz, %.lr.ph109 ], [ %i.f, %.lr.ph109.preheader ] ; 3 uses
  %.078106 = phi i64 [ %i.bs, %.lr.ph109 ], [ 0, %.lr.ph109.preheader ]
  %.079105 = phi i64 [ %i.bw, %.lr.ph109 ], [ -1, %.lr.ph109.preheader ] ; 2 uses
  %.080104 = phi i64 [ %i.by, %.lr.ph109 ], [ %i.bg, %.lr.ph109.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %.077107
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8   ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 1                     ; 2 uses
  %.neg.i.i.i = sext i1 %i.bl to i64              ; 2 uses
  %i.bm = select i1 %i.bl, i64 %.079105, i64 0    ; 2 uses
  %i.bn = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bm) #8, !srcloc !13
  %i.bo = and i64 %i.bn, %.077107
  %i.bp = xor i64 %i.bm, -1
  %i.bq = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bp) #8, !srcloc !13
  %i.br = and i64 %i.bq, %.078106
  %i.bs = or i64 %i.br, %i.bo                     ; 2 uses
  %i.bt = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i) #8, !srcloc !13 ; 0 uses
  %i.bu = xor i64 %.neg.i.i.i, -1
  %i.bv = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bu) #8, !srcloc !13
  %i.bw = and i64 %i.bv, %.079105                 ; 3 uses
  %.not98 = icmp eq i8 %i.bk, 0
  %i.bx = select i1 %.not98, i64 0, i64 %i.bw
  %i.by = or i64 %i.bx, %.080104
  %i.bz = add i64 %.077107, 1                     ; 2 uses
  %exitcond118.not = icmp eq i64 %i.bz, %i.k
  br i1 %exitcond118.not, label %._crit_edge110.loopexit, label %.lr.ph109, !llvm.loop !49

bb.g:                                             ; preds = %._crit_edge110
  %i.ca = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.078.lcssa) #8, !srcloc !13
  %i.cb = add i64 %i.ca, 1                        ; 3 uses
  %i.cc = sub i64 %i.k, %i.cb                     ; 3 uses
  %i.cd = icmp ult i64 %2, %i.cc
  br i1 %i.cd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 113, ptr noundef nonnull @.str, i32 noundef 193) #6
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ce = icmp eq i64 %i.k, %i.cb
  br i1 %i.ce, label %OPENSSL_memcpy.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull readonly align 1 %i.cf, i64 %i.cc, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.i, %bb.j
  store i64 %i.cc, ptr %1, align 8, !tbaa !15
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge110, %bb.c
  %.083 = phi ptr [ null, %bb.c ], [ %i.l, %._crit_edge110 ]
  call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 133, ptr noundef nonnull @.str, i32 noundef 205) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.d, %bb.e, %._crit_edge, %._crit_edge103, %OPENSSL_memcpy.exit
  %.1.sink = phi ptr [ %i.l, %OPENSSL_memcpy.exit ], [ %.083, %bb.k ], [ null, %bb.d ], [ %i.l, %bb.h ], [ %i.l, %._crit_edge103 ], [ %i.l, %._crit_edge ], [ %i.l, %bb.e ]
  %.0 = phi i32 [ 1, %OPENSSL_memcpy.exit ], [ 0, %bb.k ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %._crit_edge103 ], [ 0, %._crit_edge ], [ 0, %bb.e ]
  call void @OPENSSL_free(ptr noundef %.1.sink) #6
  ret i32 %.0
}

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @RSA_public_encrypt(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = tail call i32 @RSA_size(ptr noundef %3) #6
  %i.c = zext i32 %i.b to i64
  %i.d = call i32 @RSA_encrypt(ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %i.c, ptr noundef %1, i64 noundef %0, i32 noundef %4)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.f = icmp ugt i64 %i.e, 2147483647
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 310) #6
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %i.e to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ %i.g, %bb.d ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @RSA_encrypt(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %.not83 = icmp eq ptr %i.c, null
  br i1 %.not83, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt i64 %5, 2147483647
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 342) #6
  store i64 0, ptr %1, align 8, !tbaa !15
end_hunk_0
begin_hunk_1_@RSA_private_encrypt:bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %i.e to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ %i.g, %bb.d ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i32 @RSA_sign_raw(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @is_public_component_of_rsa_key_good(ptr noundef) local_unnamed_addr #1

declare ptr @BN_CTX_new() local_unnamed_addr #1

declare void @BN_CTX_start(ptr noundef) local_unnamed_addr #1

declare ptr @BN_CTX_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @rsa_padding_add_PKCS1_type_2(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 11
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 126, ptr noundef nonnull @.str, i32 noundef 215) #6
  br label %OPENSSL_memcpy.exit

bb.c:                                             ; preds = %bb.a
  %i.b = add nsw i64 %1, -11
  %i.c = icmp ugt i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 114, ptr noundef nonnull @.str, i32 noundef 220) #6
  br label %OPENSSL_memcpy.exit

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %0, align 1, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.d, align 1, !tbaa !8
  %i.e = add nsw i64 %1, -3
  %i.f = sub nuw nsw i64 %i.e, %3                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.h = tail call i32 @RAND_bytes(ptr noundef nonnull %i.g, i64 noundef range(i64 -4294967276, 4294967293) %i.f) #6
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #7
  unreachable

.preheader.i:                                     ; preds = %bb.e, %bb.j
  %.09.i = phi i64 [ %i.q, %bb.j ], [ 0, %bb.e ]  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.09.i ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.preheader.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %i.l = icmp eq i8 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 2) %i.m) #8, !srcloc !58
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @RAND_bytes(ptr noundef nonnull %i.j, i64 noundef 1) #6
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.i, !llvm.loop !56

bb.i:                                             ; preds = %bb.h
  tail call void @abort() #7
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.q = add nuw i64 %.09.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %i.f
  br i1 %exitcond.not.i, label %rand_nonzero.exit, label %.preheader.i, !llvm.loop !57

rand_nonzero.exit:                                ; preds = %bb.j
  %i.r = getelementptr i8, ptr %0, i64 %i.f
  %i.s = getelementptr i8, ptr %i.r, i64 2
  store i8 0, ptr %i.s, align 1, !tbaa !8
  %i.t = icmp eq i64 %3, 0
  br i1 %i.t, label %OPENSSL_memcpy.exit, label %bb.k

bb.k:                                             ; preds = %rand_nonzero.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.v = sub nsw i64 0, %3
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr readonly align 1 %2, i64 %3, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.k, %rand_nonzero.exit, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %rand_nonzero.exit ], [ 1, %bb.k ]
  ret i32 %.0
}

declare i32 @RSA_padding_add_none(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @BN_bin2bn(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_ucmp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_MONT_CTX_set_locked(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_mod_exp_mont(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_bn2bin_padded(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @BN_CTX_end(ptr noundef) local_unnamed_addr #1

declare void @BN_CTX_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @RSA_decrypt(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %.not25 = icmp eq ptr %i.c, null
  br i1 %.not25, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt i64 %5, 2147483647
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 519) #6
  store i64 0, ptr %1, align 8, !tbaa !15
  br label %rsa_default_decrypt.exit

bb.e:                                             ; preds = %bb.c
  %i.e = trunc nuw nsw i64 %5 to i32
  %i.f = tail call i32 %i.c(i32 noundef %i.e, ptr noundef %4, ptr noundef %2, ptr noundef nonnull %0, i32 noundef %6) #6 ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0)
  %storemerge = zext nneg i32 %narrow to i64
  %.0 = zext i1 %i.g to i32
  store i64 %storemerge, ptr %1, align 8, !tbaa !15
  br label %rsa_default_decrypt.exit

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i32 @RSA_size(ptr noundef nonnull %0) #6 ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = icmp ult i64 %3, %i.i
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 135, ptr noundef nonnull @.str, i32 noundef 452) #6
  br label %rsa_default_decrypt.exit

bb.h:                                             ; preds = %bb.f
  %i.k = icmp eq i32 %6, 3                        ; 2 uses
  br i1 %i.k, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call ptr @OPENSSL_malloc(i64 noundef %i.i) #6 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.030.i = phi ptr [ %i.l, %bb.i ], [ %2, %bb.h ] ; 10 uses
  %.not.i = icmp eq i64 %5, %i.i
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 112, ptr noundef nonnull @.str, i32 noundef 467) #6
  br label %rsa_padding_check_PKCS1_type_2.exit.thread42.i

bb.l:                                             ; preds = %bb.j
  %i.n = tail call i32 @rsa_private_transform(ptr noundef nonnull %0, ptr noundef %.030.i, ptr noundef %4, i64 noundef %5) #6
  %.not36.i = icmp eq i32 %i.n, 0
  br i1 %.not36.i, label %rsa_padding_check_PKCS1_type_2.exit.thread42.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i32 %6, label %bb.y [
    i32 1, label %bb.n
    i32 4, label %rsa_padding_check_PKCS1_type_2.exit.i
    i32 3, label %rsa_padding_check_PKCS1_type_2.exit.thread42.thread.i
  ]

bb.n:                                             ; preds = %bb.m
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 120, ptr noundef nonnull @.str, i32 noundef 238) #6
  br label %rsa_padding_check_PKCS1_type_2.exit.thread.i

bb.p:                                             ; preds = %bb.n
  %i.p = icmp ult i32 %i.h, 11
  br i1 %i.p, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 126, ptr noundef nonnull @.str, i32 noundef 247) #6
  br label %rsa_padding_check_PKCS1_type_2.exit.thread.i

bb.r:                                             ; preds = %bb.s
  %7 = load i8, ptr %.030.i, align 1, !tbaa !8
  %i.q = icmp ne i8 %7, 0
  %8 = getelementptr inbounds nuw i8, ptr %.030.i, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !8
  %i.r = icmp ne i8 %9, 2
  %.not45.i.i = or i1 %i.q, %i.r
  %i.s = sub i64 9, %i.ae
  %i.t = or i64 %i.s, %i.ad
  %isneg.i.i = icmp sgt i64 %i.t, -1
  %.not42.i.i = select i1 %isneg.i.i, i1 true, i1 %.not45.i.i
  %i.u = add i64 %i.ae, 1                         ; 4 uses
  %.not40.i.i = icmp eq i64 %i.ai, -1
  %.not.i.i = select i1 %.not42.i.i, i1 true, i1 %.not40.i.i
  br i1 %.not.i.i, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.p, %bb.s
  %.03448.i.i = phi i64 [ %i.aj, %bb.s ], [ 2, %bb.p ] ; 3 uses
  %.03547.i.i = phi i64 [ %i.ai, %bb.s ], [ -1, %bb.p ] ; 2 uses
  %.03646.i.i = phi i64 [ %i.ae, %bb.s ], [ 0, %bb.p ]
  %i.v = getelementptr inbounds nuw i8, ptr %.030.i, i64 %.03448.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = icmp eq i8 %i.w, 0                       ; 2 uses
  %.neg.i.i.i.i = sext i1 %i.x to i64             ; 2 uses
  %i.y = select i1 %i.x, i64 %.03547.i.i, i64 0   ; 2 uses
  %i.z = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.y) #8, !srcloc !13
  %i.aa = and i64 %i.z, %.03448.i.i
  %i.ab = xor i64 %i.y, -1
  %i.ac = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ab) #8, !srcloc !13
  %i.ad = and i64 %i.ac, %.03646.i.i              ; 2 uses
  %i.ae = or i64 %i.ad, %i.aa                     ; 3 uses
  %i.af = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i.i) #8, !srcloc !13 ; 0 uses
  %i.ag = xor i64 %.neg.i.i.i.i, -1
  %i.ah = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ag) #8, !srcloc !13
  %i.ai = and i64 %i.ah, %.03547.i.i              ; 2 uses
  %i.aj = add nuw nsw i64 %.03448.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aj, %5
  br i1 %exitcond.not.i.i, label %bb.r, label %bb.s, !llvm.loop !59

bb.t:                                             ; preds = %bb.r
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 284) #6
  br label %rsa_padding_check_PKCS1_type_2.exit.thread.i

bb.u:                                             ; preds = %bb.r
  %i.ak = sub nuw nsw i64 %5, %i.u                ; 2 uses
  %i.al = icmp ugt i64 %i.u, %5
  br i1 %i.al, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 292) #6
  br label %rsa_padding_check_PKCS1_type_2.exit.thread.i

bb.w:                                             ; preds = %bb.u
  %i.am = icmp eq i64 %i.u, %5
  br i1 %i.am, label %rsa_padding_check_PKCS1_type_2.exit.thread42.thread51.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.an = getelementptr inbounds nuw i8, ptr %.030.i, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull readonly align 1 %i.an, i64 %i.ak, i1 false)
  br label %rsa_padding_check_PKCS1_type_2.exit.thread42.thread51.i

rsa_padding_check_PKCS1_type_2.exit.thread42.thread51.i: ; preds = %bb.x, %bb.w
  store i64 %i.ak, ptr %1, align 8, !tbaa !15
  br label %.thread.i

rsa_padding_check_PKCS1_type_2.exit.thread42.thread.i: ; preds = %bb.m
  store i64 %5, ptr %1, align 8, !tbaa !15
  br label %rsa_default_decrypt.exit

bb.y:                                             ; preds = %bb.m
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 143, ptr noundef nonnull @.str, i32 noundef 490) #6
  br label %.thread.i

rsa_padding_check_PKCS1_type_2.exit.i:            ; preds = %bb.m
  %i.ao = tail call i32 @RSA_padding_check_PKCS1_OAEP_mgf1(ptr noundef %2, ptr noundef %1, i64 noundef %5, ptr noundef %.030.i, i64 noundef %5, ptr noundef null, i64 noundef 0, ptr noundef null, ptr noundef null)
  %.not37.i = icmp eq i32 %i.ao, 0
  br i1 %.not37.i, label %rsa_padding_check_PKCS1_type_2.exit.thread.i, label %.thread.i

rsa_padding_check_PKCS1_type_2.exit.thread.i:     ; preds = %rsa_padding_check_PKCS1_type_2.exit.i, %bb.v, %bb.t, %bb.q, %bb.o
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 136, ptr noundef nonnull @.str, i32 noundef 496) #6
  br label %rsa_padding_check_PKCS1_type_2.exit.thread42.i

rsa_padding_check_PKCS1_type_2.exit.thread42.i:   ; preds = %rsa_padding_check_PKCS1_type_2.exit.thread.i, %bb.l, %bb.k
  br i1 %i.k, label %rsa_default_decrypt.exit, label %.thread.i

.thread.i:                                        ; preds = %rsa_padding_check_PKCS1_type_2.exit.thread42.i, %rsa_padding_check_PKCS1_type_2.exit.i, %bb.y, %rsa_padding_check_PKCS1_type_2.exit.thread42.thread51.i, %bb.i
  %.148.i = phi i32 [ 0, %rsa_padding_check_PKCS1_type_2.exit.thread42.i ], [ 0, %bb.i ], [ 1, %rsa_padding_check_PKCS1_type_2.exit.i ], [ 0, %bb.y ], [ 1, %rsa_padding_check_PKCS1_type_2.exit.thread42.thread51.i ]
  %.13147.i = phi ptr [ %.030.i, %rsa_padding_check_PKCS1_type_2.exit.thread42.i ], [ null, %bb.i ], [ %.030.i, %rsa_padding_check_PKCS1_type_2.exit.i ], [ %.030.i, %bb.y ], [ %.030.i, %rsa_padding_check_PKCS1_type_2.exit.thread42.thread51.i ]
  tail call void @OPENSSL_free(ptr noundef %.13147.i) #6
  br label %rsa_default_decrypt.exit

rsa_default_decrypt.exit:                         ; preds = %.thread.i, %rsa_padding_check_PKCS1_type_2.exit.thread42.i, %rsa_padding_check_PKCS1_type_2.exit.thread42.thread.i, %bb.g, %bb.e, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ %.0, %bb.e ], [ 0, %bb.g ], [ %.148.i, %.thread.i ], [ 0, %rsa_padding_check_PKCS1_type_2.exit.thread42.i ], [ 1, %rsa_padding_check_PKCS1_type_2.exit.thread42.thread.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @RSA_private_decrypt(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = tail call i32 @RSA_size(ptr noundef %3) #6
  %i.c = zext i32 %i.b to i64
  %i.d = call i32 @RSA_decrypt(ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %i.c, ptr noundef %1, i64 noundef %0, i32 noundef %4)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.f = icmp ugt i64 %i.e, 2147483647
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 543) #6
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %i.e to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ %i.g, %bb.d ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @RSA_public_decrypt(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = tail call i32 @RSA_size(ptr noundef %3) #6
  %i.c = zext i32 %i.b to i64
  %i.d = call i32 @RSA_verify_raw(ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %i.c, ptr noundef %1, i64 noundef %0, i32 noundef %4) #6
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.f = icmp ugt i64 %i.e, 2147483647
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 557) #6
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %i.e to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ %i.g, %bb.d ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i32 @RSA_verify_raw(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @rsa_private_transform(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!"branch_weights", i32 4, i32 28}
!13 = !{i64 1432501}
!14 = !{!"long", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !4, i64 0}
!17 = !{!"p1 _ZTS11rsa_meth_st", !16, i64 0}
!18 = !{!"p1 _ZTS9bignum_st", !16, i64 0}
!19 = !{!"p1 _ZTS20rsassa_pss_params_st", !16, i64 0}
!20 = !{!"p1 _ZTS13stack_st_void", !16, i64 0}
!21 = !{!"crypto_ex_data_st", !20, i64 0}
!22 = !{!"p1 _ZTS14bn_mont_ctx_st", !16, i64 0}
!23 = !{!"any p2 pointer", !16, i64 0}
!24 = !{!"p2 _ZTS14bn_blinding_st", !23, i64 0}
!25 = !{!"p1 omnipotent char", !16, i64 0}
!26 = !{!"rsa_st", !17, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !19, i64 72, !21, i64 80, !5, i64 88, !5, i64 92, !4, i64 96, !22, i64 152, !22, i64 160, !22, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !14, i64 208, !24, i64 216, !25, i64 224, !14, i64 232, !5, i64 240}
!27 = !{!26, !17, i64 0}
!28 = !{!"rsa_meth_st", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !5, i64 80}
!29 = distinct !{!29, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !9, !10, !11}
!33 = distinct !{!33, !9, !10, !11}
!34 = distinct !{!34, !9, !10, !11}
!35 = distinct !{!35, !9, !10, !11}
!36 = distinct !{!36, !9, !10}
end_hunk_1
