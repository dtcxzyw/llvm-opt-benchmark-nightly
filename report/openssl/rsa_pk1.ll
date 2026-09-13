Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/rsa_pk1?download=true
inline.NumInlined: 42
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@RSA_padding_check_PKCS1_type_2:bb.a
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
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %1 to i64
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
  %7 = add nsw i64 %i.cf, -1
  %umin = call i64 @llvm.umin.i64(i64 %i.cj, i64 %7)
  %i.ck = add nsw i64 %umin, 1                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.ck, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cl = add i64 %i.a, %i.cg
  %i.cm = sub i64 %i.cl, %i.b
  %diff.check = icmp ugt i64 %i.cm, -16
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check126 = icmp ult i64 %i.ck, 16
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cn = and i64 %i.ck, 12
  %n.vec = and i64 %i.ck, -16                     ; 6 uses
  %i.co = add i64 %n.vec, %i.cg
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.cc, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert127 = insertelement <16 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat128 = shufflevector <16 x i32> %broadcast.splatinsert127, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = add i64 %index, %i.cg                   ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %3, i64 %i.cp
  %wide.load = load <16 x i8>, ptr %i.cq, align 1, !tbaa !8
  %i.cr = getelementptr inbounds i8, ptr %i.h, i64 %i.cp
  %wide.load129 = load <16 x i8>, ptr %i.cr, align 1, !tbaa !8
  %i.cs = zext <16 x i8> %wide.load to <16 x i32>
  %i.ct = zext <16 x i8> %wide.load129 to <16 x i32>
  %i.cu = and <16 x i32> %broadcast.splat, %i.cs
  %i.cv = and <16 x i32> %broadcast.splat128, %i.ct
  %i.cw = or <16 x i32> %i.cv, %i.cu
  %i.cx = trunc nuw <16 x i32> %i.cw to <16 x i8>
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %index
  store <16 x i8> %i.cx, ptr %i.cy, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cn, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec130 = and i64 %i.ck, -4                   ; 5 uses
  %i.da = add i64 %n.vec130, %i.cg
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert133 = insertelement <4 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat134 = shufflevector <4 x i32> %broadcast.splatinsert133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %vec.epilog.vector.body ] ; 3 uses
  %i.db = add i64 %index135, %i.cg                ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %3, i64 %i.db
  %wide.load136 = load <4 x i8>, ptr %i.dc, align 1, !tbaa !8
  %i.dd = getelementptr inbounds i8, ptr %i.h, i64 %i.db
  %wide.load137 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !8
  %i.de = zext <4 x i8> %wide.load136 to <4 x i32>
  %i.df = zext <4 x i8> %wide.load137 to <4 x i32>
  %i.dg = and <4 x i32> %broadcast.splat132, %i.de
  %i.dh = and <4 x i32> %broadcast.splat134, %i.df
  %i.di = or <4 x i32> %i.dh, %i.dg
  %i.dj = trunc nuw <4 x i32> %i.di to <4 x i8>
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %index135
  store <4 x i8> %i.dj, ptr %i.dk, align 1, !tbaa !8
  %index.next138 = add nuw i64 %index135, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next138, %n.vec130
  br i1 %i.dl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n139 = icmp eq i64 %i.ck, %n.vec130
  br i1 %cmp.n139, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv115.ph = phi i64 [ %i.cg, %iter.check ], [ %i.cg, %vector.memcheck ], [ %i.co, %vec.epilog.iter.check ], [ %i.da, %vec.epilog.middle.block ]
  %indvars.iv113.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec130, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %vec.epilog.scalar.ph ], [ %indvars.iv115.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %vec.epilog.scalar.ph ], [ %indvars.iv113.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %3, i64 %indvars.iv115
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !8
  %i.do = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv115
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !8
  %i.dq = zext i8 %i.dn to i32
  %i.dr = zext i8 %i.dp to i32
  %i.ds = and i32 %i.cc, %i.dq
  %i.dt = and i32 %i.ce, %i.dr
  %i.du = or i32 %i.dt, %i.ds
  %i.dv = trunc nuw i32 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv113
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !8
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, 1 ; 2 uses
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 3 uses
  %i.dx = icmp slt i64 %indvars.iv.next116, %i.ch
  %i.dy = icmp samesign ult i64 %indvars.iv.next114, %i.cf
  %i.dz = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %i.dz, label %vec.epilog.scalar.ph, label %.loopexit.loopexit, !llvm.loop !33

bb.j:                                             ; preds = %bb.e, %bb.f
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 520, ptr noundef nonnull @__func__.ossl_rsa_padding_check_PKCS1_type_2) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next114.lcssa = phi i64 [ %n.vec130, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %indvars.iv.next114, %vec.epilog.scalar.ph ]
  %i.ea = trunc nuw nsw i64 %indvars.iv.next114.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge, %bb.j
  %.08393 = phi i32 [ -1, %bb.j ], [ 0, %._crit_edge ], [ %i.ea, %.loopexit.loopexit ]
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

