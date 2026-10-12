Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/rsa_pk1?download=true
inline.NumInlined: 42
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@RSA_padding_check_PKCS1_type_1:bb.a
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 116, ptr noundef nonnull @__func__.RSA_padding_check_PKCS1_type_1) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 109, ptr noundef null) #6
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.p = zext i32 %i.n to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %i.k, i64 %i.p, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o, %bb.n, %bb.l, %.loopexit.thread, %bb.i, %bb.h, %bb.d
  %.030 = phi i32 [ -1, %bb.i ], [ -1, %bb.d ], [ -1, %bb.h ], [ -1, %.loopexit.thread ], [ -1, %bb.l ], [ -1, %bb.n ], [ %i.n, %bb.o ], [ -1, %bb.a ]
  ret i32 %.030
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_rsa_padding_add_PKCS1_type_2_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %2, -11
  %i.b = icmp sgt i32 %4, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 132, ptr noundef nonnull @__func__.ossl_rsa_padding_add_PKCS1_type_2_ex) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 110, ptr noundef null) #6
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %4, 0
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 135, ptr noundef nonnull @__func__.ossl_rsa_padding_add_PKCS1_type_2_ex) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 181, ptr noundef null) #6
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %1, align 1, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  store i8 2, ptr %i.d, align 1, !tbaa !8
  %i.f = add nsw i32 %2, -3
  %i.g = sub i32 %i.f, %4                         ; 3 uses
  %i.h = sext i32 %i.g to i64
  %i.i = tail call i32 @RAND_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.e, i64 noundef %i.h, i32 noundef 0) #6
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %.loopexit, label %.preheader27

.preheader27:                                     ; preds = %bb.e
  %i.k = icmp sgt i32 %i.g, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader27, %.loopexit26
  %.030 = phi ptr [ %i.r, %.loopexit26 ], [ %i.e, %.preheader27 ] ; 4 uses
  %.02329 = phi i32 [ %i.s, %.loopexit26 ], [ 0, %.preheader27 ]
  %i.l = load i8, ptr %.030, align 1, !tbaa !8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.preheader, label %.loopexit26

.preheader:                                       ; preds = %.lr.ph, %bb.f
  %i.n = tail call i32 @RAND_bytes_ex(ptr noundef %0, ptr noundef nonnull %.030, i64 noundef 1, i32 noundef 0) #6
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.p = load i8, ptr %.030, align 1, !tbaa !8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %.preheader, label %.loopexit26, !llvm.loop !15

.loopexit26:                                      ; preds = %bb.f, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.030, i64 1 ; 2 uses
  %i.s = add nuw nsw i32 %.02329, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %.loopexit26, %.preheader27
  %.0.lcssa = phi ptr [ %i.e, %.preheader27 ], [ %i.r, %.loopexit26 ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  store i8 0, ptr %.0.lcssa, align 1, !tbaa !8
  %i.u = zext nneg i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %3, i64 %i.u, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.e, %._crit_edge, %bb.d, %bb.b
  %.024 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %._crit_edge ], [ 0, %bb.e ], [ 0, %.preheader ]
  ret i32 %.024
}

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @RSA_padding_add_PKCS1_type_2(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_rsa_padding_add_PKCS1_type_2_ex(ptr noundef null, ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @RSA_padding_check_PKCS1_type_2(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  %i.b = icmp slt i32 %3, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %3, %4
  %i.d = icmp slt i32 %4, 11
  %or.cond3 = or i1 %i.c, %i.d
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @__func__.RSA_padding_check_PKCS1_type_2) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 159, ptr noundef null) #6
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %4 to i64                  ; 4 uses
  %i.f = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 193) #6 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i32 %4, 1
  %i.h = zext nneg i32 %3 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  %unroll_iter = and i32 %4, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.090112 = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.v, %.lr.ph ] ; 3 uses
  %.092110 = phi i32 [ %3, %.lr.ph.preheader ], [ %i.r, %.lr.ph ] ; 2 uses
  %.093109 = phi ptr [ %i.i, %.lr.ph.preheader ], [ %i.s, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader ], [ %niter.next.1, %.lr.ph ]
  %i.k = icmp ne i32 %.092110, 0                  ; 3 uses
  %.neg107 = sext i1 %i.k to i32
  %i.l = add i32 %.092110, %.neg107               ; 2 uses
  %.neg108 = sext i1 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %.093109, i64 %.neg108 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = select i1 %i.k, i8 %i.n, i8 0
  %i.p = getelementptr inbounds i8, ptr %.090112, i64 -1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !8
  %i.q = icmp ne i32 %i.l, 0                      ; 3 uses
  %.neg107.1 = sext i1 %i.q to i32
  %i.r = add i32 %i.l, %.neg107.1                 ; 2 uses
  %.neg108.1 = sext i1 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 %.neg108.1 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8
  %i.u = select i1 %i.q, i8 %i.t, i8 0            ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.090112, i64 -2 ; 5 uses
  store i8 %i.u, ptr %i.v, align 1, !tbaa !8
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph117.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !17

