Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_transform_avx2?download=true
inline.NumInlined: 35
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN4ojph5localL20avx2_rev_vert_step64EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb:bb.a
  store i64 %i.kf, ptr %.734.ph, align 8, !tbaa !13
  %i.kg = add nsw i32 %.035.ph, -1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.035.unr = phi i32 [ %.035.ph, %scalar.ph.preheader ], [ %i.kg, %scalar.ph.prol ]
  %.734.unr = phi ptr [ %.734.ph, %scalar.ph.preheader ], [ %i.kd, %scalar.ph.prol ]
  %.716033.unr = phi ptr [ %.716033.ph, %scalar.ph.preheader ], [ %i.jv, %scalar.ph.prol ]
  %.716832.unr = phi ptr [ %.716832.ph, %scalar.ph.preheader ], [ %i.jx, %scalar.ph.prol ]
  %i.kh = icmp eq i32 %.035.ph, 1
  br i1 %i.kh, label %.loopexit, label %scalar.ph

.preheader27:                                     ; preds = %bb.g
  br i1 %.not17736, label %.loopexit, label %.lr.ph41

.lr.ph41:                                         ; preds = %.preheader27
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
  %6 = load <8 x float>, ptr %i.g, align 32, !tbaa !11 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %8 = load <8 x float>, ptr %7, align 32, !tbaa !11 ; 2 uses
  %i.l = shufflevector <8 x float> %6, <8 x float> %8, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.m = shufflevector <8 x float> %6, <8 x float> %8, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.n = shufflevector <8 x float> %i.l, <8 x float> %i.m, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.o = shufflevector <8 x float> %i.l, <8 x float> %i.m, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  store <8 x float> %i.n, ptr %i.i, align 32, !tbaa !11
  store <8 x float> %i.o, ptr %i.h, align 32, !tbaa !11
  %i.p = add nsw i32 %4, -16
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.preheader.i
  %.024.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.preheader.i ], [ %i.r, %.lr.ph.i.i.prol ]
  %.01823.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.preheader.i ], [ %i.s, %.lr.ph.i.i.prol ]
  %.01922.i.i.unr = phi ptr [ %i.g, %.lr.ph.i.preheader.i ], [ %i.q, %.lr.ph.i.i.prol ]
  %.02021.i.i.unr = phi i32 [ %4, %.lr.ph.i.preheader.i ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.t = icmp ult i32 %4, 17
  br i1 %i.t, label %_ZN4ojph5localL19avx2_deinterleave32EPfS1_S1_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.024.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.01823.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.01823.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.01922.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.01922.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.02021.i.i = phi i32 [ %i.af, %.lr.ph.i.i ], [ %.02021.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %9 = load <8 x float>, ptr %.01922.i.i, align 32, !tbaa !11 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.01922.i.i, i64 32
  %11 = load <8 x float>, ptr %10, align 32, !tbaa !11 ; 2 uses
  %i.u = shufflevector <8 x float> %9, <8 x float> %11, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.v = shufflevector <8 x float> %9, <8 x float> %11, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.w = shufflevector <8 x float> %i.u, <8 x float> %i.v, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.x = shufflevector <8 x float> %i.u, <8 x float> %i.v, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  store <8 x float> %i.w, ptr %.024.i.i, align 32, !tbaa !11
  store <8 x float> %i.x, ptr %.01823.i.i, align 32, !tbaa !11
  %12 = getelementptr inbounds nuw i8, ptr %.01922.i.i, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.01823.i.i, i64 32
  %13 = load <8 x float>, ptr %12, align 32, !tbaa !11 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01922.i.i, i64 96
  %14 = load <8 x float>, ptr %i.aa, align 32, !tbaa !11 ; 2 uses
  %i.ab = shufflevector <8 x float> %13, <8 x float> %14, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ac = shufflevector <8 x float> %13, <8 x float> %14, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ad = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ae = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  store <8 x float> %i.ad, ptr %i.y, align 32, !tbaa !11
  store <8 x float> %i.ae, ptr %i.z, align 32, !tbaa !11
  %i.af = add nsw i32 %.02021.i.i, -32
  %i.ag = getelementptr inbounds nuw i8, ptr %.01922.i.i, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.01823.i.i, i64 64
  %i.aj = icmp sgt i32 %.02021.i.i, 32
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZN4ojph5localL19avx2_deinterleave32EPfS1_S1_i.exit.i, !llvm.loop !59

_ZN4ojph5localL19avx2_deinterleave32EPfS1_S1_i.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !22  ; 2 uses
  %.not280.i = icmp eq i8 %i.al, 0
  br i1 %.not280.i, label %_ZN4ojph5localL19avx2_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph287.i

.lr.ph287.i:                                      ; preds = %_ZN4ojph5localL19avx2_deinterleave32EPfS1_S1_i.exit.i
  %not..i = xor i1 %5, true
  %i.am = zext i1 %not..i to i32
  %i.an = add i32 %4, %i.am
  %i.ao = lshr i32 %i.an, 1
  %i.ap = zext i1 %5 to i32
  %i.aq = add i32 %4, %i.ap
  %i.ar = lshr i32 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = zext i8 %i.al to i64
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph287.i
  %indvars.iv.i = phi i64 [ %i.ax, %.lr.ph287.i ], [ %i.ay, %.loopexit.i ]
  %.0.in286.i = phi i1 [ %5, %.lr.ph287.i ], [ %i.ft, %.loopexit.i ] ; 5 uses
  %.0202285.i = phi ptr [ %i.av, %.lr.ph287.i ], [ %.0203284.i, %.loopexit.i ] ; 9 uses
  %.0203284.i = phi ptr [ %i.at, %.lr.ph287.i ], [ %.0202285.i, %.loopexit.i ] ; 13 uses
  %.0204283.i = phi i32 [ %i.ar, %.lr.ph287.i ], [ %.0205282.i, %.loopexit.i ] ; 3 uses
  %.0205282.i = phi i32 [ %i.ao, %.lr.ph287.i ], [ %.0204283.i, %.loopexit.i ] ; 11 uses
  %i.ay = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !11 ; 3 uses
  %i.bd = sext i16 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !11 ; 2 uses
  %i.bg = sext i16 %i.bf to i32
  %i.bh = load i8, ptr %i.ba, align 4, !tbaa !11  ; 4 uses
  %i.bi = insertelement <8 x i32> poison, i32 %i.bd, i64 0
  %i.bj = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bk = insertelement <8 x i32> poison, i32 %i.bg, i64 0
  %i.bl = shufflevector <8 x i32> %i.bk, <8 x i32> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.bm = load i32, ptr %.0203284.i, align 4, !tbaa !24
  %i.bn = getelementptr inbounds i8, ptr %.0203284.i, i64 -4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !24
  %i.bo = add nsw i32 %.0204283.i, -1
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.0203284.i, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !24
  %i.bs = zext nneg i32 %.0204283.i to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.0203284.i, i64 %i.bs
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !24
  %i.bu = icmp eq i16 %i.bc, 1
  br i1 %i.bu, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not295.i = icmp eq i32 %.0205282.i, 0         ; 2 uses
  br i1 %.0.in286.i, label %.preheader.i, label %.preheader234.i

.preheader234.i:                                  ; preds = %bb.e
  br i1 %.not295.i, label %.loopexit.i, label %.lr.ph275.i

.lr.ph275.i:                                      ; preds = %.preheader234.i
  %i.bv = zext i8 %i.bh to i32
  br label %bb.g

.preheader.i:                                     ; preds = %bb.e
  br i1 %.not295.i, label %.loopexit.i, label %.lr.ph279.i

.lr.ph279.i:                                      ; preds = %.preheader.i
  %i.bw = zext i8 %i.bh to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph279.i
  %.0207278.i = phi ptr [ %.0203284.i, %.lr.ph279.i ], [ %i.cg, %bb.f ] ; 3 uses
  %.0210277.i = phi ptr [ %.0202285.i, %.lr.ph279.i ], [ %i.ch, %bb.f ] ; 3 uses
  %.0218276.i = phi i32 [ %.0205282.i, %.lr.ph279.i ], [ %i.cf, %bb.f ] ; 2 uses
  %i.bx = load <8 x i32>, ptr %.0207278.i, align 32, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %.0207278.i, i64 4
  %i.bz = load <8 x i32>, ptr %i.by, align 4, !tbaa !11
  %i.ca = load <8 x i32>, ptr %.0210277.i, align 32, !tbaa !11
  %i.cb = add <8 x i32> %i.bx, %i.bl
  %i.cc = add <8 x i32> %i.cb, %i.bz
  %i.cd = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.cc, i32 range(i32 0, 256) %i.bw)
  %i.ce = add <8 x i32> %i.cd, %i.ca
  store <8 x i32> %i.ce, ptr %.0210277.i, align 32, !tbaa !11
  %i.cf = add nsw i32 %.0218276.i, -8
  %i.cg = getelementptr inbounds nuw i8, ptr %.0207278.i, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %.0210277.i, i64 32
  %i.ci = icmp sgt i32 %.0218276.i, 8
  br i1 %i.ci, label %bb.f, label %.loopexit.i, !llvm.loop !60

bb.g:                                             ; preds = %bb.g, %.lr.ph275.i
  %.1274.i = phi ptr [ %.0203284.i, %.lr.ph275.i ], [ %i.cs, %bb.g ] ; 3 uses
  %.1211273.i = phi ptr [ %.0202285.i, %.lr.ph275.i ], [ %i.ct, %bb.g ] ; 3 uses
  %.1219272.i = phi i32 [ %.0205282.i, %.lr.ph275.i ], [ %i.cr, %bb.g ] ; 2 uses
  %i.cj = load <8 x i32>, ptr %.1274.i, align 32, !tbaa !11
  %i.ck = getelementptr inbounds i8, ptr %.1274.i, i64 -4
  %i.cl = load <8 x i32>, ptr %i.ck, align 4, !tbaa !11
  %i.cm = load <8 x i32>, ptr %.1211273.i, align 32, !tbaa !11
  %i.cn = add <8 x i32> %i.cj, %i.bl
  %i.co = add <8 x i32> %i.cn, %i.cl
  %i.cp = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.co, i32 range(i32 0, 256) %i.bv)
  %i.cq = add <8 x i32> %i.cp, %i.cm
  store <8 x i32> %i.cq, ptr %.1211273.i, align 32, !tbaa !11
  %i.cr = add nsw i32 %.1219272.i, -8
  %i.cs = getelementptr inbounds nuw i8, ptr %.1274.i, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %.1211273.i, i64 32
  %i.cu = icmp sgt i32 %.1219272.i, 8
  br i1 %i.cu, label %bb.g, label %.loopexit.i, !llvm.loop !61

