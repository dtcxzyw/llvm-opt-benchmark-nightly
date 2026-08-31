Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cdef_tmpl?download=true
inline.NumInlined: 47
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 24
begin_hunk_0_@cdef_find_dir_c:bb.a
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !10 ; 2 uses
  %i.pw = mul nsw i32 %i.pv, %i.pv
  %i.px = add i32 %i.ps, %i.pw
  %i.py = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.pz = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.qa = load i32, ptr %i.pz, align 16, !tbaa !10 ; 2 uses
  %i.qb = mul nsw i32 %i.qa, %i.qa
  %i.qc = add i32 %i.px, %i.qb
  %i.qd = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !10 ; 2 uses
  %i.qf = mul nsw i32 %i.qe, %i.qe
  %i.qg = add i32 %i.qc, %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !10 ; 2 uses
  %i.qj = mul nsw i32 %i.qi, %i.qi
  %i.qk = add i32 %i.qg, %i.qj
  %i.ql = mul i32 %i.qk, 105
  %i.qm = load i32, ptr %i.g, align 4, !tbaa !10  ; 2 uses
  %i.qn = mul nsw i32 %i.qm, %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !10 ; 2 uses
  %i.qq = mul nsw i32 %i.qp, %i.qp
  %i.qr = add nuw nsw i32 %i.qq, %i.qn
  %i.qs = mul nuw nsw i32 %i.qr, 420
  %i.qt = add i32 %i.qs, %i.ql
  %i.qu = load i32, ptr %i.pt, align 16, !tbaa !10 ; 2 uses
  %i.qv = mul nsw i32 %i.qu, %i.qu
  %i.qw = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.qx = load i32, ptr %i.qw, align 16, !tbaa !10 ; 2 uses
  %i.qy = mul nsw i32 %i.qx, %i.qx
  %i.qz = add nuw nsw i32 %i.qy, %i.qv
  %i.ra = mul nuw nsw i32 %i.qz, 210
  %i.rb = add i32 %i.ra, %i.qt
  %i.rc = load i32, ptr %i.py, align 4, !tbaa !10 ; 2 uses
  %i.rd = mul nsw i32 %i.rc, %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !10 ; 2 uses
  %i.rg = mul nsw i32 %i.rf, %i.rf
  %i.rh = add nuw nsw i32 %i.rg, %i.rd
  %i.ri = mul nuw nsw i32 %i.rh, 140
  %i.rj = add i32 %i.ri, %i.rb
  store i32 %i.rj, ptr %i.po, align 4, !tbaa !10
  %i.rk = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.promoted109.2 = load i32, ptr %i.rk, align 4, !tbaa !10
  %i.rm = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.rn = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.ro = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.rp = load <4 x i32>, ptr %i.rm, align 4, !tbaa !10 ; 2 uses
  %i.rq = mul nsw <4 x i32> %i.rp, %i.rp
  %i.rr = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !10 ; 2 uses
  %i.rt = mul nsw i32 %i.rs, %i.rs
  %i.ru = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.rq)
  %op.rdx158 = add i32 %i.ru, %i.rt
  %op.rdx159 = add i32 %op.rdx158, %.promoted109.2
  %i.rv = mul i32 %op.rdx159, 105
  %i.rw = load i32, ptr %i.rl, align 8, !tbaa !10 ; 2 uses
  %i.rx = mul nsw i32 %i.rw, %i.rw
  %i.ry = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.rz = load i32, ptr %i.ry, align 16, !tbaa !10 ; 2 uses
  %i.sa = mul nsw i32 %i.rz, %i.rz
  %i.sb = add nuw nsw i32 %i.sa, %i.rx
  %i.sc = mul nuw nsw i32 %i.sb, 420
  %i.sd = add i32 %i.sc, %i.rv
  %i.se = load i32, ptr %i.rn, align 4, !tbaa !10 ; 2 uses
  %i.sf = mul nsw i32 %i.se, %i.se
  %i.sg = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !10 ; 2 uses
  %i.si = mul nsw i32 %i.sh, %i.sh
  %i.sj = add nuw nsw i32 %i.si, %i.sf
  %i.sk = mul nuw nsw i32 %i.sj, 210
  %i.sl = add i32 %i.sk, %i.sd
  %i.sm = load i32, ptr %i.ro, align 16, !tbaa !10 ; 2 uses
  %i.sn = mul nsw i32 %i.sm, %i.sm
  %i.so = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.sp = load i32, ptr %i.so, align 8, !tbaa !10 ; 2 uses
  %i.sq = mul nsw i32 %i.sp, %i.sp
  %i.sr = add nuw nsw i32 %i.sq, %i.sn
  %i.ss = mul nuw nsw i32 %i.sr, 140
  %i.st = add i32 %i.ss, %i.sl                    ; 3 uses
  store i32 %i.st, ptr %i.rk, align 4, !tbaa !10
  %i.su = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 2 uses
  %.promoted109.3 = load i32, ptr %i.su, align 4, !tbaa !10
  %i.sv = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.sw = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.sx = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %i.sy = load <4 x i32>, ptr %i.sv, align 16, !tbaa !10 ; 2 uses
  %i.sz = mul nsw <4 x i32> %i.sy, %i.sy
  %i.ta = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.tb = load i32, ptr %i.ta, align 16, !tbaa !10 ; 2 uses
  %i.tc = mul nsw i32 %i.tb, %i.tb
  %i.td = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.sz)
  %op.rdx = add i32 %i.td, %i.tc
  %op.rdx157 = add i32 %op.rdx, %.promoted109.3
  %i.te = mul i32 %op.rdx157, 105
  %i.tf = load i32, ptr %i.j, align 4, !tbaa !10  ; 2 uses
  %i.tg = mul nsw i32 %i.tf, %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %i.c, i64 172
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !10 ; 2 uses
  %i.tj = mul nsw i32 %i.ti, %i.ti
  %i.tk = add nuw nsw i32 %i.tj, %i.tg
  %i.tl = mul nuw nsw i32 %i.tk, 420
  %i.tm = add i32 %i.tl, %i.te
  %i.tn = load i32, ptr %i.sw, align 8, !tbaa !10 ; 2 uses
  %i.to = mul nsw i32 %i.tn, %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.tq = load i32, ptr %i.tp, align 8, !tbaa !10 ; 2 uses
  %i.tr = mul nsw i32 %i.tq, %i.tq
  %i.ts = add nuw nsw i32 %i.tr, %i.to
  %i.tt = mul nuw nsw i32 %i.ts, 210
  %i.tu = add i32 %i.tt, %i.tm
  %i.tv = load i32, ptr %i.sx, align 4, !tbaa !10 ; 2 uses
  %i.tw = mul nsw i32 %i.tv, %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !10 ; 2 uses
  %i.tz = mul nsw i32 %i.ty, %i.ty
  %i.ua = add nuw nsw i32 %i.tz, %i.tw
  %i.ub = mul nuw nsw i32 %i.ua, 140
  %i.uc = add i32 %i.ub, %i.tu                    ; 3 uses
  store i32 %i.uc, ptr %i.su, align 4, !tbaa !10
  %i.ud = load i32, ptr %i.ns, align 4, !tbaa !10 ; 2 uses
  %i.ue = icmp ugt i32 %i.ud, %op.rdx163
  %spec.select = zext i1 %i.ue to i32
  %spec.select96 = tail call i32 @llvm.umax.i32(i32 %i.ud, i32 %op.rdx163) ; 2 uses
  %i.uf = load i32, ptr %i.jo, align 8, !tbaa !10 ; 2 uses
  %i.ug = icmp ugt i32 %i.uf, %spec.select96
  %spec.select.1 = select i1 %i.ug, i32 2, i32 %spec.select
  %spec.select96.1 = tail call i32 @llvm.umax.i32(i32 %i.uf, i32 %spec.select96) ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !10 ; 2 uses
  %i.uj = icmp ugt i32 %i.ui, %spec.select96.1
  %spec.select.2 = select i1 %i.uj, i32 3, i32 %spec.select.1
  %spec.select96.2 = tail call i32 @llvm.umax.i32(i32 %i.ui, i32 %spec.select96.1) ; 2 uses
  %i.uk = load i32, ptr %i.js, align 16, !tbaa !10 ; 2 uses
  %i.ul = icmp ugt i32 %i.uk, %spec.select96.2
  %spec.select.3 = select i1 %i.ul, i32 4, i32 %spec.select.2
  %spec.select96.3 = tail call i32 @llvm.umax.i32(i32 %i.uk, i32 %spec.select96.2) ; 2 uses
  %i.um = icmp ugt i32 %i.st, %spec.select96.3
  %spec.select.4 = select i1 %i.um, i32 5, i32 %spec.select.3
  %spec.select96.4 = tail call i32 @llvm.umax.i32(i32 %i.st, i32 %spec.select96.3) ; 2 uses
  %i.un = load i32, ptr %i.jp, align 8, !tbaa !10 ; 2 uses
  %i.uo = icmp ugt i32 %i.un, %spec.select96.4
  %spec.select.5 = select i1 %i.uo, i32 6, i32 %spec.select.4
  %spec.select96.5 = tail call i32 @llvm.umax.i32(i32 %i.un, i32 %spec.select96.4) ; 2 uses
  %i.up = icmp ugt i32 %i.uc, %spec.select96.5
  %spec.select.6 = select i1 %i.up, i32 7, i32 %spec.select.5 ; 2 uses
  %spec.select96.6 = tail call i32 @llvm.umax.i32(i32 %i.uc, i32 %spec.select96.5)
  %i.uq = xor i32 %spec.select.6, 4
  %i.ur = zext nneg i32 %i.uq to i64
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ur
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !10
  %i.uu = sub i32 %spec.select96.6, %i.ut
  %i.uv = lshr i32 %i.uu, 10
  store i32 %i.uv, ptr %2, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %spec.select.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @cdef_filter_block_8x8_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #1 {
