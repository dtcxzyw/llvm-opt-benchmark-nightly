Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xts?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.evp_cipher_st = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { [2 x i64] }

@_ZL11aes_256_xts = internal constant %struct.evp_cipher_st { i32 914, i32 1, i32 64, i32 16, i32 528, i32 4999, ptr @_ZL16aes_xts_init_keyP17evp_cipher_ctx_stPKhS2_i, ptr @_ZL14aes_xts_cipherP17evp_cipher_ctx_stPhPKhm, ptr null, ptr @_ZL12aes_xts_ctrlP17evp_cipher_ctx_stiiPv }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @EVP_aes_256_xts() local_unnamed_addr #0 {
bb.a:
  ret ptr @_ZL11aes_256_xts
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL16aes_xts_init_keyP17evp_cipher_ctx_stPKhS2_i(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 9 uses
  %i.c = icmp ne ptr %2, null                     ; 2 uses
  %i.d = icmp ne ptr %1, null                     ; 2 uses
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %3, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20
  %i.g = shl i32 %i.f, 2                          ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @AES_set_encrypt_key(ptr noundef nonnull %1, i32 noundef %i.g, ptr noundef %i.b) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call i32 @AES_set_decrypt_key(ptr noundef nonnull %1, i32 noundef %i.g, ptr noundef %i.b) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %AES_encrypt.sink = phi ptr [ @AES_decrypt, %bb.e ], [ @AES_encrypt, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  store ptr %AES_encrypt.sink, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20   ; 2 uses
  %i.m = lshr i32 %i.l, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = shl i32 %i.l, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.r = tail call i32 @AES_set_encrypt_key(ptr noundef nonnull %i.o, i32 noundef %i.p, ptr noundef nonnull %i.q) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  store ptr @AES_encrypt, ptr %i.t, align 8, !tbaa !22
  store ptr %i.b, ptr %i.s, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  br i1 %i.c, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  store ptr %i.u, ptr %i.v, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 1 dereferenceable(16) %2, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 0, 2) i32 @_ZL14aes_xts_cipherP17evp_cipher_ctx_stPhPKhm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) #1 {
bb.a:
  %4 = alloca %union.anon.0, align 16             ; 17 uses
  %5 = alloca %union.anon.0, align 16             ; 46 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 496 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = icmp eq ptr %1, null
  %or.cond.not22 = or i1 %i.h, %i.g
  %i.i = icmp eq ptr %2, null
  %or.cond3.not19 = or i1 %i.i, %or.cond.not22
  %i.j = icmp ult i64 %3, 16
  %or.cond5 = or i1 %i.j, %or.cond3.not19
  br i1 %or.cond5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38
  call void %i.o(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %i.f), !inline_history !23
  %.not.i = icmp ne i32 %i.m, 0                   ; 2 uses
  %i.p = and i64 %3, 15
  %.not61.i = icmp eq i64 %i.p, 0
  %or.cond.i = or i1 %.not61.i, %.not.i
  %i.q = add i64 %3, -16
  %spec.select.i = select i1 %or.cond.i, i64 %3, i64 %i.q ; 3 uses
  %i.r = icmp ugt i64 %spec.select.i, 15
  br i1 %i.r, label %.lr.ph.i, label %select.unfold._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.u = load <2 x i64>, ptr %4, align 16, !tbaa !39
  br label %bb.d

