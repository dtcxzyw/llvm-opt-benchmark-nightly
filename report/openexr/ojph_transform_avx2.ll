Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_transform_avx2?download=true
inline.NumInlined: 35
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN4ojph5localL20avx2_rev_vert_step64EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb:bb.a
  %i.ki = sext i16 %i.b to i64                    ; 4 uses
  %i.kj = zext nneg i8 %i.e to i64                ; 4 uses
  %i.kk = zext i32 %1 to i64                      ; 2 uses
  %min.iters.check124 = icmp ult i32 %1, 12
  br i1 %min.iters.check124, label %scalar.ph123.preheader, label %vector.memcheck125

vector.memcheck125:                               ; preds = %.lr.ph41
  %i.kl = add i32 %1, -1
  %i.km = zext i32 %i.kl to i64
  %i.kn = shl nuw nsw i64 %i.km, 3
  %i.ko = add nuw nsw i64 %i.kn, 8                ; 3 uses
  %i.kp = getelementptr i8, ptr %.16.val3, i64 %i.ko ; 2 uses
  %i.kq = getelementptr i8, ptr %.16.val, i64 %i.ko
  %i.kr = getelementptr i8, ptr %.16.val1, i64 %i.ko
  %bound0126 = icmp ult ptr %.16.val3, %i.kq
  %bound1127 = icmp ult ptr %.16.val, %i.kp
  %found.conflict128 = and i1 %bound0126, %bound1127
  %bound0129 = icmp ult ptr %.16.val3, %i.kr
  %bound1130 = icmp ult ptr %.16.val1, %i.kp
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %found.conflict128, %found.conflict131
  br i1 %conflict.rdx132, label %scalar.ph123.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %vector.memcheck125
  %n.vec134 = and i64 %i.kk, 4294967292           ; 4 uses
  %i.ks = trunc nuw i64 %n.vec134 to i32
  %i.kt = sub i32 %1, %i.ks
  %i.ku = shl nuw nsw i64 %n.vec134, 3            ; 3 uses
  %i.kv = getelementptr i8, ptr %.16.val3, i64 %i.ku
  %i.kw = getelementptr i8, ptr %.16.val, i64 %i.ku
  %i.kx = getelementptr i8, ptr %.16.val1, i64 %i.ku
  %broadcast.splatinsert135 = insertelement <4 x i64> poison, i64 %i.ki, i64 0
  %broadcast.splat136 = shufflevector <4 x i64> %broadcast.splatinsert135, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert137 = insertelement <4 x i64> poison, i64 %i.kj, i64 0
  %broadcast.splat138 = shufflevector <4 x i64> %broadcast.splatinsert137, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert139 = insertelement <4 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat140 = shufflevector <4 x i64> %broadcast.splatinsert139, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph133
  %index142 = phi i64 [ 0, %vector.ph133 ], [ %index.next149, %vector.body141 ] ; 2 uses
  %i.ky = shl i64 %index142, 3                    ; 3 uses
  %next.gep143 = getelementptr i8, ptr %.16.val3, i64 %i.ky ; 2 uses
  %next.gep144 = getelementptr i8, ptr %.16.val, i64 %i.ky
  %next.gep145 = getelementptr i8, ptr %.16.val1, i64 %i.ky
  %wide.load146 = load <4 x i64>, ptr %next.gep144, align 8, !tbaa !13, !alias.scope !55
  %wide.load147 = load <4 x i64>, ptr %next.gep145, align 8, !tbaa !13, !alias.scope !56
  %i.kz = add nsw <4 x i64> %wide.load147, %wide.load146
  %i.la = mul nsw <4 x i64> %i.kz, %broadcast.splat136
  %i.lb = add nsw <4 x i64> %i.la, %broadcast.splat140
  %i.lc = ashr <4 x i64> %i.lb, %broadcast.splat138
  %wide.load148 = load <4 x i64>, ptr %next.gep143, align 8, !tbaa !13, !alias.scope !57, !noalias !58
  %i.ld = sub nsw <4 x i64> %wide.load148, %i.lc
  store <4 x i64> %i.ld, ptr %next.gep143, align 8, !tbaa !13, !alias.scope !57, !noalias !58
  %index.next149 = add nuw i64 %index142, 4       ; 2 uses
  %i.le = icmp eq i64 %index.next149, %n.vec134
  br i1 %i.le, label %middle.block150, label %vector.body141, !llvm.loop !48