bb.a:
  tail call fastcc void @cdef_filter_block_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 8, i32 noundef 8, i32 noundef %9, i32 noundef %10)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @cdef_filter_block_4x8_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #1 {
bb.a:
  tail call fastcc void @cdef_filter_block_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 4, i32 noundef 8, i32 noundef %9, i32 noundef %10)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @cdef_filter_block_4x4_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #1 {
bb.a:
  tail call fastcc void @cdef_filter_block_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 4, i32 noundef 4, i32 noundef %9, i32 noundef %10)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @cdef_filter_block_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef range(i32 4, 9) %9, i32 noundef range(i32 4, 9) %10, i32 noundef %11, i32 noundef %12) unnamed_addr #5 {
bb.a:
  %i.a = alloca [144 x i16], align 16             ; 25 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %13 = icmp eq i32 %9, 4
  %14 = icmp eq i32 %9, 8
  %or.cond = or i1 %13, %14
  tail call void @llvm.assume(i1 %or.cond)
  %15 = icmp eq i32 %10, 4
  %16 = icmp eq i32 %10, 8
  %or.cond3 = or i1 %15, %16
  tail call void @llvm.assume(i1 %or.cond3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 52 ; 7 uses
  %i.d = sext i32 %7 to i64
  %i.e = getelementptr inbounds [2 x i8], ptr @dav1d_cdef_directions, i64 %i.d ; 12 uses
  %17 = or disjoint i32 %9, 2
  %18 = or disjoint i32 %10, 2
  %i.f = and i32 %11, 4
  %.not.not.i = icmp eq i32 %i.f, 0               ; 2 uses
  br i1 %.not.not.i, label %.preheader.i.i, label %fill.exit.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.g = add nuw nsw i32 %9, 4
  %wide.trip.count.i.i = zext nneg i32 %i.g to i64 ; 4 uses
  %19 = or disjoint i32 %9, 3                     ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 4     ; 2 uses
  %20 = icmp samesign ult i32 %19, 7
  br i1 %20, label %.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 24
  br label %bb.d

.preheader.i.1.i.unr-lcssa:                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.1.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.1.i.unr-lcssa, %.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i.7, %.preheader.i.1.i.unr-lcssa ]
  %lcmp.mod337 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod337)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i.epil
  store i16 -32768, ptr %i.h, align 2, !tbaa !13
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 4
  br i1 %epil.iter.cmp.not, label %.preheader.i.1.i, label %bb.b, !llvm.loop !15

.preheader.i.1.i:                                 ; preds = %bb.b, %.preheader.i.1.i.unr-lcssa
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 9 uses
  %xtraiter339 = and i64 %wide.trip.count.i.i, 4  ; 2 uses
  %21 = icmp samesign ult i32 %19, 7
  br i1 %21, label %.epil.preheader338, label %.preheader.i.1.i.new

