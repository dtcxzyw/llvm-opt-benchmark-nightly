inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@AesCbc_Decode:bb.a

Aes_Decode.exit:                                  ; preds = %bb.c
  %i.hn = getelementptr inbounds nuw i8, ptr @InvS, i64 %i.dx
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !8
  %i.hp = zext i8 %i.ho to i32
  %i.hq = lshr i32 %i.cv, 8
  %i.hr = and i32 %i.hq, 255
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr @InvS, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !8
  %i.hv = zext i8 %i.hu to i32
  %i.hw = shl nuw nsw i32 %i.hv, 8
  %i.hx = or disjoint i32 %i.hw, %i.hp
  %i.hy = lshr i32 %i.bx, 16
  %i.hz = and i32 %i.hy, 255
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr @InvS, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !8
  %i.id = zext i8 %i.ic to i32
  %i.ie = shl nuw nsw i32 %i.id, 16
  %i.if = or disjoint i32 %i.hx, %i.ie
  %i.ig = lshr i32 %i.dt, 24
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr @InvS, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !8
  %i.ik = zext i8 %i.ij to i32
  %i.il = shl nuw i32 %i.ik, 24
  %i.im = or disjoint i32 %i.if, %i.il
  %i.in = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.io = xor i32 %i.im, %i.in
  %i.ip = and i32 %i.dt, 255
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr @InvS, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !8
  %i.it = zext i8 %i.is to i32
  %i.iu = lshr i32 %i.az, 8
  %i.iv = and i32 %i.iu, 255
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr @InvS, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !8
  %i.iz = zext i8 %i.iy to i32
  %i.ja = shl nuw nsw i32 %i.iz, 8
  %i.jb = or disjoint i32 %i.ja, %i.it
  %i.jc = lshr i32 %i.cv, 16
  %i.jd = and i32 %i.jc, 255
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr @InvS, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !8
  %i.jh = zext i8 %i.jg to i32
  %i.ji = shl nuw nsw i32 %i.jh, 16
  %i.jj = or disjoint i32 %i.jb, %i.ji
  %i.jk = lshr i32 %i.bx, 24
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr @InvS, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !8
  %i.jo = zext i8 %i.jn to i32
  %i.jp = shl nuw i32 %i.jo, 24
  %i.jq = or disjoint i32 %i.jj, %i.jp
  %i.jr = getelementptr inbounds i8, ptr %.070.i, i64 -28
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !4
  %i.jt = xor i32 %i.jq, %i.js
  %i.ju = and i32 %i.bx, 255
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr @InvS, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !8
  %i.jy = zext i8 %i.jx to i32
  %i.jz = lshr i32 %i.dt, 8
  %i.ka = and i32 %i.jz, 255
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr @InvS, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !8
  %i.ke = zext i8 %i.kd to i32
  %i.kf = shl nuw nsw i32 %i.ke, 8
  %i.kg = or disjoint i32 %i.kf, %i.jy
  %i.kh = lshr i32 %i.az, 16
  %i.ki = and i32 %i.kh, 255
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr @InvS, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !8
  %i.km = zext i8 %i.kl to i32
  %i.kn = shl nuw nsw i32 %i.km, 16
  %i.ko = or disjoint i32 %i.kg, %i.kn
  %i.kp = lshr i32 %i.cv, 24
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr @InvS, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !8
  %i.kt = zext i8 %i.ks to i32
  %i.ku = shl nuw i32 %i.kt, 24
  %i.kv = or disjoint i32 %i.ko, %i.ku
  %i.kw = getelementptr inbounds i8, ptr %.070.i, i64 -24
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !4
  %i.ky = xor i32 %i.kv, %i.kx
  %i.kz = and i32 %i.cv, 255
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr @InvS, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !8
  %i.ld = zext i8 %i.lc to i32
  %i.le = lshr i32 %i.bx, 8
  %i.lf = and i32 %i.le, 255
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw i8, ptr @InvS, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !8
  %i.lj = zext i8 %i.li to i32
  %i.lk = shl nuw nsw i32 %i.lj, 8
  %i.ll = or disjoint i32 %i.lk, %i.ld
  %i.lm = lshr i32 %i.dt, 16
  %i.ln = and i32 %i.lm, 255
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw i8, ptr @InvS, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !8
  %i.lr = zext i8 %i.lq to i32
  %i.ls = shl nuw nsw i32 %i.lr, 16
  %i.lt = or disjoint i32 %i.ll, %i.ls
  %i.lu = lshr i32 %i.az, 24
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr @InvS, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !8
  %i.ly = zext i8 %i.lx to i32
  %i.lz = shl nuw i32 %i.ly, 24
  %i.ma = or disjoint i32 %i.lt, %i.lz
  %i.mb = getelementptr inbounds i8, ptr %.070.i, i64 -20
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !4
  %i.md = xor i32 %i.ma, %i.mc
  %i.me = load i32, ptr %0, align 4, !tbaa !4
  %i.mf = xor i32 %i.io, %i.me
  store i32 %i.mf, ptr %.01931, align 4, !tbaa !4
  %i.mg = load i32, ptr %i.b, align 4, !tbaa !4
  %i.mh = xor i32 %i.jt, %i.mg
  store i32 %i.mh, ptr %i.f, align 4, !tbaa !4
  %i.mi = load i32, ptr %i.c, align 4, !tbaa !4
  %i.mj = xor i32 %i.ky, %i.mi
  store i32 %i.mj, ptr %i.h, align 4, !tbaa !4
  %i.mk = load i32, ptr %i.d, align 4, !tbaa !4
  %i.ml = xor i32 %i.md, %i.mk
  store i32 %i.ml, ptr %i.j, align 4, !tbaa !4
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !4
  store i32 %i.i, ptr %i.c, align 4, !tbaa !4
  store i32 %i.k, ptr %i.d, align 4, !tbaa !4
  %i.mm = add i64 %.032, -1                       ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.01931, i64 16
  %.not = icmp eq i64 %i.mm, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !17