bb.h:                                             ; preds = %bb.d
  %i.cv = icmp eq i16 %i.bc, -1                   ; 2 uses
  %i.cw = icmp eq i16 %i.bf, 1
  %or.cond.i = select i1 %i.cv, i1 %i.cw, i1 false
  %i.cx = zext i8 %i.bh to i32                    ; 4 uses
  %i.cy = icmp eq i8 %i.bh, 1
  %or.cond4.i = select i1 %or.cond.i, i1 %i.cy, i1 false
  %.not293.i = icmp eq i32 %.0205282.i, 0         ; 6 uses
  br i1 %or.cond4.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.0.in286.i, label %.preheader236.i, label %.preheader238.i

.preheader238.i:                                  ; preds = %bb.i
  br i1 %.not293.i, label %.loopexit.i, label %.lr.ph267.i

.preheader236.i:                                  ; preds = %bb.i
  br i1 %.not293.i, label %.loopexit.i, label %.lr.ph271.i

.lr.ph271.i:                                      ; preds = %.preheader236.i, %.lr.ph271.i
  %.2270.i = phi ptr [ %i.dh, %.lr.ph271.i ], [ %.0203284.i, %.preheader236.i ] ; 3 uses
  %.2212269.i = phi ptr [ %i.di, %.lr.ph271.i ], [ %.0202285.i, %.preheader236.i ] ; 3 uses
  %.0220268.i = phi i32 [ %i.dg, %.lr.ph271.i ], [ %.0205282.i, %.preheader236.i ] ; 2 uses
  %i.cz = load <8 x i32>, ptr %.2270.i, align 32, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %.2270.i, i64 4
  %i.db = load <8 x i32>, ptr %i.da, align 4, !tbaa !11
  %i.dc = load <8 x i32>, ptr %.2212269.i, align 32, !tbaa !11
  %i.dd = add <8 x i32> %i.db, %i.cz
  %i.de = ashr <8 x i32> %i.dd, splat (i32 1)
  %i.df = sub <8 x i32> %i.dc, %i.de
  store <8 x i32> %i.df, ptr %.2212269.i, align 32, !tbaa !11
  %i.dg = add nsw i32 %.0220268.i, -8
  %i.dh = getelementptr inbounds nuw i8, ptr %.2270.i, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %.2212269.i, i64 32
  %i.dj = icmp sgt i32 %.0220268.i, 8
  br i1 %i.dj, label %.lr.ph271.i, label %.loopexit.i, !llvm.loop !62

