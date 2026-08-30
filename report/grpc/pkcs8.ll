Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/pkcs8?download=true
inline.NumInlined: 14
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pbe_suite = type { i32, [10 x i8], i8, ptr, ptr, ptr }
%struct.cbb_st = type { ptr, i8, %union.anon }
%union.anon = type { %struct.cbb_buffer_st }
%struct.cbb_buffer_st = type { ptr, i64, i64, i8 }
%struct.cbs_st = type { ptr, i64 }
%struct.env_md_ctx_st = type { ptr, ptr, ptr, ptr }
%struct.evp_cipher_ctx_st = type { ptr, ptr, ptr, i32, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i32, i32, [32 x i8], i32 }

@.str = private unnamed_addr constant [81 x i8] c"/opt-bench/work/grpc/grpc/third_party/boringssl-with-bazel/crypto/pkcs8/pkcs8.cc\00", align 1
@_ZL11kBuiltinPBE = internal constant [4 x %struct.pbe_suite] [%struct.pbe_suite { i32 149, [10 x i8] c"*\86H\86\F7\0D\01\0C\01\06", i8 10, ptr @EVP_rc2_40_cbc, ptr @EVP_sha1, ptr @_ZL23pkcs12_pbe_decrypt_initPK9pbe_suiteP17evp_cipher_ctx_stPKcmP6cbs_st }, %struct.pbe_suite { i32 144, [10 x i8] c"*\86H\86\F7\0D\01\0C\01\01", i8 10, ptr @EVP_rc4, ptr @EVP_sha1, ptr @_ZL23pkcs12_pbe_decrypt_initPK9pbe_suiteP17evp_cipher_ctx_stPKcmP6cbs_st }, %struct.pbe_suite { i32 146, [10 x i8] c"*\86H\86\F7\0D\01\0C\01\03", i8 10, ptr @EVP_des_ede3_cbc, ptr @EVP_sha1, ptr @_ZL23pkcs12_pbe_decrypt_initPK9pbe_suiteP17evp_cipher_ctx_stPKcmP6cbs_st }, %struct.pbe_suite { i32 161, [10 x i8] c"*\86H\86\F7\0D\01\05\0D\00", i8 9, ptr null, ptr null, ptr @PKCS5_pbe2_decrypt_init }], align 16

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @pkcs12_key_gen(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i8 noundef zeroext %4, i32 noundef %5, i64 noundef %6, ptr nofree noundef writeonly captures(none) %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.cbb_st, align 8             ; 9 uses
  %10 = alloca %struct.cbs_st, align 8            ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %11 = alloca %struct.env_md_ctx_st, align 8     ; 12 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca [128 x i8], align 16              ; 4 uses
  %i.e = alloca [64 x i8], align 16               ; 12 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = alloca [128 x i8], align 16              ; 6 uses
  %i.h = icmp eq i32 %5, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 19, i32 noundef 0, i32 noundef 129, ptr noundef nonnull @.str, i32 noundef 72) #6
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  call void @EVP_MD_CTX_init(ptr noundef nonnull %11) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i64 0, ptr %i.c, align 8, !tbaa !14
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  %i.i = shl i64 %1, 1
  %i.j = call i32 @CBB_init(ptr noundef nonnull %9, i64 noundef %i.i) #6
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZL22pkcs12_encode_passwordPKcmPPhPm.exit.thread, label %bb.e

_ZL22pkcs12_encode_passwordPKcmPPhPm.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  br label %bb.x

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  store ptr %0, ptr %10, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %1, ptr %i.k, align 8, !tbaa !18
  %.not713.i = icmp eq i64 %1, 0
  br i1 %.not713.i, label %._crit_edge.i, label %.lr.ph.i

thread-pre-split.i:                               ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %.pr.i = load i64, ptr %i.k, align 8, !tbaa !18
  %.not7.i = icmp eq i64 %.pr.i, 0
  br i1 %.not7.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %thread-pre-split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.l = call i32 @CBS_get_utf8(ptr noundef nonnull %10, ptr noundef nonnull %i.a) #6
  %.not10.i = icmp eq i32 %i.l, 0
  br i1 %.not10.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.m = load i32, ptr %i.a, align 4, !tbaa !19
  %i.n = call i32 @CBB_add_ucs2_be(ptr noundef nonnull %9, i32 noundef %i.m) #6
  %.not11.i = icmp eq i32 %i.n, 0
  br i1 %.not11.i, label %bb.g, label %thread-pre-split.i

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  call void @ERR_put_error(i32 noundef 19, i32 noundef 0, i32 noundef 131, ptr noundef nonnull @.str, i32 noundef 48) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZL22pkcs12_encode_passwordPKcmPPhPm.exit.thread128

