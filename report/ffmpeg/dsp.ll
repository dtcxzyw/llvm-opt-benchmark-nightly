Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dsp?download=true
inline.NumInlined: 81
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 168
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 307
begin_hunk_0_@apply_bdof_12:bb.a
  %i.im = sub nsw i32 %i.ij, %i.il
  %.not.i.i = icmp samesign ult i32 %op.rdx138, 65536 ; 2 uses
  %i.in = lshr i32 %op.rdx138, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %op.rdx138, i32 %i.in ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.io = lshr i32 %spec.select.i.i, 8
  %i.ip = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.io
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.ip
  %i.iq = zext nneg i32 %.110.i.i to i64
  %i.ir = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !40
  %i.it = zext i8 %i.is to i32
  %i.iu = add nuw nsw i32 %.1.i.i, %i.it
  %i.iv = ashr i32 %i.im, %i.iu
  %i.iw = tail call i32 @llvm.smax.i32(i32 %i.iv, i32 -15)
  %.0.i.i = tail call i32 @llvm.smin.i32(i32 %i.iw, i32 15)
  br label %derive_bdof_vx_vy_12.exit

derive_bdof_vx_vy_12.exit:                        ; preds = %bb.f, %bb.g
  %i.ix = phi i32 [ %.0.i.i, %bb.g ], [ 0, %bb.f ] ; 4 uses
  br label %.preheader.i72

.preheader.i72:                                   ; preds = %.preheader.i72, %derive_bdof_vx_vy_12.exit
  %indvars.iv.i73 = phi i64 [ 0, %derive_bdof_vx_vy_12.exit ], [ %indvars.iv.next.i74, %.preheader.i72 ] ; 2 uses
  %.09.i = phi ptr [ %i.cw, %derive_bdof_vx_vy_12.exit ], [ %i.nt, %.preheader.i72 ] ; 5 uses
  %.0268.i = phi ptr [ %i.ck, %derive_bdof_vx_vy_12.exit ], [ %i.nu, %.preheader.i72 ] ; 5 uses
  %.0296.i = phi ptr [ %i.cl, %derive_bdof_vx_vy_12.exit ], [ %i.nv, %.preheader.i72 ] ; 5 uses
  %i.iy = shl nuw nsw i64 %indvars.iv.i73, 4      ; 7 uses
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 8, !tbaa !34
  %i.jb = sext i16 %i.ja to i32
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.iy
  %i.jd = load i16, ptr %i.jc, align 8, !tbaa !34
  %i.je = sext i16 %i.jd to i32
  %i.jf = sub nsw i32 %i.jb, %i.je
  %i.jg = mul nsw i32 %i.jf, %i.ih
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.iy
  %i.ji = load i16, ptr %i.jh, align 8, !tbaa !34
  %i.jj = sext i16 %i.ji to i32
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.iy
  %i.jl = load i16, ptr %i.jk, align 8, !tbaa !34
  %i.jm = sext i16 %i.jl to i32
  %i.jn = sub nsw i32 %i.jj, %i.jm
  %i.jo = mul nsw i32 %i.jn, %i.ix
  %i.jp = load i16, ptr %.0268.i, align 2, !tbaa !34
  %i.jq = sext i16 %i.jp to i32
  %i.jr = load i16, ptr %.0296.i, align 2, !tbaa !34
  %i.js = sext i16 %i.jr to i32
  %i.jt = add nsw i32 %i.jg, 4
  %i.ju = add nsw i32 %i.jt, %i.jq
  %i.jv = add nsw i32 %i.ju, %i.js
  %i.jw = add nsw i32 %i.jv, %i.jo
  %i.jx = ashr i32 %i.jw, 3
  %i.jy = tail call i32 @llvm.smax.i32(i32 %i.jx, i32 0)
  %i.jz = tail call i32 @llvm.umin.i32(i32 %i.jy, i32 4095)
  %i.ka = trunc nuw nsw i32 %i.jz to i16
  store i16 %i.ka, ptr %.09.i, align 2, !tbaa !34
  %i.kb = or disjoint i64 %i.iy, 1                ; 4 uses
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !34
  %i.ke = sext i16 %i.kd to i32
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.kb
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !34
  %i.kh = sext i16 %i.kg to i32
  %i.ki = sub nsw i32 %i.ke, %i.kh
  %i.kj = mul nsw i32 %i.ki, %i.ih
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.kb
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !34
  %i.km = sext i16 %i.kl to i32
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.kb
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !34
  %i.kp = sext i16 %i.ko to i32
  %i.kq = sub nsw i32 %i.km, %i.kp
  %i.kr = mul nsw i32 %i.kq, %i.ix
  %i.ks = getelementptr inbounds nuw i8, ptr %.0268.i, i64 2
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !34
  %i.ku = sext i16 %i.kt to i32
  %i.kv = getelementptr inbounds nuw i8, ptr %.0296.i, i64 2
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !34
  %i.kx = sext i16 %i.kw to i32
  %i.ky = add nsw i32 %i.kj, 4
  %i.kz = add nsw i32 %i.ky, %i.ku
  %i.la = add nsw i32 %i.kz, %i.kx
  %i.lb = add nsw i32 %i.la, %i.kr
  %i.lc = ashr i32 %i.lb, 3
  %i.ld = tail call i32 @llvm.smax.i32(i32 %i.lc, i32 0)
  %i.le = tail call i32 @llvm.umin.i32(i32 %i.ld, i32 4095)
  %i.lf = trunc nuw nsw i32 %i.le to i16
  %i.lg = getelementptr inbounds nuw i8, ptr %.09.i, i64 2
  store i16 %i.lf, ptr %i.lg, align 2, !tbaa !34
  %i.lh = or disjoint i64 %i.iy, 2                ; 4 uses
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 4, !tbaa !34
  %i.lk = sext i16 %i.lj to i32
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.lh
  %i.lm = load i16, ptr %i.ll, align 4, !tbaa !34
  %i.ln = sext i16 %i.lm to i32
  %i.lo = sub nsw i32 %i.lk, %i.ln
  %i.lp = mul nsw i32 %i.lo, %i.ih
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.lh
  %i.lr = load i16, ptr %i.lq, align 4, !tbaa !34
  %i.ls = sext i16 %i.lr to i32
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.lh
  %i.lu = load i16, ptr %i.lt, align 4, !tbaa !34
  %i.lv = sext i16 %i.lu to i32
  %i.lw = sub nsw i32 %i.ls, %i.lv
  %i.lx = mul nsw i32 %i.lw, %i.ix
  %i.ly = getelementptr inbounds nuw i8, ptr %.0268.i, i64 4
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !34
  %i.ma = sext i16 %i.lz to i32
  %i.mb = getelementptr inbounds nuw i8, ptr %.0296.i, i64 4
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !34
  %i.md = sext i16 %i.mc to i32
  %i.me = add nsw i32 %i.lp, 4
  %i.mf = add nsw i32 %i.me, %i.ma
  %i.mg = add nsw i32 %i.mf, %i.md
  %i.mh = add nsw i32 %i.mg, %i.lx
  %i.mi = ashr i32 %i.mh, 3
  %i.mj = tail call i32 @llvm.smax.i32(i32 %i.mi, i32 0)
  %i.mk = tail call i32 @llvm.umin.i32(i32 %i.mj, i32 4095)
  %i.ml = trunc nuw nsw i32 %i.mk to i16
  %i.mm = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  store i16 %i.ml, ptr %i.mm, align 2, !tbaa !34
  %i.mn = or disjoint i64 %i.iy, 3                ; 4 uses
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.mn
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !34
  %i.mq = sext i16 %i.mp to i32
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.mn
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !34
  %i.mt = sext i16 %i.ms to i32
  %i.mu = sub nsw i32 %i.mq, %i.mt
  %i.mv = mul nsw i32 %i.mu, %i.ih
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.mn
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !34
  %i.my = sext i16 %i.mx to i32
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.mn
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !34
  %i.nb = sext i16 %i.na to i32
  %i.nc = sub nsw i32 %i.my, %i.nb
  %i.nd = mul nsw i32 %i.nc, %i.ix
  %i.ne = getelementptr inbounds nuw i8, ptr %.0268.i, i64 6
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !34
  %i.ng = sext i16 %i.nf to i32
  %i.nh = getelementptr inbounds nuw i8, ptr %.0296.i, i64 6
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !34
  %i.nj = sext i16 %i.ni to i32
  %i.nk = add nsw i32 %i.mv, 4
  %i.nl = add nsw i32 %i.nk, %i.ng
  %i.nm = add nsw i32 %i.nl, %i.nj
  %i.nn = add nsw i32 %i.nm, %i.nd
  %i.no = ashr i32 %i.nn, 3
  %i.np = tail call i32 @llvm.smax.i32(i32 %i.no, i32 0)
  %i.nq = tail call i32 @llvm.umin.i32(i32 %i.np, i32 4095)
  %i.nr = trunc nuw nsw i32 %i.nq to i16
  %i.ns = getelementptr inbounds nuw i8, ptr %.09.i, i64 6
  store i16 %i.nr, ptr %i.ns, align 2, !tbaa !34
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %.09.i, i64 %i.c
  %i.nu = getelementptr inbounds nuw i8, ptr %.0268.i, i64 256
  %i.nv = getelementptr inbounds nuw i8, ptr %.0296.i, i64 256
  %indvars.iv.next.i74 = add nuw nsw i64 %indvars.iv.i73, 1 ; 2 uses
  %exitcond.not.i75 = icmp eq i64 %indvars.iv.next.i74, 4
  br i1 %exitcond.not.i75, label %apply_bdof_min_block_12.exit, label %.preheader.i72, !llvm.loop !613