.lr.ph267.i:                                      ; preds = %.preheader238.i, %.lr.ph267.i
  %.3266.i = phi ptr [ %i.ds, %.lr.ph267.i ], [ %.0203284.i, %.preheader238.i ] ; 3 uses
  %.3213265.i = phi ptr [ %i.dt, %.lr.ph267.i ], [ %.0202285.i, %.preheader238.i ] ; 3 uses
  %.1221264.i = phi i32 [ %i.dr, %.lr.ph267.i ], [ %.0205282.i, %.preheader238.i ] ; 2 uses
  %i.dk = load <8 x i32>, ptr %.3266.i, align 32, !tbaa !11
  %i.dl = getelementptr inbounds i8, ptr %.3266.i, i64 -4
  %i.dm = load <8 x i32>, ptr %i.dl, align 4, !tbaa !11
  %i.dn = load <8 x i32>, ptr %.3213265.i, align 32, !tbaa !11
  %i.do = add <8 x i32> %i.dm, %i.dk
  %i.dp = ashr <8 x i32> %i.do, splat (i32 1)
  %i.dq = sub <8 x i32> %i.dn, %i.dp
  store <8 x i32> %i.dq, ptr %.3213265.i, align 32, !tbaa !11
  %i.dr = add nsw i32 %.1221264.i, -8
  %i.ds = getelementptr inbounds nuw i8, ptr %.3266.i, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %.3213265.i, i64 32
  %i.du = icmp sgt i32 %.1221264.i, 8
  br i1 %i.du, label %.lr.ph267.i, label %.loopexit.i, !llvm.loop !63

bb.j:                                             ; preds = %bb.h
  br i1 %i.cv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %.0.in286.i, label %.preheader240.i, label %.preheader242.i

.preheader242.i:                                  ; preds = %bb.k
  br i1 %.not293.i, label %.loopexit.i, label %.lr.ph259.i

.preheader240.i:                                  ; preds = %bb.k
  br i1 %.not293.i, label %.loopexit.i, label %.lr.ph263.i

.lr.ph263.i:                                      ; preds = %.preheader240.i, %.lr.ph263.i
  %.4262.i = phi ptr [ %i.ee, %.lr.ph263.i ], [ %.0203284.i, %.preheader240.i ] ; 3 uses
  %.4214261.i = phi ptr [ %i.ef, %.lr.ph263.i ], [ %.0202285.i, %.preheader240.i ] ; 3 uses
  %.0222260.i = phi i32 [ %i.ed, %.lr.ph263.i ], [ %.0205282.i, %.preheader240.i ] ; 2 uses
  %i.dv = load <8 x i32>, ptr %.4262.i, align 32, !tbaa !11
  %i.dw = getelementptr inbounds nuw i8, ptr %.4262.i, i64 4
  %i.dx = load <8 x i32>, ptr %i.dw, align 4, !tbaa !11
  %i.dy = load <8 x i32>, ptr %.4214261.i, align 32, !tbaa !11
  %i.dz = add <8 x i32> %i.dv, %i.dx
  %i.ea = sub <8 x i32> %i.bl, %i.dz
  %i.eb = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.ea, i32 range(i32 0, 256) %i.cx)
  %i.ec = add <8 x i32> %i.eb, %i.dy
  store <8 x i32> %i.ec, ptr %.4214261.i, align 32, !tbaa !11
  %i.ed = add nsw i32 %.0222260.i, -8
  %i.ee = getelementptr inbounds nuw i8, ptr %.4262.i, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %.4214261.i, i64 32
  %i.eg = icmp sgt i32 %.0222260.i, 8
  br i1 %i.eg, label %.lr.ph263.i, label %.loopexit.i, !llvm.loop !64