bb.d:                                             ; preds = %select.unfold.i, %.lr.ph.i
  %.05268.i = phi ptr [ %2, %.lr.ph.i ], [ %i.ag, %select.unfold.i ] ; 2 uses
  %.05367.i = phi ptr [ %1, %.lr.ph.i ], [ %i.af, %select.unfold.i ] ; 2 uses
  %.166.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %i.ad, %select.unfold.i ]
  %i.v = phi <2 x i64> [ %i.u, %.lr.ph.i ], [ %i.ap, %select.unfold.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull readonly align 1 dereferenceable(16) %.05268.i, i64 16, i1 false)
  %i.w = load <2 x i64>, ptr %5, align 16, !tbaa !39
  %i.x = xor <2 x i64> %i.w, %i.v
  store <2 x i64> %i.x, ptr %5, align 16, !tbaa !39
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !41
  call void %i.y(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %i.z), !inline_history !23
  %i.aa = load <2 x i64>, ptr %4, align 16        ; 3 uses
  %i.ab = load <2 x i64>, ptr %5, align 16, !tbaa !39
  %i.ac = xor <2 x i64> %i.ab, %i.aa              ; 2 uses
  store <2 x i64> %i.ac, ptr %5, align 16, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.05367.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %5, i64 16, i1 false)
  %i.ad = add i64 %.166.i, -16                    ; 4 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZL21CRYPTO_xts128_encryptPK14xts128_contextPKhS3_Phmi.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.05367.i, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05268.i, i64 16 ; 2 uses
  %i.ah = extractelement <2 x i64> %i.aa, i64 1   ; 2 uses
  %isneg62.i = icmp slt i64 %i.ah, 0
  %i.ai = select i1 %isneg62.i, i64 135, i64 0
  %i.aj = extractelement <2 x i64> %i.aa, i64 0   ; 2 uses
  %i.ak = shl i64 %i.aj, 1
  %i.al = xor i64 %i.ai, %i.ak                    ; 2 uses
  store i64 %i.al, ptr %4, align 16, !tbaa !39
  %i.am = call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.aj, i64 1) ; 2 uses
  store i64 %i.am, ptr %i.s, align 8, !tbaa !39
  %i.an = icmp ugt i64 %i.ad, 15
  %i.ao = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %i.ap = insertelement <2 x i64> %i.ao, i64 %i.am, i64 1
  br i1 %i.an, label %bb.d, label %select.unfold._crit_edge.i.loopexit, !llvm.loop !24

select.unfold._crit_edge.i.loopexit:              ; preds = %select.unfold.i
  %i.aq = extractelement <2 x i64> %i.ac, i64 0
  br label %select.unfold._crit_edge.i

select.unfold._crit_edge.i:                       ; preds = %select.unfold._crit_edge.i.loopexit, %bb.c
  %i.ar = phi i64 [ undef, %bb.c ], [ %i.aq, %select.unfold._crit_edge.i.loopexit ]
  %.1.lcssa.i = phi i64 [ %spec.select.i, %bb.c ], [ %i.ad, %select.unfold._crit_edge.i.loopexit ] ; 19 uses
  %.053.lcssa.i = phi ptr [ %1, %bb.c ], [ %i.af, %select.unfold._crit_edge.i.loopexit ] ; 15 uses
  %.052.lcssa.i = phi ptr [ %2, %bb.c ], [ %i.ag, %select.unfold._crit_edge.i.loopexit ] ; 14 uses
  br i1 %.not.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %select.unfold._crit_edge.i
  %.not77.i = icmp eq i64 %.1.lcssa.i, 0
  br i1 %.not77.i, label %._crit_edge75.i, label %iter.check116

iter.check116:                                    ; preds = %.preheader.i
  %min.iters.check90 = icmp samesign ult i64 %.1.lcssa.i, 4
  br i1 %min.iters.check90, label %.lr.ph74.i.preheader, label %vector.memcheck91

vector.memcheck91:                                ; preds = %iter.check116
  %i.as = getelementptr i8, ptr %.053.lcssa.i, i64 %.1.lcssa.i ; 2 uses
  %i.at = getelementptr i8, ptr %5, i64 %.1.lcssa.i ; 2 uses
  %bound092 = icmp ult ptr %.053.lcssa.i, %i.at
  %bound092.a = icmp ult ptr %5, %i.as
  %found.conflict94 = and i1 %bound092, %bound092.a
  %6 = getelementptr i8, ptr %.052.lcssa.i, i64 %.1.lcssa.i ; 2 uses
  %bound095 = icmp ult ptr %.053.lcssa.i, %6
  %bound196 = icmp ult ptr %.052.lcssa.i, %i.as
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx98 = or i1 %found.conflict94, %found.conflict97
  %bound099 = icmp ult ptr %5, %6
  %bound1100 = icmp ult ptr %.052.lcssa.i, %i.at
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx102 = or i1 %conflict.rdx98, %found.conflict101
  br i1 %conflict.rdx102, label %.lr.ph74.i.preheader, label %vec.epilog.ph120

vec.epilog.ph120:                                 ; preds = %vector.memcheck91
  %n.vec122 = and i64 %.1.lcssa.i, 12             ; 3 uses
  br label %vec.epilog.vector.body123