._crit_edge.i:                                    ; preds = %thread-pre-split.i, %bb.e
  %i.o = call i32 @CBB_add_ucs2_be(ptr noundef nonnull %9, i32 noundef 0) #6
  %.not8.i = icmp eq i32 %i.o, 0
  br i1 %.not8.i, label %_ZL22pkcs12_encode_passwordPKcmPPhPm.exit.thread128, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.p = call i32 @CBB_finish(ptr noundef nonnull %9, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #6
  %.not9.i = icmp eq i32 %i.p, 0
  br i1 %.not9.i, label %_ZL22pkcs12_encode_passwordPKcmPPhPm.exit.thread128, label %_ZL22pkcs12_encode_passwordPKcmPPhPm.exit

_ZL22pkcs12_encode_passwordPKcmPPhPm.exit.thread128: ; preds = %bb.g, %._crit_edge.i, %bb.h
  call void @CBB_cleanup(ptr noundef nonnull %9) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  br label %bb.x

_ZL22pkcs12_encode_passwordPKcmPPhPm.exit:        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  br label %bb.i

bb.i:                                             ; preds = %_ZL22pkcs12_encode_passwordPKcmPPhPm.exit, %bb.c
  %i.q = call i64 @EVP_MD_block_size(ptr noundef %8) #6 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 %4, i64 %i.q, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.i, %bb.j
  %i.s = add i64 %3, -1
  %i.t = add i64 %i.s, %i.q                       ; 4 uses
  %i.u = icmp ult i64 %i.t, %3
  br i1 %i.u, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.v = load i64, ptr %i.c, align 8, !tbaa !14
  %.fr = freeze i64 %i.v                          ; 2 uses
  %i.w = add i64 %i.q, -1                         ; 3 uses
  %i.x = add i64 %i.w, %.fr                       ; 4 uses
  %i.y = icmp ult i64 %i.x, %.fr
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %_ZL14OPENSSL_memsetPvim.exit
  call void @ERR_put_error(i32 noundef 19, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 110) #6
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.z = urem i64 %i.t, %i.q                      ; 2 uses
  %i.aa = sub nuw i64 %i.t, %i.z                  ; 7 uses
  %i.ab = urem i64 %i.x, %i.q                     ; 2 uses
  %i.ac = sub nuw i64 %i.x, %i.ab                 ; 5 uses
  %i.ad = add i64 %i.ac, %i.aa                    ; 6 uses
  %i.ae = icmp ult i64 %i.ad, %i.aa
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @ERR_put_error(i32 noundef 19, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 117) #6
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.af = call ptr @OPENSSL_malloc(i64 noundef %i.ad) #6 ; 10 uses
  %i.ag = icmp ne i64 %i.ad, 0
  %i.ah = icmp eq ptr %i.af, null
  %or.cond = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond, label %.loopexit, label %.preheader146

.preheader146:                                    ; preds = %bb.o
  %.not165 = icmp eq i64 %i.t, %i.z
  br i1 %.not165, label %.preheader145, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader146
  %xtraiter = and i64 %i.aa, 1
  %i.ai = icmp ult i64 %i.aa, 2
  br i1 %i.ai, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.aa, -2
  br label %.lr.ph

.preheader145.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader145, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader145.loopexit.unr-lcssa, %.lr.ph.preheader
  %.093147.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ax, %.preheader145.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod194 = trunc i64 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod194)
  %i.aj = urem i64 %.093147.epil.init, %3
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %.093147.epil.init
  store i8 %i.al, ptr %i.am, align 1, !tbaa !20
  br label %.preheader145

.preheader145:                                    ; preds = %.lr.ph.epil.preheader, %.preheader145.loopexit.unr-lcssa, %.preheader146
  %invariant.gep = getelementptr i8, ptr %i.af, i64 %i.aa ; 3 uses
  %.not166 = icmp eq i64 %i.x, %i.ab
  br i1 %.not166, label %.preheader143, label %.lr.ph149.preheader

.lr.ph149.preheader:                              ; preds = %.preheader145
  %xtraiter196 = and i64 %i.ac, 1
  %i.an = icmp ult i64 %i.ac, 2
  br i1 %i.an, label %.lr.ph149.epil.preheader, label %.lr.ph149.preheader.new