.preheader.i.1.i.new:                             ; preds = %.preheader.i.1.i
  %unroll_iter343 = and i64 %wide.trip.count.i.i, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.i.1.i.new
  %indvars.iv.i.1.i = phi i64 [ 0, %.preheader.i.1.i.new ], [ %indvars.iv.next.i.1.i.7, %bb.c ] ; 9 uses
  %niter344 = phi i64 [ 0, %.preheader.i.1.i.new ], [ %niter344.next.7, %bb.c ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.i.1.i
  store i16 -32768, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.i.1.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 -32768, ptr %i.l, align 2, !tbaa !13
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.i.1.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i16 -32768, ptr %i.n, align 4, !tbaa !13
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.i.1.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  store i16 -32768, ptr %i.p, align 2, !tbaa !13
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.i.1.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 -32768, ptr %i.r, align 16, !tbaa !13
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.i.1.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  store i16 -32768, ptr %i.t, align 2, !tbaa !13
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.i.1.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i16 -32768, ptr %i.v, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.i.1.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 14
  store i16 -32768, ptr %i.x, align 2, !tbaa !13
  %indvars.iv.next.i.1.i.7 = add nuw nsw i64 %indvars.iv.i.1.i, 8 ; 2 uses
  %niter344.next.7 = add i64 %niter344, 8         ; 2 uses
  %niter344.ncmp.7 = icmp eq i64 %niter344.next.7, %unroll_iter343
  br i1 %niter344.ncmp.7, label %fill.exit.i.loopexit.unr-lcssa, label %bb.c

bb.d:                                             ; preds = %bb.d, %.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %bb.d ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.i.i.new ], [ %niter.next.7, %bb.d ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i16 -32768, ptr %i.y, align 16, !tbaa !13
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store i16 -32768, ptr %i.aa, align 2, !tbaa !13
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i16 -32768, ptr %i.ac, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  store i16 -32768, ptr %i.ae, align 2, !tbaa !13
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i16 -32768, ptr %i.ag, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  store i16 -32768, ptr %i.ai, align 2, !tbaa !13
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i16 -32768, ptr %i.ak, align 4, !tbaa !13
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 14
  store i16 -32768, ptr %i.am, align 2, !tbaa !13
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.i.1.i.unr-lcssa, label %bb.d

fill.exit.i.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod341.not = icmp eq i64 %xtraiter339, 0
  br i1 %lcmp.mod341.not, label %fill.exit.i, label %.epil.preheader338

.epil.preheader338:                               ; preds = %fill.exit.i.loopexit.unr-lcssa, %.preheader.i.1.i
  %indvars.iv.i.1.i.epil.init = phi i64 [ 0, %.preheader.i.1.i ], [ %indvars.iv.next.i.1.i.7, %fill.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod342 = icmp ne i64 %xtraiter339, 0
  call void @llvm.assume(i1 %lcmp.mod342)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader338
  %indvars.iv.i.1.i.epil = phi i64 [ %indvars.iv.i.1.i.epil.init, %.epil.preheader338 ], [ %indvars.iv.next.i.1.i.epil, %bb.e ] ; 2 uses
  %epil.iter340 = phi i64 [ 0, %.epil.preheader338 ], [ %epil.iter340.next, %bb.e ]
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.i.1.i.epil
  store i16 -32768, ptr %i.an, align 2, !tbaa !13
  %indvars.iv.next.i.1.i.epil = add nuw nsw i64 %indvars.iv.i.1.i.epil, 1
  %epil.iter340.next = add i64 %epil.iter340, 1   ; 2 uses
  %epil.iter340.cmp.not = icmp eq i64 %epil.iter340.next, 4
  br i1 %epil.iter340.cmp.not, label %fill.exit.i, label %bb.e, !llvm.loop !17

fill.exit.i:                                      ; preds = %fill.exit.i.loopexit.unr-lcssa, %bb.e, %bb.a
  %.098.i = phi i32 [ -2, %bb.a ], [ 0, %bb.e ], [ 0, %fill.exit.i.loopexit.unr-lcssa ] ; 8 uses
  %i.ao = and i32 %11, 8
  %.not106.i = icmp eq i32 %i.ao, 0
  br i1 %.not106.i, label %.preheader.i113.i, label %fill.exit120.i

.preheader.i113.i:                                ; preds = %fill.exit.i
  %narrow.i = mul nuw nsw i32 %10, 12
  %i.ap = zext nneg i32 %narrow.i to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -4 ; 8 uses
  %i.as = add nuw nsw i32 %9, 4
  %wide.trip.count.i112.i = zext nneg i32 %i.as to i64 ; 4 uses
  %22 = or disjoint i32 %9, 3                     ; 2 uses
  %xtraiter346 = and i64 %wide.trip.count.i112.i, 4 ; 2 uses
  %23 = icmp samesign ult i32 %22, 7
  br i1 %23, label %.epil.preheader345, label %.preheader.i113.i.new

.preheader.i113.i.new:                            ; preds = %.preheader.i113.i
  %unroll_iter350 = and i64 %wide.trip.count.i112.i, 24
  br label %bb.h

.preheader.i113.1.i.unr-lcssa:                    ; preds = %bb.h
  %lcmp.mod348.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod348.not, label %.preheader.i113.1.i, label %.epil.preheader345

.epil.preheader345:                               ; preds = %.preheader.i113.1.i.unr-lcssa, %.preheader.i113.i
  %indvars.iv.i116.i.epil.init = phi i64 [ 0, %.preheader.i113.i ], [ %indvars.iv.next.i117.i.7, %.preheader.i113.1.i.unr-lcssa ]
  %lcmp.mod349 = icmp ne i64 %xtraiter346, 0
  call void @llvm.assume(i1 %lcmp.mod349)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader345
  %indvars.iv.i116.i.epil = phi i64 [ %indvars.iv.i116.i.epil.init, %.epil.preheader345 ], [ %indvars.iv.next.i117.i.epil, %bb.f ] ; 2 uses
  %epil.iter347 = phi i64 [ 0, %.epil.preheader345 ], [ %epil.iter347.next, %bb.f ]
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.i116.i.epil
  store i16 -32768, ptr %i.at, align 2, !tbaa !13
  %indvars.iv.next.i117.i.epil = add nuw nsw i64 %indvars.iv.i116.i.epil, 1
  %epil.iter347.next = add i64 %epil.iter347, 1   ; 2 uses
  %epil.iter347.cmp.not = icmp eq i64 %epil.iter347.next, 4
  br i1 %epil.iter347.cmp.not, label %.preheader.i113.1.i, label %bb.f, !llvm.loop !18

.preheader.i113.1.i:                              ; preds = %bb.f, %.preheader.i113.1.i.unr-lcssa
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 20 ; 9 uses
  %xtraiter353 = and i64 %wide.trip.count.i112.i, 4 ; 2 uses
  %24 = icmp samesign ult i32 %22, 7
  br i1 %24, label %.epil.preheader352, label %.preheader.i113.1.i.new

.preheader.i113.1.i.new:                          ; preds = %.preheader.i113.1.i
  %unroll_iter357 = and i64 %wide.trip.count.i112.i, 24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i113.1.i.new
  %indvars.iv.i116.1.i = phi i64 [ 0, %.preheader.i113.1.i.new ], [ %indvars.iv.next.i117.1.i.7, %bb.g ] ; 9 uses
  %niter358 = phi i64 [ 0, %.preheader.i113.1.i.new ], [ %niter358.next.7, %bb.g ]
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i116.1.i
  store i16 -32768, ptr %i.av, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i116.1.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i16 -32768, ptr %i.ax, align 2, !tbaa !13
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i116.1.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i16 -32768, ptr %i.az, align 4, !tbaa !13
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i116.1.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  store i16 -32768, ptr %i.bb, align 2, !tbaa !13
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i116.1.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i16 -32768, ptr %i.bd, align 16, !tbaa !13
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i116.1.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  store i16 -32768, ptr %i.bf, align 2, !tbaa !13
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i116.1.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i16 -32768, ptr %i.bh, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i116.1.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 14
  store i16 -32768, ptr %i.bj, align 2, !tbaa !13
  %indvars.iv.next.i117.1.i.7 = add nuw nsw i64 %indvars.iv.i116.1.i, 8 ; 2 uses
  %niter358.next.7 = add i64 %niter358, 8         ; 2 uses
  %niter358.ncmp.7 = icmp eq i64 %niter358.next.7, %unroll_iter357
  br i1 %niter358.ncmp.7, label %fill.exit120.i.loopexit.unr-lcssa, label %bb.g

bb.h:                                             ; preds = %bb.h, %.preheader.i113.i.new
  %indvars.iv.i116.i = phi i64 [ 0, %.preheader.i113.i.new ], [ %indvars.iv.next.i117.i.7, %bb.h ] ; 9 uses
  %niter351 = phi i64 [ 0, %.preheader.i113.i.new ], [ %niter351.next.7, %bb.h ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.i116.i
  store i16 -32768, ptr %i.bk, align 16, !tbaa !13
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.i116.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i16 -32768, ptr %i.bm, align 2, !tbaa !13
  %i.bn = getelementptr [2 x i8], ptr %i.aq, i64 %indvars.iv.i116.i
  store i16 -32768, ptr %i.bn, align 4, !tbaa !13
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.i116.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  store i16 -32768, ptr %i.bp, align 2, !tbaa !13
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.i116.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i16 -32768, ptr %i.br, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.i116.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 10
  store i16 -32768, ptr %i.bt, align 2, !tbaa !13
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.i116.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i16 -32768, ptr %i.bv, align 4, !tbaa !13
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.i116.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 14
  store i16 -32768, ptr %i.bx, align 2, !tbaa !13
  %indvars.iv.next.i117.i.7 = add nuw nsw i64 %indvars.iv.i116.i, 8 ; 2 uses
  %niter351.next.7 = add i64 %niter351, 8         ; 2 uses
  %niter351.ncmp.7 = icmp eq i64 %niter351.next.7, %unroll_iter350
  br i1 %niter351.ncmp.7, label %.preheader.i113.1.i.unr-lcssa, label %bb.h

fill.exit120.i.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod355.not = icmp eq i64 %xtraiter353, 0
  br i1 %lcmp.mod355.not, label %fill.exit120.i, label %.epil.preheader352

.epil.preheader352:                               ; preds = %fill.exit120.i.loopexit.unr-lcssa, %.preheader.i113.1.i
  %indvars.iv.i116.1.i.epil.init = phi i64 [ 0, %.preheader.i113.1.i ], [ %indvars.iv.next.i117.1.i.7, %fill.exit120.i.loopexit.unr-lcssa ]
  %lcmp.mod356 = icmp ne i64 %xtraiter353, 0
  call void @llvm.assume(i1 %lcmp.mod356)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader352
  %indvars.iv.i116.1.i.epil = phi i64 [ %indvars.iv.i116.1.i.epil.init, %.epil.preheader352 ], [ %indvars.iv.next.i117.1.i.epil, %bb.i ] ; 2 uses
  %epil.iter354 = phi i64 [ 0, %.epil.preheader352 ], [ %epil.iter354.next, %bb.i ]
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i116.1.i.epil
  store i16 -32768, ptr %i.by, align 2, !tbaa !13
  %indvars.iv.next.i117.1.i.epil = add nuw nsw i64 %indvars.iv.i116.1.i.epil, 1
  %epil.iter354.next = add i64 %epil.iter354, 1   ; 2 uses
  %epil.iter354.cmp.not = icmp eq i64 %epil.iter354.next, 4
  br i1 %epil.iter354.cmp.not, label %fill.exit120.i, label %bb.i, !llvm.loop !19

fill.exit120.i:                                   ; preds = %fill.exit120.i.loopexit.unr-lcssa, %bb.i, %fill.exit.i
  %.097.i = phi i32 [ %18, %fill.exit.i ], [ %10, %bb.i ], [ %10, %fill.exit120.i.loopexit.unr-lcssa ] ; 9 uses
  %i.bz = and i32 %11, 1
  %.not107.not.i = icmp eq i32 %i.bz, 0           ; 2 uses
  br i1 %.not107.not.i, label %bb.j, label %fill.exit128.i

bb.j:                                             ; preds = %fill.exit120.i
  %narrow108.i = mul nsw i32 %.098.i, 12
  %i.ca = sext i32 %narrow108.i to i64
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -4 ; 2 uses
  %i.cd = sub nsw i32 %.097.i, %.098.i            ; 2 uses
  %xtraiter359 = and i32 %i.cd, 7                 ; 3 uses
  %i.ce = sub nsw i32 %.098.i, %.097.i
  %i.cf = icmp ugt i32 %i.ce, -8
  br i1 %i.cf, label %.preheader.i121.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %unroll_iter363 = and i32 %i.cd, -8
  br label %.preheader.i121.i

.preheader.i121.i:                                ; preds = %.preheader.i121.i, %.new
  %.01012.i123.i = phi ptr [ %i.cc, %.new ], [ %i.cv, %.preheader.i121.i ] ; 17 uses
  %niter364 = phi i32 [ 0, %.new ], [ %niter364.next.7, %.preheader.i121.i ]
  store i16 -32768, ptr %.01012.i123.i, align 2, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 2
  store i16 -32768, ptr %i.cg, align 2, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 24
  store i16 -32768, ptr %i.ch, align 2, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 26
  store i16 -32768, ptr %i.ci, align 2, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 48
  store i16 -32768, ptr %i.cj, align 2, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 50
  store i16 -32768, ptr %i.ck, align 2, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 72
  store i16 -32768, ptr %i.cl, align 2, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 74
  store i16 -32768, ptr %i.cm, align 2, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 96
  store i16 -32768, ptr %i.cn, align 2, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 98
  store i16 -32768, ptr %i.co, align 2, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 120
  store i16 -32768, ptr %i.cp, align 2, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 122
  store i16 -32768, ptr %i.cq, align 2, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 144
  store i16 -32768, ptr %i.cr, align 2, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 146
  store i16 -32768, ptr %i.cs, align 2, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 168
  store i16 -32768, ptr %i.ct, align 2, !tbaa !13
  %i.cu = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 170
  store i16 -32768, ptr %i.cu, align 2, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 192 ; 2 uses
  %niter364.next.7 = add i32 %niter364, 8         ; 2 uses
  %niter364.ncmp.7 = icmp eq i32 %niter364.next.7, %unroll_iter363
  br i1 %niter364.ncmp.7, label %fill.exit128.i.loopexit.unr-lcssa, label %.preheader.i121.i

fill.exit128.i.loopexit.unr-lcssa:                ; preds = %.preheader.i121.i
  %lcmp.mod361.not = icmp eq i32 %xtraiter359, 0
  br i1 %lcmp.mod361.not, label %fill.exit128.i, label %.preheader.i121.i.epil.preheader

.preheader.i121.i.epil.preheader:                 ; preds = %fill.exit128.i.loopexit.unr-lcssa, %bb.j
  %.01012.i123.i.epil.init = phi ptr [ %i.cc, %bb.j ], [ %i.cv, %fill.exit128.i.loopexit.unr-lcssa ]
  %lcmp.mod362 = icmp ne i32 %xtraiter359, 0
  call void @llvm.assume(i1 %lcmp.mod362)
  br label %.preheader.i121.i.epil

.preheader.i121.i.epil:                           ; preds = %.preheader.i121.i.epil, %.preheader.i121.i.epil.preheader
  %.01012.i123.i.epil = phi ptr [ %.01012.i123.i.epil.init, %.preheader.i121.i.epil.preheader ], [ %i.cx, %.preheader.i121.i.epil ] ; 3 uses
  %epil.iter360 = phi i32 [ 0, %.preheader.i121.i.epil.preheader ], [ %epil.iter360.next, %.preheader.i121.i.epil ]
  store i16 -32768, ptr %.01012.i123.i.epil, align 2, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %.01012.i123.i.epil, i64 2
  store i16 -32768, ptr %i.cw, align 2, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %.01012.i123.i.epil, i64 24
  %epil.iter360.next = add i32 %epil.iter360, 1   ; 2 uses
  %epil.iter360.cmp.not = icmp eq i32 %epil.iter360.next, %xtraiter359
  br i1 %epil.iter360.cmp.not, label %fill.exit128.i, label %.preheader.i121.i.epil, !llvm.loop !20

fill.exit128.i:                                   ; preds = %fill.exit128.i.loopexit.unr-lcssa, %.preheader.i121.i.epil, %fill.exit120.i
  %.0100.i = phi i32 [ -2, %fill.exit120.i ], [ 0, %.preheader.i121.i.epil ], [ 0, %fill.exit128.i.loopexit.unr-lcssa ] ; 4 uses
  %i.cy = and i32 %11, 2
  %.not109.i = icmp eq i32 %i.cy, 0
  br i1 %.not109.i, label %bb.k, label %fill.exit136.i

bb.k:                                             ; preds = %fill.exit128.i
  %narrow110.i = mul nsw i32 %.098.i, 12
  %i.cz = sext i32 %narrow110.i to i64
  %i.da = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.cz
  %i.db = zext nneg i32 %9 to i64
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.db ; 2 uses
  %i.dd = sub nsw i32 %.097.i, %.098.i            ; 2 uses
  %xtraiter366 = and i32 %i.dd, 7                 ; 3 uses
  %i.de = sub nsw i32 %.098.i, %.097.i
  %i.df = icmp ugt i32 %i.de, -8
  br i1 %i.df, label %.preheader.i129.i.epil.preheader, label %.new365

.new365:                                          ; preds = %bb.k
  %unroll_iter370 = and i32 %i.dd, -8
  br label %.preheader.i129.i

.preheader.i129.i:                                ; preds = %.preheader.i129.i, %.new365
  %.01012.i131.i = phi ptr [ %i.dc, %.new365 ], [ %i.dv, %.preheader.i129.i ] ; 17 uses
  %niter371 = phi i32 [ 0, %.new365 ], [ %niter371.next.7, %.preheader.i129.i ]
  store i16 -32768, ptr %.01012.i131.i, align 2, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 2
  store i16 -32768, ptr %i.dg, align 2, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 24
  store i16 -32768, ptr %i.dh, align 2, !tbaa !13
  %i.di = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 26
  store i16 -32768, ptr %i.di, align 2, !tbaa !13
  %i.dj = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 48
  store i16 -32768, ptr %i.dj, align 2, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 50
  store i16 -32768, ptr %i.dk, align 2, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 72
  store i16 -32768, ptr %i.dl, align 2, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 74
  store i16 -32768, ptr %i.dm, align 2, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 96
  store i16 -32768, ptr %i.dn, align 2, !tbaa !13
  %i.do = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 98
  store i16 -32768, ptr %i.do, align 2, !tbaa !13
  %i.dp = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 120
  store i16 -32768, ptr %i.dp, align 2, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 122
  store i16 -32768, ptr %i.dq, align 2, !tbaa !13
  %i.dr = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 144
  store i16 -32768, ptr %i.dr, align 2, !tbaa !13
  %i.ds = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 146
  store i16 -32768, ptr %i.ds, align 2, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 168
  store i16 -32768, ptr %i.dt, align 2, !tbaa !13
  %i.du = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 170
  store i16 -32768, ptr %i.du, align 2, !tbaa !13
  %i.dv = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 192 ; 2 uses
  %niter371.next.7 = add i32 %niter371, 8         ; 2 uses
  %niter371.ncmp.7 = icmp eq i32 %niter371.next.7, %unroll_iter370
  br i1 %niter371.ncmp.7, label %fill.exit136.i.loopexit.unr-lcssa, label %.preheader.i129.i

fill.exit136.i.loopexit.unr-lcssa:                ; preds = %.preheader.i129.i
  %lcmp.mod368.not = icmp eq i32 %xtraiter366, 0
  br i1 %lcmp.mod368.not, label %fill.exit136.i, label %.preheader.i129.i.epil.preheader

.preheader.i129.i.epil.preheader:                 ; preds = %fill.exit136.i.loopexit.unr-lcssa, %bb.k
  %.01012.i131.i.epil.init = phi ptr [ %i.dc, %bb.k ], [ %i.dv, %fill.exit136.i.loopexit.unr-lcssa ]
  %lcmp.mod369 = icmp ne i32 %xtraiter366, 0
  call void @llvm.assume(i1 %lcmp.mod369)
  br label %.preheader.i129.i.epil

.preheader.i129.i.epil:                           ; preds = %.preheader.i129.i.epil, %.preheader.i129.i.epil.preheader
  %.01012.i131.i.epil = phi ptr [ %.01012.i131.i.epil.init, %.preheader.i129.i.epil.preheader ], [ %i.dx, %.preheader.i129.i.epil ] ; 3 uses
  %epil.iter367 = phi i32 [ 0, %.preheader.i129.i.epil.preheader ], [ %epil.iter367.next, %.preheader.i129.i.epil ]
  store i16 -32768, ptr %.01012.i131.i.epil, align 2, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %.01012.i131.i.epil, i64 2
  store i16 -32768, ptr %i.dw, align 2, !tbaa !13
  %i.dx = getelementptr inbounds nuw i8, ptr %.01012.i131.i.epil, i64 24
  %epil.iter367.next = add i32 %epil.iter367, 1   ; 2 uses
  %epil.iter367.cmp.not = icmp eq i32 %epil.iter367.next, %xtraiter366
  br i1 %epil.iter367.cmp.not, label %fill.exit136.i, label %.preheader.i129.i.epil, !llvm.loop !21

fill.exit136.i:                                   ; preds = %fill.exit136.i.loopexit.unr-lcssa, %.preheader.i129.i.epil, %fill.exit128.i
  %.099.i = phi i32 [ %17, %fill.exit128.i ], [ %9, %.preheader.i129.i.epil ], [ %9, %fill.exit136.i.loopexit.unr-lcssa ] ; 2 uses
  br i1 %.not.not.i, label %.preheader143.i, label %.preheader144.preheader.i

.preheader144.preheader.i:                        ; preds = %fill.exit136.i
  %i.dy = and i64 %1, 1
  %.not.i.i = icmp eq i64 %i.dy, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.dz = sext i32 %.0100.i to i64
  %i.ea = sext i32 %.098.i to i64                 ; 3 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.098.i, i32 -1)
  %i.eb = add nsw i32 %smax.i, 1                  ; 2 uses
  %wide.trip.count166.i = zext nneg i32 %i.eb to i64 ; 3 uses
  %i.ec = mul nsw i64 %i.ea, 24
  %i.ed = shl nsw i64 %i.dz, 1                    ; 3 uses
  %i.ee = shl nuw nsw i32 %.099.i, 1
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = sub nsw i64 %i.ef, %i.ed                ; 3 uses
  %i.eh = getelementptr i8, ptr %i.a, i64 %i.ec
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.ed
  %i.ej = getelementptr i8, ptr %i.ei, i64 52     ; 3 uses
  %i.ek = getelementptr i8, ptr %3, i64 %i.ed     ; 3 uses
  %xtraiter372 = and i64 %wide.trip.count166.i, 1 ; 2 uses
  %i.el = add nsw i64 %wide.trip.count166.i, -1
  %i.em = icmp eq i64 %i.el, %i.ea
  br i1 %i.em, label %.preheader144.i.epil.preheader, label %.preheader144.preheader.i.new

.preheader144.preheader.i.new:                    ; preds = %.preheader144.preheader.i
  %i.en = or disjoint i64 %xtraiter372, %i.ea
  %unroll_iter376 = sub nsw i64 %wide.trip.count166.i, %i.en
  br label %.preheader144.i

.preheader144.i:                                  ; preds = %.preheader144.i, %.preheader144.preheader.i.new
  %indvar = phi i64 [ 0, %.preheader144.preheader.i.new ], [ %indvar.next.1, %.preheader144.i ] ; 4 uses
  %niter377 = phi i64 [ 0, %.preheader144.preheader.i.new ], [ %niter377.next.1, %.preheader144.i ]
  %i.eo = mul i64 %indvar, 24
  %scevgep = getelementptr i8, ptr %i.ej, i64 %i.eo
  %i.ep = mul i64 %1, %indvar
  %scevgep292 = getelementptr i8, ptr %i.ek, i64 %i.ep
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep, ptr align 2 %scevgep292, i64 %i.eg, i1 false), !tbaa !13
  %indvar.next = or disjoint i64 %indvar, 1       ; 2 uses
  %i.eq = mul i64 %indvar.next, 24
  %scevgep.1 = getelementptr i8, ptr %i.ej, i64 %i.eq
  %i.er = mul i64 %1, %indvar.next
  %scevgep292.1 = getelementptr i8, ptr %i.ek, i64 %i.er
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep.1, ptr align 2 %scevgep292.1, i64 %i.eg, i1 false), !tbaa !13
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter377.next.1 = add i64 %niter377, 2         ; 2 uses
  %niter377.ncmp.1 = icmp eq i64 %niter377.next.1, %unroll_iter376
  br i1 %niter377.ncmp.1, label %.preheader143.i.loopexit.unr-lcssa, label %.preheader144.i

