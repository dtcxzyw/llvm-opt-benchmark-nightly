Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 550
begin_hunk_0_@CRYPTO_ctr128_encrypt_ctr32:bb.a

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gu, %vec.epilog.scalar.ph.prol ]
  %.15989.unr = phi i32 [ %.15989.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gu, %vec.epilog.scalar.ph.prol ]
  %.26688.unr = phi i64 [ %.26688.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gm, %vec.epilog.scalar.ph.prol ]
  %i.gv = icmp eq i64 %.26688.ph, 1
  br i1 %i.gv, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.15989 = phi i32 [ %i.hm, %vec.epilog.scalar.ph ], [ %.15989.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.26688 = phi i64 [ %i.he, %vec.epilog.scalar.ph ], [ %.26688.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.gw = zext i32 %.15989 to i64                 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !76
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 %i.gw
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !76
  %i.hb = xor i8 %i.ha, %i.gy
  %i.hc = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.gw
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !76
  %i.hd = add i32 %.15989, 1
  %i.he = add nsw i64 %.26688, -2                 ; 2 uses
  %i.hf = zext i32 %i.hd to i64                   ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !76
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 %i.hf
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !76
  %i.hk = xor i8 %i.hj, %i.hh
  %i.hl = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.hf
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !76
  %i.hm = add i32 %.15989, 2                      ; 2 uses
  %.not68.1 = icmp eq i64 %i.he, 0
  br i1 %.not68.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !663

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %._crit_edge83
  %.2 = phi i32 [ %.058.lcssa, %._crit_edge83 ], [ %i.gc, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hm, %vec.epilog.scalar.ph ]
  store i32 %.2, ptr %6, align 4, !tbaa !73
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @aes_hw_ctr32_encrypt_blocks_wrapper(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #7 {
bb.a:
  tail call void @aes_hw_ctr32_encrypt_blocks(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #46
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @vpaes_ctr32_encrypt_blocks_wrapper(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #7 {
bb.a:
  tail call void @vpaes_ctr32_encrypt_blocks(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #46
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @aes_nohw_ctr32_encrypt_blocks_wrapper(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #8 {
bb.a:
  tail call void @aes_nohw_ctr32_encrypt_blocks(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @AES_ecb_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 3 uses
  %i.c = and i32 %i.b, 33554432
  %.not.i = icmp eq i32 %i.c, 0                   ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @aes_hw_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2) #46
  br label %AES_encrypt.exit

bb.d:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 512
  %.not9.i = icmp eq i32 %i.d, 0
  br i1 %.not9.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @vpaes_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2) #46
  br label %AES_encrypt.exit

bb.f:                                             ; preds = %bb.d
  tail call void @aes_nohw_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %AES_encrypt.exit

bb.g:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @aes_hw_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2) #46
  br label %AES_encrypt.exit

bb.i:                                             ; preds = %bb.g
  %i.e = and i32 %i.b, 512
  %.not9.i7 = icmp eq i32 %i.e, 0
  br i1 %.not9.i7, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @vpaes_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2) #46
  br label %AES_encrypt.exit

bb.k:                                             ; preds = %bb.i
  tail call void @aes_nohw_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %AES_encrypt.exit

AES_encrypt.exit:                                 ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @AES_cbc_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @aes_hw_cbc_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #46
  br label %CRYPTO_cbc128_encrypt.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 512
  %.not22 = icmp eq i32 %i.c, 0
  br i1 %.not22, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @aes_nohw_cbc_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %CRYPTO_cbc128_encrypt.exit

bb.e:                                             ; preds = %bb.c
  %.not23 = icmp eq i32 %5, 0
  br i1 %.not23, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %CRYPTO_cbc128_encrypt.exit, label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.f
  %i.e = icmp ugt i64 %2, 15
  br i1 %i.e, label %.lr.ph.i, label %iter.check

.lr.ph.i:                                         ; preds = %.preheader44.i, %AES_encrypt.exit28
  %.048.i = phi ptr [ %.04046.i, %AES_encrypt.exit28 ], [ %4, %.preheader44.i ] ; 2 uses
  %.03947.i = phi ptr [ %i.o, %AES_encrypt.exit28 ], [ %0, %.preheader44.i ] ; 3 uses
  %.04046.i = phi ptr [ %i.p, %AES_encrypt.exit28 ], [ %1, %.preheader44.i ] ; 12 uses
  %.04145.i = phi i64 [ %i.n, %AES_encrypt.exit28 ], [ %2, %.preheader44.i ]
  %.0.copyload.i.i.i = load i64, ptr %.03947.i, align 1
  %.0.copyload.i7.i.i = load i64, ptr %.048.i, align 1
  %i.f = xor i64 %.0.copyload.i7.i.i, %.0.copyload.i.i.i
  store i64 %i.f, ptr %.04046.i, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %.04046.i, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.03947.i, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.048.i, i64 8
  %.0.copyload.i7.1.i.i = load i64, ptr %i.i, align 1
  %i.j = xor i64 %.0.copyload.i7.1.i.i, %.0.copyload.i.1.i.i
  store i64 %i.j, ptr %i.g, align 1
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.l = and i32 %i.k, 33554432
  %.not.i26 = icmp eq i32 %i.l, 0
  br i1 %.not.i26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  tail call void @aes_hw_encrypt(ptr noundef nonnull %.04046.i, ptr noundef nonnull %.04046.i, ptr noundef %3) #46
  br label %AES_encrypt.exit28

bb.h:                                             ; preds = %.lr.ph.i
  %i.m = and i32 %i.k, 512
  %.not9.i27 = icmp eq i32 %i.m, 0
  br i1 %.not9.i27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @vpaes_encrypt(ptr noundef nonnull %.04046.i, ptr noundef nonnull %.04046.i, ptr noundef %3) #46
  br label %AES_encrypt.exit28

bb.j:                                             ; preds = %bb.h
  tail call void @aes_nohw_encrypt(ptr noundef nonnull %.04046.i, ptr noundef nonnull %.04046.i, ptr noundef %3)
  br label %AES_encrypt.exit28

AES_encrypt.exit28:                               ; preds = %bb.g, %bb.i, %bb.j
  %i.n = add i64 %.04145.i, -16                   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.03947.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.04046.i, i64 16 ; 2 uses
  %i.q = icmp ugt i64 %i.n, 15
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !4

._crit_edge.i:                                    ; preds = %AES_encrypt.exit28
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %AES_encrypt.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader44.i
  %.0.lcssa70.i = phi ptr [ %.04046.i, %._crit_edge.i ], [ %4, %.preheader44.i ] ; 15 uses
  %.039.lcssa69.i = phi ptr [ %i.o, %._crit_edge.i ], [ %0, %.preheader44.i ] ; 8 uses
  %.040.lcssa68.i = phi ptr [ %i.p, %._crit_edge.i ], [ %1, %.preheader44.i ] ; 24 uses
  %.041.lcssa67.i = phi i64 [ %i.n, %._crit_edge.i ], [ %2, %.preheader44.i ] ; 14 uses
  %.040.lcssa68.i39 = ptrtoaddr ptr %.0.lcssa70.i to i64 ; 2 uses
  %.0.lcssa70.i41 = ptrtoaddr ptr %.040.lcssa68.i to i64 ; 3 uses
  %min.iters.check = icmp ult i64 %.041.lcssa67.i, 4
  br i1 %min.iters.check, label %.preheader43.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.039.lcssa69.i40 = ptrtoaddr ptr %.039.lcssa69.i to i64
  %i.r = sub i64 %.039.lcssa69.i40, %.0.lcssa70.i41
  %diff.check = icmp ugt i64 %i.r, -32
  %i.s = sub i64 %.040.lcssa68.i39, %.0.lcssa70.i41
  %diff.check42 = icmp ugt i64 %i.s, -32
  %conflict.rdx = or i1 %diff.check, %diff.check42
  br i1 %conflict.rdx, label %.preheader43.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check43 = icmp ult i64 %.041.lcssa67.i, 32
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !tbaa !76
  %wide.load44 = load <16 x i8>, ptr %i.u, align 1, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load45 = load <16 x i8>, ptr %i.v, align 1, !tbaa !76
  %wide.load46 = load <16 x i8>, ptr %i.w, align 1, !tbaa !76
  %i.x = xor <16 x i8> %wide.load45, %wide.load
  %i.y = xor <16 x i8> %wide.load46, %wide.load44
  %i.z = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <16 x i8> %i.x, ptr %i.z, align 1, !tbaa !76
  store <16 x i8> %i.y, ptr %i.aa, align 1, !tbaa !76
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !664

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec47 = and i64 %.041.lcssa67.i, 12          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %index48
  %wide.load49 = load <4 x i8>, ptr %i.ab, align 1, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %index48
  %wide.load50 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !76
  %i.ad = xor <4 x i8> %wide.load50, %wide.load49
  %i.ae = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %index48
  store <4 x i8> %i.ad, ptr %i.ae, align 1, !tbaa !76
  %index.next51 = add nuw i64 %index48, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next51, %n.vec47
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !665

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %.041.lcssa67.i, %n.vec47
  br i1 %cmp.n52, label %iter.check69, label %.preheader43.i.preheader

.preheader43.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.03752.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec47, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.041.lcssa67.i, 3          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader43.i.prol.loopexit, label %.preheader43.i.prol

.preheader43.i.prol:                              ; preds = %.preheader43.i.preheader, %.preheader43.i.prol
  %.03752.i.prol = phi i64 [ %i.am, %.preheader43.i.prol ], [ %.03752.i.ph, %.preheader43.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader43.i.prol ], [ 0, %.preheader43.i.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %.03752.i.prol
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.03752.i.prol
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !76
  %i.ak = xor i8 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.03752.i.prol
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !76
  %i.am = add nuw nsw i64 %.03752.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader43.i.prol.loopexit, label %.preheader43.i.prol, !llvm.loop !666

.preheader43.i.prol.loopexit:                     ; preds = %.preheader43.i.prol, %.preheader43.i.preheader
  %.03752.i.unr = phi i64 [ %.03752.i.ph, %.preheader43.i.preheader ], [ %i.am, %.preheader43.i.prol ]
  %i.an = sub nsw i64 %.03752.i.ph, %.041.lcssa67.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %iter.check69, label %.preheader43.i

.preheader43.i:                                   ; preds = %.preheader43.i.prol.loopexit, %.preheader43.i
  %.03752.i = phi i64 [ %i.bq, %.preheader43.i ], [ %.03752.i.unr, %.preheader43.i.prol.loopexit ] ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %.03752.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !76
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.03752.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !76
  %i.at = xor i8 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.03752.i
  store i8 %i.at, ptr %i.au, align 1, !tbaa !76
  %i.av = add nuw nsw i64 %.03752.i, 1            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !76
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !76
  %i.ba = xor i8 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.av
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !76
  %i.bc = add nuw nsw i64 %.03752.i, 2            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.bc
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !76
  %i.bh = xor i8 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.bc
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !76
  %i.bj = add nuw nsw i64 %.03752.i, 3            ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !76
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.bj
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !76
  %i.bo = xor i8 %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.bj
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !76
  %i.bq = add nuw nsw i64 %.03752.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bq, %.041.lcssa67.i
  br i1 %exitcond.not.i.3, label %iter.check69, label %.preheader43.i, !llvm.loop !667

iter.check69:                                     ; preds = %.preheader43.i.prol.loopexit, %.preheader43.i, %vec.epilog.middle.block
  %i.br = sub nuw nsw i64 16, %.041.lcssa67.i     ; 2 uses
  %min.iters.check55 = icmp ugt i64 %.041.lcssa67.i, 8
  %i.bs = sub i64 %.040.lcssa68.i39, %.0.lcssa70.i41
  %diff.check54 = icmp ugt i64 %i.bs, -32
  %or.cond = select i1 %min.iters.check55, i1 true, i1 %diff.check54
  br i1 %or.cond, label %.lr.ph54.i.preheader, label %vec.epilog.ph73

vec.epilog.ph73:                                  ; preds = %iter.check69
  %n.vec74 = and i64 %i.br, 24                    ; 3 uses
  %i.bt = add nuw nsw i64 %.041.lcssa67.i, %n.vec74
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.041.lcssa67.i
  %wide.load77 = load <8 x i8>, ptr %i.bu, align 1, !tbaa !76
  %i.bv = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.041.lcssa67.i
  store <8 x i8> %wide.load77, ptr %i.bv, align 1, !tbaa !76
  %i.bw = icmp eq i64 %n.vec74, 8
  br i1 %i.bw, label %vec.epilog.middle.block79, label %vec.epilog.vector.body75.1

vec.epilog.vector.body75.1:                       ; preds = %vec.epilog.ph73
  %i.bx = add nuw nsw i64 %.041.lcssa67.i, 8      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.bx
  %wide.load77.1 = load <8 x i8>, ptr %i.by, align 1, !tbaa !76
  %i.bz = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.bx
  store <8 x i8> %wide.load77.1, ptr %i.bz, align 1, !tbaa !76
  br label %vec.epilog.middle.block79

vec.epilog.middle.block79:                        ; preds = %vec.epilog.vector.body75.1, %vec.epilog.ph73
  %cmp.n80 = icmp eq i64 %i.br, %n.vec74
  br i1 %cmp.n80, label %._crit_edge55.i, label %.lr.ph54.i.preheader

.lr.ph54.i.preheader:                             ; preds = %iter.check69, %vec.epilog.middle.block79
  %.13853.i.ph = phi i64 [ %.041.lcssa67.i, %iter.check69 ], [ %i.bt, %vec.epilog.middle.block79 ] ; 4 uses
  %i.ca = sub i64 0, %.13853.i.ph
  %xtraiter84 = and i64 %i.ca, 3                  ; 2 uses
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph54.i.prol.loopexit, label %.lr.ph54.i.prol

.lr.ph54.i.prol:                                  ; preds = %.lr.ph54.i.preheader, %.lr.ph54.i.prol
  %.13853.i.prol = phi i64 [ %i.ce, %.lr.ph54.i.prol ], [ %.13853.i.ph, %.lr.ph54.i.preheader ] ; 3 uses
  %prol.iter86 = phi i64 [ %prol.iter86.next, %.lr.ph54.i.prol ], [ 0, %.lr.ph54.i.preheader ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.13853.i.prol
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !76
  %i.cd = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.13853.i.prol
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !76
  %i.ce = add i64 %.13853.i.prol, 1               ; 2 uses
  %prol.iter86.next = add i64 %prol.iter86, 1     ; 2 uses
  %prol.iter86.cmp.not = icmp eq i64 %prol.iter86.next, %xtraiter84
  br i1 %prol.iter86.cmp.not, label %.lr.ph54.i.prol.loopexit, label %.lr.ph54.i.prol, !llvm.loop !668

.lr.ph54.i.prol.loopexit:                         ; preds = %.lr.ph54.i.prol, %.lr.ph54.i.preheader
  %.13853.i.unr = phi i64 [ %.13853.i.ph, %.lr.ph54.i.preheader ], [ %i.ce, %.lr.ph54.i.prol ]
  %i.cf = add i64 %.13853.i.ph, -13
  %i.cg = icmp ult i64 %i.cf, 3
  br i1 %i.cg, label %._crit_edge55.i, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.prol.loopexit, %.lr.ph54.i
  %.13853.i = phi i64 [ %i.cw, %.lr.ph54.i ], [ %.13853.i.unr, %.lr.ph54.i.prol.loopexit ] ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.13853.i
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !76
  %i.cj = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.13853.i
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !76
  %i.ck = add i64 %.13853.i, 1                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !76
  %i.cn = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.ck
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !76
  %i.co = add i64 %.13853.i, 2                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !76
  %i.cr = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.co
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !76
  %i.cs = add i64 %.13853.i, 3                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !76
  %i.cv = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.cs
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !76
  %i.cw = add i64 %.13853.i, 4                    ; 2 uses
  %exitcond60.not.i.3 = icmp eq i64 %i.cw, 16
  br i1 %exitcond60.not.i.3, label %._crit_edge55.i, label %.lr.ph54.i, !llvm.loop !669

._crit_edge55.i:                                  ; preds = %.lr.ph54.i.prol.loopexit, %.lr.ph54.i, %vec.epilog.middle.block79
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.cy = and i32 %i.cx, 33554432
  %.not.i25 = icmp eq i32 %i.cy, 0
  br i1 %.not.i25, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge55.i
  tail call void @aes_hw_encrypt(ptr noundef nonnull %.040.lcssa68.i, ptr noundef nonnull %.040.lcssa68.i, ptr noundef %3) #46
  br label %AES_encrypt.exit

bb.l:                                             ; preds = %._crit_edge55.i
  %i.cz = and i32 %i.cx, 512
  %.not9.i = icmp eq i32 %i.cz, 0
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @vpaes_encrypt(ptr noundef nonnull %.040.lcssa68.i, ptr noundef nonnull %.040.lcssa68.i, ptr noundef %3) #46
  br label %AES_encrypt.exit

bb.n:                                             ; preds = %bb.l
  tail call void @aes_nohw_encrypt(ptr noundef nonnull %.040.lcssa68.i, ptr noundef nonnull %.040.lcssa68.i, ptr noundef %3)
  br label %AES_encrypt.exit

AES_encrypt.exit:                                 ; preds = %bb.n, %bb.m, %bb.k, %._crit_edge.i
  %.1.i = phi ptr [ %.04046.i, %._crit_edge.i ], [ %.040.lcssa68.i, %bb.k ], [ %.040.lcssa68.i, %bb.m ], [ %.040.lcssa68.i, %bb.n ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull readonly align 1 dereferenceable(16) %.1.i, i64 16, i1 false)
  br label %CRYPTO_cbc128_encrypt.exit

bb.o:                                             ; preds = %bb.e
  tail call void @CRYPTO_cbc128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @AES_decrypt)
  br label %CRYPTO_cbc128_encrypt.exit

CRYPTO_cbc128_encrypt.exit:                       ; preds = %AES_encrypt.exit, %bb.f, %bb.d, %bb.o, %bb.b
  ret void
}

declare void @aes_hw_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_cbc128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %.preheader44

.preheader44:                                     ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 15
  br i1 %i.b, label %.lr.ph, label %iter.check

.lr.ph:                                           ; preds = %.preheader44, %.lr.ph
  %.048 = phi ptr [ %.04046, %.lr.ph ], [ %4, %.preheader44 ] ; 2 uses
  %.03947 = phi ptr [ %i.i, %.lr.ph ], [ %0, %.preheader44 ] ; 3 uses
  %.04046 = phi ptr [ %i.j, %.lr.ph ], [ %1, %.preheader44 ] ; 8 uses
  %.04145 = phi i64 [ %i.h, %.lr.ph ], [ %2, %.preheader44 ]
  %.0.copyload.i.i = load i64, ptr %.03947, align 1
  %.0.copyload.i7.i = load i64, ptr %.048, align 1
  %i.c = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.c, ptr %.04046, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %.04046, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.03947, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %.048, i64 8
  %.0.copyload.i7.1.i = load i64, ptr %i.f, align 1
  %i.g = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.g, ptr %i.d, align 1
  tail call void %5(ptr noundef nonnull %.04046, ptr noundef nonnull %.04046, ptr noundef %3) #46
  %i.h = add i64 %.04145, -16                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.03947, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.04046, i64 16 ; 2 uses
  %i.k = icmp ugt i64 %i.h, 15
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !4

._crit_edge:                                      ; preds = %.lr.ph
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %iter.check

iter.check:                                       ; preds = %.preheader44, %._crit_edge
  %.0.lcssa70 = phi ptr [ %.04046, %._crit_edge ], [ %4, %.preheader44 ] ; 15 uses
  %.039.lcssa69 = phi ptr [ %i.i, %._crit_edge ], [ %0, %.preheader44 ] ; 8 uses
  %.040.lcssa68 = phi ptr [ %i.j, %._crit_edge ], [ %1, %.preheader44 ] ; 18 uses
  %.041.lcssa67 = phi i64 [ %i.h, %._crit_edge ], [ %2, %.preheader44 ] ; 14 uses
  %.040.lcssa6875 = ptrtoaddr ptr %.0.lcssa70 to i64 ; 2 uses
  %.0.lcssa7077 = ptrtoaddr ptr %.040.lcssa68 to i64 ; 3 uses
  %min.iters.check = icmp ult i64 %.041.lcssa67, 4
  br i1 %min.iters.check, label %.preheader43.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.039.lcssa6976 = ptrtoaddr ptr %.039.lcssa69 to i64
  %i.l = sub i64 %.039.lcssa6976, %.0.lcssa7077
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %.040.lcssa6875, %.0.lcssa7077
  %diff.check78 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check78
  br i1 %conflict.rdx, label %.preheader43.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check79 = icmp ult i64 %.041.lcssa67, 32
  br i1 %min.iters.check79, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.039.lcssa69, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !tbaa !76
  %wide.load80 = load <16 x i8>, ptr %i.o, align 1, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load81 = load <16 x i8>, ptr %i.p, align 1, !tbaa !76
  %wide.load82 = load <16 x i8>, ptr %i.q, align 1, !tbaa !76
  %i.r = xor <16 x i8> %wide.load81, %wide.load
  %i.s = xor <16 x i8> %wide.load82, %wide.load80
  %i.t = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1, !tbaa !76
  store <16 x i8> %i.s, ptr %i.u, align 1, !tbaa !76
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !670

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec83 = and i64 %.041.lcssa67, 12            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next87, %vec.epilog.vector.body ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.039.lcssa69, i64 %index84
  %wide.load85 = load <4 x i8>, ptr %i.v, align 1, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %index84
  %wide.load86 = load <4 x i8>, ptr %i.w, align 1, !tbaa !76
  %i.x = xor <4 x i8> %wide.load86, %wide.load85
  %i.y = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %index84
  store <4 x i8> %i.x, ptr %i.y, align 1, !tbaa !76
  %index.next87 = add nuw i64 %index84, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next87, %n.vec83
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !671

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n88 = icmp eq i64 %.041.lcssa67, %n.vec83
  br i1 %cmp.n88, label %iter.check105, label %.preheader43.preheader

.preheader43.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.03752.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec83, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.041.lcssa67, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader43.prol.loopexit, label %.preheader43.prol

.preheader43.prol:                                ; preds = %.preheader43.preheader, %.preheader43.prol
  %.03752.prol = phi i64 [ %i.ag, %.preheader43.prol ], [ %.03752.ph, %.preheader43.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader43.prol ], [ 0, %.preheader43.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.039.lcssa69, i64 %.03752.prol
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %.03752.prol
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !76
  %i.ae = xor i8 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %.03752.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !76
  %i.ag = add nuw nsw i64 %.03752.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader43.prol.loopexit, label %.preheader43.prol, !llvm.loop !672

.preheader43.prol.loopexit:                       ; preds = %.preheader43.prol, %.preheader43.preheader
  %.03752.unr = phi i64 [ %.03752.ph, %.preheader43.preheader ], [ %i.ag, %.preheader43.prol ]
  %i.ah = sub nsw i64 %.03752.ph, %.041.lcssa67
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %iter.check105, label %.preheader43

.preheader43:                                     ; preds = %.preheader43.prol.loopexit, %.preheader43
  %.03752 = phi i64 [ %i.bk, %.preheader43 ], [ %.03752.unr, %.preheader43.prol.loopexit ] ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.039.lcssa69, i64 %.03752
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !76
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %.03752
  %i.am = load i8, ptr %i.al, align 1, !tbaa !76
  %i.an = xor i8 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %.03752
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !76
  %i.ap = add nuw nsw i64 %.03752, 1              ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.039.lcssa69, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !76
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.ap
  %i.at = load i8, ptr %i.as, align 1, !tbaa !76
  %i.au = xor i8 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.ap
  store i8 %i.au, ptr %i.av, align 1, !tbaa !76
  %i.aw = add nuw nsw i64 %.03752, 2              ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.039.lcssa69, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.aw
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !76
  %i.bb = xor i8 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.aw
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !76
  %i.bd = add nuw nsw i64 %.03752, 3              ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.039.lcssa69, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !76
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.bd
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !76
  %i.bi = xor i8 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.bd
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !76
  %i.bk = add nuw nsw i64 %.03752, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bk, %.041.lcssa67
  br i1 %exitcond.not.3, label %iter.check105, label %.preheader43, !llvm.loop !673

iter.check105:                                    ; preds = %.preheader43.prol.loopexit, %.preheader43, %vec.epilog.middle.block
  %i.bl = sub nuw nsw i64 16, %.041.lcssa67       ; 2 uses
  %min.iters.check91 = icmp ugt i64 %.041.lcssa67, 8
  %i.bm = sub i64 %.040.lcssa6875, %.0.lcssa7077
  %diff.check90 = icmp ugt i64 %i.bm, -32
  %or.cond = select i1 %min.iters.check91, i1 true, i1 %diff.check90
  br i1 %or.cond, label %.lr.ph54.preheader, label %vec.epilog.ph109

vec.epilog.ph109:                                 ; preds = %iter.check105
  %n.vec110 = and i64 %i.bl, 24                   ; 3 uses
  %i.bn = add nuw nsw i64 %.041.lcssa67, %n.vec110
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %.041.lcssa67
  %wide.load113 = load <8 x i8>, ptr %i.bo, align 1, !tbaa !76
  %i.bp = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %.041.lcssa67
  store <8 x i8> %wide.load113, ptr %i.bp, align 1, !tbaa !76
  %i.bq = icmp eq i64 %n.vec110, 8
  br i1 %i.bq, label %vec.epilog.middle.block115, label %vec.epilog.vector.body111.1

vec.epilog.vector.body111.1:                      ; preds = %vec.epilog.ph109
  %i.br = add nuw nsw i64 %.041.lcssa67, 8        ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.br
  %wide.load113.1 = load <8 x i8>, ptr %i.bs, align 1, !tbaa !76
  %i.bt = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.br
  store <8 x i8> %wide.load113.1, ptr %i.bt, align 1, !tbaa !76
  br label %vec.epilog.middle.block115

vec.epilog.middle.block115:                       ; preds = %vec.epilog.vector.body111.1, %vec.epilog.ph109
  %cmp.n116 = icmp eq i64 %i.bl, %n.vec110
  br i1 %cmp.n116, label %._crit_edge55, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %iter.check105, %vec.epilog.middle.block115
  %.13853.ph = phi i64 [ %.041.lcssa67, %iter.check105 ], [ %i.bn, %vec.epilog.middle.block115 ] ; 4 uses
  %i.bu = sub i64 0, %.13853.ph
  %xtraiter120 = and i64 %i.bu, 3                 ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph54.prol.loopexit, label %.lr.ph54.prol

.lr.ph54.prol:                                    ; preds = %.lr.ph54.preheader, %.lr.ph54.prol
  %.13853.prol = phi i64 [ %i.by, %.lr.ph54.prol ], [ %.13853.ph, %.lr.ph54.preheader ] ; 3 uses
  %prol.iter122 = phi i64 [ %prol.iter122.next, %.lr.ph54.prol ], [ 0, %.lr.ph54.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %.13853.prol
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !76
  %i.bx = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %.13853.prol
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !76
  %i.by = add i64 %.13853.prol, 1                 ; 2 uses
  %prol.iter122.next = add i64 %prol.iter122, 1   ; 2 uses
  %prol.iter122.cmp.not = icmp eq i64 %prol.iter122.next, %xtraiter120
  br i1 %prol.iter122.cmp.not, label %.lr.ph54.prol.loopexit, label %.lr.ph54.prol, !llvm.loop !674

.lr.ph54.prol.loopexit:                           ; preds = %.lr.ph54.prol, %.lr.ph54.preheader
  %.13853.unr = phi i64 [ %.13853.ph, %.lr.ph54.preheader ], [ %i.by, %.lr.ph54.prol ]
  %i.bz = add i64 %.13853.ph, -13
  %i.ca = icmp ult i64 %i.bz, 3
  br i1 %i.ca, label %._crit_edge55, label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.prol.loopexit, %.lr.ph54
  %.13853 = phi i64 [ %i.cq, %.lr.ph54 ], [ %.13853.unr, %.lr.ph54.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %.13853
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !76
  %i.cd = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %.13853
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !76
  %i.ce = add i64 %.13853, 1                      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !76
  %i.ch = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !76
  %i.ci = add i64 %.13853, 2                      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !76
  %i.cl = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !76
  %i.cm = add i64 %.13853, 3                      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa70, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !76
  %i.cp = getelementptr inbounds nuw i8, ptr %.040.lcssa68, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !76
  %i.cq = add i64 %.13853, 4                      ; 2 uses
  %exitcond60.not.3 = icmp eq i64 %i.cq, 16
  br i1 %exitcond60.not.3, label %._crit_edge55, label %.lr.ph54, !llvm.loop !675

._crit_edge55:                                    ; preds = %.lr.ph54.prol.loopexit, %.lr.ph54, %vec.epilog.middle.block115
  tail call void %5(ptr noundef nonnull %.040.lcssa68, ptr noundef nonnull %.040.lcssa68, ptr noundef %3) #46
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge55, %._crit_edge
  %.1 = phi ptr [ %.040.lcssa68, %._crit_edge55 ], [ %.04046, %._crit_edge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull readonly align 1 dereferenceable(16) %.1, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_cbc128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = alloca [16 x i8], align 16               ; 14 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.d = icmp ugt ptr %0, inttoptr (i64 31 to ptr)
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = add i64 %i.f, -32
  %.not = icmp uge i64 %i.g, %i.e
  %or.cond.not94 = and i1 %i.d, %.not
  %i.h = icmp ult ptr %0, %1
  %or.cond90 = or i1 %i.h, %or.cond.not94
  %i.i = icmp ugt i64 %2, 15                      ; 2 uses
  br i1 %or.cond90, label %.preheader95, label %.preheader96

.preheader96:                                     ; preds = %bb.b
  br i1 %i.i, label %.lr.ph.preheader, label %iter.check

.lr.ph.preheader:                                 ; preds = %.preheader96
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph

.preheader95:                                     ; preds = %bb.b
  br i1 %i.i, label %.lr.ph108, label %._crit_edge

.lr.ph108:                                        ; preds = %.preheader95, %.lr.ph108
  %.070107 = phi ptr [ %i.q, %.lr.ph108 ], [ %0, %.preheader95 ] ; 4 uses
  %.071106 = phi ptr [ %.070107, %.lr.ph108 ], [ %4, %.preheader95 ] ; 2 uses
  %.075105 = phi ptr [ %i.r, %.lr.ph108 ], [ %1, %.preheader95 ] ; 5 uses
  %.080104 = phi i64 [ %i.p, %.lr.ph108 ], [ %2, %.preheader95 ]
  tail call void %5(ptr noundef %.070107, ptr noundef %.075105, ptr noundef %3) #46
  %.0.copyload.i.i = load i64, ptr %.075105, align 1
  %.0.copyload.i7.i = load i64, ptr %.071106, align 1
  %i.l = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.l, ptr %.075105, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %.075105, i64 8 ; 2 uses
  %.0.copyload.i.1.i = load i64, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.071106, i64 8
  %.0.copyload.i7.1.i = load i64, ptr %i.n, align 1
  %i.o = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.o, ptr %i.m, align 1
  %i.p = add i64 %.080104, -16                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.070107, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.075105, i64 16 ; 2 uses
  %i.s = icmp ugt i64 %i.p, 15
  br i1 %i.s, label %.lr.ph108, label %._crit_edge, !llvm.loop !676

._crit_edge:                                      ; preds = %.lr.ph108, %.preheader95
  %.080.lcssa = phi i64 [ %2, %.preheader95 ], [ %i.p, %.lr.ph108 ]
  %.075.lcssa = phi ptr [ %1, %.preheader95 ], [ %i.r, %.lr.ph108 ]
  %.071.lcssa = phi ptr [ %4, %.preheader95 ], [ %.070107, %.lr.ph108 ]
  %.070.lcssa = phi ptr [ %0, %.preheader95 ], [ %i.q, %.lr.ph108 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull readonly align 1 dereferenceable(16) %.071.lcssa, i64 16, i1 false)
  br label %.loopexit97

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1101 = phi ptr [ %i.y, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %.176100 = phi ptr [ %i.z, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.18199 = phi i64 [ %i.x, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  call void %5(ptr noundef %.1101, ptr noundef nonnull %i.b, ptr noundef %3) #46
  %.0.copyload.i = load i64, ptr %.1101, align 1
  %.0.copyload.i91 = load i64, ptr %i.b, align 16
  %.0.copyload.i92 = load i64, ptr %4, align 1
  %i.t = xor i64 %.0.copyload.i92, %.0.copyload.i91
  store i64 %i.t, ptr %.176100, align 1
  store i64 %.0.copyload.i, ptr %4, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.1101, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.176100, i64 8
  %.0.copyload.i91.1 = load i64, ptr %i.j, align 8
  %.0.copyload.i92.1 = load i64, ptr %i.k, align 1
  %i.w = xor i64 %.0.copyload.i92.1, %.0.copyload.i91.1
  store i64 %i.w, ptr %i.v, align 1
  store i64 %.0.copyload.i.1, ptr %i.k, align 1
  %i.x = add i64 %.18199, -16                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1101, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.176100, i64 16 ; 2 uses
  %i.aa = icmp ugt i64 %i.x, 15
  br i1 %i.aa, label %.lr.ph, label %.loopexit97, !llvm.loop !677

.loopexit97:                                      ; preds = %.lr.ph, %._crit_edge
  %.282 = phi i64 [ %.080.lcssa, %._crit_edge ], [ %i.x, %.lr.ph ] ; 2 uses
  %.277 = phi ptr [ %.075.lcssa, %._crit_edge ], [ %i.z, %.lr.ph ]
  %.2 = phi ptr [ %.070.lcssa, %._crit_edge ], [ %i.y, %.lr.ph ]
  %.not87 = icmp eq i64 %.282, 0
  br i1 %.not87, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader96, %.loopexit97
  %.2134 = phi ptr [ %.2, %.loopexit97 ], [ %0, %.preheader96 ] ; 17 uses
  %.277133 = phi ptr [ %.277, %.loopexit97 ], [ %1, %.preheader96 ] ; 9 uses
  %.282132 = phi i64 [ %.282, %.loopexit97 ], [ %2, %.preheader96 ] ; 21 uses
  %.2134195 = ptrtoaddr ptr %.2134 to i64
  call void %5(ptr noundef %.2134, ptr noundef nonnull %i.b, ptr noundef %3) #46
  %i.ab = sub nuw nsw i64 17, %.282132            ; 4 uses
  %min.iters.check = icmp ult i64 %.282132, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ac = getelementptr i8, ptr %.277133, i64 %.282132 ; 3 uses
  %i.ad = getelementptr i8, ptr %4, i64 %.282132  ; 3 uses
  %i.ae = getelementptr i8, ptr %.2134, i64 %.282132 ; 2 uses
  %i.af = getelementptr i8, ptr %i.b, i64 %.282132 ; 2 uses
  %bound0 = icmp ult ptr %.277133, %i.ad
  %bound1 = icmp ult ptr %4, %i.ac
end_hunk_0
begin_hunk_1_@EVP_EncryptFinal_ex:bb.a
  %.not45 = icmp eq i32 %i.af, 0
  br i1 %.not45, label %.critedge, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  store i32 %i.l, ptr %2, align 4, !tbaa !73
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.o, %bb.q, %bb.i, %bb.h, %._crit_edge, %bb.n, %bb.f, %bb.d, %bb.b
  %.1 = phi i32 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.h ], [ 0, %bb.n ], [ 0, %._crit_edge ], [ 0, %bb.f ], [ 1, %bb.i ], [ 1, %bb.q ], [ 1, %bb.o ], [ 1, %bb.k ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EVP_DecryptUpdate(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.15, i32 noundef 367) #46
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !162
  %.not72 = icmp eq i32 %i.c, 0
  br i1 %.not72, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.15, i32 noundef 369) #46
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !163    ; 4 uses
  %.not73 = icmp eq ptr %i.d, null
  br i1 %.not73, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.15, i32 noundef 376) #46
  br label %bb.ad

bb.g:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !180  ; 7 uses
  %i.g = icmp ugt i32 %i.f, 1                     ; 2 uses
  %i.h = sub nsw i32 2147483647, %i.f
  %i.i = icmp sgt i32 %4, %i.h
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str.15, i32 noundef 379) #46
  br label %bb.ad

bb.i:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !169
  %i.l = and i32 %i.k, 1024
  %.not74 = icmp eq i32 %i.l, 0
  br i1 %.not74, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181
  %i.o = sext i32 %4 to i64
  %i.p = tail call i32 %i.n(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3, i64 noundef %i.o) #46 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  %. = tail call i32 @llvm.smax.i32(i32 %i.p, i32 0)
  %.84 = zext i1 %i.q to i32
  store i32 %., ptr %2, align 4, !tbaa !73
  br label %bb.ad

bb.k:                                             ; preds = %bb.i
  %i.r = icmp slt i32 %4, 1
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %2, align 4, !tbaa !73
  %i.s = icmp eq i32 %4, 0
  %i.t = zext i1 %i.s to i32
  br label %bb.ad

bb.m:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !174
  %i.w = and i32 %i.v, 2048
  %.not75 = icmp eq i32 %i.w, 0
  br i1 %.not75, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = tail call i32 @EVP_EncryptUpdate(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.ad

bb.o:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !179
  %.not76 = icmp eq i32 %i.z, 0                   ; 2 uses
  br i1 %.not76, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = zext i32 %i.f to i64                    ; 2 uses
  %i.ab = icmp eq i32 %i.f, 0
  br i1 %i.ab, label %OPENSSL_memcpy.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 8 %i.ac, i64 %i.aa, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.p, %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  br label %bb.r

bb.r:                                             ; preds = %OPENSSL_memcpy.exit, %bb.o
  %.065 = phi ptr [ %i.ad, %OPENSSL_memcpy.exit ], [ %1, %bb.o ]
  br i1 %i.g, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !178
  %i.ag = add nsw i32 %i.af, %4
  %.val = load ptr, ptr %0, align 8, !tbaa !163
  %i.ah = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.ah, align 4, !tbaa !180
  %i.ai = add i32 %.val.val, -1
  %i.aj = and i32 %i.ai, %i.ag
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.al = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.f)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.0 = phi i32 [ %i.al, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ] ; 4 uses
  %i.am = sub nsw i32 %4, %.0
  %i.an = tail call i32 @EVP_EncryptUpdate(ptr noundef nonnull %0, ptr noundef %.065, ptr noundef %2, ptr noundef %3, i32 noundef %i.am)
  %.not77 = icmp eq i32 %i.an, 0
  br i1 %.not77, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.y, align 4, !tbaa !179
  %.not78 = icmp eq i32 %.0, 0
  br i1 %.not78, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ap = zext nneg i32 %4 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %i.ap
  %i.ar = sext i32 %.0 to i64
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %i.as
  %i.au = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %0, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.a, ptr noundef nonnull %i.at, i32 noundef %.0)
  %.not79 = icmp eq i32 %i.au, 0
  br i1 %.not79, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = load i32, ptr %i.a, align 4, !tbaa !73
  %.not80 = icmp eq i32 %i.av, %i.f
  br i1 %.not80, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !178
  %.not81 = icmp eq i32 %i.ax, 0
  br i1 %.not81, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str.15, i32 noundef 436) #46
  store i32 1, ptr %i.b, align 8, !tbaa !162
  br label %.critedge

bb.aa:                                            ; preds = %bb.y
  store i32 1, ptr %i.y, align 4, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v
  br i1 %.not76, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ay = load i32, ptr %2, align 4, !tbaa !73
  %i.az = add i32 %i.ay, %i.f
  store i32 %i.az, ptr %2, align 4, !tbaa !73
  br label %bb.ad

.critedge:                                        ; preds = %bb.w, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.ad

bb.ad:                                            ; preds = %bb.h, %bb.j, %bb.l, %bb.n, %bb.ab, %bb.ac, %.critedge, %bb.u, %bb.f, %bb.d, %bb.b
  %.4 = phi i32 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.h ], [ %.84, %bb.j ], [ %i.t, %bb.l ], [ %i.x, %bb.n ], [ 0, %bb.u ], [ 0, %.critedge ], [ 1, %bb.ac ], [ 1, %bb.ab ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EVP_DecryptFinal_ex(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  store i32 0, ptr %2, align 4, !tbaa !73
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.15, i32 noundef 455) #46
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i32, ptr %i.c, align 8, !tbaa !162
  %.not50 = icmp eq i32 %i.d, 0
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.15, i32 noundef 462) #46
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %0, align 8, !tbaa !163    ; 4 uses
  %.not51 = icmp eq ptr %i.e, null
  br i1 %.not51, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.15, i32 noundef 465) #46
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !169
  %i.h = and i32 %i.g, 1024
  %.not52 = icmp eq i32 %i.h, 0
  br i1 %.not52, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !181
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i64 noundef 0) #46 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.k, ptr %2, align 4, !tbaa !73
  br label %bb.v

bb.j:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !180  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !174
  %i.q = and i32 %i.p, 2048
  %.not53 = icmp eq i32 %i.q, 0
  br i1 %.not53, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !178
  %.not57 = icmp eq i32 %i.s, 0
  br i1 %.not57, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.15, i32 noundef 479) #46
  br label %bb.v

bb.m:                                             ; preds = %bb.j
  %i.t = icmp ugt i32 %i.n, 1
  br i1 %i.t, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.v = load i32, ptr %i.u, align 4, !tbaa !178
  %.not54 = icmp eq i32 %i.v, 0
  br i1 %.not54, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.x = load i32, ptr %i.w, align 4, !tbaa !179
  %.not55 = icmp eq i32 %i.x, 0
  br i1 %.not55, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 123, ptr noundef nonnull @.str.15, i32 noundef 488) #46
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.z = add i32 %i.n, -1
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !76  ; 3 uses
  %i.ad = zext i8 %i.ac to i32                    ; 3 uses
  %i.ae = icmp eq i8 %i.ac, 0
  %i.af = icmp slt i32 %i.n, %i.ad
  %or.cond = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.r, label %.preheader

bb.r:                                             ; preds = %bb.q
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.15, i32 noundef 497) #46
  br label %bb.v