.lr.ph259.i:                                      ; preds = %.preheader242.i, %.lr.ph259.i
  %.5258.i = phi ptr [ %i.eq, %.lr.ph259.i ], [ %.0203284.i, %.preheader242.i ] ; 3 uses
  %.5215257.i = phi ptr [ %i.er, %.lr.ph259.i ], [ %.0202285.i, %.preheader242.i ] ; 3 uses
  %.1223256.i = phi i32 [ %i.ep, %.lr.ph259.i ], [ %.0205282.i, %.preheader242.i ] ; 2 uses
  %i.eh = load <8 x i32>, ptr %.5258.i, align 32, !tbaa !11
  %i.ei = getelementptr inbounds i8, ptr %.5258.i, i64 -4
  %i.ej = load <8 x i32>, ptr %i.ei, align 4, !tbaa !11
  %i.ek = load <8 x i32>, ptr %.5215257.i, align 32, !tbaa !11
  %i.el = add <8 x i32> %i.eh, %i.ej
  %i.em = sub <8 x i32> %i.bl, %i.el
  %i.en = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.em, i32 range(i32 0, 256) %i.cx)
  %i.eo = add <8 x i32> %i.en, %i.ek
  store <8 x i32> %i.eo, ptr %.5215257.i, align 32, !tbaa !11
  %i.ep = add nsw i32 %.1223256.i, -8
  %i.eq = getelementptr inbounds nuw i8, ptr %.5258.i, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %.5215257.i, i64 32
  %i.es = icmp sgt i32 %.1223256.i, 8
  br i1 %i.es, label %.lr.ph259.i, label %.loopexit.i, !llvm.loop !65

bb.l:                                             ; preds = %bb.j
  br i1 %.0.in286.i, label %.preheader244.i, label %.preheader246.i

.preheader246.i:                                  ; preds = %bb.l
  br i1 %.not293.i, label %.loopexit.i, label %.lr.ph.i

.preheader244.i:                                  ; preds = %bb.l
  br i1 %.not293.i, label %.loopexit.i, label %.lr.ph255.i

.lr.ph255.i:                                      ; preds = %.preheader244.i, %.lr.ph255.i
  %.6254.i = phi ptr [ %i.fd, %.lr.ph255.i ], [ %.0203284.i, %.preheader244.i ] ; 3 uses
  %.0208253.i = phi i32 [ %i.fc, %.lr.ph255.i ], [ %.0205282.i, %.preheader244.i ] ; 2 uses
  %.6216252.i = phi ptr [ %i.fe, %.lr.ph255.i ], [ %.0202285.i, %.preheader244.i ] ; 3 uses
  %i.et = load <8 x i32>, ptr %.6254.i, align 32, !tbaa !11
  %i.eu = getelementptr inbounds nuw i8, ptr %.6254.i, i64 4
  %i.ev = load <8 x i32>, ptr %i.eu, align 4, !tbaa !11
  %i.ew = load <8 x i32>, ptr %.6216252.i, align 32, !tbaa !11
  %i.ex = add <8 x i32> %i.ev, %i.et
  %i.ey = mul <8 x i32> %i.ex, %i.bj
  %i.ez = add <8 x i32> %i.ey, %i.bl
  %i.fa = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.ez, i32 range(i32 0, 256) %i.cx)
  %i.fb = add <8 x i32> %i.fa, %i.ew
  store <8 x i32> %i.fb, ptr %.6216252.i, align 32, !tbaa !11
  %i.fc = add nsw i32 %.0208253.i, -8
  %i.fd = getelementptr inbounds nuw i8, ptr %.6254.i, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %.6216252.i, i64 32
  %i.ff = icmp sgt i32 %.0208253.i, 8
  br i1 %i.ff, label %.lr.ph255.i, label %.loopexit.i, !llvm.loop !66

.lr.ph.i:                                         ; preds = %.preheader246.i, %.lr.ph.i
  %.7251.i = phi ptr [ %i.fq, %.lr.ph.i ], [ %.0203284.i, %.preheader246.i ] ; 3 uses
  %.1209250.i = phi i32 [ %i.fp, %.lr.ph.i ], [ %.0205282.i, %.preheader246.i ] ; 2 uses
  %.7217249.i = phi ptr [ %i.fr, %.lr.ph.i ], [ %.0202285.i, %.preheader246.i ] ; 3 uses
  %i.fg = load <8 x i32>, ptr %.7251.i, align 32, !tbaa !11
  %i.fh = getelementptr inbounds i8, ptr %.7251.i, i64 -4
  %i.fi = load <8 x i32>, ptr %i.fh, align 4, !tbaa !11
  %i.fj = load <8 x i32>, ptr %.7217249.i, align 32, !tbaa !11
  %i.fk = add <8 x i32> %i.fi, %i.fg
  %i.fl = mul <8 x i32> %i.fk, %i.bj
  %i.fm = add <8 x i32> %i.fl, %i.bl
  %i.fn = tail call <8 x i32> @llvm.x86.avx2.psrai.d(<8 x i32> %i.fm, i32 range(i32 0, 256) %i.cx)
  %i.fo = add <8 x i32> %i.fn, %i.fj
  store <8 x i32> %i.fo, ptr %.7217249.i, align 32, !tbaa !11
  %i.fp = add nsw i32 %.1209250.i, -8
  %i.fq = getelementptr inbounds nuw i8, ptr %.7251.i, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %.7217249.i, i64 32
  %i.fs = icmp sgt i32 %.1209250.i, 8
  br i1 %i.fs, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !67

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph255.i, %.lr.ph259.i, %.lr.ph263.i, %.lr.ph267.i, %.lr.ph271.i, %bb.g, %bb.f, %.preheader244.i, %.preheader246.i, %.preheader240.i, %.preheader242.i, %.preheader236.i, %.preheader238.i, %.preheader.i, %.preheader234.i
  %i.ft = xor i1 %.0.in286.i, true
  %.not.wide.i = icmp eq i64 %i.ay, 0
  br i1 %.not.wide.i, label %_ZN4ojph5localL19avx2_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %bb.d, !llvm.loop !68