vec.epilog.vector.body123:                        ; preds = %vec.epilog.vector.body123, %vec.epilog.ph120
  %index124 = phi i64 [ 0, %vec.epilog.ph120 ], [ %index.next127, %vec.epilog.vector.body123 ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.052.lcssa.i, i64 %index124
  %wide.load125 = load <4 x i8>, ptr %i.au, align 1, !tbaa !39, !alias.scope !43
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 %index124 ; 2 uses
  %wide.load126 = load <4 x i8>, ptr %i.av, align 4, !tbaa !39, !alias.scope !44, !noalias !43
  %i.aw = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 %index124
  store <4 x i8> %wide.load126, ptr %i.aw, align 1, !tbaa !39, !alias.scope !45, !noalias !46
  store <4 x i8> %wide.load125, ptr %i.av, align 4, !tbaa !39, !alias.scope !44, !noalias !43
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.ax = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.ax, label %vec.epilog.middle.block128, label %vec.epilog.vector.body123, !llvm.loop !29

vec.epilog.middle.block128:                       ; preds = %vec.epilog.vector.body123
  %cmp.n129 = icmp eq i64 %.1.lcssa.i, %n.vec122
  br i1 %cmp.n129, label %._crit_edge75.loopexit.i, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %iter.check116, %vector.memcheck91, %vec.epilog.middle.block128
  %indvars.iv82.i.ph = phi i64 [ 0, %vector.memcheck91 ], [ 0, %iter.check116 ], [ %n.vec122, %vec.epilog.middle.block128 ] ; 6 uses
  %.neg137 = or disjoint i64 %indvars.iv82.i.ph, 1
  %xtraiter135 = and i64 %.1.lcssa.i, 1
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %.lr.ph74.i.prol.loopexit, label %.lr.ph74.i.prol

.lr.ph74.i.prol:                                  ; preds = %.lr.ph74.i.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %.052.lcssa.i, i64 %indvars.iv82.i.ph
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv82.i.ph ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 %indvars.iv82.i.ph
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !39
  store i8 %i.az, ptr %i.ba, align 4, !tbaa !39
  %indvars.iv.next83.i.prol = or disjoint i64 %indvars.iv82.i.ph, 1
  br label %.lr.ph74.i.prol.loopexit

.lr.ph74.i.prol.loopexit:                         ; preds = %.lr.ph74.i.prol, %.lr.ph74.i.preheader
  %indvars.iv82.i.unr = phi i64 [ %indvars.iv82.i.ph, %.lr.ph74.i.preheader ], [ %indvars.iv.next83.i.prol, %.lr.ph74.i.prol ]
  %i.bd = icmp eq i64 %.1.lcssa.i, %.neg137
  br i1 %i.bd, label %._crit_edge75.loopexit.i, label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i.1, %.lr.ph74.i ], [ %indvars.iv82.i.unr, %.lr.ph74.i.prol.loopexit ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.052.lcssa.i, i64 %indvars.iv82.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv82.i ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !39
  %i.bi = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 %indvars.iv82.i
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !39
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !39
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.052.lcssa.i, i64 %indvars.iv.next83.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next83.i ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 %indvars.iv.next83.i
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !39
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !39
  %indvars.iv.next83.i.1 = add nuw nsw i64 %indvars.iv82.i, 2 ; 2 uses
  %exitcond85.not.i.1 = icmp eq i64 %indvars.iv.next83.i.1, %.1.lcssa.i
  br i1 %exitcond85.not.i.1, label %._crit_edge75.loopexit.i, label %.lr.ph74.i, !llvm.loop !30

._crit_edge75.loopexit.i:                         ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i, %vec.epilog.middle.block128
  %.pre89.i = load i64, ptr %5, align 16, !tbaa !39
  br label %._crit_edge75.i

._crit_edge75.i:                                  ; preds = %._crit_edge75.loopexit.i, %.preheader.i
  %i.bo = phi i64 [ %.pre89.i, %._crit_edge75.loopexit.i ], [ %i.ar, %.preheader.i ]
  %i.bp = load i64, ptr %4, align 16, !tbaa !39
  %i.bq = xor i64 %i.bp, %i.bo
  store i64 %i.bq, ptr %5, align 16, !tbaa !39
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !39
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !39
  %i.bv = xor i64 %i.bu, %i.bs
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !39
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !40
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !41
  call void %i.bx(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %i.by), !inline_history !23
  %i.bz = load <2 x i64>, ptr %4, align 16, !tbaa !39
  %i.ca = load <2 x i64>, ptr %5, align 16, !tbaa !39
  %i.cb = xor <2 x i64> %i.ca, %i.bz
  store <2 x i64> %i.cb, ptr %5, align 16, !tbaa !39
  %i.cc = getelementptr inbounds i8, ptr %.053.lcssa.i, i64 -16
  br label %.loopexit.sink.split.i

bb.e:                                             ; preds = %select.unfold._crit_edge.i
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !39
  %isneg.i = icmp slt i32 %i.ce, 0
  %i.cf = select i1 %isneg.i, i64 135, i64 0
  %i.cg = load i64, ptr %4, align 16, !tbaa !39   ; 2 uses
  %i.ch = shl i64 %i.cg, 1
  %i.ci = xor i64 %i.ch, %i.cf                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !39
  %i.cl = call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.cg, i64 1) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull readonly align 1 dereferenceable(16) %.052.lcssa.i, i64 16, i1 false)
  %i.cm = load i64, ptr %5, align 16, !tbaa !39
  %i.cn = xor i64 %i.cm, %i.ci
  store i64 %i.cn, ptr %5, align 16, !tbaa !39
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !39
  %i.cq = xor i64 %i.cp, %i.cl
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !39
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !40
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !41
  call void %i.cs(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %i.ct), !inline_history !23
  %i.cu = load i64, ptr %5, align 16, !tbaa !39
  %i.cv = xor i64 %i.cu, %i.ci                    ; 2 uses
  store i64 %i.cv, ptr %5, align 16, !tbaa !39
  %i.cw = load i64, ptr %i.co, align 8, !tbaa !39
  %i.cx = xor i64 %i.cw, %i.cl                    ; 2 uses
  store i64 %i.cx, ptr %i.co, align 8, !tbaa !39
  %.not76.i = icmp eq i64 %.1.lcssa.i, 0
  br i1 %.not76.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp samesign ult i64 %.1.lcssa.i, 4
  br i1 %min.iters.check, label %.lr.ph72.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cy = getelementptr i8, ptr %.053.lcssa.i, i64 16 ; 2 uses
  %i.cz = or disjoint i64 %.1.lcssa.i, 16         ; 2 uses
  %i.da = getelementptr i8, ptr %.053.lcssa.i, i64 %i.cz ; 2 uses
  %i.db = getelementptr i8, ptr %5, i64 %.1.lcssa.i ; 2 uses
  %bound0 = icmp ult ptr %i.cy, %i.db
  %bound1 = icmp ult ptr %5, %i.da
  %found.conflict = and i1 %bound0, %bound1
  %7 = getelementptr i8, ptr %.052.lcssa.i, i64 16 ; 2 uses
  %8 = getelementptr i8, ptr %.052.lcssa.i, i64 %i.cz ; 2 uses
  %bound059 = icmp ult ptr %i.cy, %8
  %bound160 = icmp ult ptr %7, %i.da
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx = or i1 %found.conflict, %found.conflict61
  %bound062 = icmp ult ptr %5, %8
  %bound163 = icmp ult ptr %7, %i.db
  %found.conflict64 = and i1 %bound062, %bound163
  %conflict.rdx65 = or i1 %conflict.rdx, %found.conflict64
  br i1 %conflict.rdx65, label %.lr.ph72.i.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec70 = and i64 %.1.lcssa.i, 12              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next74, %vec.epilog.vector.body ] ; 3 uses
  %i.dc = add nuw nsw i64 %index71, 16            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.052.lcssa.i, i64 %i.dc
  %wide.load72 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !39, !alias.scope !49
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 %index71 ; 2 uses
  %wide.load73 = load <4 x i8>, ptr %i.de, align 4, !tbaa !39, !alias.scope !50, !noalias !49
  %i.df = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 %i.dc
  store <4 x i8> %wide.load73, ptr %i.df, align 1, !tbaa !39, !alias.scope !51, !noalias !52
  store <4 x i8> %wide.load72, ptr %i.de, align 4, !tbaa !39, !alias.scope !50, !noalias !49
  %index.next74 = add nuw i64 %index71, 4         ; 2 uses
  %i.dg = icmp eq i64 %index.next74, %n.vec70
  br i1 %i.dg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n75 = icmp eq i64 %.1.lcssa.i, %n.vec70
  br i1 %cmp.n75, label %._crit_edge.loopexit.i, label %.lr.ph72.i.preheader