bb.s:                                             ; preds = %.preheader
  %i.ag = add nuw nsw i32 %.04258, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, %i.ad
  br i1 %exitcond.not, label %bb.u, label %.preheader, !llvm.loop !1588

.preheader:                                       ; preds = %bb.q, %bb.s
  %.059 = phi i32 [ %i.ah, %bb.s ], [ %i.n, %bb.q ]
  %.04258 = phi i32 [ %i.ag, %bb.s ], [ 0, %bb.q ]
  %i.ah = add i32 %.059, -1                       ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !76
  %.not56 = icmp eq i8 %i.ak, %i.ac
  br i1 %.not56, label %bb.s, label %bb.t

bb.t:                                             ; preds = %.preheader
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.15, i32 noundef 503) #46
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.al = sub nuw nsw i32 %i.n, %i.ad             ; 5 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.u
  %wide.trip.count = zext nneg i32 %i.al to i64   ; 8 uses
  %min.iters.check = icmp ult i32 %i.al, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.an = sub i64 %i.a, %i.b
  %i.ao = add i64 %i.an, -113
  %diff.check = icmp ult i64 %i.ao, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check70 = icmp ult i32 %i.al, 32
  br i1 %min.iters.check70, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <16 x i8>, ptr %i.aq, align 1, !tbaa !76
  %wide.load71 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !76
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <16 x i8> %wide.load, ptr %i.as, align 1, !tbaa !76
  store <16 x i8> %wide.load71, ptr %i.at, align 1, !tbaa !76
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1589

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec72 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next75, %vec.epilog.vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %index73
  %wide.load74 = load <4 x i8>, ptr %i.av, align 1, !tbaa !76
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %index73
  store <4 x i8> %wide.load74, ptr %i.aw, align 1, !tbaa !76
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1590

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %n.vec72, %wide.trip.count
  br i1 %cmp.n76, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec72, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.prol
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !76
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1591

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bb = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !76
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !76
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !76
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !76
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !76
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !76
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond62.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond62.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1592

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.u
  store i32 %i.al, ptr %2, align 4, !tbaa !73
  br label %bb.v