.loopexit248.sink.split.i:                        ; preds = %bb.b
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !11
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !24
  %.sink315.i = select i1 %5, ptr %1, ptr %2
  %not.316.i = xor i1 %5, true
  %i.fx = zext i1 %not.316.i to i32
  %.sink.i = shl i32 %i.fw, %i.fx
  %i.fy = getelementptr inbounds nuw i8, ptr %.sink315.i, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !11
  store i32 %.sink.i, ptr %i.fz, align 4, !tbaa !24
  br label %_ZN4ojph5localL19avx2_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.m:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.n, label %.loopexit244.sink.split.i

bb.n:                                             ; preds = %bb.m
  %i.ga = icmp sgt i32 %4, 0
  br i1 %i.ga, label %.lr.ph.i.preheader.i26, label %_ZN4ojph5localL19avx2_deinterleave64EPdS1_S1_i.exit.i

.lr.ph.i.preheader.i26:                           ; preds = %bb.n
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !11 ; 4 uses
  %.pn217.i = select i1 %5, ptr %2, ptr %1
  %.in216.i = getelementptr inbounds nuw i8, ptr %.pn217.i, i64 16
  %i.gd = load ptr, ptr %.in216.i, align 8, !tbaa !11 ; 3 uses
  %..i27 = select i1 %5, ptr %1, ptr %2
  %.in.i28 = getelementptr inbounds nuw i8, ptr %..i27, i64 16
  %i.ge = load ptr, ptr %.in.i28, align 8, !tbaa !11 ; 3 uses
  %i.gf = add nuw i32 %4, 15
  %i.gg = and i32 %i.gf, 8
  %lcmp.mod184.not.not = icmp eq i32 %i.gg, 0
  br i1 %lcmp.mod184.not.not, label %.lr.ph.i.i29.prol, label %.lr.ph.i.i29.prol.loopexit

.lr.ph.i.i29.prol:                                ; preds = %.lr.ph.i.preheader.i26
  %15 = load <4 x double>, ptr %i.gc, align 32, !tbaa !11 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %17 = load <4 x double>, ptr %16, align 32, !tbaa !11 ; 2 uses
  %i.gh = shufflevector <4 x double> %15, <4 x double> %17, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.gi = shufflevector <4 x double> %15, <4 x double> %17, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.gj = shufflevector <4 x double> %i.gh, <4 x double> %i.gi, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.gk = shufflevector <4 x double> %i.gh, <4 x double> %i.gi, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  store <4 x double> %i.gj, ptr %i.ge, align 32, !tbaa !11
  store <4 x double> %i.gk, ptr %i.gd, align 32, !tbaa !11
  %i.gl = add nsw i32 %4, -8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  br label %.lr.ph.i.i29.prol.loopexit