middle.block150:                                  ; preds = %vector.body141
  %cmp.n151 = icmp eq i64 %n.vec134, %i.kk
  br i1 %cmp.n151, label %.loopexit, label %scalar.ph123.preheader

scalar.ph123.preheader:                           ; preds = %vector.memcheck125, %.lr.ph41, %middle.block150
  %.015140.ph = phi i32 [ %1, %vector.memcheck125 ], [ %1, %.lr.ph41 ], [ %i.kt, %middle.block150 ] ; 4 uses
  %.639.ph = phi ptr [ %.16.val3, %vector.memcheck125 ], [ %.16.val3, %.lr.ph41 ], [ %i.kv, %middle.block150 ] ; 4 uses
  %.615938.ph = phi ptr [ %.16.val, %vector.memcheck125 ], [ %.16.val, %.lr.ph41 ], [ %i.kw, %middle.block150 ] ; 3 uses
  %.616737.ph = phi ptr [ %.16.val1, %vector.memcheck125 ], [ %.16.val1, %.lr.ph41 ], [ %i.kx, %middle.block150 ] ; 3 uses
  %xtraiter163 = and i32 %.015140.ph, 1
  %lcmp.mod164.not = icmp eq i32 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %scalar.ph123.prol.loopexit, label %scalar.ph123.prol

scalar.ph123.prol:                                ; preds = %scalar.ph123.preheader
  %i.lf = getelementptr inbounds nuw i8, ptr %.615938.ph, i64 8
  %i.lg = load i64, ptr %.615938.ph, align 8, !tbaa !13
  %i.lh = getelementptr inbounds nuw i8, ptr %.616737.ph, i64 8
  %i.li = load i64, ptr %.616737.ph, align 8, !tbaa !13
  %i.lj = add nsw i64 %i.li, %i.lg
  %i.lk = mul nsw i64 %i.lj, %i.ki
  %i.ll = add nsw i64 %i.lk, %i.f
  %i.lm = ashr i64 %i.ll, %i.kj
  %i.ln = getelementptr inbounds nuw i8, ptr %.639.ph, i64 8
  %i.lo = load i64, ptr %.639.ph, align 8, !tbaa !13
  %i.lp = sub nsw i64 %i.lo, %i.lm
  store i64 %i.lp, ptr %.639.ph, align 8, !tbaa !13
  %i.lq = add nsw i32 %.015140.ph, -1
  br label %scalar.ph123.prol.loopexit

scalar.ph123.prol.loopexit:                       ; preds = %scalar.ph123.prol, %scalar.ph123.preheader
  %.015140.unr = phi i32 [ %.015140.ph, %scalar.ph123.preheader ], [ %i.lq, %scalar.ph123.prol ]
  %.639.unr = phi ptr [ %.639.ph, %scalar.ph123.preheader ], [ %i.ln, %scalar.ph123.prol ]
  %.615938.unr = phi ptr [ %.615938.ph, %scalar.ph123.preheader ], [ %i.lf, %scalar.ph123.prol ]
  %.616737.unr = phi ptr [ %.616737.ph, %scalar.ph123.preheader ], [ %i.lh, %scalar.ph123.prol ]
  %i.lr = icmp eq i32 %.015140.ph, 1
  br i1 %i.lr, label %.loopexit, label %scalar.ph123

