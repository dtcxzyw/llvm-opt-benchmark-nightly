Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/rsa_pk1?download=true
inline.NumInlined: 42
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@RSA_padding_check_PKCS1_type_2:bb.a
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
  %i.ed = icmp slt i32 %i.ec, %i.bc
  br i1 %i.ed, label %bb.e, label %.preheader, !llvm.loop !25

bb.f:                                             ; preds = %.lr.ph128, %bb.f
  %indvars.iv138 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next139, %bb.f ] ; 4 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv138 to i32
  %i.ef = sub i32 %i.ee, %i.au
  %i.eg = or i32 %i.ef, %i.au
  %isneg = icmp slt i32 %i.eg, 0
  %i.eh = getelementptr inbounds nuw i8, ptr %.lcssa171, i64 %indvars.iv138
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 11
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv138 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !8
  %i.em = select i1 %isneg, i32 %i.bq, i32 0      ; 2 uses
  %i.en = zext i8 %i.ej to i32
  %i.eo = zext i8 %i.el to i32
  %i.ep = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.em) #7, !srcloc !10
  %i.eq = and i32 %i.ep, %i.en
  %i.er = xor i32 %i.em, -1
  %i.es = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.er) #7, !srcloc !10
  %i.et = and i32 %i.es, %i.eo
  %i.eu = or i32 %i.et, %i.eq
  %i.ev = trunc nuw i32 %i.eu to i8
  store i8 %i.ev, ptr %i.ek, align 1, !tbaa !8
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %._crit_edge129, label %bb.f, !llvm.loop !26

._crit_edge129:                                   ; preds = %bb.f, %.preheader
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %.lcssa171, i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 263) #6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 270, ptr noundef nonnull @__func__.RSA_padding_check_PKCS1_type_2) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 159, ptr noundef null) #6
  %i.ew = and i32 %i.bb, 1
  tail call void @err_clear_last_constant_time(i32 noundef %i.ew) #6
  %i.ex = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bb) #7, !srcloc !10
  %i.ey = and i32 %i.ex, %i.au
  %i.ez = xor i32 %i.bb, -1
  %i.fa = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ez) #7, !srcloc !10
  %i.fb = or i32 %i.fa, %i.ey
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.a, %._crit_edge129, %bb.c
  %.0 = phi i32 [ %i.fb, %._crit_edge129 ], [ -1, %bb.c ], [ -1, %bb.a ], [ -1, %bb.d ]
  ret i32 %.0
}

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @err_clear_last_constant_time(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @ossl_rsa_padding_check_PKCS1_type_2(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = icmp ne i32 %5, %4
  %i.e = icmp slt i32 %2, 1
  %or.cond = or i1 %i.e, %i.d
  %i.f = icmp slt i32 %4, 1
  %or.cond3 = or i1 %i.f, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 419, ptr noundef nonnull @__func__.ossl_rsa_padding_check_PKCS1_type_2) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %5 to i64                       ; 2 uses
  %i.h = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.g, ptr noundef nonnull @.str, i32 noundef 424) #6 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 426, ptr noundef nonnull @__func__.ossl_rsa_padding_check_PKCS1_type_2) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, ptr noundef null) #6
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %.tr = trunc i32 %5 to i16
  %i.j = shl i16 %.tr, 3
  %i.k = tail call fastcc i32 @ossl_rsa_prf(ptr noundef %0, ptr noundef %i.h, i32 noundef %5, ptr noundef nonnull @.str.1, i32 noundef 7, ptr noundef %6, i16 noundef zeroext %i.j)
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call fastcc i32 @ossl_rsa_prf(ptr noundef %0, ptr noundef %i.c, i32 noundef 256, ptr noundef nonnull @.str.2, i32 noundef 6, ptr noundef %6, i16 noundef zeroext 2048)
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = add nuw i32 %5, 65526
  %i.p = and i32 %i.o, 65535                      ; 3 uses
  %i.q = lshr i32 %i.p, 1
  %i.r = or i32 %i.q, %i.p                        ; 2 uses
  %i.s = lshr i32 %i.r, 2
  %i.t = or i32 %i.s, %i.r                        ; 2 uses
  %i.u = lshr i32 %i.t, 4
  %i.v = or i32 %i.u, %i.t                        ; 2 uses
  %i.w = lshr i32 %i.v, 8
  %i.x = or i32 %i.w, %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.08497 = phi i32 [ 0, %bb.g ], [ %i.an, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.z = load i8, ptr %i.y, align 2, !tbaa !8
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = getelementptr i8, ptr %i.y, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  %i.ag = and i32 %i.af, %i.x                     ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ag, %i.p
  %.neg.i.i = sext i1 %i.ah to i32                ; 2 uses
  %i.ai = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.neg.i.i) #7, !srcloc !10
  %i.aj = and i32 %i.ag, %i.ai
  %i.ak = xor i32 %.neg.i.i, -1
  %i.al = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ak) #7, !srcloc !10
  %i.am = and i32 %i.al, %.08497
  %i.an = or i32 %i.aj, %i.am                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.ao = icmp samesign ult i64 %indvars.iv, 254
  br i1 %i.ao, label %bb.h, label %bb.i, !llvm.loop !29