.lr.ph.i.i29.prol.loopexit:                       ; preds = %.lr.ph.i.i29.prol, %.lr.ph.i.preheader.i26
  %.024.i.i30.unr = phi ptr [ %i.ge, %.lr.ph.i.preheader.i26 ], [ %i.gn, %.lr.ph.i.i29.prol ]
  %.01823.i.i31.unr = phi ptr [ %i.gd, %.lr.ph.i.preheader.i26 ], [ %i.go, %.lr.ph.i.i29.prol ]
  %.01922.i.i32.unr = phi ptr [ %i.gc, %.lr.ph.i.preheader.i26 ], [ %i.gm, %.lr.ph.i.i29.prol ]
  %.02021.i.i33.unr = phi i32 [ %4, %.lr.ph.i.preheader.i26 ], [ %i.gl, %.lr.ph.i.i29.prol ]
  %i.gp = icmp ult i32 %4, 9
  br i1 %i.gp, label %_ZN4ojph5localL19avx2_deinterleave64EPdS1_S1_i.exit.i, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29
  %.024.i.i30 = phi ptr [ %i.hd, %.lr.ph.i.i29 ], [ %.024.i.i30.unr, %.lr.ph.i.i29.prol.loopexit ] ; 3 uses
  %.01823.i.i31 = phi ptr [ %i.he, %.lr.ph.i.i29 ], [ %.01823.i.i31.unr, %.lr.ph.i.i29.prol.loopexit ] ; 3 uses
  %.01922.i.i32 = phi ptr [ %i.hc, %.lr.ph.i.i29 ], [ %.01922.i.i32.unr, %.lr.ph.i.i29.prol.loopexit ] ; 5 uses
  %.02021.i.i33 = phi i32 [ %i.hb, %.lr.ph.i.i29 ], [ %.02021.i.i33.unr, %.lr.ph.i.i29.prol.loopexit ] ; 2 uses
  %18 = load <4 x double>, ptr %.01922.i.i32, align 32, !tbaa !11 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %.01922.i.i32, i64 32
  %20 = load <4 x double>, ptr %19, align 32, !tbaa !11 ; 2 uses
  %i.gq = shufflevector <4 x double> %18, <4 x double> %20, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.gr = shufflevector <4 x double> %18, <4 x double> %20, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.gs = shufflevector <4 x double> %i.gq, <4 x double> %i.gr, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.gt = shufflevector <4 x double> %i.gq, <4 x double> %i.gr, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  store <4 x double> %i.gs, ptr %.024.i.i30, align 32, !tbaa !11
  store <4 x double> %i.gt, ptr %.01823.i.i31, align 32, !tbaa !11
  %21 = getelementptr inbounds nuw i8, ptr %.01922.i.i32, i64 64
  %i.gu = getelementptr inbounds nuw i8, ptr %.024.i.i30, i64 32
  %i.gv = getelementptr inbounds nuw i8, ptr %.01823.i.i31, i64 32
  %22 = load <4 x double>, ptr %21, align 32, !tbaa !11 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.01922.i.i32, i64 96
  %23 = load <4 x double>, ptr %i.gw, align 32, !tbaa !11 ; 2 uses
  %i.gx = shufflevector <4 x double> %22, <4 x double> %23, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.gy = shufflevector <4 x double> %22, <4 x double> %23, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.gz = shufflevector <4 x double> %i.gx, <4 x double> %i.gy, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.ha = shufflevector <4 x double> %i.gx, <4 x double> %i.gy, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  store <4 x double> %i.gz, ptr %i.gu, align 32, !tbaa !11
  store <4 x double> %i.ha, ptr %i.gv, align 32, !tbaa !11
  %i.hb = add nsw i32 %.02021.i.i33, -16
  %i.hc = getelementptr inbounds nuw i8, ptr %.01922.i.i32, i64 128
  %i.hd = getelementptr inbounds nuw i8, ptr %.024.i.i30, i64 64
  %i.he = getelementptr inbounds nuw i8, ptr %.01823.i.i31, i64 64
  %i.hf = icmp sgt i32 %.02021.i.i33, 16
  br i1 %i.hf, label %.lr.ph.i.i29, label %_ZN4ojph5localL19avx2_deinterleave64EPdS1_S1_i.exit.i, !llvm.loop !69

_ZN4ojph5localL19avx2_deinterleave64EPdS1_S1_i.exit.i: ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29, %bb.n
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !22  ; 2 uses
  %.not278.i = icmp eq i8 %i.hh, 0
  br i1 %.not278.i, label %_ZN4ojph5localL19avx2_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph285.i

.lr.ph285.i:                                      ; preds = %_ZN4ojph5localL19avx2_deinterleave64EPdS1_S1_i.exit.i
  %not..i13 = xor i1 %5, true
  %i.hi = zext i1 %not..i13 to i32
  %i.hj = add i32 %4, %i.hi
  %i.hk = lshr i32 %i.hj, 1
  %i.hl = zext i1 %5 to i32
  %i.hm = add i32 %4, %i.hl
  %i.hn = lshr i32 %i.hm, 1
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !11
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !11
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ht = zext i8 %i.hh to i64
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.i19, %.lr.ph285.i
  %indvars.iv.i14 = phi i64 [ %i.ht, %.lr.ph285.i ], [ %i.hu, %.loopexit.i19 ]
  %.0.in284.i = phi i1 [ %5, %.lr.ph285.i ], [ %i.qb, %.loopexit.i19 ] ; 5 uses
  %.0193283.i = phi ptr [ %i.hr, %.lr.ph285.i ], [ %.0194282.i, %.loopexit.i19 ] ; 21 uses
  %.0194282.i = phi ptr [ %i.hp, %.lr.ph285.i ], [ %.0193283.i, %.loopexit.i19 ] ; 26 uses
  %.0195281.i = phi i32 [ %i.hn, %.lr.ph285.i ], [ %.0196280.i, %.loopexit.i19 ] ; 3 uses
  %.0196280.i = phi i32 [ %i.hk, %.lr.ph285.i ], [ %.0195281.i, %.loopexit.i19 ] ; 21 uses
  %i.hu = add nsw i64 %indvars.iv.i14, -1         ; 3 uses
  %i.hv = load ptr, ptr %i.hs, align 8, !tbaa !23
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.hu ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hy = load i16, ptr %i.hx, align 4, !tbaa !11 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !11 ; 2 uses
  %i.ib = load i8, ptr %i.hw, align 4, !tbaa !11  ; 4 uses
  %i.ic = sext i16 %i.ia to i64                   ; 9 uses
  %i.id = insertelement <4 x i64> poison, i64 %i.ic, i64 0
  %i.ie = shufflevector <4 x i64> %i.id, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.if = zext i8 %i.ib to i32                    ; 5 uses
  %i.ig = sub nsw i32 63, %i.if
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = shl nuw i64 1, %i.ih
  %i.ij = insertelement <4 x i64> poison, i64 %i.ii, i64 0
  %i.ik = shufflevector <4 x i64> %i.ij, <4 x i64> poison, <4 x i32> zeroinitializer ; 12 uses
  %i.il = load i64, ptr %.0194282.i, align 8, !tbaa !13
  %i.im = getelementptr inbounds i8, ptr %.0194282.i, i64 -8
  store i64 %i.il, ptr %i.im, align 8, !tbaa !13
  %i.in = add nsw i32 %.0195281.i, -1
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %.0194282.i, i64 %i.io
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !13
  %i.ir = zext nneg i32 %.0195281.i to i64
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.0194282.i, i64 %i.ir
  store i64 %i.iq, ptr %i.is, align 8, !tbaa !13
  %i.it = icmp eq i16 %i.hy, 1
  br i1 %i.it, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not291.i = icmp eq i32 %.0196280.i, 0         ; 2 uses
  br i1 %.0.in284.i, label %.preheader.i25, label %.preheader230.i