scalar.ph123:                                     ; preds = %scalar.ph123.prol.loopexit, %scalar.ph123
  %.015140 = phi i32 [ %i.mo, %scalar.ph123 ], [ %.015140.unr, %scalar.ph123.prol.loopexit ]
  %.639 = phi ptr [ %i.ml, %scalar.ph123 ], [ %.639.unr, %scalar.ph123.prol.loopexit ] ; 4 uses
  %.615938 = phi ptr [ %i.md, %scalar.ph123 ], [ %.615938.unr, %scalar.ph123.prol.loopexit ] ; 3 uses
  %.616737 = phi ptr [ %i.mf, %scalar.ph123 ], [ %.616737.unr, %scalar.ph123.prol.loopexit ] ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.615938, i64 8
  %i.lt = load i64, ptr %.615938, align 8, !tbaa !13
  %i.lu = getelementptr inbounds nuw i8, ptr %.616737, i64 8
  %i.lv = load i64, ptr %.616737, align 8, !tbaa !13
  %i.lw = add nsw i64 %i.lv, %i.lt
  %i.lx = mul nsw i64 %i.lw, %i.ki
  %i.ly = add nsw i64 %i.lx, %i.f
  %i.lz = ashr i64 %i.ly, %i.kj
  %i.ma = getelementptr inbounds nuw i8, ptr %.639, i64 8 ; 2 uses
  %i.mb = load i64, ptr %.639, align 8, !tbaa !13
  %i.mc = sub nsw i64 %i.mb, %i.lz
  store i64 %i.mc, ptr %.639, align 8, !tbaa !13
  %i.md = getelementptr inbounds nuw i8, ptr %.615938, i64 16
  %i.me = load i64, ptr %i.ls, align 8, !tbaa !13
  %i.mf = getelementptr inbounds nuw i8, ptr %.616737, i64 16
  %i.mg = load i64, ptr %i.lu, align 8, !tbaa !13
  %i.mh = add nsw i64 %i.mg, %i.me
  %i.mi = mul nsw i64 %i.mh, %i.ki
  %i.mj = add nsw i64 %i.mi, %i.f
  %i.mk = ashr i64 %i.mj, %i.kj
  %i.ml = getelementptr inbounds nuw i8, ptr %.639, i64 16
  %i.mm = load i64, ptr %i.ma, align 8, !tbaa !13
  %i.mn = sub nsw i64 %i.mm, %i.mk
  store i64 %i.mn, ptr %i.ma, align 8, !tbaa !13
  %i.mo = add i32 %.015140, -2                    ; 2 uses
  %.not177.1 = icmp eq i32 %i.mo, 0
  br i1 %.not177.1, label %.loopexit, label %scalar.ph123, !llvm.loop !49

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.035 = phi i32 [ %i.nl, %scalar.ph ], [ %.035.unr, %scalar.ph.prol.loopexit ]
  %.734 = phi ptr [ %i.ni, %scalar.ph ], [ %.734.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.716033 = phi ptr [ %i.na, %scalar.ph ], [ %.716033.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.716832 = phi ptr [ %i.nc, %scalar.ph ], [ %.716832.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.716033, i64 8
  %i.mq = load i64, ptr %.716033, align 8, !tbaa !13
  %i.mr = getelementptr inbounds nuw i8, ptr %.716832, i64 8
  %i.ms = load i64, ptr %.716832, align 8, !tbaa !13
  %i.mt = add nsw i64 %i.ms, %i.mq
  %i.mu = mul nsw i64 %i.mt, %i.iy
  %i.mv = add nsw i64 %i.mu, %i.f
  %i.mw = ashr i64 %i.mv, %i.iz
  %i.mx = getelementptr inbounds nuw i8, ptr %.734, i64 8 ; 2 uses
  %i.my = load i64, ptr %.734, align 8, !tbaa !13
  %i.mz = add nsw i64 %i.mw, %i.my
  store i64 %i.mz, ptr %.734, align 8, !tbaa !13
  %i.na = getelementptr inbounds nuw i8, ptr %.716033, i64 16
  %i.nb = load i64, ptr %i.mp, align 8, !tbaa !13
  %i.nc = getelementptr inbounds nuw i8, ptr %.716832, i64 16
  %i.nd = load i64, ptr %i.mr, align 8, !tbaa !13
  %i.ne = add nsw i64 %i.nd, %i.nb
  %i.nf = mul nsw i64 %i.ne, %i.iy
  %i.ng = add nsw i64 %i.nf, %i.f
  %i.nh = ashr i64 %i.ng, %i.iz
  %i.ni = getelementptr inbounds nuw i8, ptr %.734, i64 16
  %i.nj = load i64, ptr %i.mx, align 8, !tbaa !13
  %i.nk = add nsw i64 %i.nh, %i.nj
  store i64 %i.nk, ptr %i.mx, align 8, !tbaa !13
  %i.nl = add i32 %.035, -2                       ; 2 uses
  %.not.1 = icmp eq i32 %i.nl, 0
  br i1 %.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !50

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph123.prol.loopexit, %scalar.ph123, %.lr.ph46.prol.loopexit, %.lr.ph46, %.lr.ph51.prol.loopexit, %.lr.ph51, %.lr.ph56.prol.loopexit, %.lr.ph56, %.lr.ph61.prol.loopexit, %.lr.ph61, %.lr.ph66.prol.loopexit, %.lr.ph66, %.lr.ph71.prol.loopexit, %.lr.ph71, %middle.block, %middle.block150, %.preheader29, %.preheader27, %.preheader25, %.preheader23, %.preheader21, %.preheader19, %.preheader17, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local17avx2_rev_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = icmp ugt i32 %4, 1                       ; 2 uses
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %.loopexit248.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph.i.preheader.i, label %_ZN4ojph5localL19avx2_deinterleave32EPfS1_S1_i.exit.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11   ; 4 uses
  %.pn228.i = select i1 %5, ptr %2, ptr %1
  %.in227.i = getelementptr inbounds nuw i8, ptr %.pn228.i, i64 16
  %i.h = load ptr, ptr %.in227.i, align 8, !tbaa !11 ; 3 uses
  %..i = select i1 %5, ptr %1, ptr %2
  %.in.i = getelementptr inbounds nuw i8, ptr %..i, i64 16
  %i.i = load ptr, ptr %.in.i, align 8, !tbaa !11 ; 3 uses
  %i.j = add nuw i32 %4, 31
  %i.k = and i32 %i.j, 16
  %lcmp.mod.not.not = icmp eq i32 %i.k, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.preheader.i
  %i.l = load <8 x float>, ptr %i.g, align 32, !tbaa !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.n = load <8 x float>, ptr %i.m, align 32, !tbaa !11 ; 2 uses
  %6 = shufflevector <8 x float> %i.l, <8 x float> %i.n, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %7 = shufflevector <8 x float> %i.l, <8 x float> %i.n, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %8 = shufflevector <8 x float> %6, <8 x float> %7, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %9 = shufflevector <8 x float> %6, <8 x float> %7, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  store <8 x float> %8, ptr %i.i, align 32, !tbaa !11
  store <8 x float> %9, ptr %i.h, align 32, !tbaa !11
  %i.o = add nsw i32 %4, -16
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.preheader.i
  %.024.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.preheader.i ], [ %i.q, %.lr.ph.i.i.prol ]
  %.01823.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.preheader.i ], [ %i.r, %.lr.ph.i.i.prol ]
  %.01922.i.i.unr = phi ptr [ %i.g, %.lr.ph.i.preheader.i ], [ %i.p, %.lr.ph.i.i.prol ]
  %.02021.i.i.unr = phi i32 [ %4, %.lr.ph.i.preheader.i ], [ %i.o, %.lr.ph.i.i.prol ]
  %i.s = icmp ult i32 %4, 17
  br i1 %i.s, label %_ZN4ojph5localL19avx2_deinterleave32EPfS1_S1_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.024.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.01823.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.01823.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.01922.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.01922.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.02021.i.i = phi i32 [ %i.ac, %.lr.ph.i.i ], [ %.02021.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.t = load <8 x float>, ptr %.01922.i.i, align 32, !tbaa !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01922.i.i, i64 32
  %i.v = load <8 x float>, ptr %i.u, align 32, !tbaa !11 ; 2 uses
  %10 = shufflevector <8 x float> %i.t, <8 x float> %i.v, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %11 = shufflevector <8 x float> %i.t, <8 x float> %i.v, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %12 = shufflevector <8 x float> %10, <8 x float> %11, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %13 = shufflevector <8 x float> %10, <8 x float> %11, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  store <8 x float> %12, ptr %.024.i.i, align 32, !tbaa !11
  store <8 x float> %13, ptr %.01823.i.i, align 32, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %.01922.i.i, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.01823.i.i, i64 32
  %i.z = load <8 x float>, ptr %i.w, align 32, !tbaa !11 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01922.i.i, i64 96
  %i.ab = load <8 x float>, ptr %i.aa, align 32, !tbaa !11 ; 2 uses
  %14 = shufflevector <8 x float> %i.z, <8 x float> %i.ab, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %15 = shufflevector <8 x float> %i.z, <8 x float> %i.ab, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %16 = shufflevector <8 x float> %14, <8 x float> %15, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %17 = shufflevector <8 x float> %14, <8 x float> %15, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  store <8 x float> %16, ptr %i.x, align 32, !tbaa !11
  store <8 x float> %17, ptr %i.y, align 32, !tbaa !11
  %i.ac = add nsw i32 %.02021.i.i, -32
  %i.ad = getelementptr inbounds nuw i8, ptr %.01922.i.i, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %.01823.i.i, i64 64
  %i.ag = icmp sgt i32 %.02021.i.i, 32
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZN4ojph5localL19avx2_deinterleave32EPfS1_S1_i.exit.i, !llvm.loop !59

_ZN4ojph5localL19avx2_deinterleave32EPfS1_S1_i.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !22  ; 2 uses
  %.not280.i = icmp eq i8 %i.ai, 0
  br i1 %.not280.i, label %_ZN4ojph5localL19avx2_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph287.i

.lr.ph287.i:                                      ; preds = %_ZN4ojph5localL19avx2_deinterleave32EPfS1_S1_i.exit.i
  %not..i = xor i1 %5, true
  %i.aj = zext i1 %not..i to i32
  %i.ak = add i32 %4, %i.aj
  %i.al = lshr i32 %i.ak, 1
  %i.am = zext i1 %5 to i32
  %i.an = add i32 %4, %i.am
  %i.ao = lshr i32 %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = zext i8 %i.ai to i64
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph287.i
  %indvars.iv.i = phi i64 [ %i.au, %.lr.ph287.i ], [ %i.av, %.loopexit.i ]
  %.0.in286.i = phi i1 [ %5, %.lr.ph287.i ], [ %i.fq, %.loopexit.i ] ; 5 uses
  %.0202285.i = phi ptr [ %i.as, %.lr.ph287.i ], [ %.0203284.i, %.loopexit.i ] ; 9 uses
  %.0203284.i = phi ptr [ %i.aq, %.lr.ph287.i ], [ %.0202285.i, %.loopexit.i ] ; 13 uses
  %.0204283.i = phi i32 [ %i.ao, %.lr.ph287.i ], [ %.0205282.i, %.loopexit.i ] ; 3 uses
  %.0205282.i = phi i32 [ %i.al, %.lr.ph287.i ], [ %.0204283.i, %.loopexit.i ] ; 11 uses
  %i.av = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i16, ptr %i.ay, align 4, !tbaa !11 ; 3 uses
  %i.ba = sext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !11 ; 2 uses
  %i.bd = sext i16 %i.bc to i32
  %i.be = load i8, ptr %i.ax, align 4, !tbaa !11  ; 4 uses
  %i.bf = insertelement <8 x i32> poison, i32 %i.ba, i64 0
  %i.bg = shufflevector <8 x i32> %i.bf, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bh = insertelement <8 x i32> poison, i32 %i.bd, i64 0
  %i.bi = shufflevector <8 x i32> %i.bh, <8 x i32> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.bj = load i32, ptr %.0203284.i, align 4, !tbaa !24
  %i.bk = getelementptr inbounds i8, ptr %.0203284.i, i64 -4
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !24
  %i.bl = add nsw i32 %.0204283.i, -1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.0203284.i, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !24
  %i.bp = zext nneg i32 %.0204283.i to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.0203284.i, i64 %i.bp
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !24
  %i.br = icmp eq i16 %i.az, 1
  br i1 %i.br, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not295.i = icmp eq i32 %.0205282.i, 0         ; 2 uses
  br i1 %.0.in286.i, label %.preheader.i, label %.preheader234.i

.preheader234.i:                                  ; preds = %bb.e
  br i1 %.not295.i, label %.loopexit.i, label %.lr.ph275.i

.lr.ph275.i:                                      ; preds = %.preheader234.i
  %i.bs = zext i8 %i.be to i32
  br label %bb.g

.preheader.i:                                     ; preds = %bb.e
  br i1 %.not295.i, label %.loopexit.i, label %.lr.ph279.i

.lr.ph279.i:                                      ; preds = %.preheader.i
  %i.bt = zext i8 %i.be to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph279.i
  %.0207278.i = phi ptr [ %.0203284.i, %.lr.ph279.i ], [ %i.cd, %bb.f ] ; 3 uses
  %.0210277.i = phi ptr [ %.0202285.i, %.lr.ph279.i ], [ %i.ce, %bb.f ] ; 3 uses
  %.0218276.i = phi i32 [ %.0205282.i, %.lr.ph279.i ], [ %i.cc, %bb.f ] ; 2 uses
  %i.bu = load <8 x i32>, ptr %.0207278.i, align 32, !tbaa !11
  %i.bv = getelementptr inbounds nuw i8, ptr %.0207278.i, i64 4
  %i.bw = load <8 x i32>, ptr %i.bv, align 4, !tbaa !11
  %i.bx = load <8 x i32>, ptr %.0210277.i, align 32, !tbaa !11
  %i.by = add <8 x i32> %i.bu, %i.bi
  %i.bz = add <8 x i32> %i.by, %i.bw
  %i.ca = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.bz, i32 range(i32 0, 256) %i.bt)
  %i.cb = add <8 x i32> %i.ca, %i.bx
  store <8 x i32> %i.cb, ptr %.0210277.i, align 32, !tbaa !11
  %i.cc = add nsw i32 %.0218276.i, -8
  %i.cd = getelementptr inbounds nuw i8, ptr %.0207278.i, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %.0210277.i, i64 32
  %i.cf = icmp sgt i32 %.0218276.i, 8
  br i1 %i.cf, label %bb.f, label %.loopexit.i, !llvm.loop !60

bb.g:                                             ; preds = %bb.g, %.lr.ph275.i
  %.1274.i = phi ptr [ %.0203284.i, %.lr.ph275.i ], [ %i.cp, %bb.g ] ; 3 uses
  %.1211273.i = phi ptr [ %.0202285.i, %.lr.ph275.i ], [ %i.cq, %bb.g ] ; 3 uses
  %.1219272.i = phi i32 [ %.0205282.i, %.lr.ph275.i ], [ %i.co, %bb.g ] ; 2 uses
  %i.cg = load <8 x i32>, ptr %.1274.i, align 32, !tbaa !11
  %i.ch = getelementptr inbounds i8, ptr %.1274.i, i64 -4
  %i.ci = load <8 x i32>, ptr %i.ch, align 4, !tbaa !11
  %i.cj = load <8 x i32>, ptr %.1211273.i, align 32, !tbaa !11
  %i.ck = add <8 x i32> %i.cg, %i.bi
  %i.cl = add <8 x i32> %i.ck, %i.ci
  %i.cm = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.cl, i32 range(i32 0, 256) %i.bs)
  %i.cn = add <8 x i32> %i.cm, %i.cj
  store <8 x i32> %i.cn, ptr %.1211273.i, align 32, !tbaa !11
  %i.co = add nsw i32 %.1219272.i, -8
  %i.cp = getelementptr inbounds nuw i8, ptr %.1274.i, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %.1211273.i, i64 32
  %i.cr = icmp sgt i32 %.1219272.i, 8
  br i1 %i.cr, label %bb.g, label %.loopexit.i, !llvm.loop !61

