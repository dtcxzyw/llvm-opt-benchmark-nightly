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
  %12 = icmp eq i64 %i.aa, 1
  br i1 %12, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.aa, -2
  br label %.lr.ph

.preheader145.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader145, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader145.loopexit.unr-lcssa, %.lr.ph.preheader
  %.095147.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.av, %.preheader145.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod194 = trunc i64 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod194)
  %i.ai = urem i64 %.095147.epil.init, %3
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %.095147.epil.init
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !20
  br label %.preheader145

.preheader145:                                    ; preds = %.lr.ph.epil.preheader, %.preheader145.loopexit.unr-lcssa, %.preheader146
  %invariant.gep = getelementptr i8, ptr %i.af, i64 %i.aa ; 3 uses
  %.not166 = icmp eq i64 %i.x, %i.ab
  br i1 %.not166, label %.preheader143, label %.lr.ph149.preheader

.lr.ph149.preheader:                              ; preds = %.preheader145
  %xtraiter196 = and i64 %i.ac, 1
  %13 = icmp eq i64 %i.ac, 1
  br i1 %13, label %.lr.ph149.epil.preheader, label %.lr.ph149.preheader.new

.lr.ph149.preheader.new:                          ; preds = %.lr.ph149.preheader
  %unroll_iter199 = and i64 %i.ac, -2
  br label %.lr.ph149

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.095147 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.av, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.am = urem i64 %.095147, %3
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %.095147
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !20
  %i.aq = or disjoint i64 %.095147, 1             ; 2 uses
  %i.ar = urem i64 %i.aq, %3
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aq
  store i8 %i.at, ptr %i.au, align 1, !tbaa !20
  %i.av = add nuw i64 %.095147, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader145.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !21

.preheader143.loopexit.unr-lcssa:                 ; preds = %.lr.ph149
  %lcmp.mod197.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod197.not, label %.preheader143, label %.lr.ph149.epil.preheader

.lr.ph149.epil.preheader:                         ; preds = %.preheader143.loopexit.unr-lcssa, %.lr.ph149.preheader
  %.094148.epil.init = phi i64 [ 0, %.lr.ph149.preheader ], [ %i.bo, %.preheader143.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod198 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod198)
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !14
  %i.ay = urem i64 %.094148.epil.init, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !20
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %.094148.epil.init
  store i8 %i.ba, ptr %gep.epil, align 1, !tbaa !20
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
  %i.bb = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %11, ptr noundef %8, ptr noundef null) #6
  %.not118185 = icmp eq i32 %i.bb, 0
  br i1 %.not118185, label %.thread133, label %.lr.ph188.preheader

.lr.ph188.preheader:                              ; preds = %.lr.ph164
  %xtraiter201 = and i64 %i.q, 1
  %i.bc = icmp eq i64 %i.w, 0
  %unroll_iter204 = and i64 %i.q, -2
  %lcmp.mod202.not = icmp eq i64 %xtraiter201, 0
  %lcmp.mod203 = trunc i64 %i.q to i1
  br label %.lr.ph188

.lr.ph149:                                        ; preds = %.lr.ph149, %.lr.ph149.preheader.new
  %.094148 = phi i64 [ 0, %.lr.ph149.preheader.new ], [ %i.bo, %.lr.ph149 ] ; 4 uses
  %niter200 = phi i64 [ 0, %.lr.ph149.preheader.new ], [ %niter200.next.1, %.lr.ph149 ]
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.be = load i64, ptr %i.c, align 8, !tbaa !14
  %i.bf = urem i64 %.094148, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !20
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.094148
  store i8 %i.bh, ptr %gep, align 1, !tbaa !20
  %i.bi = or disjoint i64 %.094148, 1             ; 2 uses
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !14
  %i.bl = urem i64 %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.bi
  store i8 %i.bn, ptr %gep.1, align 1, !tbaa !20
  %i.bo = add nuw i64 %.094148, 2                 ; 2 uses
  %niter200.next.1 = add i64 %niter200, 2         ; 2 uses
  %niter200.ncmp.1.not = icmp eq i64 %niter200.next.1, %unroll_iter199
  br i1 %niter200.ncmp.1.not, label %.preheader143.loopexit.unr-lcssa, label %.lr.ph149, !llvm.loop !23