bb.i:                                             ; preds = %bb.h
  %i.ap = sub nsw i32 %5, %i.an
  %i.aq = load i8, ptr %3, align 1, !tbaa !8
  %i.ar = icmp ne i8 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8
  %i.au = icmp ne i8 %i.at, 2
  %.not96 = or i1 %i.ar, %i.au
  %i.av = icmp sgt i32 %5, 2
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %.lr.ph ], [ 2, %bb.i ] ; 3 uses
  %.079101 = phi i32 [ %i.bh, %.lr.ph ], [ 0, %bb.i ]
  %.080100 = phi i32 [ %i.bi, %.lr.ph ], [ 0, %bb.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv110
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8
  %i.ay = icmp eq i8 %i.ax, 0                     ; 2 uses
  %i.az = xor i32 %.080100, -1
  %i.ba = select i1 %i.ay, i32 %i.az, i32 0       ; 2 uses
  %i.bb = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ba) #7, !srcloc !10
  %i.bc = trunc nuw nsw i64 %indvars.iv110 to i32
  %i.bd = and i32 %i.bb, %i.bc
  %i.be = xor i32 %i.ba, -1
  %i.bf = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.be) #7, !srcloc !10
  %i.bg = and i32 %i.bf, %.079101
  %i.bh = or i32 %i.bg, %i.bd                     ; 2 uses
  %i.bi = select i1 %i.ay, i32 -1, i32 %.080100
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next111, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.i
  %.079.lcssa = phi i32 [ 0, %bb.i ], [ %i.bh, %.lr.ph ] ; 3 uses
  %i.bj = sub i32 9, %.079.lcssa
  %i.bk = or i32 %i.bj, %.079.lcssa
  %.lobit = ashr i32 %i.bk, 31
  %i.bl = add nsw i32 %.079.lcssa, 1              ; 2 uses
  %i.bm = sub nsw i32 %5, %i.bl                   ; 3 uses
  %i.bn = xor i32 %i.bm, %2
  %i.bo = sub i32 %2, %i.bm
  %i.bp = xor i32 %i.bo, %i.bm
  %i.bq = or i32 %i.bp, %i.bn
  %i.br = xor i32 %i.bq, %2
  %isnotneg.i91.inv = icmp slt i32 %i.br, 0
  %i.bs = select i1 %isnotneg.i91.inv, i1 true, i1 %.not96
  %i.bt = select i1 %i.bs, i32 0, i32 %.lobit     ; 3 uses
  %i.bu = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bt) #7, !srcloc !10
  %i.bv = and i32 %i.bu, %i.bl
  %i.bw = xor i32 %i.bt, -1
  %i.bx = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bw) #7, !srcloc !10
  %i.by = and i32 %i.bx, %i.ap
  %i.bz = or i32 %i.by, %i.bv                     ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %5
  br i1 %i.ca, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %._crit_edge
  %i.cb = and i32 %i.bt, 255                      ; 2 uses
  %i.cc = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cb) #7, !srcloc !10 ; 3 uses
  %i.cd = xor i32 %i.cb, -1
  %i.ce = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cd) #7, !srcloc !10 ; 3 uses
  %i.cf = zext nneg i32 %2 to i64                 ; 2 uses
  %i.cg = sext i32 %i.bz to i64                   ; 8 uses
  %i.ch = sext i32 %5 to i64                      ; 2 uses
  %i.ci = xor i64 %i.cg, -1
  %i.cj = add nsw i64 %i.ci, %i.ch
  %i.ck = call i64 @llvm.usub.sat.i64(i64 %i.cf, i64 1)
  %umin = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.ck) ; 3 uses
  %i.cl = add nuw nsw i64 %umin, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cm = add i64 %i.b, %i.cg
  %i.cn = sub i64 %i.cm, %i.a
  %diff.check = icmp ugt i64 %i.cn, -16
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check126 = icmp samesign ult i64 %umin, 15
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.co = and i64 %i.cl, 12
  %n.vec = and i64 %i.cl, 4294967280              ; 6 uses
  %i.cp = add nsw i64 %n.vec, %i.cg
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.cc, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert127 = insertelement <16 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat128 = shufflevector <16 x i32> %broadcast.splatinsert127, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cq = add i64 %index, %i.cg                   ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %3, i64 %i.cq
  %wide.load = load <16 x i8>, ptr %i.cr, align 1, !tbaa !8
  %i.cs = getelementptr inbounds i8, ptr %i.h, i64 %i.cq
  %wide.load129 = load <16 x i8>, ptr %i.cs, align 1, !tbaa !8
  %i.ct = zext <16 x i8> %wide.load to <16 x i32>
  %i.cu = zext <16 x i8> %wide.load129 to <16 x i32>
  %i.cv = and <16 x i32> %broadcast.splat, %i.ct
  %i.cw = and <16 x i32> %broadcast.splat128, %i.cu
  %i.cx = or <16 x i32> %i.cw, %i.cv
  %i.cy = trunc nuw <16 x i32> %i.cx to <16 x i8>
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 %index
  store <16 x i8> %i.cy, ptr %i.cz, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.co, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec130 = and i64 %i.cl, 4294967292           ; 5 uses
  %i.db = add nsw i64 %n.vec130, %i.cg
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert133 = insertelement <4 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat134 = shufflevector <4 x i32> %broadcast.splatinsert133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %vec.epilog.vector.body ] ; 3 uses
  %i.dc = add i64 %index135, %i.cg                ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %3, i64 %i.dc
  %wide.load136 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !8
  %i.de = getelementptr inbounds i8, ptr %i.h, i64 %i.dc
  %wide.load137 = load <4 x i8>, ptr %i.de, align 1, !tbaa !8
  %i.df = zext <4 x i8> %wide.load136 to <4 x i32>
  %i.dg = zext <4 x i8> %wide.load137 to <4 x i32>
  %i.dh = and <4 x i32> %broadcast.splat132, %i.df
  %i.di = and <4 x i32> %broadcast.splat134, %i.dg
  %i.dj = or <4 x i32> %i.di, %i.dh
  %i.dk = trunc nuw <4 x i32> %i.dj to <4 x i8>
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 %index135
  store <4 x i8> %i.dk, ptr %i.dl, align 1, !tbaa !8
  %index.next138 = add nuw i64 %index135, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next138, %n.vec130
  br i1 %i.dm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n139 = icmp eq i64 %i.cl, %n.vec130
  br i1 %cmp.n139, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv115.ph = phi i64 [ %i.cg, %iter.check ], [ %i.cg, %vector.memcheck ], [ %i.cp, %vec.epilog.iter.check ], [ %i.db, %vec.epilog.middle.block ]
  %indvars.iv113.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec130, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %vec.epilog.scalar.ph ], [ %indvars.iv115.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %vec.epilog.scalar.ph ], [ %indvars.iv113.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %3, i64 %indvars.iv115
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !8
  %i.dp = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv115
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !8
  %i.dr = zext i8 %i.do to i32
  %i.ds = zext i8 %i.dq to i32
  %i.dt = and i32 %i.cc, %i.dr
  %i.du = and i32 %i.ce, %i.ds
  %i.dv = or i32 %i.du, %i.dt
  %i.dw = trunc nuw i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv113
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !8
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, 1 ; 2 uses
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 3 uses
  %i.dy = icmp slt i64 %indvars.iv.next116, %i.ch
  %i.dz = icmp samesign ult i64 %indvars.iv.next114, %i.cf
  %i.ea = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %i.ea, label %vec.epilog.scalar.ph, label %.loopexit.loopexit, !llvm.loop !33

bb.j:                                             ; preds = %bb.e, %bb.f
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 520, ptr noundef nonnull @__func__.ossl_rsa_padding_check_PKCS1_type_2) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next114.lcssa = phi i64 [ %n.vec130, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %indvars.iv.next114, %vec.epilog.scalar.ph ]
  %i.eb = trunc nuw nsw i64 %indvars.iv.next114.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge, %bb.j
  %.08393 = phi i32 [ -1, %bb.j ], [ 0, %._crit_edge ], [ %i.eb, %.loopexit.loopexit ]
  call void @CRYPTO_free(ptr noundef nonnull %i.h, ptr noundef nonnull @.str, i32 noundef 521) #6
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ %.08393, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @ossl_rsa_prf(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 1, -2147483648) %2, ptr noundef %3, i32 noundef range(i32 6, 8) %4, ptr noundef %5, i16 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.e = shl nuw nsw i32 %2, 3
  %i.f = zext i16 %6 to i32
  %.not = icmp eq i32 %i.e, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 294, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.g = lshr i16 %6, 8
  %i.h = trunc nuw i16 %i.g to i8
  store i8 %i.h, ptr %i.b, align 1, !tbaa !8
  %i.i = trunc i16 %6 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !8
  %i.k = tail call ptr @HMAC_CTX_new() #6         ; 9 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 303, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.m = tail call ptr @EVP_MD_fetch(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef null) #6 ; 10 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 316, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.o = tail call i32 @HMAC_Init_ex(ptr noundef nonnull %i.k, ptr noundef %5, i32 noundef 32, ptr noundef nonnull %i.m, ptr noundef null) #6
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.r = zext nneg i32 %4 to i64
  %i.s = zext nneg i32 %2 to i64                  ; 3 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 321, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

bb.i:                                             ; preds = %.preheader, %bb.w
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.w ] ; 4 uses
  %.03645 = phi i16 [ 0, %.preheader ], [ %i.am, %bb.w ] ; 3 uses
  %i.t = call i32 @HMAC_Init_ex(ptr noundef nonnull %i.k, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %bb.j, label %bb.k

end_hunk_0