bb.h:                                             ; preds = %bb.d
  %i.cs = icmp eq i16 %i.az, -1                   ; 2 uses
  %i.ct = icmp eq i16 %i.bc, 1
  %or.cond.i = select i1 %i.cs, i1 %i.ct, i1 false
  %i.cu = zext i8 %i.be to i32                    ; 4 uses
  %i.cv = icmp eq i8 %i.be, 1
  %or.cond4.i = select i1 %or.cond.i, i1 %i.cv, i1 false
  %.not293.i = icmp eq i32 %.0205282.i, 0         ; 6 uses
  br i1 %or.cond4.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.0.in286.i, label %.preheader236.i, label %.preheader238.i

.preheader238.i:                                  ; preds = %bb.i
  br i1 %.not293.i, label %.loopexit.i, label %.lr.ph267.i

.preheader236.i:                                  ; preds = %bb.i
  br i1 %.not293.i, label %.loopexit.i, label %.lr.ph271.i

.lr.ph271.i:                                      ; preds = %.preheader236.i, %.lr.ph271.i
  %.2270.i = phi ptr [ %i.de, %.lr.ph271.i ], [ %.0203284.i, %.preheader236.i ] ; 3 uses
  %.2212269.i = phi ptr [ %i.df, %.lr.ph271.i ], [ %.0202285.i, %.preheader236.i ] ; 3 uses
  %.0220268.i = phi i32 [ %i.dd, %.lr.ph271.i ], [ %.0205282.i, %.preheader236.i ] ; 2 uses
  %i.cw = load <8 x i32>, ptr %.2270.i, align 32, !tbaa !11
  %i.cx = getelementptr inbounds nuw i8, ptr %.2270.i, i64 4
  %i.cy = load <8 x i32>, ptr %i.cx, align 4, !tbaa !11
  %i.cz = load <8 x i32>, ptr %.2212269.i, align 32, !tbaa !11
  %i.da = add <8 x i32> %i.cy, %i.cw
  %i.db = ashr <8 x i32> %i.da, splat (i32 1)
  %i.dc = sub <8 x i32> %i.cz, %i.db
  store <8 x i32> %i.dc, ptr %.2212269.i, align 32, !tbaa !11
  %i.dd = add nsw i32 %.0220268.i, -8
  %i.de = getelementptr inbounds nuw i8, ptr %.2270.i, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %.2212269.i, i64 32
  %i.dg = icmp sgt i32 %.0220268.i, 8
  br i1 %i.dg, label %.lr.ph271.i, label %.loopexit.i, !llvm.loop !62