.lr.ph188:                                        ; preds = %.lr.ph188.preheader, %._crit_edge160
  %.098162187 = phi ptr [ %i.cc, %._crit_edge160 ], [ %7, %.lr.ph188.preheader ] ; 2 uses
  %.096163186 = phi i64 [ %i.cd, %._crit_edge160 ], [ %6, %.lr.ph188.preheader ] ; 2 uses
  %i.bp = call i32 @EVP_DigestUpdate(ptr noundef nonnull %11, ptr noundef nonnull %i.d, i64 noundef %i.q) #6
  %.not119 = icmp eq i32 %i.bp, 0
  br i1 %.not119, label %.thread133, label %bb.p

bb.p:                                             ; preds = %.lr.ph188
  %i.bq = call i32 @EVP_DigestUpdate(ptr noundef nonnull %11, ptr noundef %i.af, i64 noundef %i.ad) #6
  %.not120 = icmp eq i32 %i.bq, 0
  br i1 %.not120, label %.thread133, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %11, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #6
  %.not121 = icmp eq i32 %i.br, 0
  br i1 %.not121, label %.thread133, label %.preheader142

.preheader142:                                    ; preds = %bb.q
  br i1 %.not125150.not, label %._crit_edge, label %.lr.ph152

bb.r:                                             ; preds = %bb.t
  %i.bs = add nuw i32 %.093151, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bs, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph152, !llvm.loop !24

.lr.ph152:                                        ; preds = %.preheader142, %bb.r
  %.093151 = phi i32 [ %i.bs, %bb.r ], [ 1, %.preheader142 ]
  %i.bt = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %11, ptr noundef %8, ptr noundef null) #6
  %.not122 = icmp eq i32 %i.bt, 0
  br i1 %.not122, label %.thread133, label %bb.s

bb.s:                                             ; preds = %.lr.ph152
  %i.bu = load i32, ptr %i.f, align 4, !tbaa !19
  %i.bv = zext i32 %i.bu to i64
  %i.bw = call i32 @EVP_DigestUpdate(ptr noundef nonnull %11, ptr noundef nonnull %i.e, i64 noundef %i.bv) #6
  %.not123 = icmp eq i32 %i.bw, 0
  br i1 %.not123, label %.thread133, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %11, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #6
  %.not124 = icmp eq i32 %i.bx, 0
  br i1 %.not124, label %.thread133, label %bb.r

._crit_edge:                                      ; preds = %bb.r, %.preheader142
  %i.by = load i32, ptr %i.f, align 4, !tbaa !19  ; 2 uses
  %i.bz = zext i32 %i.by to i64                   ; 4 uses
  %i.ca = call i64 @llvm.umin.i64(i64 %.096163186, i64 %i.bz) ; 3 uses
  %i.cb = icmp eq i32 %i.by, 0
  br i1 %i.cb, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.098162187, ptr nonnull readonly align 16 %i.e, i64 %i.ca, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %._crit_edge, %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %.098162187, i64 %i.ca
  %i.cd = sub i64 %.096163186, %i.ca              ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %.thread137, label %bb.v

.thread137:                                       ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %.loopexit

bb.v:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  br i1 %i.bc, label %.epil.preheader, label %.new

.preheader141.unr-lcssa:                          ; preds = %.new
  br i1 %lcmp.mod202.not, label %.preheader141, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader141.unr-lcssa, %bb.v
  %.089153.epil.init = phi i64 [ 0, %bb.v ], [ %i.dg, %.preheader141.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod203)
  %i.cf = urem i64 %.089153.epil.init, %i.bz
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 %.089153.epil.init
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !20
  br label %.preheader141

.preheader141:                                    ; preds = %.preheader141.unr-lcssa, %.epil.preheader
  br i1 %.not167, label %._crit_edge160, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader141, %._crit_edge158.us
  %.088159.us = phi i64 [ %i.cv, %._crit_edge158.us ], [ 0, %.preheader141 ] ; 2 uses
  %i.cj = getelementptr i8, ptr %i.af, i64 %.088159.us
  br label %bb.w

