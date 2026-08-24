Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Aes?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@AesCbc_Decode:bb.a
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
define dso_local void @AesCtr_Code(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) #2 {
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
  %.0915 = phi i64 [ %2, %.lr.ph ], [ %i.at, %bb.d ]
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
  %i.q = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %.sroa.17.13.extract.shift, i64 1
  %i.s = trunc <2 x i32> %i.r to <2 x i8>
  %.sroa.12.11.extract.trunc = trunc nuw i32 %.sroa.12.11.extract.shift to i8
  %.sroa.12.10.extract.trunc = trunc i32 %.sroa.12.10.extract.shift to i8
  %i.t = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.u = insertelement <2 x i32> %i.t, i32 %.sroa.12.9.extract.shift, i64 1
  %i.v = trunc <2 x i32> %i.u to <2 x i8>
  %.sroa.7.7.extract.trunc = trunc nuw i32 %.sroa.7.7.extract.shift to i8
  %.sroa.7.6.extract.trunc = trunc i32 %.sroa.7.6.extract.shift to i8
  %i.w = insertelement <2 x i32> poison, i32 %i.o, i64 0
  %i.x = insertelement <2 x i32> %i.w, i32 %.sroa.7.5.extract.shift, i64 1
  %i.y = trunc <2 x i32> %i.x to <2 x i8>
  %.sroa.0.3.extract.trunc = trunc nuw i32 %.sroa.0.3.extract.shift to i8
  %.sroa.0.2.extract.trunc = trunc i32 %.sroa.0.2.extract.shift to i8
  %i.z = insertelement <2 x i32> poison, i32 %i.p, i64 0
  %i.aa = insertelement <2 x i32> %i.z, i32 %.sroa.0.1.extract.shift, i64 1
  %i.ab = trunc <2 x i32> %i.aa to <2 x i8>
  %i.ac = load <16 x i8>, ptr %.01014, align 1, !tbaa !8
  %i.ad = shufflevector <2 x i8> %i.ab, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ae = insertelement <16 x i8> %i.ad, i8 %.sroa.0.2.extract.trunc, i64 2
  %i.af = insertelement <16 x i8> %i.ae, i8 %.sroa.0.3.extract.trunc, i64 3
  %i.ag = shufflevector <2 x i8> %i.y, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ah = shufflevector <16 x i8> %i.af, <16 x i8> %i.ag, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ai = insertelement <16 x i8> %i.ah, i8 %.sroa.7.6.extract.trunc, i64 6
  %i.aj = insertelement <16 x i8> %i.ai, i8 %.sroa.7.7.extract.trunc, i64 7
  %i.ak = shufflevector <2 x i8> %i.v, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.al = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ak, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.am = insertelement <16 x i8> %i.al, i8 %.sroa.12.10.extract.trunc, i64 10
  %i.an = insertelement <16 x i8> %i.am, i8 %.sroa.12.11.extract.trunc, i64 11
  %i.ao = shufflevector <2 x i8> %i.s, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ap = shufflevector <16 x i8> %i.an, <16 x i8> %i.ao, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 poison, i32 poison>
  %i.aq = insertelement <16 x i8> %i.ap, i8 %.sroa.17.14.extract.trunc, i64 14
  %i.ar = insertelement <16 x i8> %i.aq, i8 %.sroa.17.15.extract.trunc, i64 15
  %i.as = xor <16 x i8> %i.ac, %i.ar
  store <16 x i8> %i.as, ptr %.01014, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.at = add i64 %.0915, -1                      ; 2 uses
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Aes_SetKey_Enc(ptr nofree noundef captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
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
  %min.iters.check = icmp ult i32 %2, 48
  br i1 %min.iters.check, label %.lr.ph.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.h = sub i64 %i.b, %i.a
  %i.i = add i64 %i.h, 15
  %diff.check = icmp ult i64 %i.i, 31
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
  %.03941.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader70, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader70 ] ; 2 uses
  %.03941.prol = phi ptr [ %i.s, %.lr.ph.prol ], [ %.03941.ph, %.lr.ph.preheader70 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader70 ]
  %i.q = load i32, ptr %.03941.prol, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.prol
  store i32 %i.q, ptr %i.r, align 4, !tbaa !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03941.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !20

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader70
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader70 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.03941.unr = phi ptr [ %.03941.ph, %.lr.ph.preheader70 ], [ %i.s, %.lr.ph.prol ]
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
  %3 = sub i32 %i.y, %i.d
  %4 = zext i32 %3 to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = xor i32 %i.bn, %.0.us
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv47
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !4
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count55
  br i1 %exitcond51.not, label %._crit_edge, label %.lr.ph44.split.us, !llvm.loop !22

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03941 = phi ptr [ %i.ce, %.lr.ph ], [ %.03941.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bq = load i32, ptr %.03941, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %.03941, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %.03941, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %i.bx, ptr %i.bz, align 4, !tbaa !4
  %i.ca = getelementptr inbounds nuw i8, ptr %.03941, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.03941, i64 16
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !23

.lr.ph44.split:                                   ; preds = %.lr.ph44, %bb.f
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %bb.f ], [ %i.x, %.lr.ph44 ] ; 4 uses
  %i.cf = trunc nuw i64 %indvars.iv52 to i32      ; 3 uses
  %i.cg = add nuw i64 %indvars.iv52, 4294967295
  %i.ch = and i64 %i.cg, 4294967295
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4  ; 9 uses
  %i.ck = urem i32 %i.cf, %i.d
  %i.cl = udiv i32 %i.cf, %i.d
  switch i32 %i.ck, label %bb.f [
    i32 0, label %bb.d
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph44.split
  %i.cm = lshr i32 %i.cj, 8
  %i.cn = and i32 %i.cm, 255
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @Sbox, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !8
  %i.cr = zext i32 %i.cl to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @Rcon, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8
  %i.cu = xor i8 %i.ct, %i.cq
  %i.cv = zext i8 %i.cu to i32
  %i.cw = lshr i32 %i.cj, 16
  %i.cx = and i32 %i.cw, 255
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @Sbox, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !8
  %i.db = zext i8 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 8
  %i.dd = or disjoint i32 %i.dc, %i.cv
  %i.de = lshr i32 %i.cj, 24
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @Sbox, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !8
  %i.di = zext i8 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 16
  %i.dk = or disjoint i32 %i.dd, %i.dj
  %i.dl = and i32 %i.cj, 255
  br label %.sink.split

bb.e:                                             ; preds = %.lr.ph44.split
  %i.dm = and i32 %i.cj, 255
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @Sbox, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !8
  %i.dq = zext i8 %i.dp to i32
  %i.dr = lshr i32 %i.cj, 8
  %i.ds = and i32 %i.dr, 255
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @Sbox, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !8
  %i.dw = zext i8 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 8
  %i.dy = or disjoint i32 %i.dx, %i.dq
  %i.dz = lshr i32 %i.cj, 16
  %i.ea = and i32 %i.dz, 255
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @Sbox, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !8
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 16
  %i.eg = or disjoint i32 %i.dy, %i.ef
  %i.eh = lshr i32 %i.cj, 24
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink65 = phi i32 [ %i.eh, %bb.e ], [ %i.dl, %bb.d ]
  %.sink = phi i32 [ %i.eg, %bb.e ], [ %i.dk, %bb.d ]
  %i.ei = zext nneg i32 %.sink65 to i64
  %i.ej = getelementptr inbounds nuw i8, ptr @Sbox, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !8
  %i.el = zext i8 %i.ek to i32
  %i.em = shl nuw i32 %i.el, 24
  %i.en = or disjoint i32 %.sink, %i.em
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.lr.ph44.split
  %.0 = phi i32 [ %i.cj, %.lr.ph44.split ], [ %i.en, %.sink.split ]
  %5 = sub i32 %i.cf, %i.d
  %6 = zext i32 %5 to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %6
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !4
  %i.eq = xor i32 %i.ep, %.0
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv52
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !4
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %._crit_edge, label %.lr.ph44.split, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.c, %bb.f, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Aes_SetKey_Dec(ptr nofree noundef captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  tail call void @Aes_SetKey_Enc(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %i.a = add i32 %2, 20                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4    ; 4 uses
  %i.e = and i32 %i.d, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @Sbox, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @D, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = lshr i32 %i.d, 8
  %i.m = and i32 %i.l, 255
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @Sbox, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @D, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1024
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = xor i32 %i.t, %i.k
  %i.v = lshr i32 %i.d, 16
  %i.w = and i32 %i.v, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @Sbox, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @D, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2048
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = xor i32 %i.u, %i.ad
  %i.af = lshr i32 %i.d, 24
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @Sbox, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !8
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @D, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 3072
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = xor i32 %i.ae, %i.am
  store i32 %i.an, ptr %i.c, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @AesCbc_Init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.a, ptr %0, align 4, !tbaa !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %i.d, align 4, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.g, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.i, ptr %i.j, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Aes_Encode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %2, align 4, !tbaa !4
  %i.d = load i32, ptr %i.b, align 4, !tbaa !4
  %i.e = xor i32 %i.d, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = xor i32 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = xor i32 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = xor i32 %i.s, %i.q
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi ptr [ %0, %bb.a ], [ %.071, %bb.c ]  ; 8 uses
  %.sroa.2039.0 = phi i32 [ %i.t, %bb.a ], [ %i.gg, %bb.c ] ; 4 uses
  %.sroa.14.0 = phi i32 [ %i.o, %bb.a ], [ %i.ek, %bb.c ] ; 4 uses
  %.sroa.8.0 = phi i32 [ %i.j, %bb.a ], [ %i.he, %bb.c ] ; 4 uses
  %.sroa.029.0 = phi i32 [ %i.e, %bb.a ], [ %i.fi, %bb.c ] ; 4 uses
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.dl, %bb.c ]
  %.071 = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 2 uses
  %i.u = and i32 %.sroa.14.0, 255
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @T, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = lshr i32 %.sroa.2039.0, 8
  %i.z = and i32 %i.y, 255
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @T, i64 1024), i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = xor i32 %i.ac, %i.x
  %i.ae = lshr i32 %.sroa.029.0, 16
  %i.af = and i32 %i.ae, 255
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @T, i64 2048), i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = xor i32 %i.ad, %i.ai
  %i.ak = lshr i32 %.sroa.8.0, 24
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @T, i64 3072), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = xor i32 %i.aj, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = xor i32 %i.ao, %i.aq                    ; 8 uses
  %i.as = and i32 %.sroa.029.0, 255
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @T, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = lshr i32 %.sroa.8.0, 8
  %i.ax = and i32 %i.aw, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @T, i64 1024), i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = xor i32 %i.ba, %i.av
  %i.bc = lshr i32 %.sroa.14.0, 16
  %i.bd = and i32 %i.bc, 255
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @T, i64 2048), i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = xor i32 %i.bb, %i.bg
  %i.bi = lshr i32 %.sroa.2039.0, 24
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @T, i64 3072), i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = xor i32 %i.bh, %i.bl
  %i.bn = load i32, ptr %.071, align 4, !tbaa !4
  %i.bo = xor i32 %i.bm, %i.bn                    ; 8 uses
  %i.bp = and i32 %.sroa.2039.0, 255
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @T, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = lshr i32 %.sroa.029.0, 8
  %i.bu = and i32 %i.bt, 255
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @T, i64 1024), i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = xor i32 %i.bx, %i.bs
  %i.bz = lshr i32 %.sroa.8.0, 16
  %i.ca = and i32 %i.bz, 255
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @T, i64 2048), i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = xor i32 %i.by, %i.cd
  %i.cf = lshr i32 %.sroa.14.0, 24
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @T, i64 3072), i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = xor i32 %i.ce, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn, i64 44
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %i.cm = xor i32 %i.cj, %i.cl                    ; 8 uses
  %i.cn = and i32 %.sroa.8.0, 255
  %i.co = zext nneg i32 %i.cn to i64
end_hunk_0
