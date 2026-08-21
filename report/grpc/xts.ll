inline.NumInlined: 8
inline.NumDeleted: 2
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 9 uses
  %i.c = icmp ne ptr %2, null                     ; 2 uses
  %i.d = icmp ne ptr %1, null                     ; 2 uses
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %3, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15
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
  store ptr %AES_encrypt.sink, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !15   ; 2 uses
  %i.m = lshr i32 %i.l, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = shl i32 %i.l, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.r = tail call i32 @AES_set_encrypt_key(ptr noundef nonnull %i.o, i32 noundef %i.p, ptr noundef nonnull %i.q) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  store ptr @AES_encrypt, ptr %i.t, align 8, !tbaa !20
  store ptr %i.b, ptr %i.s, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  br i1 %i.c, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  store ptr %i.u, ptr %i.v, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 1 dereferenceable(16) %2, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 0, 2) i32 @_ZL14aes_xts_cipherP17evp_cipher_ctx_stPhPKhm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) #1 {
bb.a:
  %4 = alloca %union.anon.0, align 16             ; 17 uses
  %5 = alloca %union.anon.0, align 16             ; 42 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 496 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  call void %i.o(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %i.f), !inline_history !25
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
  %i.u = load <2 x i64>, ptr %4, align 16, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %select.unfold.i, %.lr.ph.i
  %.05268.i = phi ptr [ %2, %.lr.ph.i ], [ %i.ag, %select.unfold.i ] ; 2 uses
  %.05367.i = phi ptr [ %1, %.lr.ph.i ], [ %i.af, %select.unfold.i ] ; 2 uses
  %.166.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %i.ad, %select.unfold.i ]
  %i.v = phi <2 x i64> [ %i.u, %.lr.ph.i ], [ %i.ap, %select.unfold.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull readonly align 1 dereferenceable(16) %.05268.i, i64 16, i1 false)
  %i.w = load <2 x i64>, ptr %5, align 16, !tbaa !26
  %i.x = xor <2 x i64> %i.w, %i.v
  store <2 x i64> %i.x, ptr %5, align 16, !tbaa !26
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !28
  call void %i.y(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %i.z), !inline_history !25
  %i.aa = load <2 x i64>, ptr %4, align 16        ; 3 uses
  %i.ab = load <2 x i64>, ptr %5, align 16, !tbaa !26
  %i.ac = xor <2 x i64> %i.ab, %i.aa              ; 2 uses
  store <2 x i64> %i.ac, ptr %5, align 16, !tbaa !26
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
  store i64 %i.al, ptr %4, align 16, !tbaa !26
  %i.am = call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.aj, i64 1) ; 2 uses
  store i64 %i.am, ptr %i.s, align 8, !tbaa !26
  %i.an = icmp ugt i64 %i.ad, 15
  %i.ao = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %i.ap = insertelement <2 x i64> %i.ao, i64 %i.am, i64 1
  br i1 %i.an, label %bb.d, label %select.unfold._crit_edge.i.loopexit, !llvm.loop !29

select.unfold._crit_edge.i.loopexit:              ; preds = %select.unfold.i
  %i.aq = extractelement <2 x i64> %i.ac, i64 0
  br label %select.unfold._crit_edge.i

select.unfold._crit_edge.i:                       ; preds = %select.unfold._crit_edge.i.loopexit, %bb.c
  %i.ar = phi i64 [ undef, %bb.c ], [ %i.aq, %select.unfold._crit_edge.i.loopexit ]
  %.1.lcssa.i = phi i64 [ %spec.select.i, %bb.c ], [ %i.ad, %select.unfold._crit_edge.i.loopexit ] ; 14 uses
  %.053.lcssa.i = phi ptr [ %1, %bb.c ], [ %i.af, %select.unfold._crit_edge.i.loopexit ] ; 11 uses
  %.052.lcssa.i = phi ptr [ %2, %bb.c ], [ %i.ag, %select.unfold._crit_edge.i.loopexit ] ; 10 uses
  br i1 %.not.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %select.unfold._crit_edge.i
  %.not77.i = icmp eq i64 %.1.lcssa.i, 0
  br i1 %.not77.i, label %._crit_edge75.i, label %iter.check100

iter.check100:                                    ; preds = %.preheader.i
  %i.as = trunc nuw nsw i64 %.1.lcssa.i to i32
  %min.iters.check87 = icmp samesign ult i64 %.1.lcssa.i, 4
  br i1 %min.iters.check87, label %.lr.ph74.i.preheader, label %vector.memcheck70