.lr.ph117.preheader.unr-lcssa:                    ; preds = %.lr.ph
  %i.w = getelementptr inbounds i8, ptr %.090112, i64 -1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph117.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph117.preheader.unr-lcssa
  %lcmp.mod176 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod176)
  %i.x = icmp ne i32 %i.r, 0                      ; 2 uses
  %.neg108.epil = sext i1 %i.x to i64
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 %.neg108.epil
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = select i1 %i.x, i8 %i.z, i8 0           ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.v, i64 -1 ; 2 uses
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !8
  br label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %.lr.ph117.preheader.unr-lcssa, %.lr.ph.epil.preheader
  %.090112.lcssa = phi ptr [ %i.w, %.lr.ph117.preheader.unr-lcssa ], [ %i.v, %.lr.ph.epil.preheader ] ; 2 uses
  %.lcssa172 = phi i8 [ %i.u, %.lr.ph117.preheader.unr-lcssa ], [ %i.aa, %.lr.ph.epil.preheader ]
  %.lcssa171 = phi ptr [ %i.v, %.lr.ph117.preheader.unr-lcssa ], [ %i.ab, %.lr.ph.epil.preheader ] ; 11 uses
  %i.ac = icmp ne i8 %.lcssa172, 0
  %i.ad = load i8, ptr %.090112.lcssa, align 1, !tbaa !8
  %i.ae = icmp ne i8 %i.ad, 2
  %.not106 = or i1 %i.ac, %i.ae
  br label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %.lr.ph117
  %indvars.iv = phi i64 [ 2, %.lr.ph117.preheader ], [ %indvars.iv.next, %.lr.ph117 ] ; 3 uses
  %.088115 = phi i32 [ 0, %.lr.ph117.preheader ], [ %i.aq, %.lr.ph117 ]
  %.089114 = phi i32 [ 0, %.lr.ph117.preheader ], [ %i.ar, %.lr.ph117 ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.lcssa171, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = icmp eq i8 %i.ag, 0                     ; 2 uses
  %i.ai = xor i32 %.089114, -1
  %i.aj = select i1 %i.ah, i32 %i.ai, i32 0       ; 2 uses
  %i.ak = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.aj) #7, !srcloc !10
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = and i32 %i.ak, %i.al
  %i.an = xor i32 %i.aj, -1
  %i.ao = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.an) #7, !srcloc !10
  %i.ap = and i32 %i.ao, %.088115                 ; 2 uses
  %i.aq = or i32 %i.ap, %i.am                     ; 4 uses
  %i.ar = select i1 %i.ah, i32 -1, i32 %.089114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond132.not, label %._crit_edge118, label %.lr.ph117, !llvm.loop !18

._crit_edge118:                                   ; preds = %.lr.ph117
  %i.as = sub i32 9, %i.aq
  %i.at = or i32 %i.as, %i.ap
  %.lobit = ashr i32 %i.at, 31
  %.neg = xor i32 %i.aq, -1
  %i.au = add i32 %4, %.neg                       ; 6 uses
  %i.av = xor i32 %i.au, %1
  %i.aw = sub i32 %1, %i.au
  %i.ax = xor i32 %i.aw, %i.au
  %i.ay = or i32 %i.ax, %i.av
  %i.az = xor i32 %i.ay, %1
  %isnotneg.i101.inv = icmp slt i32 %i.az, 0
  %i.ba = select i1 %isnotneg.i101.inv, i1 true, i1 %.not106
  %i.bb = select i1 %i.ba, i32 0, i32 %.lobit     ; 4 uses
  %i.bc = add nsw i32 %4, -11                     ; 3 uses
  %i.bd = sub nsw i32 %i.bc, %1
  %i.be = sub nsw i32 10, %4
  %i.bf = and i32 %i.bd, %i.be
  %.neg.i.i102 = ashr i32 %i.bf, 31               ; 2 uses
  %i.bg = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.neg.i.i102) #7, !srcloc !10
  %i.bh = and i32 %i.bg, %i.bc
  %i.bi = xor i32 %.neg.i.i102, -1
  %i.bj = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bi) #7, !srcloc !10
  %i.bk = and i32 %i.bj, %1
  %i.bl = or i32 %i.bk, %i.bh                     ; 2 uses
  %i.bm = icmp samesign ugt i32 %4, 12
  br i1 %i.bm, label %.lr.ph126, label %.preheader