.preheader143.i.loopexit.unr-lcssa:               ; preds = %.preheader144.i
  %lcmp.mod374.not = icmp eq i64 %xtraiter372, 0
  br i1 %lcmp.mod374.not, label %.preheader143.i, label %.preheader144.i.epil.preheader

.preheader144.i.epil.preheader:                   ; preds = %.preheader143.i.loopexit.unr-lcssa, %.preheader144.preheader.i
  %indvar.epil.init = phi i64 [ 0, %.preheader144.preheader.i ], [ %indvar.next.1, %.preheader143.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod375 = trunc i32 %i.eb to i1
  call void @llvm.assume(i1 %lcmp.mod375)
  %i.es = mul i64 %indvar.epil.init, 24
  %scevgep.epil = getelementptr i8, ptr %i.ej, i64 %i.es
  %i.et = mul i64 %1, %indvar.epil.init
  %scevgep292.epil = getelementptr i8, ptr %i.ek, i64 %i.et
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep.epil, ptr align 2 %scevgep292.epil, i64 %i.eg, i1 false), !tbaa !13
  br label %.preheader143.i

.preheader143.i:                                  ; preds = %.preheader144.i.epil.preheader, %.preheader143.i.loopexit.unr-lcssa, %fill.exit136.i
  br i1 %.not107.not.i, label %.preheader141.split.i, label %.preheader142.preheader.i