bb.w:                                             ; preds = %.preheader.us, %bb.w
  %.0156.us = phi i64 [ %i.w, %.preheader.us ], [ %.0.us, %bb.w ] ; 3 uses
  %.087155.us = phi i32 [ 1, %.preheader.us ], [ %i.ct, %bb.w ]
  %i.ck = getelementptr i8, ptr %i.cj, i64 %.0156.us ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !20
  %i.cm = zext i8 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0156.us
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !20
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nuw nsw i32 %.087155.us, %i.cm
  %i.cr = add nuw nsw i32 %i.cq, %i.cp            ; 2 uses
  %i.cs = trunc i32 %i.cr to i8
  store i8 %i.cs, ptr %i.ck, align 1, !tbaa !20
  %i.ct = lshr i32 %i.cr, 8
  %.0.us = add i64 %.0156.us, -1                  ; 2 uses
  %i.cu = icmp ult i64 %.0.us, %i.q
  br i1 %i.cu, label %bb.w, label %._crit_edge158.us, !llvm.loop !25

._crit_edge158.us:                                ; preds = %bb.w
  %i.cv = add i64 %.088159.us, %i.q               ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.ad
  br i1 %i.cw, label %.preheader.us, label %._crit_edge160, !llvm.loop !26

.new:                                             ; preds = %bb.v, %.new
  %.089153 = phi i64 [ %i.dg, %.new ], [ 0, %bb.v ] ; 4 uses
  %niter205 = phi i64 [ %niter205.next.1, %.new ], [ 0, %bb.v ]
  %i.cx = urem i64 %.089153, %i.bz
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 %.089153
  store i8 %i.cz, ptr %i.da, align 2, !tbaa !20
  %i.db = or disjoint i64 %.089153, 1             ; 2 uses
  %i.dc = urem i64 %i.db, %i.bz
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !20
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.db
  store i8 %i.de, ptr %i.df, align 1, !tbaa !20
  %i.dg = add nuw i64 %.089153, 2                 ; 2 uses
  %niter205.next.1 = add i64 %niter205, 2         ; 2 uses
  %niter205.ncmp.1 = icmp eq i64 %niter205.next.1, %unroll_iter204
  br i1 %niter205.ncmp.1, label %.preheader141.unr-lcssa, label %.new, !llvm.loop !27

.thread133:                                       ; preds = %.lr.ph188, %bb.p, %bb.q, %._crit_edge160, %.lr.ph152, %bb.s, %bb.t, %.lr.ph164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %.loopexit

._crit_edge160:                                   ; preds = %._crit_edge158.us, %.preheader141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.dh = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %11, ptr noundef %8, ptr noundef null) #6
  %.not118 = icmp eq i32 %i.dh, 0
end_hunk_0
begin_hunk_1_@PKCS8_marshal_encrypted_private_key:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.w = call i32 @CBB_add_asn1(ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef 4) #6
  %.not42 = icmp eq i32 %i.w, 0
  br i1 %.not42, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = call i32 @CBB_reserve(ptr noundef nonnull %12, ptr noundef nonnull %i.c, i64 noundef %i.t) #6
  %.not43 = icmp eq i32 %i.x, 0
  br i1 %.not43, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !14
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = call i32 @EVP_CipherUpdate(ptr noundef nonnull %9, ptr noundef %i.y, ptr noundef nonnull %i.d, ptr noundef %i.z, i32 noundef %i.ab) #6
  %.not44 = icmp eq i32 %i.ac, 0
  br i1 %.not44, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.ae = load i32, ptr %i.d, align 4, !tbaa !19
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.af
  %i.ah = call i32 @EVP_CipherFinal_ex(ptr noundef nonnull %9, ptr noundef %i.ag, ptr noundef nonnull %i.e) #6
  %.not45 = icmp eq i32 %i.ah, 0
  br i1 %.not45, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = load i32, ptr %i.d, align 4, !tbaa !19
  %i.aj = load i32, ptr %i.e, align 4, !tbaa !19
  %i.ak = add nsw i32 %i.aj, %i.ai
  %i.al = sext i32 %i.ak to i64
  %i.am = call i32 @CBB_did_write(ptr noundef nonnull %12, i64 noundef %i.al) #6
  %.not46 = icmp eq i32 %i.am, 0
  br i1 %.not46, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = call i32 @CBB_flush(ptr noundef %0) #6
  %.not47 = icmp ne i32 %i.an, 0
  %spec.select = zext i1 %.not47 to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.027 = phi i32 [ 0, %bb.l ], [ %spec.select, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %bb.r, %bb.h, %bb.i
  %.229 = phi i32 [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.k ], [ %.027, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.g
  %.330 = phi i32 [ %.229, %bb.s ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.b, %bb.c
  %i.ao = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %.pre, %bb.t ]
  %.4 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %.330, %bb.t ]
  %.126 = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ], [ %.025, %bb.t ]
  call void @OPENSSL_free(ptr noundef %i.ao) #6
  call void @OPENSSL_free(ptr noundef %.126) #6
  %i.ap = call i32 @EVP_CIPHER_CTX_cleanup(ptr noundef nonnull %9) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.4
}