bb.v:                                             ; preds = %bb.m, %bb.k, %bb.i, %._crit_edge, %bb.h, %bb.t, %bb.r, %bb.p, %bb.l, %bb.f, %bb.d, %bb.b
  %.043 = phi i32 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.f ], [ 1, %._crit_edge ], [ 1, %bb.k ], [ 1, %bb.i ], [ 1, %bb.m ]
  ret i32 %.043
}

; Function Attrs: nounwind uwtable
define i32 @EVP_Cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.15, i32 noundef 525) #46
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !163    ; 2 uses
  %.not14 = icmp eq ptr %i.a, null
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.15, i32 noundef 526) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #46
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ %i.d, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EVP_CipherUpdate(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.15, i32 noundef 549) #46
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !171
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 @EVP_EncryptUpdate(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = tail call i32 @EVP_DecryptUpdate(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EVP_CipherFinal_ex(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.15, i32 noundef 558) #46
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !171
  %.not9 = icmp eq i32 %i.b, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 @EVP_EncryptFinal_ex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = tail call i32 @EVP_DecryptFinal_ex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ 0, %bb.b ]
  ret i32 %.0
}

end_hunk_1
begin_hunk_2_@CMAC_Init:bb.a
  %i.bz = xor i8 %i.bx, %i.by                     ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 167
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !76
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cc = call i8 @llvm.fshl.i8(i8 %i.s, i8 %i.v, i8 1)
  store i8 %i.cc, ptr %i.cb, align 8, !tbaa !76
  %i.cd = call i8 @llvm.fshl.i8(i8 %i.v, i8 %i.z, i8 1)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !76
  %i.cf = call i8 @llvm.fshl.i8(i8 %i.z, i8 %i.ad, i8 1)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i8 %i.cf, ptr %i.cg, align 2, !tbaa !76
  %i.ch = call i8 @llvm.fshl.i8(i8 %i.ad, i8 %i.ah, i8 1)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 171
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !76
  %i.cj = call i8 @llvm.fshl.i8(i8 %i.ah, i8 %i.al, i8 1)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 %i.cj, ptr %i.ck, align 4, !tbaa !76
  %i.cl = call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.ap, i8 1)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 173
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !76
  %i.cn = call i8 @llvm.fshl.i8(i8 %i.ap, i8 %i.at, i8 1)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 174
  store i8 %i.cn, ptr %i.co, align 2, !tbaa !76
  %i.cp = call i8 @llvm.fshl.i8(i8 %i.at, i8 %i.ax, i8 1)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 175
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !76
  %i.cr = call i8 @llvm.fshl.i8(i8 %i.ax, i8 %i.bb, i8 1)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.cr, ptr %i.cs, align 8, !tbaa !76
  %i.ct = call i8 @llvm.fshl.i8(i8 %i.bb, i8 %i.bf, i8 1)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !76
  %i.cv = call i8 @llvm.fshl.i8(i8 %i.bf, i8 %i.bj, i8 1)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 %i.cv, ptr %i.cw, align 2, !tbaa !76
  %i.cx = call i8 @llvm.fshl.i8(i8 %i.bj, i8 %i.bn, i8 1)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 179
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !76
  %i.cz = call i8 @llvm.fshl.i8(i8 %i.bn, i8 %i.br, i8 1)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i8 %i.cz, ptr %i.da, align 4, !tbaa !76
  %i.db = call i8 @llvm.fshl.i8(i8 %i.br, i8 %i.bv, i8 1)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !76
  %i.dd = call i8 @llvm.fshl.i8(i8 %i.bv, i8 %i.bz, i8 1)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.de = shl i8 %i.ao, 1                         ; 2 uses
  %isneg.i28 = icmp slt i8 %i.p, 0
  %i.df = select i1 %isneg.i28, i8 27, i8 0
  %i.dg = xor i8 %i.de, %i.df                     ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 159
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !76
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dj = call i8 @llvm.fshl.i8(i8 %i.s, i8 %i.v, i8 1)
  store i8 %i.dj, ptr %i.di, align 8, !tbaa !76
  %i.dk = call i8 @llvm.fshl.i8(i8 %i.v, i8 %i.z, i8 1)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !76
  %i.dm = call i8 @llvm.fshl.i8(i8 %i.z, i8 %i.ad, i8 1)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i8 %i.dm, ptr %i.dn, align 2, !tbaa !76
  %i.do = call i8 @llvm.fshl.i8(i8 %i.ad, i8 %i.ah, i8 1)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 171
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !76
  %i.dq = call i8 @llvm.fshl.i8(i8 %i.ah, i8 %i.al, i8 1)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 %i.dq, ptr %i.dr, align 4, !tbaa !76
  %i.ds = call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.ap, i8 1)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 173
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !76
  %i.du = call i8 @llvm.fshl.i8(i8 %i.ap, i8 %i.de, i8 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink43 = phi i64 [ 174, %bb.j ], [ 182, %bb.i ]
  %.sink41 = phi i8 [ %i.du, %bb.j ], [ %i.dd, %bb.i ]
  %.sink40 = phi i8 [ %i.dg, %bb.j ], [ %i.bz, %bb.i ]
  %.sink = phi i8 [ 27, %bb.j ], [ -121, %bb.i ]
  %.sink37 = phi i64 [ 175, %bb.j ], [ 183, %bb.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %.sink43
  store i8 %.sink41, ptr %i.dv, align 1, !tbaa !76
  %i.dw = shl i8 %.sink40, 1
  %isneg.i29 = icmp slt i8 %i.s, 0
  %i.dx = select i1 %isneg.i29, i8 %.sink, i8 0
  %i.dy = xor i8 %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 %.sink37
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !76
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.ea, align 8, !tbaa !190
  br label %EVP_CIPHER_block_size.exit.thread

EVP_CIPHER_block_size.exit.thread:                ; preds = %bb.f, %bb.d, %bb.a, %EVP_CIPHER_block_size.exit, %EVP_CIPHER_key_length.exit, %bb.b, %EVP_Cipher.exit, %bb.g, %bb.k
  %.0 = phi i32 [ 0, %EVP_CIPHER_block_size.exit ], [ 0, %EVP_CIPHER_key_length.exit ], [ 1, %bb.k ], [ 0, %bb.g ], [ 0, %EVP_Cipher.exit ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CMAC_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !163    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !180
  %i.e = zext i32 %i.d to i64                     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !190  ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = sub nsw i64 %i.e, %i.h
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.i) ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.k = icmp eq i64 %spec.select, 0
  br i1 %i.k, label %OPENSSL_memcpy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr readonly align 1 %1, i64 %spec.select, i1 false)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !190
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %i.g, %bb.b ], [ %.pre, %bb.c ]
  %i.n = sub nuw i64 %2, %spec.select             ; 2 uses
  %i.o = trunc i64 %spec.select to i32
  %i.p = add i32 %i.m, %i.o
  store i32 %i.p, ptr %i.f, align 8, !tbaa !190
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %.thread, label %EVP_Cipher.exit