.preheader230.i:                                  ; preds = %bb.p
  br i1 %.not291.i, label %.loopexit.i19, label %.lr.ph273.i

.preheader.i25:                                   ; preds = %bb.p
  br i1 %.not291.i, label %.loopexit.i19, label %.lr.ph277.i

.lr.ph277.i:                                      ; preds = %.preheader.i25, %.lr.ph277.i
  %.0199276.i = phi ptr [ %i.jf, %.lr.ph277.i ], [ %.0194282.i, %.preheader.i25 ] ; 3 uses
  %.0201275.i = phi ptr [ %i.jg, %.lr.ph277.i ], [ %.0193283.i, %.preheader.i25 ] ; 3 uses
  %.0209274.i = phi i32 [ %i.je, %.lr.ph277.i ], [ %.0196280.i, %.preheader.i25 ] ; 2 uses
  %i.iu = load <4 x i64>, ptr %.0199276.i, align 32, !tbaa !11
  %i.iv = getelementptr inbounds nuw i8, ptr %.0199276.i, i64 8
  %i.iw = load <4 x i64>, ptr %i.iv, align 8, !tbaa !11
  %i.ix = load <4 x i64>, ptr %.0201275.i, align 32, !tbaa !11
  %i.iy = add <4 x i64> %i.iu, %i.ie
  %i.iz = add <4 x i64> %i.iy, %i.iw
  %i.ja = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.iz, i32 range(i32 0, 256) %i.if)
  %i.jb = xor <4 x i64> %i.ja, %i.ik
  %i.jc = sub <4 x i64> %i.ix, %i.ik
  %i.jd = add <4 x i64> %i.jc, %i.jb
  store <4 x i64> %i.jd, ptr %.0201275.i, align 32, !tbaa !11
  %i.je = add nsw i32 %.0209274.i, -4
  %i.jf = getelementptr inbounds nuw i8, ptr %.0199276.i, i64 32
  %i.jg = getelementptr inbounds nuw i8, ptr %.0201275.i, i64 32
  %i.jh = icmp sgt i32 %.0209274.i, 4
  br i1 %i.jh, label %.lr.ph277.i, label %.loopexit.i19, !llvm.loop !70

.lr.ph273.i:                                      ; preds = %.preheader230.i, %.lr.ph273.i
  %.1200272.i = phi ptr [ %i.jt, %.lr.ph273.i ], [ %.0194282.i, %.preheader230.i ] ; 3 uses
  %.1202271.i = phi ptr [ %i.ju, %.lr.ph273.i ], [ %.0193283.i, %.preheader230.i ] ; 3 uses
  %.1210270.i = phi i32 [ %i.js, %.lr.ph273.i ], [ %.0196280.i, %.preheader230.i ] ; 2 uses
  %i.ji = load <4 x i64>, ptr %.1200272.i, align 32, !tbaa !11
  %i.jj = getelementptr inbounds i8, ptr %.1200272.i, i64 -8
  %i.jk = load <4 x i64>, ptr %i.jj, align 8, !tbaa !11
  %i.jl = load <4 x i64>, ptr %.1202271.i, align 32, !tbaa !11
  %i.jm = add <4 x i64> %i.ji, %i.ie
  %i.jn = add <4 x i64> %i.jm, %i.jk
  %i.jo = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.jn, i32 range(i32 0, 256) %i.if)
  %i.jp = xor <4 x i64> %i.jo, %i.ik
  %i.jq = sub <4 x i64> %i.jl, %i.ik
  %i.jr = add <4 x i64> %i.jq, %i.jp
  store <4 x i64> %i.jr, ptr %.1202271.i, align 32, !tbaa !11
  %i.js = add nsw i32 %.1210270.i, -4
  %i.jt = getelementptr inbounds nuw i8, ptr %.1200272.i, i64 32
  %i.ju = getelementptr inbounds nuw i8, ptr %.1202271.i, i64 32
  %i.jv = icmp sgt i32 %.1210270.i, 4
  br i1 %i.jv, label %.lr.ph273.i, label %.loopexit.i19, !llvm.loop !71

bb.q:                                             ; preds = %bb.o
  %i.jw = icmp eq i16 %i.hy, -1                   ; 2 uses
  %i.jx = icmp eq i16 %i.ia, 1
  %or.cond.i15 = and i1 %i.jw, %i.jx
  %i.jy = icmp eq i8 %i.ib, 1
  %or.cond4.i16 = select i1 %or.cond.i15, i1 %i.jy, i1 false
  %.not289.i = icmp eq i32 %.0196280.i, 0         ; 6 uses
  br i1 %or.cond4.i16, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br i1 %.0.in284.i, label %.preheader232.i, label %.preheader234.i24

.preheader234.i24:                                ; preds = %bb.r
  br i1 %.not289.i, label %.loopexit.i19, label %.lr.ph265.i