.lr.ph72.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec70, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  %xtraiter = and i64 %.1.lcssa.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.i.prol.loopexit, label %.lr.ph72.i.prol

.lr.ph72.i.prol:                                  ; preds = %.lr.ph72.i.preheader
  %i.dh = or disjoint i64 %indvars.iv.i.ph, 16    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.052.lcssa.i, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !39
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.i.ph ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !39
  %i.dm = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 %i.dh
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !39
  store i8 %i.dj, ptr %i.dk, align 4, !tbaa !39
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph72.i.prol.loopexit

.lr.ph72.i.prol.loopexit:                         ; preds = %.lr.ph72.i.prol, %.lr.ph72.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph72.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph72.i.prol ]
  %i.dn = icmp eq i64 %.1.lcssa.i, %.neg
  br i1 %i.dn, label %._crit_edge.loopexit.i, label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %.lr.ph72.i.prol.loopexit, %.lr.ph72.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph72.i ], [ %indvars.iv.i.unr, %.lr.ph72.i.prol.loopexit ] ; 5 uses
  %i.do = add nuw nsw i64 %indvars.iv.i, 16       ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.052.lcssa.i, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !39
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.i ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !39
  %i.dt = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 %i.do
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !39
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !39
  %i.du = add nuw nsw i64 %indvars.iv.i, 17       ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.052.lcssa.i, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !39
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !39
  %i.ea = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 %i.du
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !39
  store i8 %i.dw, ptr %i.dy, align 1, !tbaa !39
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %.1.lcssa.i
  br i1 %exitcond.not.i.1, label %._crit_edge.loopexit.i, label %.lr.ph72.i, !llvm.loop !36