bb.j:                                             ; preds = %bb.i
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 327, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.v = lshr i16 %.03645, 8
  %i.w = trunc nuw i16 %i.v to i8
  store i8 %i.w, ptr %i.a, align 1, !tbaa !8
  %i.x = trunc i16 %.03645 to i8
  store i8 %i.x, ptr %i.q, align 1, !tbaa !8
  %i.y = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, i64 noundef 2) #6
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 335, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.aa = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef %3, i64 noundef %i.r) #6
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 339, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.ac = call i32 @HMAC_Update(ptr noundef nonnull %i.k, ptr noundef nonnull %i.b, i64 noundef 2) #6
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 343, ptr noundef nonnull @__func__.ossl_rsa_prf) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #6
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  store i32 32, ptr %i.d, align 4, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 3 uses
  %i.ae = icmp samesign ugt i64 %indvars.iv.next, %i.s
end_hunk_0
begin_hunk_1_@ossl_rsa_padding_check_PKCS1_type_2_TLS:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.y, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi63 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.ah, %vector.body ]
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %wide.load = load <4 x i8>, ptr %i.aa, align 1, !tbaa !8
  %wide.load64 = load <4 x i8>, ptr %i.ab, align 1, !tbaa !8
  %i.ac = icmp eq <4 x i8> %wide.load, zeroinitializer
  %i.ad = icmp eq <4 x i8> %wide.load64, zeroinitializer
  %i.ae = select <4 x i1> %i.ac, <4 x i32> splat (i32 -256), <4 x i32> splat (i32 -1)
  %i.af = select <4 x i1> %i.ad, <4 x i32> splat (i32 -256), <4 x i32> splat (i32 -1)
  %i.ag = and <4 x i32> %i.ae, %vec.phi           ; 2 uses
  %i.ah = and <4 x i32> %i.af, %vec.phi63         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <4 x i32> %i.ah, %i.ag
  %i.aj = call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader77

.lr.ph.preheader77:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ 2, %vector.scevcheck ], [ 2, %.lr.ph.preheader ], [ %i.v, %middle.block ]
  %.04556.ph = phi i32 [ %i.o, %vector.scevcheck ], [ %i.o, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  %.04655.ph = phi i32 [ 2, %vector.scevcheck ], [ 2, %.lr.ph.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader77, %.lr.ph
  %i.ak = phi i64 [ %i.ar, %.lr.ph ], [ %.ph, %.lr.ph.preheader77 ]
  %.04556 = phi i32 [ %i.ap, %.lr.ph ], [ %.04556.ph, %.lr.ph.preheader77 ]
  %.04655 = phi i32 [ %i.aq, %.lr.ph ], [ %.04655.ph, %.lr.ph.preheader77 ]
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %i.an = icmp eq i8 %i.am, 0
  %i.ao = select i1 %i.an, i32 -256, i32 -1
  %i.ap = and i32 %i.ao, %.04556                  ; 2 uses
  %i.aq = add i32 %.04655, 1                      ; 2 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = icmp ugt i64 %i.h, %i.ar
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.aj, %middle.block ], [ %i.ap, %.lr.ph ]
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %i.h
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  %i.av = icmp eq i8 %i.au, 0
  %i.aw = getelementptr i8, ptr %3, i64 %4        ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -48    ; 5 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !8   ; 2 uses
  %i.az = lshr i32 %5, 8
  %i.ba = trunc i32 %i.az to i8
  %i.bb = icmp eq i8 %i.ay, %i.ba
  %i.bc = getelementptr i8, ptr %i.aw, i64 -47
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8   ; 2 uses
  %i.be = trunc i32 %5 to i8
  %i.bf = icmp eq i8 %i.bd, %i.be
  %i.bg = and i1 %i.bb, %i.bf                     ; 2 uses
  %i.bh = icmp sgt i32 %6, 0
  br i1 %i.bh, label %bb.e, label %vector.memcheck

bb.e:                                             ; preds = %._crit_edge
  %i.bi = lshr i32 %6, 8
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = icmp eq i8 %i.ay, %i.bj
  %i.bl = trunc i32 %6 to i8
  %i.bm = icmp eq i8 %i.bd, %i.bl
  %i.bn = and i1 %i.bk, %i.bm
  %i.bo = or i1 %i.bg, %i.bn
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.e, %._crit_edge
  %.044.in = phi i1 [ %i.bo, %bb.e ], [ %i.bg, %._crit_edge ]
  %i.bp = select i1 %.044.in, i1 %i.av, i1 false
  %i.bq = select i1 %i.bp, i32 255, i32 0
  %i.br = and i32 %i.bq, %.lcssa                  ; 2 uses
  %i.bs = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.br) #7, !srcloc !10 ; 4 uses
  %i.bt = xor i32 %i.br, -1
  %i.bu = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bt) #7, !srcloc !10 ; 4 uses
  %i.bv = add i64 %4, %i.a
  %i.bw = sub i64 %i.b, %i.bv
  %i.bx = add i64 %i.bw, 47
  %diff.check = icmp ult i64 %i.bx, 15
  br i1 %diff.check, label %scalar.ph66, label %vector.body70