EVP_Cipher.exit:                                  ; preds = %OPENSSL_memcpy.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !181
  %i.u = call i32 %i.t(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.j, i64 noundef %i.e) #46, !inline_history !191
  %.not48 = icmp eq i32 %i.u, 0
  br i1 %.not48, label %.thread, label %bb.d

bb.d:                                             ; preds = %EVP_Cipher.exit, %bb.a
  %.041 = phi ptr [ %1, %bb.a ], [ %i.r, %EVP_Cipher.exit ] ; 2 uses
  %.039 = phi i64 [ %2, %bb.a ], [ %i.n, %EVP_Cipher.exit ] ; 3 uses
  %i.v = icmp ugt i64 %.039, %i.e
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.14064 = phi i64 [ %i.ab, %bb.e ], [ %.039, %bb.d ]
  %.14263 = phi ptr [ %i.aa, %bb.e ], [ %.041, %bb.d ] ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !163    ; 2 uses
  %.not14.i51 = icmp eq ptr %i.w, null
  br i1 %.not14.i51, label %EVP_Cipher.exit53.thread, label %EVP_Cipher.exit53

EVP_Cipher.exit53.thread:                         ; preds = %.lr.ph
  call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.15, i32 noundef 526) #46
  br label %.thread

EVP_Cipher.exit53:                                ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !181
  %i.z = call i32 %i.y(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %.14263, i64 noundef %i.e) #46, !inline_history !191
  %.not49 = icmp eq i32 %i.z, 0
  br i1 %.not49, label %.thread, label %bb.e