._crit_edge.loopexit.i:                           ; preds = %.lr.ph72.i.prol.loopexit, %.lr.ph72.i, %vec.epilog.middle.block
  %.pre87.i = load i64, ptr %5, align 16, !tbaa !39
  %.pre88.i = load i64, ptr %i.co, align 8, !tbaa !39
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.e
  %i.eb = phi i64 [ %.pre88.i, %._crit_edge.loopexit.i ], [ %i.cx, %bb.e ]
  %i.ec = phi i64 [ %.pre87.i, %._crit_edge.loopexit.i ], [ %i.cv, %bb.e ]
  %i.ed = load i64, ptr %4, align 16, !tbaa !39
  %i.ee = xor i64 %i.ed, %i.ec
  store i64 %i.ee, ptr %5, align 16, !tbaa !39
  %i.ef = load i64, ptr %i.cj, align 8, !tbaa !39
  %i.eg = xor i64 %i.ef, %i.eb
  store i64 %i.eg, ptr %i.co, align 8, !tbaa !39
  %i.eh = load ptr, ptr %i.cr, align 8, !tbaa !40
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !41
  call void %i.eh(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %i.ei), !inline_history !23
  %i.ej = load <2 x i64>, ptr %4, align 16, !tbaa !39
  %i.ek = load <2 x i64>, ptr %5, align 16, !tbaa !39
  %i.el = xor <2 x i64> %i.ek, %i.ej
  store <2 x i64> %i.el, ptr %5, align 16, !tbaa !39
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %._crit_edge.i, %._crit_edge75.i
  %.sink.i = phi ptr [ %i.cc, %._crit_edge75.i ], [ %.053.lcssa.i, %._crit_edge.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sink.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %5, i64 16, i1 false)
  br label %_ZL21CRYPTO_xts128_encryptPK14xts128_contextPKhS3_Phmi.exit

_ZL21CRYPTO_xts128_encryptPK14xts128_contextPKhS3_Phmi.exit: ; preds = %bb.d, %.loopexit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %_ZL21CRYPTO_xts128_encryptPK14xts128_contextPKhS3_Phmi.exit
  %.0 = phi i32 [ 1, %_ZL21CRYPTO_xts128_encryptPK14xts128_contextPKhS3_Phmi.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL12aes_xts_ctrlP17evp_cipher_ctx_stiiPv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 5 uses
  switch i32 %1, label %bb.i [
    i32 8, label %bb.b
    i32 0, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %.not20 = icmp eq ptr %i.f, null
  br i1 %.not20, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not21 = icmp eq ptr %i.f, %i.b
  br i1 %.not21, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 496
  store ptr %i.d, ptr %i.g, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %.not22 = icmp eq ptr %i.i, null
  br i1 %.not22, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %.not23 = icmp eq ptr %i.i, %i.j
  br i1 %.not23, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 504
  store ptr %i.k, ptr %i.l, align 8, !tbaa !19
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.c, %bb.f, %bb.g, %bb.e, %bb.h
  %.1 = phi i32 [ 1, %bb.h ], [ 1, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ 1, %bb.g ], [ -1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @AES_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @AES_encrypt(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @AES_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @AES_decrypt(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_0