apply_bdof_min_block_12.exit:                     ; preds = %.preheader.i72
  %i.nw = icmp samesign ult i64 %indvars.iv.next, %i.by
  br i1 %i.nw, label %bb.b, label %._crit_edge, !llvm.loop !614
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @vvc_sad(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #4 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge43

.preheader.us.preheader:                          ; preds = %bb.a
  %i.c = shl i32 %3, 7
  %i.d = add i32 %2, %i.c                         ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr %0, i64 %i.e
  %i.g = sub i32 516, %i.d
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [2 x i8], ptr %1, i64 %i.h
  %wide.trip.count = zext nneg i32 %4 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.02942.us = phi i32 [ %i.y, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.03041.us = phi i32 [ %.lcssa, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.03140.us = phi ptr [ %i.w, %._crit_edge.us ], [ %i.f, %.preheader.us.preheader ] ; 3 uses
  %.03239.us = phi ptr [ %i.x, %._crit_edge.us ], [ %i.i, %.preheader.us.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us
  %6 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.03041.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %6, %vector.ph ], [ %17, %vector.body ]
  %vec.phi49 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %18, %vector.body ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.03140.us, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %wide.load.a = load <4 x i16>, ptr %i.j, align 2, !tbaa !34
  %wide.load50.a = load <4 x i16>, ptr %i.k, align 2, !tbaa !34
  %7 = sext <4 x i16> %wide.load.a to <4 x i32>
  %8 = sext <4 x i16> %wide.load50.a to <4 x i32>
  %9 = getelementptr inbounds nuw [2 x i8], ptr %.03239.us, i64 %index ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %wide.load51 = load <4 x i16>, ptr %9, align 2, !tbaa !34
  %wide.load52 = load <4 x i16>, ptr %10, align 2, !tbaa !34
  %11 = sext <4 x i16> %wide.load51 to <4 x i32>
  %12 = sext <4 x i16> %wide.load52 to <4 x i32>
  %13 = sub nsw <4 x i32> %7, %11
  %14 = sub nsw <4 x i32> %8, %12
  %15 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %13, i1 true)
  %16 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %14, i1 true)
  %17 = add <4 x i32> %15, %vec.phi               ; 2 uses
  %18 = add <4 x i32> %16, %vec.phi49             ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !615

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %18, %17
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.137.us.ph = phi i32 [ %.03041.us, %.preheader.us ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.137.us = phi i32 [ %i.v, %scalar.ph ], [ %.137.us.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.03140.us, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !34
  %i.p = sext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.03239.us, i64 %indvars.iv
  %i.r = load i16, ptr %i.q, align 2, !tbaa !34
  %i.s = sext i16 %i.r to i32
  %i.t = sub nsw i32 %i.p, %i.s
  %i.u = tail call i32 @llvm.abs.i32(i32 %i.t, i1 true)
  %i.v = add nsw i32 %i.u, %.137.us               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !616

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.m, %middle.block ], [ %i.v, %scalar.ph ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.03140.us, i64 512
  %i.x = getelementptr inbounds nuw i8, ptr %.03239.us, i64 512
  %i.y = add nuw nsw i32 %.02942.us, 2            ; 2 uses
  %i.z = icmp slt i32 %i.y, %5
  br i1 %i.z, label %.preheader.us, label %._crit_edge43, !llvm.loop !617

._crit_edge43:                                    ; preds = %._crit_edge.us, %bb.a
  %.030.lcssa = phi i32 [ 0, %bb.a ], [ %.lcssa, %._crit_edge.us ]
  ret i32 %.030.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal void @lmcs_scale_chroma_12(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2064
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2608
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !97   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i16, ptr %i.f, align 8, !tbaa !100
  %narrow.i = tail call i16 @llvm.umin.i16(i16 %i.g, i16 64)
  %spec.select.i = zext nneg i16 %narrow.i to i32 ; 7 uses
  %i.h = sub nsw i32 0, %spec.select.i            ; 2 uses
  %i.i = and i32 %4, %i.h                         ; 6 uses
  %i.j = and i32 %5, %i.h                         ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101
  %.not.i21 = icmp eq i32 %i.m, %i.i
  br i1 %.not.i21, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.o = load i32, ptr %i.n, align 4, !tbaa !102
  %.not65.i = icmp eq i32 %i.o, %i.j
  br i1 %.not65.i, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !103
  br label %lmcs_derive_chroma_scale_12.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 2048
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !104  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !105
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !106  ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.j
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.y = load i8, ptr %i.x, align 4, !tbaa !107
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = shl i32 %i.i, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 %i.ab ; 2 uses
  %i.ad = sext i32 %i.t to i64
  %i.ae = lshr i64 %i.ad, 1                       ; 11 uses
  %i.af = tail call i32 @ff_vvc_get_top_available(ptr noundef nonnull %0, i32 noundef %i.i, i32 noundef %i.j, i32 noundef 1, i32 noundef 0) #14
  %i.ag = tail call i32 @ff_vvc_get_left_available(ptr noundef nonnull %0, i32 noundef %i.i, i32 noundef %i.j, i32 noundef 1, i32 noundef 0) #14
  %.not66.i = icmp eq i32 %i.ag, 0
  br i1 %.not66.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 -2 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 2072
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !108
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !111
  %i.am = zext i16 %i.al to i32
  %i.an = sub nsw i32 %i.am, %i.j
  %i.ao = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483647, -2147483648) %i.an, i32 range(i32 0, 65) %spec.select.i) ; 5 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.preheader, label %lmcs_sum_samples_12.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter = and i32 %i.ao, 7                    ; 3 uses
  %i.aq = icmp ult i32 %i.ao, 8
  br i1 %i.aq, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ao, 2147483640
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.01620.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bv, %.lr.ph.i.i ]
  %.01719.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.preheader.new ], [ %i.bw, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.ar = load i16, ptr %.01719.i.i, align 2, !tbaa !34
  %i.as = zext i16 %i.ar to i32
  %i.at = add nuw nsw i32 %.01620.i.i, %i.as
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.01719.i.i, i64 %i.ae ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !34
  %i.aw = zext i16 %i.av to i32
  %i.ax = add nuw nsw i32 %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.ae ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !34
  %i.ba = zext i16 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ae ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !34
  %i.be = zext i16 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.ae ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !34
  %i.bi = zext i16 %i.bh to i32
  %i.bj = add nuw nsw i32 %i.bf, %i.bi
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.ae ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !34
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.bj, %i.bm
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.ae ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !34
  %i.bq = zext i16 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.ae ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !34
  %i.bu = zext i16 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.br, %i.bu            ; 3 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.ae ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %lmcs_sum_samples_12.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !618

lmcs_sum_samples_12.exit.i.loopexit.unr-lcssa:    ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %lmcs_sum_samples_12.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %lmcs_sum_samples_12.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.01620.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bv, %lmcs_sum_samples_12.exit.i.loopexit.unr-lcssa ]
  %.01719.i.i.epil.init = phi ptr [ %i.ah, %.lr.ph.i.i.preheader ], [ %i.bw, %lmcs_sum_samples_12.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod82 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.01620.i.i.epil = phi i32 [ %i.bz, %.lr.ph.i.i.epil ], [ %.01620.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.01719.i.i.epil = phi ptr [ %i.ca, %.lr.ph.i.i.epil ], [ %.01719.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bx = load i16, ptr %.01719.i.i.epil, align 2, !tbaa !34
  %i.by = zext i16 %i.bx to i32
  %i.bz = add nuw nsw i32 %.01620.i.i.epil, %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.01719.i.i.epil, i64 %i.ae ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %lmcs_sum_samples_12.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !619

lmcs_sum_samples_12.exit.i:                       ; preds = %lmcs_sum_samples_12.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d
  %.017.lcssa.i.i = phi ptr [ %i.ah, %bb.d ], [ %i.bw, %lmcs_sum_samples_12.exit.i.loopexit.unr-lcssa ], [ %i.ca, %.lr.ph.i.i.epil ]
  %.016.lcssa.i.i = phi i32 [ 0, %bb.d ], [ %i.bv, %lmcs_sum_samples_12.exit.i.loopexit.unr-lcssa ], [ %i.bz, %.lr.ph.i.i.epil ]
  %i.cb = sub nsw i64 0, %i.ae
  %i.cc = getelementptr inbounds [2 x i8], ptr %.017.lcssa.i.i, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !34
  %i.ce = zext i16 %i.cd to i32
  %i.cf = sub nsw i32 %spec.select.i, %i.ao
  %i.cg = mul nuw nsw i32 %i.cf, %i.ce
  %i.ch = add nuw nsw i32 %i.cg, %.016.lcssa.i.i
  br label %bb.e

bb.e:                                             ; preds = %lmcs_sum_samples_12.exit.i, %bb.c
  %.062.i = phi i32 [ %spec.select.i, %lmcs_sum_samples_12.exit.i ], [ 0, %bb.c ] ; 2 uses
  %.061.i = phi i32 [ %i.ch, %lmcs_sum_samples_12.exit.i ], [ 0, %bb.c ] ; 2 uses
  %.not67.i = icmp eq i32 %i.af, 0
  br i1 %.not67.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ci = sub nsw i64 0, %i.ae
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.ci ; 19 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 2072
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !108
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 30
end_hunk_0
begin_hunk_1_@alf_recon_coeff_and_clip_8:bb.a
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !40
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr @__const.alf_recon_coeff_and_clip_8.clip_set, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %.02227, i64 4
  store i16 %i.ak, ptr %i.z, align 2, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !106
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %.029, i64 6
  store i16 %i.aq, ptr %i.af, align 2, !tbaa !34
  %i.as = getelementptr inbounds i8, ptr %i.k, i64 %i.ao
  %i.at = load i8, ptr %i.as, align 1, !tbaa !40
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @__const.alf_recon_coeff_and_clip_8.clip_set, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %.02227, i64 6
  store i16 %i.aw, ptr %i.al, align 2, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !106
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !34
  %i.bd = getelementptr inbounds nuw i8, ptr %.029, i64 8
  store i16 %i.bc, ptr %i.ar, align 2, !tbaa !34
  %i.be = getelementptr inbounds i8, ptr %i.k, i64 %i.ba
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !40
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr @__const.alf_recon_coeff_and_clip_8.clip_set, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %.02227, i64 8
  store i16 %i.bi, ptr %i.ax, align 2, !tbaa !34
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bl = load i32, ptr %i.bk, align 16, !tbaa !106
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !34
  %i.bp = getelementptr inbounds nuw i8, ptr %.029, i64 10
  store i16 %i.bo, ptr %i.bd, align 2, !tbaa !34
  %i.bq = getelementptr inbounds i8, ptr %i.k, i64 %i.bm
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !40
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr @__const.alf_recon_coeff_and_clip_8.clip_set, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !34
  %i.bv = getelementptr inbounds nuw i8, ptr %.02227, i64 10
  store i16 %i.bu, ptr %i.bj, align 2, !tbaa !34
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !106
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %.029, i64 12
  store i16 %i.ca, ptr %i.bp, align 2, !tbaa !34
  %i.cc = getelementptr inbounds i8, ptr %i.k, i64 %i.by
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !40
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr @__const.alf_recon_coeff_and_clip_8.clip_set, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !34
  %i.ch = getelementptr inbounds nuw i8, ptr %.02227, i64 12
  store i16 %i.cg, ptr %i.bv, align 2, !tbaa !34
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !106
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !34
  %i.cn = getelementptr inbounds nuw i8, ptr %.029, i64 14
  store i16 %i.cm, ptr %i.cb, align 2, !tbaa !34
  %i.co = getelementptr inbounds i8, ptr %i.k, i64 %i.ck
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !40
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr @__const.alf_recon_coeff_and_clip_8.clip_set, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !34
  %i.ct = getelementptr inbounds nuw i8, ptr %.02227, i64 14
  store i16 %i.cs, ptr %i.ch, align 2, !tbaa !34
  %i.cu = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !106
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !34
  %i.cz = getelementptr inbounds nuw i8, ptr %.029, i64 16
  store i16 %i.cy, ptr %i.cn, align 2, !tbaa !34
  %i.da = getelementptr inbounds i8, ptr %i.k, i64 %i.cw
  %i.db = load i8, ptr %i.da, align 1, !tbaa !40
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr @__const.alf_recon_coeff_and_clip_8.clip_set, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !34
  %i.df = getelementptr inbounds nuw i8, ptr %.02227, i64 16
  store i16 %i.de, ptr %i.ct, align 2, !tbaa !34
  %i.dg = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.dh = load i32, ptr %i.dg, align 16, !tbaa !106
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !34
  %i.dl = getelementptr inbounds nuw i8, ptr %.029, i64 18
  store i16 %i.dk, ptr %i.cz, align 2, !tbaa !34
  %i.dm = getelementptr inbounds i8, ptr %i.k, i64 %i.di
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !40
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr @__const.alf_recon_coeff_and_clip_8.clip_set, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !34
  %i.dr = getelementptr inbounds nuw i8, ptr %.02227, i64 18
  store i16 %i.dq, ptr %i.df, align 2, !tbaa !34
  %i.ds = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !106
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !34
  %i.dx = getelementptr inbounds nuw i8, ptr %.029, i64 20
  store i16 %i.dw, ptr %i.dl, align 2, !tbaa !34
  %i.dy = getelementptr inbounds i8, ptr %i.k, i64 %i.du
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !40
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr @__const.alf_recon_coeff_and_clip_8.clip_set, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !34
  %i.ed = getelementptr inbounds nuw i8, ptr %.02227, i64 20
  store i16 %i.ec, ptr %i.dr, align 2, !tbaa !34
  %i.ee = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !106
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.eg
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !34
  %i.ej = getelementptr inbounds nuw i8, ptr %.029, i64 22
  store i16 %i.ei, ptr %i.dx, align 2, !tbaa !34
  %i.ek = getelementptr inbounds i8, ptr %i.k, i64 %i.eg
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !40
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [2 x i8], ptr @__const.alf_recon_coeff_and_clip_8.clip_set, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !34
  %i.ep = getelementptr inbounds nuw i8, ptr %.02227, i64 22
  store i16 %i.eo, ptr %i.ed, align 2, !tbaa !34
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !106
  %i.es = sext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.es
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !34
  %i.ev = getelementptr inbounds nuw i8, ptr %.029, i64 24
  store i16 %i.eu, ptr %i.ej, align 2, !tbaa !34
  %i.ew = getelementptr inbounds i8, ptr %i.k, i64 %i.es
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !40
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr @__const.alf_recon_coeff_and_clip_8.clip_set, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !34
  %i.fb = getelementptr inbounds nuw i8, ptr %.02227, i64 24
  store i16 %i.fa, ptr %i.ep, align 2, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2270
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i8(i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) <4 x i32> @llvm.scmp.v4i32.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <12 x i32> @llvm.smin.v12i32(<12 x i32>, <12 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v12i32(<12 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smin.v4i16(<4 x i16>, <4 x i16>) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}
!llvm.errno.tbaa = !{!26}

!0 = distinct !{!0, !35}
!1 = distinct !{!1, !35}
!2 = distinct !{!2, !35}
!3 = distinct !{!3, !35}
!4 = distinct !{!4, !35}
!5 = distinct !{!5, !35}
!6 = distinct !{!6, !35}
!7 = distinct !{!7, !35}
!8 = distinct !{!8, !35}
!9 = distinct !{!9, !35}
!10 = distinct !{!10, !35}
!11 = distinct !{!11, !35}
!12 = distinct !{!12, !35}
!13 = distinct !{!13, !35}
!14 = distinct !{!14, !35}
!15 = distinct !{!15, !35}
!16 = distinct !{!16, !35}
!17 = distinct !{!17, !35}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 2}
!20 = !{i32 1, !"override-stack-alignment", i32 16}
!21 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !{!"omnipotent char", !22, i64 0}
!24 = !{!"int", !23, i64 0}
!25 = !{!"__libc_errno", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"any pointer", !23, i64 0}
!28 = !{!"VVCInterDSPContext", !23, i64 0, !23, i64 448, !23, i64 896, !23, i64 1344, !23, i64 1456, !23, i64 1568, !27, i64 1680, !27, i64 1688, !27, i64 1696, !27, i64 1704, !27, i64 1712, !27, i64 1720, !27, i64 1728, !27, i64 1736, !27, i64 1744, !27, i64 1752, !27, i64 1760, !23, i64 1768}
!29 = !{!"VVCIntraDSPContext", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48, !27, i64 56, !27, i64 64, !27, i64 72}
!30 = !{!"VVCItxDSPContext", !27, i64 0, !27, i64 8, !23, i64 16, !27, i64 160, !27, i64 168}
!31 = !{!"VVCLMCSDSPContext", !27, i64 0}
!32 = !{!"VVCALFDSPContext", !23, i64 0, !27, i64 16, !27, i64 24, !27, i64 32}
!33 = !{!"short", !23, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"branch_weights", i32 4, i32 12}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!23, !23, i64 0}
!41 = !{!"", !24, i64 0, !23, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !23, i64 20, !24, i64 32, !24, i64 36, !24, i64 40, !24, i64 44, !24, i64 48, !24, i64 52}
!42 = !{!"", !24, i64 0, !24, i64 4, !24, i64 8}
!43 = !{!"p1 _ZTS12SliceContext", !27, i64 0}
!44 = !{!"p1 _ZTS15VVCFrameContext", !27, i64 0}
!45 = !{!"p1 _ZTS10EntryPoint", !27, i64 0}
!46 = !{!"p1 int", !27, i64 0}
!47 = !{!"p1 _ZTS10CodingUnit", !27, i64 0}
!48 = !{!"NeighbourAvailable", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16}
!49 = !{!"VVCLocalContext", !23, i64 0, !23, i64 1, !23, i64 2, !23, i64 3, !24, i64 4, !24, i64 8, !41, i64 12, !42, i64 68, !43, i64 80, !44, i64 88, !45, i64 96, !46, i64 104, !47, i64 112, !24, i64 120, !23, i64 124, !23, i64 132, !48, i64 32900, !23, i64 32928}
!50 = !{!49, !44, i64 88}
!51 = !{!"p1 _ZTS7AVFrame", !27, i64 0}
!52 = !{!"p1 _ZTS6VVCSPS", !27, i64 0}
!53 = !{!"p1 _ZTS6VVCPPS", !27, i64 0}
!54 = !{!"p1 _ZTS20H266RawPictureHeader", !27, i64 0}
!55 = !{!"PredWeightTable", !23, i64 0, !23, i64 2, !23, i64 4, !23, i64 64, !23, i64 244}
!56 = !{!"VVCPH", !54, i64 0, !27, i64 8, !24, i64 16, !24, i64 20, !23, i64 24, !23, i64 26, !23, i64 32, !23, i64 34, !55, i64 40}
!57 = !{!"VVCLMCS", !23, i64 0, !23, i64 1, !23, i64 2, !23, i64 8194, !23, i64 16386, !23, i64 16420}
!58 = !{!"p1 _ZTS14VVCScalingList", !27, i64 0}
!59 = !{!"VVCFrameParamSets", !52, i64 0, !53, i64 8, !56, i64 16, !23, i64 480, !57, i64 544, !58, i64 17000}
!60 = !{!"p1 _ZTS11AVBufferRef", !27, i64 0}
!61 = !{!"AVFilmGrainAFGS1Params", !24, i64 0, !23, i64 8}
!62 = !{!"FFITUTT35Meta", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !61, i64 56}
!63 = !{!"any p2 pointer", !27, i64 0}
!64 = !{!"p2 _ZTS11AVBufferRef", !63, i64 0}
!65 = !{!"H2645SEIUnregistered", !64, i64 0, !24, i64 8, !24, i64 12}
!66 = !{!"H2645SEIFramePacking", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28}
!67 = !{!"H2645SEIDisplayOrientation", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12}
!68 = !{!"H2645SEIAlternativeTransfer", !24, i64 0, !24, i64 4}
!69 = !{!"H2645SEIAmbientViewingEnvironment", !24, i64 0, !24, i64 4, !33, i64 8, !33, i64 10}
!70 = !{!"H2645SEIMasteringDisplay", !24, i64 0, !23, i64 4, !23, i64 16, !24, i64 20, !24, i64 24}
!71 = !{!"H2645SEIContentLight", !24, i64 0, !33, i64 4, !33, i64 6}
!72 = !{!"p1 _ZTS32H2645SEIFilmGrainCharacteristics", !27, i64 0}
!73 = !{!"H2645SEI", !62, i64 0, !65, i64 128, !66, i64 144, !67, i64 176, !68, i64 192, !69, i64 200, !70, i64 212, !71, i64 240, !72, i64 248}
!74 = !{!"H274SEIPictureHash", !24, i64 0, !23, i64 4, !23, i64 52}
!75 = !{!"H274SEIFrameFieldInfo", !24, i64 0, !24, i64 4, !23, i64 8, !23, i64 9, !23, i64 10}
!76 = !{!"VVCSEI", !73, i64 0, !74, i64 256, !75, i64 312}
!77 = !{!"p2 _ZTS12SliceContext", !63, i64 0}
!78 = !{!"p1 _ZTS8VVCFrame", !27, i64 0}
!79 = !{!"VVCLFDSPContext", !23, i64 0, !23, i64 16, !23, i64 32}
!80 = !{!"VVCSAODSPContext", !23, i64 0, !23, i64 72, !23, i64 144}
!81 = !{!"VVCDSPContext", !28, i64 0, !29, i64 1800, !30, i64 1880, !31, i64 2056, !79, i64 2064, !80, i64 2112, !32, i64 2272}
!82 = !{!"VideoDSPContext", !27, i64 0, !27, i64 8}
!83 = !{!"p1 _ZTS14VVCFrameThread", !27, i64 0}
!84 = !{!"long", !23, i64 0}
!85 = !{!"p1 _ZTS15AVRefStructPool", !27, i64 0}
!86 = !{!"p1 short", !27, i64 0}
!87 = !{!"p1 _ZTS8DBParams", !27, i64 0}
!88 = !{!"p1 _ZTS9SAOParams", !27, i64 0}
!89 = !{!"p1 _ZTS9ALFParams", !27, i64 0}
!90 = !{!"p1 omnipotent char", !27, i64 0}
!91 = !{!"p1 _ZTS7MvField", !27, i64 0}
!92 = !{!"p1 _ZTS3CTU", !27, i64 0}
!93 = !{!"p2 _ZTS10CodingUnit", !63, i64 0}
!94 = !{!"", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !24, i64 36, !24, i64 40, !24, i64 44}
!95 = !{!"", !86, i64 0, !87, i64 8, !88, i64 16, !89, i64 24, !23, i64 32, !23, i64 48, !23, i64 64, !23, i64 80, !23, i64 96, !23, i64 112, !90, i64 136, !90, i64 144, !23, i64 152, !90, i64 168, !90, i64 176, !23, i64 184, !90, i64 200, !90, i64 208, !90, i64 216, !23, i64 224, !91, i64 240, !23, i64 248, !90, i64 272, !23, i64 280, !23, i64 296, !23, i64 312, !23, i64 328, !23, i64 376, !23, i64 392, !23, i64 408, !23, i64 432, !23, i64 456, !23, i64 504, !46, i64 552, !92, i64 560, !93, i64 568, !23, i64 576, !94, i64 600}
!96 = !{!"VVCFrameContext", !27, i64 0, !23, i64 8, !51, i64 2048, !51, i64 2056, !59, i64 2064, !76, i64 19072, !77, i64 19400, !24, i64 19408, !24, i64 19412, !78, i64 19416, !81, i64 19424, !82, i64 21736, !83, i64 21752, !84, i64 21760, !85, i64 21768, !85, i64 21776, !85, i64 21784, !85, i64 21792, !95, i64 21800}
!97 = !{!96, !52, i64 2064}
!98 = !{!"p1 _ZTS10H266RawSPS", !27, i64 0}
!99 = !{!"VVCSPS", !98, i64 0, !23, i64 8, !23, i64 11, !24, i64 16, !23, i64 20, !24, i64 24, !23, i64 28, !23, i64 29, !23, i64 30, !33, i64 32, !23, i64 34, !23, i64 35, !23, i64 36, !23, i64 37, !23, i64 38, !23, i64 39, !23, i64 40, !23, i64 41, !23, i64 44, !23, i64 64, !23, i64 65, !23, i64 66}
!100 = !{!99, !33, i64 32}
!101 = !{!49, !24, i64 72}
!102 = !{!49, !24, i64 76}
!103 = !{!49, !24, i64 68}
!104 = !{!96, !51, i64 2048}
!105 = !{!90, !90, i64 0}
!106 = !{!24, !24, i64 0}
!107 = !{!99, !23, i64 20}
!108 = !{!96, !53, i64 2072}
!109 = !{!"p1 _ZTS10H266RawPPS", !27, i64 0}
!110 = !{!"VVCPPS", !109, i64 0, !23, i64 8, !23, i64 11, !33, i64 30, !33, i64 32, !23, i64 34, !23, i64 2034, !33, i64 4034, !33, i64 4036, !33, i64 4038, !33, i64 4040, !24, i64 4044, !33, i64 4048, !33, i64 4050, !33, i64 4052, !33, i64 4054, !46, i64 4056, !86, i64 4064, !86, i64 4072, !86, i64 4080, !86, i64 4088, !33, i64 4096, !33, i64 4098, !33, i64 4100, !33, i64 4102, !33, i64 4104, !23, i64 4106, !23, i64 6106, !23, i64 8106, !23, i64 10106}
!111 = !{!110, !33, i64 32}
!112 = !{!110, !33, i64 30}
!113 = !{!57, !23, i64 0}
!114 = !{!57, !23, i64 1}
!115 = !{!99, !98, i64 0}
!116 = !{!"H266RawNALUnitHeader", !23, i64 0, !23, i64 1, !23, i64 2, !23, i64 3}
!117 = !{!"H266GeneralConstraintsInfo", !23, i64 0, !23, i64 1, !23, i64 2, !23, i64 3, !23, i64 4, !23, i64 5, !23, i64 6, !23, i64 7, !23, i64 8, !23, i64 9, !23, i64 10, !23, i64 11, !23, i64 12, !23, i64 13, !23, i64 14, !23, i64 15, !23, i64 16, !23, i64 17, !23, i64 18, !23, i64 19, !23, i64 20, !23, i64 21, !23, i64 22, !23, i64 23, !23, i64 24, !23, i64 25, !23, i64 26, !23, i64 27, !23, i64 28, !23, i64 29, !23, i64 30, !23, i64 31, !23, i64 32, !23, i64 33, !23, i64 34, !23, i64 35, !23, i64 36, !23, i64 37, !23, i64 38, !23, i64 39, !23, i64 40, !23, i64 41, !23, i64 42, !23, i64 43, !23, i64 44, !23, i64 45, !23, i64 46, !23, i64 47, !23, i64 48, !23, i64 49, !23, i64 50, !23, i64 51, !23, i64 52, !23, i64 53, !23, i64 54, !23, i64 55, !23, i64 56, !23, i64 57, !23, i64 58, !23, i64 59, !23, i64 60, !23, i64 61, !23, i64 62, !23, i64 63, !23, i64 64, !23, i64 65, !23, i64 66, !23, i64 67, !23, i64 68, !23, i64 323, !23, i64 324, !23, i64 325, !23, i64 326, !23, i64 327, !23, i64 328}
!118 = !{!"H266RawProfileTierLevel", !23, i64 0, !23, i64 1, !23, i64 2, !23, i64 3, !23, i64 4, !117, i64 5, !23, i64 334, !23, i64 340, !23, i64 346, !23, i64 348, !23, i64 1372}
!119 = !{!"H266DpbParameters", !23, i64 0, !23, i64 7, !23, i64 14}
!120 = !{!"H266RawGeneralTimingHrdParameters", !24, i64 0, !24, i64 4, !23, i64 8, !23, i64 9, !23, i64 10, !23, i64 11, !23, i64 12, !23, i64 13, !23, i64 14, !23, i64 15, !23, i64 16}
!121 = !{!"H266RawSubLayerHRDParameters", !23, i64 0, !23, i64 896, !23, i64 1792, !23, i64 2688, !23, i64 3584}
!122 = !{!"H266RawOlsTimingHrdParameters", !23, i64 0, !23, i64 7, !23, i64 14, !23, i64 28, !121, i64 36, !121, i64 3844}
!123 = !{!"H266RawExtensionData", !90, i64 0, !60, i64 8, !84, i64 16}
!124 = !{!"H266RawVUI", !23, i64 0, !23, i64 1, !23, i64 2, !23, i64 3, !23, i64 4, !23, i64 5, !23, i64 6, !33, i64 8, !33, i64 10, !23, i64 12, !23, i64 13, !23, i64 14, !23, i64 15, !23, i64 16, !23, i64 17, !23, i64 18, !23, i64 19, !23, i64 20, !23, i64 21, !23, i64 22, !123, i64 24}
!125 = !{!"H266RawSPS", !116, i64 0, !23, i64 4, !23, i64 5, !23, i64 6, !23, i64 7, !23, i64 8, !23, i64 9, !118, i64 12, !23, i64 1388, !23, i64 1389, !23, i64 1390, !33, i64 1392, !33, i64 1394, !23, i64 1396, !33, i64 1398, !33, i64 1400, !33, i64 1402, !33, i64 1404, !23, i64 1406, !33, i64 1408, !23, i64 1410, !23, i64 1411, !23, i64 1412, !23, i64 3412, !23, i64 5412, !23, i64 7412, !23, i64 9412, !23, i64 10412, !23, i64 11412, !23, i64 11413, !23, i64 11414, !23, i64 11416, !23, i64 15416, !23, i64 15417, !23, i64 15418, !23, i64 15419, !23, i64 15420, !23, i64 15421, !23, i64 15422, !23, i64 15423, !23, i64 15439, !23, i64 15440, !23, i64 15456, !119, i64 15457, !23, i64 15478, !23, i64 15479, !23, i64 15480, !23, i64 15481, !23, i64 15482, !23, i64 15483, !23, i64 15484, !23, i64 15485, !23, i64 15486, !23, i64 15487, !23, i64 15488, !23, i64 15489, !23, i64 15490, !23, i64 15491, !23, i64 15492, !23, i64 15493, !23, i64 15494, !23, i64 15495, !23, i64 15496, !23, i64 15497, !23, i64 15498, !23, i64 15499, !23, i64 15500, !23, i64 15501, !23, i64 15502, !23, i64 15503, !23, i64 15506, !23, i64 15509, !23, i64 15842, !23, i64 16175, !23, i64 16176, !23, i64 16177, !23, i64 16178, !23, i64 16179, !23, i64 16180, !23, i64 16181, !23, i64 16182, !23, i64 16183, !23, i64 16184, !23, i64 16185, !23, i64 16187, !23, i64 38715, !23, i64 38716, !23, i64 38717, !23, i64 38718, !23, i64 38719, !23, i64 38720, !23, i64 38721, !23, i64 38722, !23, i64 38723, !23, i64 38724, !23, i64 38725, !23, i64 38726, !23, i64 38727, !23, i64 38728, !23, i64 38729, !23, i64 38730, !23, i64 38731, !23, i64 38732, !23, i64 38733, !23, i64 38734, !23, i64 38735, !23, i64 38736, !23, i64 38737, !23, i64 38738, !23, i64 38739, !23, i64 38740, !23, i64 38741, !23, i64 38742, !23, i64 38743, !23, i64 38744, !23, i64 38745, !23, i64 38746, !23, i64 38747, !23, i64 38748, !23, i64 38749, !23, i64 38750, !23, i64 38751, !23, i64 38752, !23, i64 38753, !23, i64 38758, !23, i64 38766, !23, i64 38767, !23, i64 38768, !23, i64 38769, !23, i64 38770, !23, i64 38771, !23, i64 38772, !23, i64 38773, !23, i64 38774, !23, i64 38776, !23, i64 38782, !23, i64 38784, !23, i64 38790, !23, i64 38791, !120, i64 38792, !122, i64 38812, !23, i64 46464, !23, i64 46465, !33, i64 46466, !124, i64 46472, !23, i64 46520, !23, i64 46521, !23, i64 46522, !23, i64 46523, !23, i64 46524, !23, i64 46525, !23, i64 46526, !23, i64 46527, !123, i64 46528}
!126 = !{!125, !23, i64 38744}
!127 = !{!49, !47, i64 112}
!128 = !{!"p1 _ZTS13TransformUnit", !27, i64 0}
!129 = !{!"", !128, i64 0, !128, i64 8}
!130 = !{!"MotionInfo", !24, i64 0, !23, i64 4, !23, i64 6, !23, i64 7, !24, i64 8, !23, i64 12, !24, i64 60, !24, i64 64}
!131 = !{!"PredictionUnit", !23, i64 0, !23, i64 1, !23, i64 2, !23, i64 3, !23, i64 4, !23, i64 5, !23, i64 8, !24, i64 56, !130, i64 60, !23, i64 128, !23, i64 129, !23, i64 130, !23, i64 194, !23, i64 260}
!132 = !{!"CodingUnit", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !23, i64 28, !23, i64 29, !23, i64 30, !23, i64 31, !24, i64 32, !24, i64 36, !23, i64 40, !23, i64 41, !23, i64 42, !23, i64 43, !23, i64 44, !24, i64 48, !24, i64 52, !24, i64 56, !24, i64 60, !24, i64 64, !24, i64 68, !23, i64 72, !23, i64 84, !129, i64 96, !23, i64 112, !23, i64 116, !131, i64 504, !47, i64 776}
!133 = !{!132, !24, i64 64}
!134 = !{!99, !23, i64 30}
!135 = !{!99, !23, i64 34}
!136 = !{!110, !33, i64 4034}
!137 = !{!96, !90, i64 21968}
!138 = !{!132, !24, i64 68}
!139 = !{!132, !23, i64 41}
!140 = !{!132, !24, i64 48}
!141 = !{!49, !24, i64 32908}
!142 = !{!132, !24, i64 12}
!143 = !{!132, !24, i64 16}
!144 = !{!"IntraEdgeParams", !90, i64 0, !90, i64 8, !24, i64 16, !23, i64 20, !23, i64 798, !23, i64 1576, !23, i64 2354}
!145 = !{!144, !24, i64 16}
!146 = !{!144, !90, i64 8}
!147 = !{!144, !90, i64 0}
!148 = !{!96, !27, i64 21256}
!149 = !{!96, !27, i64 21248}
!150 = !{!96, !27, i64 21264}
!151 = !{!96, !27, i64 21272}
!152 = !{!96, !27, i64 21280}
!153 = !{!96, !27, i64 21288}
!154 = !{!96, !27, i64 21296}
!155 = !{!"branch_weights", i32 4, i32 28}
!156 = !{!"branch_weights", i32 8, i32 24}
!157 = !{!27, !27, i64 0}
!158 = !{!28, !27, i64 1680}
!159 = !{!28, !27, i64 1688}
!160 = !{!28, !27, i64 1696}
!161 = !{!28, !27, i64 1704}
!162 = !{!28, !27, i64 1712}
!163 = !{!28, !27, i64 1720}
!164 = !{!28, !27, i64 1728}
!165 = !{!28, !27, i64 1736}
!166 = !{!28, !27, i64 1744}
!167 = !{!28, !27, i64 1752}
!168 = !{!28, !27, i64 1760}
!169 = !{!29, !27, i64 8}
!170 = !{!29, !27, i64 0}
!171 = !{!29, !27, i64 16}
!172 = !{!29, !27, i64 24}
!173 = !{!29, !27, i64 32}
!174 = !{!29, !27, i64 40}
!175 = !{!29, !27, i64 48}
!176 = !{!29, !27, i64 56}
!177 = !{!29, !27, i64 64}
!178 = !{!29, !27, i64 72}
!179 = !{!30, !27, i64 0}
end_hunk_1