vector.memcheck70:                                ; preds = %iter.check100
  %scevgep72.a = getelementptr i8, ptr %.053.lcssa.i, i64 %.1.lcssa.i ; 2 uses
  %scevgep73 = getelementptr i8, ptr %5, i64 %.1.lcssa.i ; 2 uses
  %scevgep74 = getelementptr i8, ptr %.052.lcssa.i, i64 %.1.lcssa.i ; 2 uses
  %bound075 = icmp ult ptr %.053.lcssa.i, %scevgep73
  %bound176 = icmp ult ptr %5, %scevgep72.a
  %found.conflict77 = and i1 %bound075, %bound176
  %bound078 = icmp ult ptr %.053.lcssa.i, %scevgep74
  %bound179 = icmp ult ptr %.052.lcssa.i, %scevgep72.a
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx81 = or i1 %found.conflict77, %found.conflict80
  %bound082 = icmp ult ptr %5, %scevgep74
  %bound183 = icmp ult ptr %.052.lcssa.i, %scevgep73
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx81, %found.conflict84
  br i1 %conflict.rdx85, label %.lr.ph74.i.preheader, label %vec.epilog.ph104

vec.epilog.ph104:                                 ; preds = %vector.memcheck70
  %n.vec105 = and i64 %.1.lcssa.i, 12             ; 3 uses
  br label %vec.epilog.vector.body106