._crit_edge:                                      ; preds = %Aes_Decode.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @AesCtr_Code(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2) #2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %.not13 = icmp eq i64 %2, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.0915 = phi i64 [ %2, %.lr.ph ], [ %i.ae, %bb.d ]
  %.01014 = phi ptr [ %1, %.lr.ph ], [ %i.l, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.g = load i32, ptr %0, align 4, !tbaa !4
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 4, !tbaa !4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.b, align 4, !tbaa !4
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.b, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call fastcc void @Aes_Encode(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %0)
  %i.l = getelementptr inbounds nuw i8, ptr %.01014, i64 16
  %i.m = load i32, ptr %i.f, align 4, !tbaa !4    ; 4 uses
  %i.n = load i32, ptr %i.e, align 8, !tbaa !4    ; 4 uses
  %i.o = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.p = load i32, ptr %i.a, align 16, !tbaa !4   ; 4 uses
  %.sroa.17.15.extract.shift = lshr i32 %i.m, 24
  %.sroa.17.14.extract.shift = lshr i32 %i.m, 16
  %.sroa.17.13.extract.shift = lshr i32 %i.m, 8
  %.sroa.12.11.extract.shift = lshr i32 %i.n, 24
  %.sroa.12.10.extract.shift = lshr i32 %i.n, 16
  %.sroa.12.9.extract.shift = lshr i32 %i.n, 8
  %.sroa.7.7.extract.shift = lshr i32 %i.o, 24
  %.sroa.7.6.extract.shift = lshr i32 %i.o, 16
  %.sroa.7.5.extract.shift = lshr i32 %i.o, 8
  %.sroa.0.3.extract.shift = lshr i32 %i.p, 24
  %.sroa.0.2.extract.shift = lshr i32 %i.p, 16
  %.sroa.0.1.extract.shift = lshr i32 %i.p, 8
  %.sroa.17.15.extract.trunc = trunc nuw i32 %.sroa.17.15.extract.shift to i8
  %.sroa.17.14.extract.trunc = trunc i32 %.sroa.17.14.extract.shift to i8
  %3 = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %4 = insertelement <2 x i32> %3, i32 %.sroa.17.13.extract.shift, i64 1
  %5 = trunc <2 x i32> %4 to <2 x i8>
  %.sroa.17.13.extract.trunc = trunc nuw i32 %.sroa.12.11.extract.shift to i8
  %.sroa.17.12.extract.trunc = trunc i32 %.sroa.12.10.extract.shift to i8
  %6 = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %7 = insertelement <2 x i32> %6, i32 %.sroa.12.9.extract.shift, i64 1
  %8 = trunc <2 x i32> %7 to <2 x i8>
  %.sroa.12.8.extract.trunc = trunc nuw i32 %.sroa.7.7.extract.shift to i8
  %.sroa.7.7.extract.trunc = trunc i32 %.sroa.7.6.extract.shift to i8
  %9 = insertelement <2 x i32> poison, i32 %i.o, i64 0
  %10 = insertelement <2 x i32> %9, i32 %.sroa.7.5.extract.shift, i64 1
  %11 = trunc <2 x i32> %10 to <2 x i8>
  %.sroa.0.3.extract.trunc = trunc nuw i32 %.sroa.0.3.extract.shift to i8
  %.sroa.0.2.extract.trunc = trunc i32 %.sroa.0.2.extract.shift to i8
  %i.q = insertelement <2 x i32> poison, i32 %i.p, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %.sroa.0.1.extract.shift, i64 1
  %i.s = trunc <2 x i32> %i.r to <2 x i8>
  %i.t = load <16 x i8>, ptr %.01014, align 1, !tbaa !8
  %i.u = shufflevector <2 x i8> %i.s, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.v = insertelement <16 x i8> %i.u, i8 %.sroa.0.2.extract.trunc, i64 2
  %i.w = insertelement <16 x i8> %i.v, i8 %.sroa.0.3.extract.trunc, i64 3
  %12 = shufflevector <2 x i8> %11, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <16 x i8> %i.w, <16 x i8> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = insertelement <16 x i8> %13, i8 %.sroa.7.7.extract.trunc, i64 6
  %i.y = insertelement <16 x i8> %i.x, i8 %.sroa.12.8.extract.trunc, i64 7
  %14 = shufflevector <2 x i8> %8, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <16 x i8> %i.y, <16 x i8> %14, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.z = insertelement <16 x i8> %15, i8 %.sroa.17.12.extract.trunc, i64 10
  %i.aa = insertelement <16 x i8> %i.z, i8 %.sroa.17.13.extract.trunc, i64 11
  %16 = shufflevector <2 x i8> %5, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <16 x i8> %i.aa, <16 x i8> %16, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 poison, i32 poison>
  %i.ab = insertelement <16 x i8> %17, i8 %.sroa.17.14.extract.trunc, i64 14
  %i.ac = insertelement <16 x i8> %i.ab, i8 %.sroa.17.15.extract.trunc, i64 15
  %i.ad = xor <16 x i8> %i.t, %i.ac
  store <16 x i8> %i.ad, ptr %.01014, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.ae = add i64 %.0915, -1                      ; 2 uses
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Aes_SetKey_Enc(ptr noundef captures(none) initializes((0, 4)) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = add i32 %2, 28                           ; 2 uses
  %i.d = lshr i32 %2, 2                           ; 10 uses
  %i.e = lshr i32 %2, 3
  %i.f = add nuw nsw i32 %i.e, 3
  store i32 %i.f, ptr %0, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %2, 32
  br i1 %min.iters.check, label %.lr.ph.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.h = add i64 %i.b, 16
  %i.i = sub i64 %i.h, %i.a
  %diff.check = icmp ult i64 %i.i, 32
  br i1 %diff.check, label %.lr.ph.preheader70, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 1073741816   ; 4 uses
  %i.j = shl nuw nsw i64 %n.vec, 2
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.l  ; 2 uses
  %i.m = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4
  %wide.load67 = load <4 x i32>, ptr %i.m, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %wide.load, ptr %i.n, align 4, !tbaa !4
  store <4 x i32> %wide.load67, ptr %i.o, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader70

.lr.ph.preheader70:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.03842.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader70, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader70 ] ; 2 uses
  %.03842.prol = phi ptr [ %i.s, %.lr.ph.prol ], [ %.03842.ph, %.lr.ph.preheader70 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader70 ]
  %i.q = load i32, ptr %.03842.prol, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.prol
  store i32 %i.q, ptr %i.r, align 4, !tbaa !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03842.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !20

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader70
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader70 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.03842.unr = phi ptr [ %.03842.ph, %.lr.ph.preheader70 ], [ %i.s, %.lr.ph.prol ]
  %i.t = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.v = icmp ult i32 %i.d, %i.c
  br i1 %i.v, label %.lr.ph44, label %._crit_edge

.lr.ph44:                                         ; preds = %.preheader
  %i.w = icmp ugt i32 %2, 27
  %i.x = zext nneg i32 %i.d to i64                ; 2 uses
  %wide.trip.count55 = zext i32 %i.c to i64       ; 2 uses
  br i1 %i.w, label %.lr.ph44.split, label %.lr.ph44.split.us

.lr.ph44.split.us:                                ; preds = %.lr.ph44, %bb.c
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %bb.c ], [ %i.x, %.lr.ph44 ] ; 4 uses
  %i.y = trunc nuw i64 %indvars.iv47 to i32       ; 3 uses
  %i.z = add nuw i64 %indvars.iv47, 4294967295
  %i.aa = and i64 %i.z, 4294967295
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4  ; 5 uses
  %i.ad = urem i32 %i.y, %i.d
  %i.ae = udiv i32 %i.y, %i.d
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph44.split.us
  %i.ag = lshr i32 %i.ac, 8
  %i.ah = and i32 %i.ag, 255
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @Sbox, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = zext i32 %i.ae to i64
  %i.am = getelementptr inbounds nuw i8, ptr @Rcon, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %i.ao = xor i8 %i.an, %i.ak
  %i.ap = zext i8 %i.ao to i32
  %i.aq = lshr i32 %i.ac, 16
  %i.ar = and i32 %i.aq, 255
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @Sbox, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 8
  %i.ax = or disjoint i32 %i.aw, %i.ap
  %i.ay = lshr i32 %i.ac, 24
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @Sbox, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 16
  %i.be = or disjoint i32 %i.ax, %i.bd
  %i.bf = and i32 %i.ac, 255
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @Sbox, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw i32 %i.bj, 24
  %i.bl = or disjoint i32 %i.be, %i.bk
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph44.split.us, %bb.b
  %.0.us = phi i32 [ %i.bl, %bb.b ], [ %i.ac, %.lr.ph44.split.us ]
  %i.bm = sub i32 %i.y, %i.d
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = xor i32 %i.bp, %.0.us
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv47
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !4
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count55
  br i1 %exitcond51.not, label %._crit_edge, label %.lr.ph44.split.us, !llvm.loop !22

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03842 = phi ptr [ %i.cg, %.lr.ph ], [ %.03842.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bs = load i32, ptr %.03842, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %.03842, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 %i.bv, ptr %i.bx, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw i8, ptr %.03842, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %.03842, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.03842, i64 16
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !23

.lr.ph44.split:                                   ; preds = %.lr.ph44, %bb.f
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %bb.f ], [ %i.x, %.lr.ph44 ] ; 4 uses
  %i.ch = trunc nuw i64 %indvars.iv52 to i32      ; 3 uses
  %i.ci = add nuw i64 %indvars.iv52, 4294967295
  %i.cj = and i64 %i.ci, 4294967295
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4  ; 9 uses
  %i.cm = urem i32 %i.ch, %i.d
  %i.cn = udiv i32 %i.ch, %i.d
  switch i32 %i.cm, label %bb.f [
    i32 0, label %bb.d
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph44.split
end_hunk_0