.preheader142.preheader.i:                        ; preds = %.preheader143.i
  %i.eu = sext i32 %.0100.i to i64
  %smax172.i = tail call i32 @llvm.smax.i32(i32 %.0100.i, i32 -1)
  %i.ev = shl nsw i64 %i.eu, 1                    ; 3 uses
  %i.ew = shl nsw i32 %smax172.i, 1
  %i.ex = add nsw i32 %i.ew, 2
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = sub nsw i64 %i.ey, %i.ev                ; 8 uses
  %i.fa = getelementptr i8, ptr %i.a, i64 %i.ev   ; 8 uses
  %i.fb = getelementptr i8, ptr %2, i64 %i.ev     ; 8 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 4
  %i.fd = getelementptr i8, ptr %i.fa, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fd, ptr align 2 %i.fc, i64 %i.ez, i1 false), !tbaa !13
  %scevgep293.1 = getelementptr i8, ptr %i.fa, i64 76
  %scevgep294.1 = getelementptr i8, ptr %i.fb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep293.1, ptr align 2 %scevgep294.1, i64 %i.ez, i1 false), !tbaa !13
  %scevgep293.2 = getelementptr i8, ptr %i.fa, i64 100
  %scevgep294.2 = getelementptr i8, ptr %i.fb, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep293.2, ptr align 2 %scevgep294.2, i64 %i.ez, i1 false), !tbaa !13
  %scevgep293.3 = getelementptr i8, ptr %i.fa, i64 124
  %scevgep294.3 = getelementptr i8, ptr %i.fb, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep293.3, ptr align 2 %scevgep294.3, i64 %i.ez, i1 false), !tbaa !13
  %exitcond179.not.i.3 = icmp eq i32 %10, 4
  br i1 %exitcond179.not.i.3, label %.preheader141.split.i, label %.preheader142.i.6