vector.body70:                                    ; preds = %vector.memcheck
  %broadcast.splatinsert68 = insertelement <16 x i32> poison, i32 %i.bu, i64 0
  %broadcast.splat69 = shufflevector <16 x i32> %broadcast.splatinsert68, <16 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %wide.load72 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !8
  %wide.load73 = load <16 x i8>, ptr %i.c, align 16, !tbaa !8
  %i.by = zext <16 x i8> %wide.load72 to <16 x i32>
  %i.bz = zext <16 x i8> %wide.load73 to <16 x i32>
  %i.ca = and <16 x i32> %broadcast.splat, %i.by
  %i.cb = and <16 x i32> %broadcast.splat69, %i.bz
  %i.cc = or <16 x i32> %i.cb, %i.ca
  %i.cd = trunc nuw <16 x i32> %i.cc to <16 x i8>
  store <16 x i8> %i.cd, ptr %1, align 1, !tbaa !8
  %i.ce = getelementptr i8, ptr %i.aw, i64 -32
  %wide.load72.1 = load <16 x i8>, ptr %i.ce, align 1, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load73.1 = load <16 x i8>, ptr %i.cf, align 16, !tbaa !8
  %i.cg = zext <16 x i8> %wide.load72.1 to <16 x i32>
  %i.ch = zext <16 x i8> %wide.load73.1 to <16 x i32>
  %i.ci = and <16 x i32> %broadcast.splat, %i.cg
  %i.cj = and <16 x i32> %broadcast.splat69, %i.ch
  %i.ck = or <16 x i32> %i.cj, %i.ci
  %i.cl = trunc nuw <16 x i32> %i.ck to <16 x i8>
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <16 x i8> %i.cl, ptr %i.cm, align 1, !tbaa !8
  %i.cn = getelementptr i8, ptr %i.aw, i64 -16
  %wide.load72.2 = load <16 x i8>, ptr %i.cn, align 1, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %wide.load73.2 = load <16 x i8>, ptr %i.co, align 16, !tbaa !8
  %i.cp = zext <16 x i8> %wide.load72.2 to <16 x i32>
  %i.cq = zext <16 x i8> %wide.load73.2 to <16 x i32>
  %i.cr = and <16 x i32> %broadcast.splat, %i.cp
  %i.cs = and <16 x i32> %broadcast.splat69, %i.cq
  %i.ct = or <16 x i32> %i.cs, %i.cr
  %i.cu = trunc nuw <16 x i32> %i.ct to <16 x i8>
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <16 x i8> %i.cu, ptr %i.cv, align 1, !tbaa !8
  br label %.loopexit

scalar.ph66:                                      ; preds = %vector.memcheck, %scalar.ph66
  %indvars.iv = phi i64 [ %indvars.iv.next.2, %scalar.ph66 ], [ 0, %vector.memcheck ] ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !8
  %i.da = zext i8 %i.cx to i32
  %i.db = zext i8 %i.cz to i32
  %i.dc = and i32 %i.bs, %i.da
  %i.dd = and i32 %i.bu, %i.db
  %i.de = or i32 %i.dd, %i.dc
  %i.df = trunc nuw i32 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.next
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !8
  %i.dl = zext i8 %i.di to i32
  %i.dm = zext i8 %i.dk to i32
  %i.dn = and i32 %i.bs, %i.dl
  %i.do = and i32 %i.bu, %i.dm
  %i.dp = or i32 %i.do, %i.dn
  %i.dq = trunc nuw i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.next.1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !8
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next.1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !8
  %i.dw = zext i8 %i.dt to i32
  %i.dx = zext i8 %i.dv to i32
  %i.dy = and i32 %i.bs, %i.dw
  %i.dz = and i32 %i.bu, %i.dx
  %i.ea = or i32 %i.dz, %i.dy
  %i.eb = trunc nuw i32 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 48
  br i1 %exitcond.not.2, label %.loopexit, label %scalar.ph66, !llvm.loop !38

.loopexit:                                        ; preds = %scalar.ph66, %vector.body70, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 48, %vector.body70 ], [ 48, %scalar.ph66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret i32 %.0
}

declare i32 @RAND_priv_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @HMAC_CTX_new() local_unnamed_addr #2

declare ptr @EVP_MD_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @HMAC_Init_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @HMAC_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @HMAC_Final(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @HMAC_CTX_free(ptr noundef) local_unnamed_addr #2

declare void @EVP_MD_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{i64 70867}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"branch_weights", i32 4, i32 12}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !"LVerDomain"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !9, !11, !12}
!23 = distinct !{!23, !9, !11, !12}
!24 = distinct !{!24, !9, !11}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = !{!20}
!28 = !{!21}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9, !11, !12}
!32 = distinct !{!32, !9, !11, !12}
!33 = distinct !{!33, !9, !11}
!34 = distinct !{!34, !9}
!35 = !{!5, !5, i64 0}
!36 = distinct !{!36, !9, !11, !12}
!37 = distinct !{!37, !9, !11}
!38 = distinct !{!38, !9, !11}
end_hunk_1