.lr.ph149.preheader.new:                          ; preds = %.lr.ph149.preheader
  %unroll_iter199 = and i64 %i.ac, -2
  br label %.lr.ph149

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.093147 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ax, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ao = urem i64 %.093147, %3
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 %.093147
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !20
  %i.as = or disjoint i64 %.093147, 1             ; 2 uses
  %i.at = urem i64 %i.as, %3
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.as
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !20
  %i.ax = add nuw i64 %.093147, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader145.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !21

.preheader143.loopexit.unr-lcssa:                 ; preds = %.lr.ph149
  %lcmp.mod197.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod197.not, label %.preheader143, label %.lr.ph149.epil.preheader

.lr.ph149.epil.preheader:                         ; preds = %.preheader143.loopexit.unr-lcssa, %.lr.ph149.preheader
  %.092148.epil.init = phi i64 [ 0, %.lr.ph149.preheader ], [ %i.bq, %.preheader143.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod198 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod198)
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.az = load i64, ptr %i.c, align 8, !tbaa !14
  %i.ba = urem i64 %.092148.epil.init, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !20
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %.092148.epil.init
  store i8 %i.bc, ptr %gep.epil, align 1, !tbaa !20
  br label %.preheader143

.preheader143:                                    ; preds = %.lr.ph149.epil.preheader, %.preheader143.loopexit.unr-lcssa, %.preheader145
  %.not117161 = icmp eq i64 %6, 0
  br i1 %.not117161, label %.loopexit, label %.lr.ph164

.lr.ph164:                                        ; preds = %.preheader143
  %.not125150.not = icmp eq i32 %5, 1
  %.not167 = icmp eq i64 %i.ad, 0
  %umax = call i32 @llvm.umax.i32(i32 %5, i32 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.bd = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %11, ptr noundef %8, ptr noundef null) #6
  %.not118185 = icmp eq i32 %i.bd, 0
  br i1 %.not118185, label %.thread133, label %.lr.ph188.preheader

.lr.ph188.preheader:                              ; preds = %.lr.ph164
  %xtraiter201 = and i64 %i.q, 1
  %i.be = icmp eq i64 %i.w, 0
  %unroll_iter204 = and i64 %i.q, -2
  %lcmp.mod202.not = icmp eq i64 %xtraiter201, 0
  %lcmp.mod203 = trunc i64 %i.q to i1
  br label %.lr.ph188

.lr.ph149:                                        ; preds = %.lr.ph149, %.lr.ph149.preheader.new
  %.092148 = phi i64 [ 0, %.lr.ph149.preheader.new ], [ %i.bq, %.lr.ph149 ] ; 4 uses
  %niter200 = phi i64 [ 0, %.lr.ph149.preheader.new ], [ %niter200.next.1, %.lr.ph149 ]
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !14
  %i.bh = urem i64 %.092148, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !20
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.092148
  store i8 %i.bj, ptr %gep, align 1, !tbaa !20
  %i.bk = or disjoint i64 %.092148, 1             ; 2 uses
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.bm = load i64, ptr %i.c, align 8, !tbaa !14
  %i.bn = urem i64 %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !20
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.bk
  store i8 %i.bp, ptr %gep.1, align 1, !tbaa !20
  %i.bq = add nuw i64 %.092148, 2                 ; 2 uses
  %niter200.next.1 = add i64 %niter200, 2         ; 2 uses
  %niter200.ncmp.1.not = icmp eq i64 %niter200.next.1, %unroll_iter199
  br i1 %niter200.ncmp.1.not, label %.preheader143.loopexit.unr-lcssa, label %.lr.ph149, !llvm.loop !23

.lr.ph188:                                        ; preds = %.lr.ph188.preheader, %._crit_edge160
  %.0104162187 = phi i64 [ %i.cf, %._crit_edge160 ], [ %6, %.lr.ph188.preheader ] ; 2 uses
  %.0102163186 = phi ptr [ %i.ce, %._crit_edge160 ], [ %7, %.lr.ph188.preheader ] ; 2 uses
  %i.br = call i32 @EVP_DigestUpdate(ptr noundef nonnull %11, ptr noundef nonnull %i.d, i64 noundef %i.q) #6
  %.not119 = icmp eq i32 %i.br, 0
  br i1 %.not119, label %.thread133, label %bb.p