.preheader142.i.6:                                ; preds = %.preheader142.preheader.i
  %scevgep293.4 = getelementptr i8, ptr %i.fa, i64 148
  %scevgep294.4 = getelementptr i8, ptr %i.fb, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep293.4, ptr align 2 %scevgep294.4, i64 %i.ez, i1 false), !tbaa !13
  %scevgep293.5 = getelementptr i8, ptr %i.fa, i64 172
  %scevgep294.5 = getelementptr i8, ptr %i.fb, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep293.5, ptr align 2 %scevgep294.5, i64 %i.ez, i1 false), !tbaa !13
  %scevgep293.6 = getelementptr i8, ptr %i.fa, i64 196
  %scevgep294.6 = getelementptr i8, ptr %i.fb, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep293.6, ptr align 2 %scevgep294.6, i64 %i.ez, i1 false), !tbaa !13
  %scevgep293.7 = getelementptr i8, ptr %i.fa, i64 220
  %scevgep294.7 = getelementptr i8, ptr %i.fb, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep293.7, ptr align 2 %scevgep294.7, i64 %i.ez, i1 false), !tbaa !13
  br label %.preheader141.split.i

.preheader141.split.i:                            ; preds = %.preheader142.preheader.i, %.preheader142.i.6, %.preheader143.i
  %i.fe = and i64 %1, 1
  %.not.i137.i = icmp eq i64 %i.fe, 0
  tail call void @llvm.assume(i1 %.not.i137.i)
  %i.ff = shl nuw nsw i32 %.099.i, 1
  %i.fg = zext nneg i32 %i.ff to i64              ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.c, ptr noundef nonnull align 2 dereferenceable(1) %0, i64 %i.fg, i1 false), !tbaa !13
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.fi = getelementptr inbounds i8, ptr %0, i64 %1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fh, ptr noundef nonnull align 2 dereferenceable(1) %i.fi, i64 %i.fg, i1 false), !tbaa !13
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.fk = getelementptr inbounds i8, ptr %i.fi, i64 %1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fj, ptr noundef nonnull align 2 dereferenceable(1) %i.fk, i64 %i.fg, i1 false), !tbaa !13
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 %1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fl, ptr noundef nonnull align 2 dereferenceable(1) %i.fm, i64 %i.fg, i1 false), !tbaa !13
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 148 ; 2 uses
  %exitcond185.not.i.3 = icmp eq i32 %10, 4
  br i1 %exitcond185.not.i.3, label %.preheader139.i, label %.preheader140.i.6

.preheader140.i.6:                                ; preds = %.preheader141.split.i
  %25 = getelementptr inbounds i8, ptr %i.fm, i64 %1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fn, ptr noundef nonnull align 2 dereferenceable(1) %25, i64 %i.fg, i1 false), !tbaa !13
  %26 = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %27 = getelementptr inbounds i8, ptr %25, i64 %1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %26, ptr noundef nonnull align 2 dereferenceable(1) %27, i64 %i.fg, i1 false), !tbaa !13
  %28 = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.fo = getelementptr inbounds i8, ptr %27, i64 %1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %28, ptr noundef nonnull align 2 dereferenceable(1) %i.fo, i64 %i.fg, i1 false), !tbaa !13
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %29 = getelementptr inbounds i8, ptr %i.fo, i64 %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fp, ptr noundef nonnull align 2 dereferenceable(1) %29, i64 %i.fg, i1 false), !tbaa !13
  %30 = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader140.i.6, %.preheader141.split.i
  %.lcssa = phi ptr [ %30, %.preheader140.i.6 ], [ %i.fn, %.preheader141.split.i ]
  %i.fq = icmp samesign ult i32 %10, %.097.i
  br i1 %i.fq, label %.preheader.preheader.i, label %padding.exit