bb.e:                                             ; preds = %EVP_Cipher.exit53
  %i.aa = getelementptr inbounds nuw i8, ptr %.14263, i64 %i.e ; 2 uses
  %i.ab = sub nuw i64 %.14064, %i.e               ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, %i.e
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.142.lcssa = phi ptr [ %.041, %bb.d ], [ %i.aa, %bb.e ]
  %.140.lcssa = phi i64 [ %.039, %bb.d ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ad = icmp eq i64 %.140.lcssa, 0
  br i1 %i.ad, label %OPENSSL_memcpy.exit54, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr readonly align 1 %.142.lcssa, i64 %.140.lcssa, i1 false)
  br label %OPENSSL_memcpy.exit54

OPENSSL_memcpy.exit54:                            ; preds = %._crit_edge, %bb.f
  %i.af = trunc nuw i64 %.140.lcssa to i32
  store i32 %i.af, ptr %i.f, align 8, !tbaa !190
  br label %.thread

.thread:                                          ; preds = %EVP_Cipher.exit53, %EVP_Cipher.exit, %OPENSSL_memcpy.exit, %EVP_Cipher.exit53.thread, %OPENSSL_memcpy.exit54
  %.2 = phi i32 [ 0, %EVP_Cipher.exit ], [ 1, %OPENSSL_memcpy.exit54 ], [ 0, %EVP_Cipher.exit53.thread ], [ 1, %OPENSSL_memcpy.exit ], [ 0, %EVP_Cipher.exit53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i32 @CMAC_Final(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !163    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !180  ; 6 uses
  %i.f = zext i32 %i.e to i64                     ; 11 uses
  store i64 %i.f, ptr %2, align 8, !tbaa !80
  %i.g = icmp eq ptr %1, null
  br i1 %i.g, label %EVP_Cipher.exit.thread39, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !190  ; 2 uses
  %.not = icmp eq i32 %i.i, %i.e
  br i1 %.not, label %OPENSSL_memset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 -128, ptr %i.l, align 1, !tbaa !76
  %i.m = load i32, ptr %i.h, align 8, !tbaa !190  ; 2 uses
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = icmp eq i32 %i.e, %i.n
  br i1 %i.o, label %OPENSSL_memset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = zext i32 %i.n to i64
  %i.q = sub nsw i64 %i.f, %i.p
  %i.r = zext i32 %i.m to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.q, i1 false)
  br label %OPENSSL_memset.exit

OPENSSL_memset.exit:                              ; preds = %bb.d, %bb.c, %bb.b
  %i.u = phi i64 [ 152, %bb.b ], [ 168, %bb.c ], [ 168, %bb.d ] ; 2 uses
  %.not44 = icmp eq i32 %i.e, 0
  br i1 %.not44, label %EVP_Cipher.exit, label %iter.check

iter.check:                                       ; preds = %OPENSSL_memset.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.x = add i64 %i.u, %i.b
  %i.y = sub i64 %i.x, %i.a
  %diff.check = icmp ugt i64 %i.y, -32
  %i.z = sub i64 %i.a, %i.b
  %i.aa = add i64 %i.z, -185
  %diff.check51 = icmp ult i64 %i.aa, 31
  %conflict.rdx = or i1 %diff.check, %diff.check51
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check52 = icmp ult i32 %i.e, 32
  br i1 %min.iters.check52, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.f, 28
  %n.vec = and i64 %i.f, 4294967264               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <16 x i8>, ptr %i.ac, align 1, !tbaa !76
  %wide.load53 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load54 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !76
  %wide.load55 = load <16 x i8>, ptr %i.af, align 1, !tbaa !76
  %i.ag = xor <16 x i8> %wide.load54, %wide.load
  %i.ah = xor <16 x i8> %wide.load55, %wide.load53
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <16 x i8> %i.ag, ptr %i.ai, align 1, !tbaa !76
  store <16 x i8> %i.ah, ptr %i.aj, align 1, !tbaa !76
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1600

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec56 = and i64 %i.f, 4294967292             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next60, %vec.epilog.vector.body ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 %index57
  %wide.load58 = load <4 x i8>, ptr %i.al, align 1, !tbaa !76
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 %index57
  %wide.load59 = load <4 x i8>, ptr %i.am, align 1, !tbaa !76
  %i.an = xor <4 x i8> %wide.load59, %wide.load58
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %index57
  store <4 x i8> %i.an, ptr %i.ao, align 1, !tbaa !76
  %index.next60 = add nuw i64 %index57, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next60, %n.vec56
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1601

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n61 = icmp eq i64 %n.vec56, %i.f
  br i1 %cmp.n61, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec56, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.prol
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !76
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.prol
  %i.at = load i8, ptr %i.as, align 1, !tbaa !76
  %i.au = xor i8 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.au, ptr %i.av, align 1, !tbaa !76
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1602

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.aw = sub nsw i64 %indvars.iv.ph, %i.f
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !163   ; 2 uses
  %.not14.i = icmp eq ptr %.pre, null
  br i1 %.not14.i, label %EVP_Cipher.exit.thread, label %EVP_Cipher.exit

EVP_Cipher.exit.thread:                           ; preds = %._crit_edge
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.15, i32 noundef 526) #46
  br label %EVP_Cipher.exit.thread39

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !76
  %i.bc = xor i8 %i.bb, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !76
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !76
  %i.bi = xor i8 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !76
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !76
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !76
  %i.bo = xor i8 %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !76
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !76
  %i.bs = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !76
  %i.bu = xor i8 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !76
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.f
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1603