vec.epilog.vector.body106:                        ; preds = %vec.epilog.vector.body106, %vec.epilog.ph104
  %index107 = phi i64 [ 0, %vec.epilog.ph104 ], [ %index.next110, %vec.epilog.vector.body106 ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.052.lcssa.i, i64 %index107
  %wide.load108 = load <4 x i8>, ptr %i.at, align 1, !tbaa !26, !alias.scope !31
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 %index107 ; 2 uses
  %wide.load109 = load <4 x i8>, ptr %i.au, align 4, !tbaa !26, !alias.scope !34, !noalias !31
  %i.av = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 %index107
  store <4 x i8> %wide.load109, ptr %i.av, align 1, !tbaa !26, !alias.scope !36, !noalias !38
  store <4 x i8> %wide.load108, ptr %i.au, align 4, !tbaa !26, !alias.scope !34, !noalias !31
  %index.next110 = add nuw i64 %index107, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next110, %n.vec105
  br i1 %i.aw, label %vec.epilog.middle.block111, label %vec.epilog.vector.body106, !llvm.loop !39

vec.epilog.middle.block111:                       ; preds = %vec.epilog.vector.body106
  %cmp.n112 = icmp eq i64 %.1.lcssa.i, %n.vec105
  br i1 %cmp.n112, label %._crit_edge75.loopexit.i, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %vector.memcheck70, %iter.check100, %vec.epilog.middle.block111
  %.ph = phi i64 [ 0, %vector.memcheck70 ], [ 0, %iter.check100 ], [ %n.vec105, %vec.epilog.middle.block111 ]
  br label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %.lr.ph74.i
  %i.ax = phi i64 [ %i.be, %.lr.ph74.i ], [ %.ph, %.lr.ph74.i.preheader ] ; 4 uses
  %indvars81.i = trunc nuw i64 %i.ax to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %.052.lcssa.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 %i.ax ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 %i.ax
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !26
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !26
  %i.bd = add nuw i32 %indvars81.i, 1             ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = icmp ult i32 %i.bd, %i.as
  br i1 %i.bf, label %.lr.ph74.i, label %._crit_edge75.loopexit.i, !llvm.loop !42

._crit_edge75.loopexit.i:                         ; preds = %.lr.ph74.i, %vec.epilog.middle.block111
  %.pre85.i = load i64, ptr %5, align 16, !tbaa !26
  br label %._crit_edge75.i

._crit_edge75.i:                                  ; preds = %._crit_edge75.loopexit.i, %.preheader.i
  %i.bg = phi i64 [ %.pre85.i, %._crit_edge75.loopexit.i ], [ %i.ar, %.preheader.i ]
  %i.bh = load i64, ptr %4, align 16, !tbaa !26
  %i.bi = xor i64 %i.bh, %i.bg
  store i64 %i.bi, ptr %5, align 16, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !26
  %i.bn = xor i64 %i.bm, %i.bk
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !27
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !28
  call void %i.bp(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %i.bq), !inline_history !25
  %i.br = load <2 x i64>, ptr %4, align 16, !tbaa !26
  %i.bs = load <2 x i64>, ptr %5, align 16, !tbaa !26
  %i.bt = xor <2 x i64> %i.bs, %i.br
  store <2 x i64> %i.bt, ptr %5, align 16, !tbaa !26
  %i.bu = getelementptr inbounds i8, ptr %.053.lcssa.i, i64 -16
  br label %.loopexit.sink.split.i

bb.e:                                             ; preds = %select.unfold._crit_edge.i
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !26
  %isneg.i = icmp slt i32 %i.bw, 0
  %i.bx = select i1 %isneg.i, i64 135, i64 0
  %i.by = load i64, ptr %4, align 16, !tbaa !26   ; 2 uses
  %i.bz = shl i64 %i.by, 1
  %i.ca = xor i64 %i.bz, %i.bx                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !26
  %i.cd = call i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.by, i64 1) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull readonly align 1 dereferenceable(16) %.052.lcssa.i, i64 16, i1 false)
  %i.ce = load i64, ptr %5, align 16, !tbaa !26
  %i.cf = xor i64 %i.ce, %i.ca
  store i64 %i.cf, ptr %5, align 16, !tbaa !26
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !26
  %i.ci = xor i64 %i.ch, %i.cd
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !26
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !27
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !28
  call void %i.ck(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %i.cl), !inline_history !25
  %i.cm = load i64, ptr %5, align 16, !tbaa !26
  %i.cn = xor i64 %i.cm, %i.ca                    ; 2 uses
  store i64 %i.cn, ptr %5, align 16, !tbaa !26
  %i.co = load i64, ptr %i.cg, align 8, !tbaa !26
  %i.cp = xor i64 %i.co, %i.cd                    ; 2 uses
  store i64 %i.cp, ptr %i.cg, align 8, !tbaa !26
  %.not76.i = icmp eq i64 %.1.lcssa.i, 0
  br i1 %.not76.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.e
  %i.cq = trunc nuw nsw i64 %.1.lcssa.i to i32    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.1.lcssa.i, 4
  br i1 %min.iters.check, label %.lr.ph72.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %5, i64 %.1.lcssa.i ; 2 uses
  %scevgep49.a = getelementptr i8, ptr %.053.lcssa.i, i64 16 ; 2 uses
  %6 = call i32 @llvm.usub.sat.i32(i32 %i.cq, i32 1)
  %narrow = add nuw nsw i32 %6, 17
  %7 = zext nneg i32 %narrow to i64               ; 2 uses
  %scevgep51.a = getelementptr i8, ptr %.053.lcssa.i, i64 %7 ; 2 uses
  %scevgep52 = getelementptr i8, ptr %.052.lcssa.i, i64 16 ; 2 uses
  %scevgep53 = getelementptr i8, ptr %.052.lcssa.i, i64 %7 ; 2 uses
  %bound0 = icmp ult ptr %5, %scevgep51.a
  %bound1 = icmp ult ptr %scevgep49.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound054 = icmp ult ptr %5, %scevgep53
  %bound155 = icmp ult ptr %scevgep52, %scevgep
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx = or i1 %found.conflict, %found.conflict56
  %bound057 = icmp ult ptr %scevgep49.a, %scevgep53
  %bound158 = icmp ult ptr %scevgep52, %scevgep51.a
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx, %found.conflict59
  br i1 %conflict.rdx60, label %.lr.ph72.i.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec64 = and i64 %.1.lcssa.i, 12              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index65 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 3 uses
  %i.cr = add nuw nsw i64 %index65, 16
  %i.cs = and i64 %i.cr, 4294967292               ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.052.lcssa.i, i64 %i.cs
  %wide.load66 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !26, !alias.scope !43
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 %index65 ; 2 uses
  %wide.load67 = load <4 x i8>, ptr %i.cu, align 4, !tbaa !26, !alias.scope !46, !noalias !48
  %i.cv = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 %i.cs
  store <4 x i8> %wide.load67, ptr %i.cv, align 1, !tbaa !26, !alias.scope !50, !noalias !43
  store <4 x i8> %wide.load66, ptr %i.cu, align 4, !tbaa !26, !alias.scope !46, !noalias !48
  %index.next68 = add nuw i64 %index65, 4         ; 2 uses
  %i.cw = icmp eq i64 %index.next68, %n.vec64
  br i1 %i.cw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n69 = icmp eq i64 %.1.lcssa.i, %n.vec64
  br i1 %cmp.n69, label %._crit_edge.loopexit.i, label %.lr.ph72.i.preheader

.lr.ph72.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.ph114 = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec64, %vec.epilog.middle.block ]
  br label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %.lr.ph72.i.preheader, %.lr.ph72.i
  %i.cx = phi i64 [ %i.dg, %.lr.ph72.i ], [ %.ph114, %.lr.ph72.i.preheader ] ; 3 uses
  %indvars.i = trunc nuw i64 %i.cx to i32
  %i.cy = add nuw nsw i64 %i.cx, 16
  %i.cz = and i64 %i.cy, 4294967295               ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.052.lcssa.i, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !26
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 %i.cx ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !26
  %i.de = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 %i.cz
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !26
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !26
  %i.df = add nuw i32 %indvars.i, 1               ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = icmp ult i32 %i.df, %i.cq
  br i1 %i.dh, label %.lr.ph72.i, label %._crit_edge.loopexit.i, !llvm.loop !52