.preheader.preheader.i:                           ; preds = %.preheader139.i
  %i.fr = sext i32 %.0100.i to i64
  %i.fs = shl nsw i64 %i.fr, 1                    ; 3 uses
  %i.ft = ptrtoaddr ptr %.lcssa to i64
  %reass.sub = sub i64 %i.ft, %i.b
  %i.fu = sub nsw i64 %i.fg, %i.fs                ; 3 uses
  %i.fv = getelementptr i8, ptr %i.a, i64 %reass.sub
  %i.fw = getelementptr i8, ptr %i.fv, i64 %i.fs  ; 3 uses
  %i.fx = getelementptr i8, ptr %4, i64 %i.fs     ; 3 uses
  %.neg = or disjoint i32 %10, 1
  %xtraiter378 = and i32 %.097.i, 1               ; 2 uses
  %i.fy = icmp eq i32 %.097.i, %.neg
  br i1 %i.fy, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %31 = or disjoint i32 %10, %xtraiter378
  %unroll_iter382 = sub nsw i32 %.097.i, %31
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i.new
  %indvar295 = phi i64 [ 0, %.preheader.preheader.i.new ], [ %indvar.next296.1, %.preheader.i ] ; 4 uses
  %niter383 = phi i32 [ 0, %.preheader.preheader.i.new ], [ %niter383.next.1, %.preheader.i ]
  %i.fz = mul nuw nsw i64 %indvar295, 24
  %scevgep297 = getelementptr i8, ptr %i.fw, i64 %i.fz
  %i.ga = mul i64 %1, %indvar295
  %scevgep298 = getelementptr i8, ptr %i.fx, i64 %i.ga
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep297, ptr align 2 %scevgep298, i64 %i.fu, i1 false), !tbaa !13
  %indvar.next296 = or disjoint i64 %indvar295, 1 ; 2 uses
  %i.gb = mul nuw nsw i64 %indvar.next296, 24
  %scevgep297.1 = getelementptr i8, ptr %i.fw, i64 %i.gb
  %i.gc = mul i64 %1, %indvar.next296
  %scevgep298.1 = getelementptr i8, ptr %i.fx, i64 %i.gc
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep297.1, ptr align 2 %scevgep298.1, i64 %i.fu, i1 false), !tbaa !13
  %indvar.next296.1 = add nuw nsw i64 %indvar295, 2 ; 2 uses
  %niter383.next.1 = add i32 %niter383, 2         ; 2 uses
  %niter383.ncmp.1 = icmp eq i32 %niter383.next.1, %unroll_iter382
  br i1 %niter383.ncmp.1, label %padding.exit.loopexit.unr-lcssa, label %.preheader.i

padding.exit.loopexit.unr-lcssa:                  ; preds = %.preheader.i
  %lcmp.mod380.not = icmp eq i32 %xtraiter378, 0
  br i1 %lcmp.mod380.not, label %padding.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %padding.exit.loopexit.unr-lcssa, %.preheader.preheader.i
  %indvar295.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %indvar.next296.1, %padding.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod381 = trunc i32 %.097.i to i1
  call void @llvm.assume(i1 %lcmp.mod381)
  %i.gd = mul nuw nsw i64 %indvar295.epil.init, 24
  %scevgep297.epil = getelementptr i8, ptr %i.fw, i64 %i.gd
  %i.ge = mul i64 %1, %indvar295.epil.init
  %scevgep298.epil = getelementptr i8, ptr %i.fx, i64 %i.ge
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep297.epil, ptr align 2 %scevgep298.epil, i64 %i.fu, i1 false), !tbaa !13
  br label %padding.exit

padding.exit:                                     ; preds = %.preheader.i.epil.preheader, %padding.exit.loopexit.unr-lcssa, %.preheader139.i
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.t, label %bb.l

bb.l:                                             ; preds = %padding.exit
  %i.gf = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %12, i1 true)
  %i.gg = sub nsw i32 24, %i.gf
  %i.gh = lshr i32 %5, %i.gg
  %i.gi = and i32 %i.gh, 1
  %i.gj = sub nuw nsw i32 4, %i.gi                ; 4 uses
  %i.gk = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %5, i1 true)
  %i.gl = xor i32 %i.gk, 31
  %i.gm = sub nsw i32 %8, %i.gl
  %i.gn = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 %i.gm, i32 0) ; 8 uses
  %.not255 = icmp eq i32 %6, 0
  br i1 %.not255, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.l
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.pre.pre = load i8, ptr %i.go, align 2, !tbaa !22
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %.pre317.pre = load i8, ptr %.phi.trans.insert.phi.trans.insert, align 1, !tbaa !22
  %wide.trip.count307 = zext nneg i32 %9 to i64
  %i.gp = sext i8 %.pre.pre to i32                ; 2 uses
  %i.gq = and i32 %i.gj, 1
  %i.gr = or disjoint i32 %i.gq, 2
  %i.gs = sext i8 %.pre317.pre to i32             ; 2 uses
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.gt = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %6, i1 true)
  %i.gu = xor i32 %i.gt, 31
  %i.gv = sub nsw i32 %8, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.trip.count = zext nneg i32 %9 to i64
  %i.gy = load i8, ptr %i.gw, align 2, !tbaa !22
  %i.gz = sext i8 %i.gy to i32                    ; 2 uses
  %i.ha = and i32 %i.gj, 1
  %i.hb = or disjoint i32 %i.ha, 2
  %i.hc = load i8, ptr %i.gx, align 2, !tbaa !22
  %i.hd = sext i8 %i.hc to i32                    ; 2 uses
  %i.he = load i8, ptr %i.e, align 2, !tbaa !22
  %i.hf = sext i8 %i.he to i32                    ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !22
  %i.hi = sext i8 %i.hh to i32                    ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !22
  %i.hl = sext i8 %i.hk to i32                    ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !22
  %i.ho = sext i8 %i.hn to i32                    ; 2 uses
  %i.hp = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.hq = shufflevector <4 x i32> %i.hp, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hr = insertelement <4 x i32> poison, i32 %i.gv, i64 0
  %i.hs = shufflevector <4 x i32> %i.hr, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.0233 = phi ptr [ %i.c, %bb.m ], [ %i.hu, %bb.o ] ; 13 uses
  %.0230 = phi i32 [ %10, %bb.m ], [ %i.hv, %bb.o ]
  %.0 = phi ptr [ %0, %bb.m ], [ %i.ht, %bb.o ]   ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %i.ht = getelementptr inbounds i8, ptr %.0, i64 %1
  %i.hu = getelementptr inbounds nuw i8, ptr %.0233, i64 24
  %i.hv = add nsw i32 %.0230, -1                  ; 2 uses
  %.not257 = icmp eq i32 %i.hv, 0
  br i1 %.not257, label %.loopexit, label %bb.n