.lr.ph267.i:                                      ; preds = %.preheader238.i, %.lr.ph267.i
  %.3266.i = phi ptr [ %i.dp, %.lr.ph267.i ], [ %.0203284.i, %.preheader238.i ] ; 3 uses
  %.3213265.i = phi ptr [ %i.dq, %.lr.ph267.i ], [ %.0202285.i, %.preheader238.i ] ; 3 uses
  %.1221264.i = phi i32 [ %i.do, %.lr.ph267.i ], [ %.0205282.i, %.preheader238.i ] ; 2 uses
  %i.dh = load <8 x i32>, ptr %.3266.i, align 32, !tbaa !11
  %i.di = getelementptr inbounds i8, ptr %.3266.i, i64 -4
  %i.dj = load <8 x i32>, ptr %i.di, align 4, !tbaa !11
  %i.dk = load <8 x i32>, ptr %.3213265.i, align 32, !tbaa !11
  %i.dl = add <8 x i32> %i.dj, %i.dh
  %i.dm = ashr <8 x i32> %i.dl, splat (i32 1)
  %i.dn = sub <8 x i32> %i.dk, %i.dm
  store <8 x i32> %i.dn, ptr %.3213265.i, align 32, !tbaa !11
  %i.do = add nsw i32 %.1221264.i, -8
  %i.dp = getelementptr inbounds nuw i8, ptr %.3266.i, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %.3213265.i, i64 32
  %i.dr = icmp sgt i32 %.1221264.i, 8
  br i1 %i.dr, label %.lr.ph267.i, label %.loopexit.i, !llvm.loop !63