declare i32 @RAND_bytes(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @CBB_init(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_marshal_private_key(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CBB_finish(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CBB_cleanup(ptr noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_block_size(ptr noundef) local_unnamed_addr #1

declare i32 @CBB_reserve(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_CipherUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_CipherFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CBB_did_write(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @CBS_get_utf8(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CBB_add_ucs2_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @EVP_CIPHER_key_length(ptr noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_iv_length(ptr noundef) local_unnamed_addr #1

declare i32 @EVP_CipherInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @EVP_rc2_40_cbc() #1

declare ptr @EVP_sha1() #1

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL23pkcs12_pbe_decrypt_initPK9pbe_suiteP17evp_cipher_ctx_stPKcmP6cbs_st(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %5 = alloca %struct.cbs_st, align 8             ; 6 uses
  %6 = alloca %struct.cbs_st, align 8             ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @CBS_get_asn1(ptr noundef %4, ptr noundef nonnull %5, i32 noundef 536870928) #6
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @CBS_get_asn1(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 4) #6
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @CBS_get_asn1_uint64(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #6
  %.not7 = icmp ne i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.not8 = icmp eq i64 %i.f, 0
  %or.cond = select i1 %.not7, i1 %.not8, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %.not9 = icmp eq i64 %i.h, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  call void @ERR_put_error(i32 noundef 19, i32 noundef 0, i32 noundef 104, ptr noundef nonnull @.str, i32 noundef 224) #6
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.i = load i64, ptr %i.a, align 8, !tbaa !14
  %i.j = call i32 @pkcs12_iterations_acceptable(i64 noundef %i.i) #6
  %.not10 = icmp eq i32 %i.j, 0
  br i1 %.not10, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @ERR_put_error(i32 noundef 19, i32 noundef 0, i32 noundef 129, ptr noundef nonnull @.str, i32 noundef 229) #6
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.k = load i64, ptr %i.a, align 8, !tbaa !14
  %i.l = trunc i64 %i.k to i32
  %i.m = load ptr, ptr %6, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18
  %i.p = call fastcc noundef i32 @_ZL22pkcs12_pbe_cipher_initPK9pbe_suiteP17evp_cipher_ctx_stjPKcmPKhmi(ptr noundef %0, ptr noundef %1, i32 noundef %i.l, ptr noundef %2, i64 noundef %3, ptr noundef %i.m, i64 noundef %i.o, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %i.p, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i32 %.0
}

declare ptr @EVP_rc4() #1

declare ptr @EVP_des_ede3_cbc() #1

declare i32 @PKCS5_pbe2_decrypt_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @CBS_get_asn1_uint64(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @pkcs12_iterations_acceptable(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!17, !12, i64 0}
!17 = !{!"_ZTS6cbs_st", !12, i64 0, !15, i64 8}
!18 = !{!17, !15, i64 8}
!19 = !{!8, !8, i64 0}
!20 = !{!9, !9, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = !{!29, !9, i64 14}
!29 = !{!"_ZTS9pbe_suite", !8, i64 0, !9, i64 4, !9, i64 14, !13, i64 16, !13, i64 24, !13, i64 32}
!30 = !{!29, !13, i64 16}
!31 = !{!29, !13, i64 24}
!32 = !{!29, !13, i64 32}
end_hunk_1