.lr.ph126:                                        ; preds = %._crit_edge118
  %i.bn = add i32 %i.aq, -10
  %i.bo = getelementptr i8, ptr %.090112.lcssa, i64 10 ; 2 uses
  br label %bb.e

.preheader:                                       ; preds = %._crit_edge123, %._crit_edge118
  %i.bp = icmp sgt i32 %i.bl, 0
  br i1 %i.bp, label %.lr.ph128, label %._crit_edge129

.lr.ph128:                                        ; preds = %.preheader
  %i.bq = and i32 %i.bb, 255
  %wide.trip.count141 = zext nneg i32 %i.bl to i64
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph126, %._crit_edge123
  %.087124 = phi i32 [ 1, %.lr.ph126 ], [ %i.ec, %._crit_edge123 ] ; 4 uses
  %i.br = sub nsw i32 %4, %.087124                ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 11
  br i1 %i.bs, label %iter.check, label %._crit_edge123

iter.check:                                       ; preds = %bb.e
  %i.bt = and i32 %.087124, %i.bn
  %.not = icmp eq i32 %i.bt, 0
  %i.bu = select i1 %.not, i32 0, i32 255         ; 2 uses
  %i.bv = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bu) #7, !srcloc !10 ; 5 uses
  %i.bw = xor i32 %i.bu, -1
  %i.bx = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bw) #7, !srcloc !10 ; 5 uses
  %i.by = sext i32 %.087124 to i64                ; 3 uses
  %wide.trip.count136 = zext nneg i32 %i.br to i64 ; 6 uses
  %invariant.gep = getelementptr i8, ptr %.lcssa171, i64 %i.by ; 5 uses
  %i.bz = add nsw i64 %wide.trip.count136, -11    ; 7 uses
  %min.iters.check = icmp ult i64 %i.bz, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.lcssa171, i64 %wide.trip.count136
  %scevgep154 = getelementptr i8, ptr %i.bo, i64 %i.by
  %i.ca = getelementptr i8, ptr %.lcssa171, i64 %i.by
  %scevgep155 = getelementptr i8, ptr %i.ca, i64 %wide.trip.count136
  %bound0 = icmp ult ptr %i.bo, %scevgep155
  %bound1 = icmp ult ptr %scevgep154, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check156 = icmp ult i64 %i.bz, 16
  br i1 %min.iters.check156, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cb = and i64 %i.bz, 12
  %n.vec = and i64 %i.bz, -16                     ; 4 uses
  %i.cc = or disjoint i64 %n.vec, 11
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert157 = insertelement <16 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat158 = shufflevector <16 x i32> %broadcast.splatinsert157, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = or disjoint i64 %index, 11              ; 2 uses
  %i.ce = getelementptr i8, ptr %invariant.gep, i64 %i.cd
  %wide.load = load <16 x i8>, ptr %i.ce, align 1, !tbaa !8, !alias.scope !27
  %i.cf = getelementptr inbounds nuw i8, ptr %.lcssa171, i64 %i.cd ; 2 uses
  %wide.load159 = load <16 x i8>, ptr %i.cf, align 1, !tbaa !8, !alias.scope !28, !noalias !27
  %i.cg = zext <16 x i8> %wide.load to <16 x i32>
  %i.ch = zext <16 x i8> %wide.load159 to <16 x i32>
  %i.ci = and <16 x i32> %broadcast.splat, %i.cg
  %i.cj = and <16 x i32> %broadcast.splat158, %i.ch
  %i.ck = or <16 x i32> %i.cj, %i.ci
  %i.cl = trunc nuw <16 x i32> %i.ck to <16 x i8>
  store <16 x i8> %i.cl, ptr %i.cf, align 1, !tbaa !8, !alias.scope !28, !noalias !27
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %._crit_edge123, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec160 = and i64 %i.bz, -4                   ; 3 uses
  %i.cn = add nsw i64 %n.vec160, 11
  %broadcast.splatinsert161 = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat162 = shufflevector <4 x i32> %broadcast.splatinsert161, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert163 = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat164 = shufflevector <4 x i32> %broadcast.splatinsert163, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index165 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next168, %vec.epilog.vector.body ] ; 2 uses
  %i.co = add nuw i64 %index165, 11               ; 2 uses
  %i.cp = getelementptr i8, ptr %invariant.gep, i64 %i.co
  %wide.load166 = load <4 x i8>, ptr %i.cp, align 1, !tbaa !8, !alias.scope !27
  %i.cq = getelementptr inbounds nuw i8, ptr %.lcssa171, i64 %i.co ; 2 uses
  %wide.load167 = load <4 x i8>, ptr %i.cq, align 1, !tbaa !8, !alias.scope !28, !noalias !27
  %i.cr = zext <4 x i8> %wide.load166 to <4 x i32>
  %i.cs = zext <4 x i8> %wide.load167 to <4 x i32>
  %i.ct = and <4 x i32> %broadcast.splat162, %i.cr
  %i.cu = and <4 x i32> %broadcast.splat164, %i.cs
  %i.cv = or <4 x i32> %i.cu, %i.ct
  %i.cw = trunc nuw <4 x i32> %i.cv to <4 x i8>
  store <4 x i8> %i.cw, ptr %i.cq, align 1, !tbaa !8, !alias.scope !28, !noalias !27
  %index.next168 = add nuw i64 %index165, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next168, %n.vec160
  br i1 %i.cx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n169 = icmp eq i64 %i.bz, %n.vec160
  br i1 %cmp.n169, label %._crit_edge123, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv133.ph = phi i64 [ 11, %iter.check ], [ 11, %vector.memcheck ], [ %i.cc, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ] ; 6 uses
  %i.cy = sub nsw i64 %wide.trip.count136, %indvars.iv133.ph
  %xtraiter177 = and i64 %i.cy, 1
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv133.ph
  %i.cz = load i8, ptr %gep.prol, align 1, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %.lcssa171, i64 %indvars.iv133.ph ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !8
  %i.dc = zext i8 %i.cz to i32
  %i.dd = zext i8 %i.db to i32
  %i.de = and i32 %i.bv, %i.dc
  %i.df = and i32 %i.bx, %i.dd
  %i.dg = or i32 %i.df, %i.de
  %i.dh = trunc nuw i32 %i.dg to i8
  store i8 %i.dh, ptr %i.da, align 1, !tbaa !8
  %indvars.iv.next134.prol = add nuw nsw i64 %indvars.iv133.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv133.unr = phi i64 [ %indvars.iv133.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next134.prol, %vec.epilog.scalar.ph.prol ]
  %i.di = add nsw i64 %wide.trip.count136, -1
  %i.dj = icmp eq i64 %indvars.iv133.ph, %i.di
  br i1 %i.dj, label %._crit_edge123, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv133 = phi i64 [ %indvars.iv.next134.1, %vec.epilog.scalar.ph ], [ %indvars.iv133.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv133
  %i.dk = load i8, ptr %gep, align 1, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %.lcssa171, i64 %indvars.iv133 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !8
  %i.dn = zext i8 %i.dk to i32
  %i.do = zext i8 %i.dm to i32
  %i.dp = and i32 %i.bv, %i.dn
  %i.dq = and i32 %i.bx, %i.do
  %i.dr = or i32 %i.dq, %i.dp
  %i.ds = trunc nuw i32 %i.dr to i8
  store i8 %i.ds, ptr %i.dl, align 1, !tbaa !8
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next134
  %i.dt = load i8, ptr %gep.1, align 1, !tbaa !8
  %i.du = getelementptr inbounds nuw i8, ptr %.lcssa171, i64 %indvars.iv.next134 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !8
  %i.dw = zext i8 %i.dt to i32
  %i.dx = zext i8 %i.dv to i32
  %i.dy = and i32 %i.bv, %i.dw
  %i.dz = and i32 %i.bx, %i.dx
  %i.ea = or i32 %i.dz, %i.dy
  %i.eb = trunc nuw i32 %i.ea to i8
  store i8 %i.eb, ptr %i.du, align 1, !tbaa !8
  %indvars.iv.next134.1 = add nuw nsw i64 %indvars.iv133, 2 ; 2 uses
  %exitcond137.not.1 = icmp eq i64 %indvars.iv.next134.1, %wide.trip.count136
  br i1 %exitcond137.not.1, label %._crit_edge123, label %vec.epilog.scalar.ph, !llvm.loop !24

._crit_edge123:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e
  %i.ec = shl i32 %.087124, 1                     ; 2 uses
end_hunk_0