bb.p:                                             ; preds = %.lr.ph188
  %i.bs = call i32 @EVP_DigestUpdate(ptr noundef nonnull %11, ptr noundef %i.af, i64 noundef %i.ad) #6
  %.not120 = icmp eq i32 %i.bs, 0
  br i1 %.not120, label %.thread133, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %11, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #6
  %.not121 = icmp eq i32 %i.bt, 0
  br i1 %.not121, label %.thread133, label %.preheader142

.preheader142:                                    ; preds = %bb.q
  br i1 %.not125150.not, label %._crit_edge, label %.lr.ph152

bb.r:                                             ; preds = %bb.t
  %i.bu = add nuw i32 %.091151, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bu, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !24

.lr.ph152:                                        ; preds = %.preheader142, %bb.r
  %.091151 = phi i32 [ %i.bu, %bb.r ], [ 1, %.preheader142 ]
  %i.bv = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %11, ptr noundef %8, ptr noundef null) #6
  %.not122 = icmp eq i32 %i.bv, 0
  br i1 %.not122, label %.thread133, label %bb.s

bb.s:                                             ; preds = %.lr.ph152
  %i.bw = load i32, ptr %i.f, align 4, !tbaa !19
  %i.bx = zext i32 %i.bw to i64
  %i.by = call i32 @EVP_DigestUpdate(ptr noundef nonnull %11, ptr noundef nonnull %i.e, i64 noundef %i.bx) #6
  %.not123 = icmp eq i32 %i.by, 0
  br i1 %.not123, label %.thread133, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %11, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #6
  %.not124 = icmp eq i32 %i.bz, 0
  br i1 %.not124, label %.thread133, label %bb.r

._crit_edge:                                      ; preds = %bb.r, %.preheader142
  %i.ca = load i32, ptr %i.f, align 4, !tbaa !19  ; 2 uses
  %i.cb = zext i32 %i.ca to i64                   ; 4 uses
  %i.cc = call i64 @llvm.umin.i64(i64 %.0104162187, i64 %i.cb) ; 3 uses
  %i.cd = icmp eq i32 %i.ca, 0
  br i1 %i.cd, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0102163186, ptr nonnull readonly align 16 %i.e, i64 %i.cc, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %._crit_edge, %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %.0102163186, i64 %i.cc
  %i.cf = sub nuw i64 %.0104162187, %i.cc         ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.thread137, label %bb.v

.thread137:                                       ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %.loopexit

bb.v:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  br i1 %i.be, label %.epil.preheader, label %.new

.preheader141.unr-lcssa:                          ; preds = %.new
  br i1 %lcmp.mod202.not, label %.preheader141, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader141.unr-lcssa, %bb.v
  %.089153.epil.init = phi i64 [ 0, %bb.v ], [ %i.di, %.preheader141.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod203)
  %i.ch = urem i64 %.089153.epil.init, %i.cb
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !20
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 %.089153.epil.init
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !20
  br label %.preheader141

.preheader141:                                    ; preds = %.preheader141.unr-lcssa, %.epil.preheader
  br i1 %.not167, label %._crit_edge160, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader141, %._crit_edge158.us
  %.088159.us = phi i64 [ %i.cx, %._crit_edge158.us ], [ 0, %.preheader141 ] ; 2 uses
  %i.cl = getelementptr i8, ptr %i.af, i64 %.088159.us
  br label %bb.w

bb.w:                                             ; preds = %.preheader.us, %bb.w
  %.0156.us = phi i64 [ %i.w, %.preheader.us ], [ %.0.us, %bb.w ] ; 3 uses
  %.087155.us = phi i32 [ 1, %.preheader.us ], [ %i.cv, %bb.w ]
  %i.cm = getelementptr i8, ptr %i.cl, i64 %.0156.us ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !20
  %i.co = zext i8 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0156.us
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !20
  %i.cr = zext i8 %i.cq to i32
  %i.cs = add nuw nsw i32 %.087155.us, %i.co
  %i.ct = add nuw nsw i32 %i.cs, %i.cr            ; 2 uses
  %i.cu = trunc i32 %i.ct to i8
  store i8 %i.cu, ptr %i.cm, align 1, !tbaa !20
  %i.cv = lshr i32 %i.ct, 8
  %.0.us = add i64 %.0156.us, -1                  ; 2 uses
  %i.cw = icmp ult i64 %.0.us, %i.q
  br i1 %i.cw, label %bb.w, label %._crit_edge158.us, !llvm.loop !25

end_hunk_0