EVP_Cipher.exit:                                  ; preds = %OPENSSL_memset.exit, %._crit_edge
  %i.bw = phi ptr [ %.pre, %._crit_edge ], [ %i.c, %OPENSSL_memset.exit ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !181
  %i.bz = tail call i32 %i.by(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %1, i64 noundef %i.f) #46, !inline_history !191
  br label %EVP_Cipher.exit.thread39

EVP_Cipher.exit.thread39:                         ; preds = %EVP_Cipher.exit, %bb.a, %EVP_Cipher.exit.thread
  %.03038 = phi i32 [ 0, %EVP_Cipher.exit.thread ], [ 1, %bb.a ], [ %i.bz, %EVP_Cipher.exit ]
  ret i32 %.03038
}

; Function Attrs: nounwind uwtable
define ptr @CMAC_CTX_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OPENSSL_zalloc(i64 noundef 208) #46
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @CMAC_CTX_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !163    ; 2 uses
  %.not11.i.i = icmp eq ptr %i.b, null
  br i1 %.not11.i.i, label %CMAC_CTX_cleanup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.d, null
  br i1 %.not12.i.i, label %CMAC_CTX_cleanup.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.d(ptr noundef nonnull %0) #46, !inline_history !19
  br label %CMAC_CTX_cleanup.exit

CMAC_CTX_cleanup.exit:                            ; preds = %bb.b, %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !166
  tail call void @OPENSSL_free(ptr noundef %i.f) #46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.g, align 8, !tbaa !162
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.h, i64 noundef 16) #46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.i, i64 noundef 16) #46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.j, i64 noundef 16) #46
  tail call void @OPENSSL_free(ptr noundef nonnull %0) #46
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %CMAC_CTX_cleanup.exit
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CMAC_CTX_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
end_hunk_2
begin_hunk_3_@bn_mul_recursive:bb.a
  br i1 %i.dv, label %.lr.ph, label %.loopexit, !llvm.loop !2526

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bn_add_words.exit175, %bb.d, %OPENSSL_memset.exit, %bb.b
  ret void
}