._crit_edge.loopexit.i:                           ; preds = %.lr.ph72.i, %vec.epilog.middle.block
  %.pre83.i = load i64, ptr %5, align 16, !tbaa !26
  %.pre84.i = load i64, ptr %i.cg, align 8, !tbaa !26
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.e
  %i.di = phi i64 [ %.pre84.i, %._crit_edge.loopexit.i ], [ %i.cp, %bb.e ]
  %i.dj = phi i64 [ %.pre83.i, %._crit_edge.loopexit.i ], [ %i.cn, %bb.e ]
  %i.dk = load i64, ptr %4, align 16, !tbaa !26
  %i.dl = xor i64 %i.dk, %i.dj
  store i64 %i.dl, ptr %5, align 16, !tbaa !26
  %i.dm = load i64, ptr %i.cb, align 8, !tbaa !26
  %i.dn = xor i64 %i.dm, %i.di
  store i64 %i.dn, ptr %i.cg, align 8, !tbaa !26
  %i.do = load ptr, ptr %i.cj, align 8, !tbaa !27
  %i.dp = load ptr, ptr %i.c, align 8, !tbaa !28
  call void %i.do(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %i.dp), !inline_history !25
  %i.dq = load <2 x i64>, ptr %4, align 16, !tbaa !26
  %i.dr = load <2 x i64>, ptr %5, align 16, !tbaa !26
  %i.ds = xor <2 x i64> %i.dr, %i.dq
  store <2 x i64> %i.ds, ptr %5, align 16, !tbaa !26
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %._crit_edge.i, %._crit_edge75.i
  %.sink.i = phi ptr [ %i.bu, %._crit_edge75.i ], [ %.053.lcssa.i, %._crit_edge.i ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 5 uses
  switch i32 %1, label %bb.i [
    i32 8, label %bb.b
    i32 0, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not20 = icmp eq ptr %i.f, null
  br i1 %.not20, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not21 = icmp eq ptr %i.f, %i.b
  br i1 %.not21, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 496
  store ptr %i.d, ptr %i.g, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %.not22 = icmp eq ptr %i.i, null
  br i1 %.not22, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %.not23 = icmp eq ptr %i.i, %i.j
  br i1 %.not23, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 504
  store ptr %i.k, ptr %i.l, align 8, !tbaa !22
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!11 = !{!12, !14, i64 16}
!12 = !{!"_ZTS17evp_cipher_ctx_st", !13, i64 0, !14, i64 8, !14, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !9, i64 36, !9, i64 52, !9, i64 68, !8, i64 100, !8, i64 104, !8, i64 108, !9, i64 112, !8, i64 144}
!13 = !{!"p1 _ZTS13evp_cipher_st", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!12, !8, i64 24}
!16 = !{!17, !14, i64 512}
!17 = !{!"_ZTS15EVP_AES_XTS_CTX", !9, i64 0, !9, i64 248, !18, i64 496}
!18 = !{!"_ZTS14xts128_context", !19, i64 0, !19, i64 8, !14, i64 16, !14, i64 24}
!19 = !{!"p1 _ZTS10aes_key_st", !14, i64 0}
!20 = !{!17, !14, i64 520}
!21 = !{!17, !19, i64 496}
!22 = !{!17, !19, i64 504}
!23 = !{!12, !8, i64 28}
!24 = !{!18, !14, i64 24}
!25 = distinct !{null}
!26 = !{!9, !9, i64 0}
!27 = !{!18, !14, i64 16}
!28 = !{!18, !19, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!32}
!32 = distinct !{!32, !33}
!33 = distinct !{!33, !"LVerDomain"}
!34 = !{!35}
!35 = distinct !{!35, !33}
!36 = !{!37}
!37 = distinct !{!37, !33}
!38 = !{!35, !32}
!39 = distinct !{!39, !30, !40, !41}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = distinct !{!42, !30, !40}
!43 = !{!44}
!44 = distinct !{!44, !45}
!45 = distinct !{!45, !"LVerDomain"}
!46 = !{!47}
!47 = distinct !{!47, !45}
!48 = !{!49, !44}
!49 = distinct !{!49, !45}
!50 = !{!49}
!51 = distinct !{!51, !30, !40, !41}
!52 = distinct !{!52, !30, !40}
end_hunk_0