bb.p:                                             ; preds = %bb.n, %bb.p
  %indvars.iv = phi i64 [ 0, %bb.n ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %.0, i64 %indvars.iv ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !13
  %i.hy = zext i16 %i.hx to i32                   ; 8 uses
  %i.hz = trunc nuw nsw i64 %indvars.iv to i32    ; 12 uses
  %i.ia = add nsw i32 %i.hz, %i.gz
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.ib
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !13
  %i.ie = sext i16 %i.id to i32                   ; 3 uses
  %i.if = sub nsw i32 %i.hz, %i.gz
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.ig
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !13
  %i.ij = sext i16 %i.ii to i32                   ; 3 uses
  %i.ik = sub nsw i32 %i.ie, %i.hy                ; 2 uses
  %i.il = tail call i32 @llvm.abs.i32(i32 range(i32 -98303, 32768) %i.ik, i1 true) ; 2 uses
  %i.im = lshr i32 %i.il, %i.gn
  %i.in = sub nsw i32 %5, %i.im
  %i.io = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 %i.in, i32 0)
  %i.ip = tail call i32 @llvm.umin.i32(i32 %i.il, i32 %i.io) ; 2 uses
  %i.iq = icmp slt i32 %i.ik, 0
  %i.ir = sub nsw i32 0, %i.ip
  %i.is = select i1 %i.iq, i32 %i.ir, i32 %i.ip
  %i.it = sub nsw i32 %i.ij, %i.hy                ; 2 uses
  %i.iu = tail call i32 @llvm.abs.i32(i32 range(i32 -98303, 32768) %i.it, i1 true) ; 2 uses
  %i.iv = lshr i32 %i.iu, %i.gn
  %i.iw = sub nsw i32 %5, %i.iv
  %i.ix = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 %i.iw, i32 0)
  %i.iy = tail call i32 @llvm.umin.i32(i32 %i.iu, i32 %i.ix) ; 2 uses
  %i.iz = icmp slt i32 %i.it, 0
  %i.ja = sub nsw i32 0, %i.iy
  %i.jb = select i1 %i.iz, i32 %i.ja, i32 %i.iy
  %i.jc = tail call range(i32 -32768, 65536) i32 @llvm.umin.i32(i32 range(i32 -32768, 32768) %i.ie, i32 range(i32 -32768, 65536) %i.hy)
  %i.jd = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.ie, i32 %i.hy)
  %i.je = tail call range(i32 -32768, 65536) i32 @llvm.umin.i32(i32 range(i32 -32768, 32768) %i.ij, i32 range(i32 -32768, 65536) %i.jc)
  %i.jf = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.ij, i32 %i.jd)
  %i.jg = add nsw i32 %i.hz, %i.hd
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.jh
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !13 ; 2 uses
  %i.jk = sub nsw i32 %i.hz, %i.hd
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.jl
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !13 ; 2 uses
  %i.jo = add nsw i32 %i.hz, %i.hf
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.jp
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !13 ; 2 uses
  %i.js = sub nsw i32 %i.hz, %i.hf
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.jt
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !13 ; 2 uses
  %i.jw = sext i16 %i.jv to i32                   ; 2 uses
  %i.jx = insertelement <4 x i16> poison, i16 %i.jn, i64 0
  %i.jy = insertelement <4 x i16> %i.jx, i16 %i.jj, i64 1
  %i.jz = insertelement <4 x i16> %i.jy, i16 %i.jr, i64 2
  %i.ka = insertelement <4 x i16> %i.jz, i16 %i.jv, i64 3
  %i.kb = sext <4 x i16> %i.ka to <4 x i32>
  %i.kc = sext i16 %i.jr to i32                   ; 2 uses
  %i.kd = sext i16 %i.jj to i32                   ; 2 uses
  %i.ke = sext i16 %i.jn to i32                   ; 2 uses
  %i.kf = insertelement <4 x i32> poison, i32 %i.hy, i64 0
  %i.kg = shufflevector <4 x i32> %i.kf, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kh = sub nsw <4 x i32> %i.kb, %i.kg          ; 2 uses
  %i.ki = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.kh, i1 true) ; 2 uses
  %i.kj = lshr <4 x i32> %i.ki, %i.hs
  %i.kk = sub nsw <4 x i32> %i.hq, %i.kj
  %i.kl = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kk, <4 x i32> zeroinitializer)
  %i.km = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ki, <4 x i32> %i.kl) ; 2 uses
  %i.kn = icmp slt <4 x i32> %i.kh, zeroinitializer
  %i.ko = sub nsw <4 x i32> zeroinitializer, %i.km
  %i.kp = select <4 x i1> %i.kn, <4 x i32> %i.ko, <4 x i32> %i.km
  %i.kq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.kp)
  %reass.mul = shl nsw i32 %i.kq, 1
  %reass.add262 = add nsw i32 %i.jb, %i.is
  %reass.mul263 = mul nsw i32 %reass.add262, %i.gj
  %i.kr = tail call range(i32 -32768, 65536) i32 @llvm.umin.i32(i32 range(i32 -32768, 32768) %i.kd, i32 range(i32 -32768, 65536) %i.je)
  %i.ks = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.kd, i32 %i.jf)
  %i.kt = tail call range(i32 -32768, 65536) i32 @llvm.umin.i32(i32 range(i32 -32768, 32768) %i.ke, i32 range(i32 -32768, 65536) %i.kr)
  %i.ku = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.ke, i32 %i.ks)
  %i.kv = tail call range(i32 -32768, 65536) i32 @llvm.umin.i32(i32 range(i32 -32768, 32768) %i.kc, i32 range(i32 -32768, 65536) %i.kt)
  %i.kw = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.kc, i32 %i.ku)
  %i.kx = tail call range(i32 -32768, 65536) i32 @llvm.umin.i32(i32 range(i32 -32768, 32768) %i.jw, i32 range(i32 -32768, 65536) %i.kv)
  %i.ky = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.jw, i32 %i.kw)
  %i.kz = add nsw i32 %i.hz, %i.hi
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !13
  %i.ld = sext i16 %i.lc to i32                   ; 3 uses
  %i.le = sub nsw i32 %i.hz, %i.hi
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.lf
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !13
  %i.li = sext i16 %i.lh to i32                   ; 3 uses
  %i.lj = sub nsw i32 %i.ld, %i.hy                ; 2 uses
  %i.lk = tail call i32 @llvm.abs.i32(i32 range(i32 -98303, 32768) %i.lj, i1 true) ; 2 uses
  %i.ll = lshr i32 %i.lk, %i.gn
  %i.lm = sub nsw i32 %5, %i.ll
  %i.ln = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 %i.lm, i32 0)
  %i.lo = tail call i32 @llvm.umin.i32(i32 %i.lk, i32 %i.ln) ; 2 uses
  %i.lp = icmp slt i32 %i.lj, 0
  %i.lq = sub nsw i32 0, %i.lo
  %i.lr = select i1 %i.lp, i32 %i.lq, i32 %i.lo
  %i.ls = sub nsw i32 %i.li, %i.hy                ; 2 uses
  %i.lt = tail call i32 @llvm.abs.i32(i32 range(i32 -98303, 32768) %i.ls, i1 true) ; 2 uses
  %i.lu = lshr i32 %i.lt, %i.gn
  %i.lv = sub nsw i32 %5, %i.lu
  %i.lw = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 %i.lv, i32 0)
  %i.lx = tail call i32 @llvm.umin.i32(i32 %i.lt, i32 %i.lw) ; 2 uses
  %i.ly = icmp slt i32 %i.ls, 0
  %i.lz = sub nsw i32 0, %i.lx
  %i.ma = select i1 %i.ly, i32 %i.lz, i32 %i.lx
  %i.mb = tail call range(i32 -32768, 65536) i32 @llvm.umin.i32(i32 range(i32 -32768, 32768) %i.ld, i32 range(i32 -32768, 65536) %i.kx)
  %i.mc = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.ld, i32 %i.ky)
  %i.md = tail call range(i32 -32768, 65536) i32 @llvm.umin.i32(i32 range(i32 -32768, 32768) %i.li, i32 range(i32 -32768, 65536) %i.mb)
  %i.me = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.li, i32 %i.mc)
  %i.mf = add nsw i32 %i.hz, %i.hl
  %i.mg = sext i32 %i.mf to i64
end_hunk_0