.preheader232.i:                                  ; preds = %bb.r
  br i1 %.not289.i, label %.loopexit.i19, label %.lr.ph269.i

.lr.ph269.i:                                      ; preds = %.preheader232.i, %.lr.ph269.i
  %.2268.i = phi ptr [ %i.ki, %.lr.ph269.i ], [ %.0194282.i, %.preheader232.i ] ; 3 uses
  %.2203267.i = phi ptr [ %i.kj, %.lr.ph269.i ], [ %.0193283.i, %.preheader232.i ] ; 3 uses
  %.0211266.i = phi i32 [ %i.kh, %.lr.ph269.i ], [ %.0196280.i, %.preheader232.i ] ; 2 uses
  %i.jz = load <4 x i64>, ptr %.2268.i, align 32, !tbaa !11
  %i.ka = getelementptr inbounds nuw i8, ptr %.2268.i, i64 8
  %i.kb = load <4 x i64>, ptr %i.ka, align 8, !tbaa !11
  %i.kc = load <4 x i64>, ptr %.2203267.i, align 32, !tbaa !11
  %i.kd = add <4 x i64> %i.kb, %i.jz
  %i.ke = lshr <4 x i64> %i.kd, splat (i64 1)
  %i.kf = xor <4 x i64> %i.ke, %i.ik
  %.neg220.i = add <4 x i64> %i.kc, %i.ik
  %i.kg = sub <4 x i64> %.neg220.i, %i.kf
  store <4 x i64> %i.kg, ptr %.2203267.i, align 32, !tbaa !11
  %i.kh = add nsw i32 %.0211266.i, -4
  %i.ki = getelementptr inbounds nuw i8, ptr %.2268.i, i64 32
  %i.kj = getelementptr inbounds nuw i8, ptr %.2203267.i, i64 32
  %i.kk = icmp sgt i32 %.0211266.i, 4
  br i1 %i.kk, label %.lr.ph269.i, label %.loopexit.i19, !llvm.loop !72

.lr.ph265.i:                                      ; preds = %.preheader234.i24, %.lr.ph265.i
  %.3264.i = phi ptr [ %i.ku, %.lr.ph265.i ], [ %.0194282.i, %.preheader234.i24 ] ; 3 uses
  %.3204263.i = phi ptr [ %i.kv, %.lr.ph265.i ], [ %.0193283.i, %.preheader234.i24 ] ; 3 uses
  %.1212262.i = phi i32 [ %i.kt, %.lr.ph265.i ], [ %.0196280.i, %.preheader234.i24 ] ; 2 uses
  %i.kl = load <4 x i64>, ptr %.3264.i, align 32, !tbaa !11
  %i.km = getelementptr inbounds i8, ptr %.3264.i, i64 -8
  %i.kn = load <4 x i64>, ptr %i.km, align 8, !tbaa !11
  %i.ko = load <4 x i64>, ptr %.3204263.i, align 32, !tbaa !11
  %i.kp = add <4 x i64> %i.kn, %i.kl
  %i.kq = lshr <4 x i64> %i.kp, splat (i64 1)
  %i.kr = xor <4 x i64> %i.kq, %i.ik
  %.neg.i = add <4 x i64> %i.ko, %i.ik
  %i.ks = sub <4 x i64> %.neg.i, %i.kr
  store <4 x i64> %i.ks, ptr %.3204263.i, align 32, !tbaa !11
  %i.kt = add nsw i32 %.1212262.i, -4
  %i.ku = getelementptr inbounds nuw i8, ptr %.3264.i, i64 32
  %i.kv = getelementptr inbounds nuw i8, ptr %.3204263.i, i64 32
  %i.kw = icmp sgt i32 %.1212262.i, 4
  br i1 %i.kw, label %.lr.ph265.i, label %.loopexit.i19, !llvm.loop !73

bb.s:                                             ; preds = %bb.q
  br i1 %i.jw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br i1 %.0.in284.i, label %.preheader236.i23, label %.preheader238.i22

.preheader238.i22:                                ; preds = %bb.t
  br i1 %.not289.i, label %.loopexit.i19, label %.lr.ph257.i

.preheader236.i23:                                ; preds = %bb.t
  br i1 %.not289.i, label %.loopexit.i19, label %.lr.ph261.i

.lr.ph261.i:                                      ; preds = %.preheader236.i23, %.lr.ph261.i
  %.0198260.i = phi i32 [ %i.lh, %.lr.ph261.i ], [ %.0196280.i, %.preheader236.i23 ] ; 2 uses
  %.4259.i = phi ptr [ %i.li, %.lr.ph261.i ], [ %.0194282.i, %.preheader236.i23 ] ; 3 uses
  %.4205258.i = phi ptr [ %i.lj, %.lr.ph261.i ], [ %.0193283.i, %.preheader236.i23 ] ; 3 uses
  %i.kx = load <4 x i64>, ptr %.4259.i, align 32, !tbaa !11
  %i.ky = getelementptr inbounds nuw i8, ptr %.4259.i, i64 8
  %i.kz = load <4 x i64>, ptr %i.ky, align 8, !tbaa !11
  %i.la = load <4 x i64>, ptr %.4205258.i, align 32, !tbaa !11
  %i.lb = add <4 x i64> %i.kx, %i.kz
  %i.lc = sub <4 x i64> %i.ie, %i.lb
  %i.ld = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.lc, i32 range(i32 0, 256) %i.if)
  %i.le = xor <4 x i64> %i.ld, %i.ik
end_hunk_0