declare void @rsaz_amm52x20_x2_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @extract_multiplier_2x20_win5(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @rsaz_amm52x30_x2_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @extract_multiplier_2x30_win5(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @rsaz_amm52x40_x2_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @extract_multiplier_2x40_win5(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aes_init_key(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166  ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !163
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !169
  %i.f = and i32 %i.e, 63                         ; 4 uses
  %i.g = icmp eq i32 %i.f, 2                      ; 6 uses
  %i.h = add nsw i32 %i.f, -3
  %or.cond = icmp ult i32 %i.h, -2
  %i.i = icmp ne i32 %3, 0
  %or.cond3 = or i1 %i.i, %or.cond
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 3 uses
  %i.k = and i32 %i.j, 33554432
  %.not69 = icmp eq i32 %i.k, 0                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 4 uses
  br i1 %or.cond3, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not69, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !173
  %i.o = shl i32 %i.n, 3
  %i.p = tail call i32 @aes_hw_set_decrypt_key(ptr noundef %1, i32 noundef %i.o, ptr noundef %i.b) #46
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr @aes_hw_decrypt, ptr %i.q, align 8, !tbaa !562
  %spec.store.select = select i1 %i.g, ptr @aes_hw_cbc_encrypt, ptr null
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.r = and i32 %i.j, 512
  %.not68 = icmp eq i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !173
  %i.u = shl i32 %i.t, 3                          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  br i1 %.not68, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call i32 @vpaes_set_decrypt_key(ptr noundef %1, i32 noundef %i.u, ptr noundef %i.b) #46
  store ptr @vpaes_decrypt, ptr %i.v, align 8, !tbaa !562
  %spec.store.select71 = select i1 %i.g, ptr @vpaes_cbc_encrypt, ptr null
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.x = tail call range(i32 0, 2) i32 @aes_nohw_set_encrypt_key(ptr noundef readonly %1, i32 noundef %i.u, ptr noundef %i.b) ; 0 uses
  store ptr @aes_nohw_decrypt, ptr %i.v, align 8, !tbaa !562
  %spec.store.select72 = select i1 %i.g, ptr @aes_nohw_cbc_encrypt, ptr null
  store ptr %spec.store.select72, ptr %i.l, align 8, !tbaa !76
  br label %.thread

bb.g:                                             ; preds = %bb.a
  br i1 %.not69, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !173
  %i.aa = shl i32 %i.z, 3
  %i.ab = tail call i32 @aes_hw_set_encrypt_key(ptr noundef %1, i32 noundef %i.aa, ptr noundef %i.b) #46 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr @aes_hw_encrypt, ptr %i.ac, align 8, !tbaa !562
  store ptr null, ptr %i.l, align 8, !tbaa !76
  br i1 %i.g, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp eq i32 %i.f, 5
  br i1 %i.ad, label %.sink.split, label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.ae = and i32 %i.j, 512
  %.not70 = icmp eq i32 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !173
  %i.ah = shl i32 %i.ag, 3                        ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  br i1 %.not70, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call i32 @vpaes_set_encrypt_key(ptr noundef %1, i32 noundef %i.ah, ptr noundef %i.b) #46
  store ptr @vpaes_encrypt, ptr %i.ai, align 8, !tbaa !562
  %spec.select = select i1 %i.g, ptr @vpaes_cbc_encrypt, ptr null
  %i.ak = icmp eq i32 %i.f, 5
  %spec.store.select74 = select i1 %i.ak, ptr @vpaes_ctr32_encrypt_blocks, ptr %spec.select
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %i.al = tail call i32 @aes_nohw_set_encrypt_key(ptr noundef %1, i32 noundef %i.ah, ptr noundef %i.b) ; 0 uses
  store ptr @aes_nohw_encrypt, ptr %i.ai, align 8, !tbaa !562
  %spec.store.select73 = select i1 %i.g, ptr @aes_nohw_cbc_encrypt, ptr null
  store ptr %spec.store.select73, ptr %i.l, align 8, !tbaa !76
  br label %.thread

.sink.split:                                      ; preds = %bb.i, %bb.h, %bb.c, %bb.e, %bb.k
  %spec.store.select74.sink = phi ptr [ %spec.store.select74, %bb.k ], [ %spec.store.select71, %bb.e ], [ %spec.store.select, %bb.c ], [ @aes_hw_cbc_encrypt, %bb.h ], [ @aes_hw_ctr32_encrypt_blocks, %bb.i ]
  %.0.ph = phi i32 [ %i.aj, %bb.k ], [ %i.w, %bb.e ], [ %i.p, %bb.c ], [ %i.ab, %bb.h ], [ %i.ab, %bb.i ]
  store ptr %spec.store.select74.sink, ptr %i.l, align 8, !tbaa !76
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i
  %.0 = phi i32 [ %i.ab, %bb.i ], [ %.0.ph, %.sink.split ]
  %i.am = icmp slt i32 %.0, 0
  br i1 %i.am, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.61, i32 noundef 180) #46
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.f, %bb.m, %bb.n
  %.066 = phi i32 [ 0, %bb.n ], [ 1, %bb.m ], [ 1, %bb.f ], [ 1, %bb.l ]
  ret i32 %.066
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @aes_cbc_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !171
  tail call void %i.d(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 noundef %i.g) #46
  br label %CRYPTO_cbc128_encrypt.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !171
  %.not21 = icmp eq i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !562  ; 3 uses
  br i1 %.not21, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %CRYPTO_cbc128_encrypt.exit, label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.d
  %i.n = icmp ugt i64 %3, 15
  br i1 %i.n, label %.lr.ph.i, label %iter.check

.lr.ph.i:                                         ; preds = %.preheader44.i, %.lr.ph.i
  %.048.i = phi ptr [ %.04046.i, %.lr.ph.i ], [ %i.j, %.preheader44.i ] ; 2 uses
  %.03947.i = phi ptr [ %i.u, %.lr.ph.i ], [ %2, %.preheader44.i ] ; 3 uses
  %.04046.i = phi ptr [ %i.v, %.lr.ph.i ], [ %1, %.preheader44.i ] ; 8 uses
  %.04145.i = phi i64 [ %i.t, %.lr.ph.i ], [ %3, %.preheader44.i ]
  %.0.copyload.i.i.i = load i64, ptr %.03947.i, align 1
  %.0.copyload.i7.i.i = load i64, ptr %.048.i, align 1
  %i.o = xor i64 %.0.copyload.i7.i.i, %.0.copyload.i.i.i
  store i64 %i.o, ptr %.04046.i, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.04046.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.03947.i, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.048.i, i64 8
  %.0.copyload.i7.1.i.i = load i64, ptr %i.r, align 1
  %i.s = xor i64 %.0.copyload.i7.1.i.i, %.0.copyload.i.1.i.i
  store i64 %i.s, ptr %i.p, align 1
  tail call void %i.l(ptr noundef nonnull %.04046.i, ptr noundef nonnull %.04046.i, ptr noundef nonnull %i.b) #46, !inline_history !2535
  %i.t = add i64 %.04145.i, -16                   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.03947.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04046.i, i64 16 ; 2 uses
  %i.w = icmp ugt i64 %i.t, 15
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !4

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.e, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader44.i
  %.0.lcssa70.i = phi ptr [ %.04046.i, %._crit_edge.i ], [ %i.j, %.preheader44.i ] ; 15 uses
  %.039.lcssa69.i = phi ptr [ %i.u, %._crit_edge.i ], [ %2, %.preheader44.i ] ; 8 uses
  %.040.lcssa68.i = phi ptr [ %i.v, %._crit_edge.i ], [ %1, %.preheader44.i ] ; 18 uses
  %.041.lcssa67.i = phi i64 [ %i.t, %._crit_edge.i ], [ %3, %.preheader44.i ] ; 14 uses
  %.040.lcssa68.i33 = ptrtoaddr ptr %.0.lcssa70.i to i64 ; 2 uses
  %.0.lcssa70.i35 = ptrtoaddr ptr %.040.lcssa68.i to i64 ; 3 uses
  %min.iters.check = icmp ult i64 %.041.lcssa67.i, 4
  br i1 %min.iters.check, label %.preheader43.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.039.lcssa69.i34 = ptrtoaddr ptr %.039.lcssa69.i to i64
  %i.x = sub i64 %.039.lcssa69.i34, %.0.lcssa70.i35
  %diff.check = icmp ugt i64 %i.x, -32
  %i.y = sub i64 %.040.lcssa68.i33, %.0.lcssa70.i35
  %diff.check36 = icmp ugt i64 %i.y, -32
  %conflict.rdx = or i1 %diff.check, %diff.check36
  br i1 %conflict.rdx, label %.preheader43.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check37 = icmp ult i64 %.041.lcssa67.i, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <16 x i8>, ptr %i.z, align 1, !tbaa !76
  %wide.load38 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load39 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !76
  %wide.load40 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !76
  %i.ad = xor <16 x i8> %wide.load39, %wide.load
  %i.ae = xor <16 x i8> %wide.load40, %wide.load38
  %i.af = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <16 x i8> %i.ad, ptr %i.af, align 1, !tbaa !76
  store <16 x i8> %i.ae, ptr %i.ag, align 1, !tbaa !76
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !2529

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec41 = and i64 %.041.lcssa67.i, 12          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %index42
  %wide.load43 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %index42
  %wide.load44 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !76
  %i.aj = xor <4 x i8> %wide.load44, %wide.load43
  %i.ak = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %index42
  store <4 x i8> %i.aj, ptr %i.ak, align 1, !tbaa !76
  %index.next45 = add nuw i64 %index42, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2530

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %.041.lcssa67.i, %n.vec41
  br i1 %cmp.n46, label %iter.check63, label %.preheader43.i.preheader

.preheader43.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.03752.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec41, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.041.lcssa67.i, 3          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader43.i.prol.loopexit, label %.preheader43.i.prol

.preheader43.i.prol:                              ; preds = %.preheader43.i.preheader, %.preheader43.i.prol
  %.03752.i.prol = phi i64 [ %i.as, %.preheader43.i.prol ], [ %.03752.i.ph, %.preheader43.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader43.i.prol ], [ 0, %.preheader43.i.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %.03752.i.prol
  %i.an = load i8, ptr %i.am, align 1, !tbaa !76
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.03752.i.prol
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !76
  %i.aq = xor i8 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.03752.i.prol
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !76
  %i.as = add nuw nsw i64 %.03752.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader43.i.prol.loopexit, label %.preheader43.i.prol, !llvm.loop !2531

.preheader43.i.prol.loopexit:                     ; preds = %.preheader43.i.prol, %.preheader43.i.preheader
  %.03752.i.unr = phi i64 [ %.03752.i.ph, %.preheader43.i.preheader ], [ %i.as, %.preheader43.i.prol ]
  %i.at = sub nsw i64 %.03752.i.ph, %.041.lcssa67.i
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %iter.check63, label %.preheader43.i

.preheader43.i:                                   ; preds = %.preheader43.i.prol.loopexit, %.preheader43.i
  %.03752.i = phi i64 [ %i.bw, %.preheader43.i ], [ %.03752.i.unr, %.preheader43.i.prol.loopexit ] ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %.03752.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !76
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.03752.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !76
  %i.az = xor i8 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.03752.i
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !76
  %i.bb = add nuw nsw i64 %.03752.i, 1            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !76
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.bb
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !76
  %i.bg = xor i8 %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.bb
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !76
  %i.bi = add nuw nsw i64 %.03752.i, 2            ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !76
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.bi
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !76
  %i.bn = xor i8 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.bi
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !76
  %i.bp = add nuw nsw i64 %.03752.i, 3            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.039.lcssa69.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !76
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.bp
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !76
  %i.bu = xor i8 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.bp
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !76
  %i.bw = add nuw nsw i64 %.03752.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bw, %.041.lcssa67.i
  br i1 %exitcond.not.i.3, label %iter.check63, label %.preheader43.i, !llvm.loop !2532

iter.check63:                                     ; preds = %.preheader43.i.prol.loopexit, %.preheader43.i, %vec.epilog.middle.block
  %i.bx = sub nuw nsw i64 16, %.041.lcssa67.i     ; 2 uses
  %min.iters.check49 = icmp ugt i64 %.041.lcssa67.i, 8
  %i.by = sub i64 %.040.lcssa68.i33, %.0.lcssa70.i35
  %diff.check48 = icmp ugt i64 %i.by, -32
  %or.cond = select i1 %min.iters.check49, i1 true, i1 %diff.check48
  br i1 %or.cond, label %.lr.ph54.i.preheader, label %vec.epilog.ph67

vec.epilog.ph67:                                  ; preds = %iter.check63
  %n.vec68 = and i64 %i.bx, 24                    ; 3 uses
  %i.bz = add nuw nsw i64 %.041.lcssa67.i, %n.vec68
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.041.lcssa67.i
  %wide.load71 = load <8 x i8>, ptr %i.ca, align 1, !tbaa !76
  %i.cb = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.041.lcssa67.i
  store <8 x i8> %wide.load71, ptr %i.cb, align 1, !tbaa !76
  %i.cc = icmp eq i64 %n.vec68, 8
  br i1 %i.cc, label %vec.epilog.middle.block73, label %vec.epilog.vector.body69.1

vec.epilog.vector.body69.1:                       ; preds = %vec.epilog.ph67
  %i.cd = add nuw nsw i64 %.041.lcssa67.i, 8      ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.cd
  %wide.load71.1 = load <8 x i8>, ptr %i.ce, align 1, !tbaa !76
  %i.cf = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.cd
  store <8 x i8> %wide.load71.1, ptr %i.cf, align 1, !tbaa !76
  br label %vec.epilog.middle.block73

vec.epilog.middle.block73:                        ; preds = %vec.epilog.vector.body69.1, %vec.epilog.ph67
  %cmp.n74 = icmp eq i64 %i.bx, %n.vec68
  br i1 %cmp.n74, label %._crit_edge55.i, label %.lr.ph54.i.preheader

.lr.ph54.i.preheader:                             ; preds = %iter.check63, %vec.epilog.middle.block73
  %.13853.i.ph = phi i64 [ %.041.lcssa67.i, %iter.check63 ], [ %i.bz, %vec.epilog.middle.block73 ] ; 4 uses
  %i.cg = sub i64 0, %.13853.i.ph
  %xtraiter78 = and i64 %i.cg, 3                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.lr.ph54.i.prol.loopexit, label %.lr.ph54.i.prol

.lr.ph54.i.prol:                                  ; preds = %.lr.ph54.i.preheader, %.lr.ph54.i.prol
  %.13853.i.prol = phi i64 [ %i.ck, %.lr.ph54.i.prol ], [ %.13853.i.ph, %.lr.ph54.i.preheader ] ; 3 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.lr.ph54.i.prol ], [ 0, %.lr.ph54.i.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.13853.i.prol
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !76
  %i.cj = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.13853.i.prol
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !76
  %i.ck = add i64 %.13853.i.prol, 1               ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.lr.ph54.i.prol.loopexit, label %.lr.ph54.i.prol, !llvm.loop !2533

.lr.ph54.i.prol.loopexit:                         ; preds = %.lr.ph54.i.prol, %.lr.ph54.i.preheader
  %.13853.i.unr = phi i64 [ %.13853.i.ph, %.lr.ph54.i.preheader ], [ %i.ck, %.lr.ph54.i.prol ]
  %i.cl = add i64 %.13853.i.ph, -13
  %i.cm = icmp ult i64 %i.cl, 3
  br i1 %i.cm, label %._crit_edge55.i, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.prol.loopexit, %.lr.ph54.i
  %.13853.i = phi i64 [ %i.dc, %.lr.ph54.i ], [ %.13853.i.unr, %.lr.ph54.i.prol.loopexit ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %.13853.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !76
  %i.cp = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %.13853.i
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !76
  %i.cq = add i64 %.13853.i, 1                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !76
  %i.ct = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !76
  %i.cu = add i64 %.13853.i, 2                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !76
  %i.cx = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.cu
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !76
  %i.cy = add i64 %.13853.i, 3                    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa70.i, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !76
  %i.db = getelementptr inbounds nuw i8, ptr %.040.lcssa68.i, i64 %i.cy
  store i8 %i.da, ptr %i.db, align 1, !tbaa !76
  %i.dc = add i64 %.13853.i, 4                    ; 2 uses
  %exitcond60.not.i.3 = icmp eq i64 %i.dc, 16
  br i1 %exitcond60.not.i.3, label %._crit_edge55.i, label %.lr.ph54.i, !llvm.loop !2534

._crit_edge55.i:                                  ; preds = %.lr.ph54.i.prol.loopexit, %.lr.ph54.i, %vec.epilog.middle.block73
  tail call void %i.l(ptr noundef nonnull %.040.lcssa68.i, ptr noundef nonnull %.040.lcssa68.i, ptr noundef nonnull %i.b) #46, !inline_history !2535
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge55.i, %._crit_edge.i
  %.1.i = phi ptr [ %.040.lcssa68.i, %._crit_edge55.i ], [ %.04046.i, %._crit_edge.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(16) %.1.i, i64 16, i1 false)
  br label %CRYPTO_cbc128_encrypt.exit

bb.f:                                             ; preds = %bb.c
  tail call void @CRYPTO_cbc128_decrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j, ptr noundef %i.l)
  br label %CRYPTO_cbc128_encrypt.exit

CRYPTO_cbc128_encrypt.exit:                       ; preds = %bb.e, %bb.d, %bb.f, %bb.b
  ret i32 1
}

declare void @vpaes_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @aes_ctr_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @CRYPTO_ctr128_encrypt_ctr32(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !562
  tail call void @CRYPTO_ctr128_encrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @aes_ofb_cipher(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !562  ; 2 uses
  %i.g = load i32, ptr %i.d, align 8, !tbaa !73   ; 3 uses
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp ne i64 %3, 0
  %i.j = and i1 %i.i, %i.h
  br i1 %i.j, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.a
  %.038.lcssa.i = phi i64 [ %3, %bb.a ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %.036.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %.034.lcssa.i = phi ptr [ %2, %bb.a ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.g, %bb.a ], [ %i.v, %.lr.ph.i ]
  %i.k = icmp ugt i64 %.038.lcssa.i, 15
  br i1 %i.k, label %.lr.ph52.i, label %._crit_edge.i

.lr.ph52.i:                                       ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.b

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.045.i = phi i32 [ %i.v, %.lr.ph.i ], [ %i.g, %bb.a ] ; 2 uses
  %.03444.i = phi ptr [ %i.m, %.lr.ph.i ], [ %2, %bb.a ] ; 2 uses
  %.03643.i = phi ptr [ %i.s, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.03842.i = phi i64 [ %i.t, %.lr.ph.i ], [ %3, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %.03444.i, i64 1 ; 2 uses
  %i.n = load i8, ptr %.03444.i, align 1, !tbaa !76
  %i.o = zext i32 %.045.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !76
  %i.r = xor i8 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %.03643.i, i64 1 ; 2 uses
  store i8 %i.r, ptr %.03643.i, align 1, !tbaa !76
  %i.t = add i64 %.03842.i, -1                    ; 3 uses
  %i.u = add i32 %.045.i, 1
  %i.v = and i32 %i.u, 15                         ; 3 uses
  %i.w = icmp ne i32 %i.v, 0
  %i.x = icmp ne i64 %i.t, 0
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph.i, label %.preheader.i, !llvm.loop !5

bb.b:                                             ; preds = %bb.b, %.lr.ph52.i
  %.13551.i = phi ptr [ %.034.lcssa.i, %.lr.ph52.i ], [ %i.af, %bb.b ] ; 3 uses
  %.13750.i = phi ptr [ %.036.lcssa.i, %.lr.ph52.i ], [ %i.ae, %bb.b ] ; 3 uses
  %.13949.i = phi i64 [ %.038.lcssa.i, %.lr.ph52.i ], [ %i.ad, %bb.b ]
  tail call void %i.f(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #46, !inline_history !2536
  %.0.copyload.i.i.i = load i64, ptr %.13551.i, align 1
  %.0.copyload.i7.i.i = load i64, ptr %i.c, align 4
  %i.z = xor i64 %.0.copyload.i7.i.i, %.0.copyload.i.i.i
  store i64 %i.z, ptr %.13750.i, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.13750.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.13551.i, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.ab, align 1
  %.0.copyload.i7.1.i.i = load i64, ptr %i.l, align 4
  %i.ac = xor i64 %.0.copyload.i7.1.i.i, %.0.copyload.i.1.i.i
  store i64 %i.ac, ptr %i.aa, align 1
  %i.ad = add i64 %.13949.i, -16                  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.13750.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.13551.i, i64 16 ; 2 uses
  %i.ag = icmp ugt i64 %i.ad, 15
  br i1 %i.ag, label %bb.b, label %._crit_edge.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %bb.b, %.preheader.i
  %.139.lcssa.i = phi i64 [ %.038.lcssa.i, %.preheader.i ], [ %i.ad, %bb.b ] ; 5 uses
  %.137.lcssa.i = phi ptr [ %.036.lcssa.i, %.preheader.i ], [ %i.ae, %bb.b ] ; 3 uses
  %.135.lcssa.i = phi ptr [ %.034.lcssa.i, %.preheader.i ], [ %i.af, %bb.b ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ 0, %bb.b ] ; 4 uses
  %.not.i = icmp eq i64 %.139.lcssa.i, 0
  br i1 %.not.i, label %CRYPTO_ofb128_encrypt.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
end_hunk_3