bb.j:                                             ; preds = %bb.h
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %.0.in286.i, label %.preheader240.i, label %.preheader242.i

.preheader242.i:                                  ; preds = %bb.k
  br i1 %.not293.i, label %.loopexit.i, label %.lr.ph259.i

.preheader240.i:                                  ; preds = %bb.k
  br i1 %.not293.i, label %.loopexit.i, label %.lr.ph263.i

.lr.ph263.i:                                      ; preds = %.preheader240.i, %.lr.ph263.i
  %.4262.i = phi ptr [ %i.eb, %.lr.ph263.i ], [ %.0203284.i, %.preheader240.i ] ; 3 uses
  %.4214261.i = phi ptr [ %i.ec, %.lr.ph263.i ], [ %.0202285.i, %.preheader240.i ] ; 3 uses
  %.0222260.i = phi i32 [ %i.ea, %.lr.ph263.i ], [ %.0205282.i, %.preheader240.i ] ; 2 uses
  %i.ds = load <8 x i32>, ptr %.4262.i, align 32, !tbaa !11
  %i.dt = getelementptr inbounds nuw i8, ptr %.4262.i, i64 4
  %i.du = load <8 x i32>, ptr %i.dt, align 4, !tbaa !11
  %i.dv = load <8 x i32>, ptr %.4214261.i, align 32, !tbaa !11
  %i.dw = add <8 x i32> %i.ds, %i.du
  %i.dx = sub <8 x i32> %i.bi, %i.dw
  %i.dy = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.dx, i32 range(i32 0, 256) %i.cu)
  %i.dz = add <8 x i32> %i.dy, %i.dv
  store <8 x i32> %i.dz, ptr %.4214261.i, align 32, !tbaa !11
  %i.ea = add nsw i32 %.0222260.i, -8
end_hunk_0
