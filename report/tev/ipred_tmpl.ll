Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ipred_tmpl?download=true
inline.NumInlined: 55
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ipred_z2_c:bb.a
bb.m:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %.pn = phi i32 [ %i.bv, %.lr.ph ], [ %.0116143, %bb.p ]
  %.0118141 = phi i32 [ %i.bt, %.lr.ph ], [ %i.da, %bb.p ] ; 3 uses
  %.0116143 = sub nsw i32 %.pn, %.0122            ; 3 uses
  %i.bz = icmp sgt i32 %.0118141, -1
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ca = zext nneg i32 %.0118141 to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.ca ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !9
  %i.cd = zext i16 %i.cc to i32
  %i.ce = mul nuw nsw i32 %i.bw, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cg = ashr i32 %.0116143, 6                   ; 3 uses
  %i.ch = icmp sge i32 %i.cg, %i.bl
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = and i32 %.0116143, 62                   ; 2 uses
  %i.cj = sub nsw i32 0, %i.cg
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.bn, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !9
  %i.cn = zext i16 %i.cm to i32
  %i.co = sub nuw nsw i32 64, %i.ci
  %i.cp = mul nuw nsw i32 %i.co, %i.cn
  %i.cq = xor i32 %i.cg, -1
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.bn, i64 %i.cr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink.in = phi ptr [ %i.cs, %bb.o ], [ %i.cf, %bb.n ]
  %.sink160 = phi i32 [ %i.ci, %bb.o ], [ %i.bu, %bb.n ]
  %.sink159 = phi i32 [ %i.cp, %bb.o ], [ %i.ce, %bb.n ]
  %.sink = load i16, ptr %.sink.in, align 2, !tbaa !9
  %i.ct = zext i16 %.sink to i32
  %i.cu = mul nuw nsw i32 %.sink160, %i.ct
  %i.cv = add nuw nsw i32 %i.cu, %.sink159
  %i.cw = add nuw nsw i32 %i.cv, 32
  %i.cx = lshr i32 %i.cw, 6
  %i.cy = trunc i32 %i.cx to i16
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.0146, i64 %indvars.iv
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.da = add nsw i32 %.0118141, %i.am
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.m
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @ipred_z3_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 %6, i32 %7, i32 noundef %8) #3 {
bb.a:
  %i.a = alloca [128 x i16], align 16             ; 6 uses
  %i.b = lshr i32 %5, 9
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %i.d = and i32 %5, 511                          ; 4 uses
  %i.e = icmp samesign ugt i32 %i.d, 180
  tail call void @llvm.assume(i1 %i.e)
  %i.f = sub nsw i32 270, %i.d
  %i.g = ashr i32 %i.f, 1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [2 x i8], ptr @dav1d_dr_intra_derivative, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !9
  %i.k = zext i16 %i.j to i32                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.not = icmp ult i32 %5, 1024
  br i1 %.not, label %.thread101, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %4, %3                       ; 11 uses
  %i.m = icmp samesign ugt i32 %i.d, 219
  %i.n = lshr exact i32 16, %i.c
  %i.o = icmp sgt i32 %i.l, %i.n
  %.not105 = select i1 %i.m, i1 true, i1 %i.o
  br i1 %.not105, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sub nsw i32 0, %i.l
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [2 x i8], ptr %2, i64 %i.q
  %i.s = sub nsw i32 %3, %4
  %i.t = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.s, i32 0)
  %i.u = add nsw i32 %i.l, 1
  call fastcc void @upsample_edge(ptr noundef %i.a, i32 noundef %i.l, ptr noundef %i.r, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %8)
  %i.v = shl nsw i32 %i.l, 1
  %i.w = add nsw i32 %i.v, -2                     ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.x
  %i.z = shl nuw nsw i32 %i.k, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.aa = add nsw i32 %i.d, -180
  %i.ab = tail call fastcc i32 @get_filter_strength(i32 noundef %i.l, i32 noundef %i.aa, i32 noundef %i.c) ; 2 uses
  %.not97 = icmp eq i32 %i.ab, 0
  br i1 %.not97, label %.thread101, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = sub nsw i32 0, %i.l
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ad
  %i.af = sub nsw i32 %3, %4
  %i.ag = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ah = add nsw i32 %i.l, 1
  call fastcc void @filter_edge(ptr noundef %i.a, i32 noundef %i.l, i32 noundef 0, i32 noundef %i.l, ptr noundef %i.ae, i32 noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.ab)
  %i.ai = add nsw i32 %i.l, -1                    ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.aj
  br label %bb.f

.thread101:                                       ; preds = %bb.a, %bb.d
  %i.al = getelementptr inbounds i8, ptr %2, i64 -2
  %i.am = tail call noundef i32 @llvm.smin.i32(i32 %3, i32 %4)
  %i.an = add i32 %4, -1
  %i.ao = add i32 %i.an, %i.am
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread101, %bb.c
  %ident.check151 = phi i1 [ true, %bb.c ], [ false, %.thread101 ], [ false, %bb.e ]
  %i.ap = phi i64 [ 2, %bb.c ], [ 1, %.thread101 ], [ 1, %bb.e ] ; 6 uses
  %.093 = phi i32 [ %i.z, %bb.c ], [ %i.k, %.thread101 ], [ %i.k, %bb.e ]
  %.192 = phi ptr [ %i.y, %bb.c ], [ %i.al, %.thread101 ], [ %i.ak, %bb.e ] ; 8 uses
  %.190 = phi i32 [ %i.w, %bb.c ], [ %i.ao, %.thread101 ], [ %i.ai, %bb.e ] ; 2 uses
  %i.aq = icmp sgt i32 %3, 0
  br i1 %i.aq, label %.lr.ph115, label %._crit_edge

.lr.ph115:                                        ; preds = %bb.f
  %i.ar = icmp sgt i32 %4, 0
  %i.as = and i64 %1, 1
  %.not.i = icmp eq i64 %i.as, 0                  ; 3 uses
  %i.at = ashr exact i64 %1, 1                    ; 2 uses
  %i.au = sub nsw i32 0, %.190
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %.192, i64 %i.av
  br i1 %i.ar, label %.lr.ph.us.preheader, label %._crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph115
  %i.ax = zext nneg i32 %.093 to i64              ; 2 uses
  %i.ay = sext i32 %.190 to i64                   ; 2 uses
  %i.az = zext nneg i32 %4 to i64
  %wide.trip.count133 = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %4 to i64      ; 3 uses
  %i.ba = add nsw i64 %i.ap, -1
  %i.bb = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %scevgep = getelementptr i8, ptr %.192, i64 2   ; 2 uses
  %ident.check150 = icmp ne i64 %1, 2
  %i.bc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ap, i1 true)
  %i.bd = or i1 %ident.check150, %ident.check151
  %i.be = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ap, i1 true)
  %factor.op.mul = mul i64 %i.ap, -2
  %i.bf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ap, i1 true)
  %ident.check.not = icmp eq i64 %1, 2
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.loopexit.us
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next129, %.loopexit.us ] ; 3 uses
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph.us.preheader ], [ %indvars.iv.next, %.loopexit.us ] ; 5 uses
  %i.bg = lshr i64 %indvars.iv, 6                 ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.bg, i64 %i.ay) ; 2 uses
  %i.bh = add i64 %i.ba, %smax
  %i.bi = sub i64 %i.bh, %i.bg                    ; 3 uses
  %indvars130 = trunc i64 %indvars.iv to i32
  %i.bj = lshr i64 %indvars.iv, 6                 ; 9 uses
  %i.bk = and i32 %indvars130, 62                 ; 3 uses
  %i.bl = sub nuw nsw i32 64, %i.bk               ; 2 uses
  %invariant.gep.us = getelementptr [2 x i8], ptr %0, i64 %indvars.iv128 ; 7 uses
  %i.bm = sub nsw i64 %smax, %i.bj
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bb)
  %i.bo = add nsw i64 %i.bn, 1                    ; 3 uses
  %min.iters.check164 = icmp ult i64 %i.bo, 57
  br i1 %min.iters.check164, label %scalar.ph.preheader, label %vector.scevcheck149

vector.scevcheck149:                              ; preds = %.lr.ph.us
  %sh.diff = lshr i64 %indvars.iv, 5
  %tr.sh.diff = trunc i64 %sh.diff to i33
  %tr.sh.diff.not = and i33 %tr.sh.diff, -2
  %i.bp = xor i33 %tr.sh.diff.not, -2             ; 2 uses
  %i.bq = lshr i64 %i.bi, %i.bc
  %umin152 = call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bb) ; 2 uses
  %i.br = trunc i64 %umin152 to i33
  %mul.result = shl i33 %i.br, 1
  %i.bs = sub i33 %i.bp, %mul.result
  %i.bt = icmp sgt i33 %i.bs, %i.bp
  %i.bu = icmp ugt i64 %umin152, 4294967295
  %i.bv = or i1 %i.bt, %i.bu
  %i.bw = or i1 %i.bd, %i.bv
  br i1 %i.bw, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck149
  %i.bx = shl nuw nsw i64 %indvars.iv128, 1
  %i.by = lshr i64 %i.bi, %i.be
  %i.bz = call i64 @llvm.umin.i64(i64 %i.by, i64 %i.bb) ; 2 uses
  %i.ca = shl i64 %i.bz, 1                        ; 2 uses
  %i.cb = getelementptr i8, ptr %0, i64 %i.bx
  %i.cc = getelementptr i8, ptr %i.cb, i64 2
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.ca  ; 2 uses
  %9 = trunc i64 %i.bj to i33
  %10 = shl i33 %9, 1
  %11 = sub nuw nsw i33 -2, %10
  %12 = sext i33 %11 to i64                       ; 2 uses
  %13 = sub i64 %12, %i.ca
  %i.ce = getelementptr i8, ptr %.192, i64 %13
  %14 = getelementptr i8, ptr %scevgep, i64 %12
  %.reass = mul i64 %factor.op.mul, %i.bz
  %15 = shl nuw nsw i64 %i.bj, 1
  %16 = sub i64 %.reass, %15
  %17 = getelementptr i8, ptr %.192, i64 %16
  %18 = mul nsw i64 %i.bj, -2
  %i.cf = getelementptr i8, ptr %scevgep, i64 %18
  %bound0 = icmp ult ptr %invariant.gep.us, %14
  %bound1 = icmp ult ptr %i.ce, %i.cd
  %found.conflict = and i1 %bound0, %bound1
  %bound0165 = icmp ult ptr %invariant.gep.us, %i.cf
  %bound1166 = icmp ult ptr %17, %i.cd
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx = or i1 %found.conflict, %found.conflict167
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph168

vector.ph168:                                     ; preds = %vector.memcheck
  %i.cg = and i64 %i.bo, 7                        ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  %i.ci = select i1 %i.ch, i64 8, i64 %i.cg
  %n.vec169 = sub i64 %i.bo, %i.ci                ; 3 uses
  %i.cj = add i64 %i.bj, %n.vec169
  tail call void @llvm.assume(i1 %.not.i)
  %broadcast.splatinsert170 = insertelement <8 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat171 = shufflevector <8 x i32> %broadcast.splatinsert170, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <8 x i32> poison, i32 %i.bl, i64 0
  %broadcast.splat173 = shufflevector <8 x i32> %broadcast.splatinsert172, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph168
  %index175 = phi i64 [ 0, %vector.ph168 ], [ %index.next178, %vector.body174 ] ; 3 uses
  %i.ck = add nuw i64 %i.bj, %index175            ; 2 uses
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds [2 x i8], ptr %.192, i64 %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -14
  %wide.load = load <8 x i16>, ptr %i.cn, align 2, !tbaa !9, !alias.scope !55
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.co = zext <8 x i16> %reverse to <8 x i32>
  %i.cp = mul nuw nsw <8 x i32> %broadcast.splat173, %i.co
  %i.cq = xor i64 %i.ck, -1
  %i.cr = shl i64 %i.cq, 32
  %i.cs = ashr exact i64 %i.cr, 31
  %i.ct = getelementptr inbounds i8, ptr %.192, i64 %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -14
  %wide.load176 = load <8 x i16>, ptr %i.cu, align 2, !tbaa !9, !alias.scope !56
  %reverse177 = shufflevector <8 x i16> %wide.load176, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cv = zext <8 x i16> %reverse177 to <8 x i32>
  %i.cw = mul nuw nsw <8 x i32> %broadcast.splat171, %i.cv
  %i.cx = add nuw nsw <8 x i32> %i.cp, splat (i32 32)
  %i.cy = add nuw nsw <8 x i32> %i.cx, %i.cw
  %i.cz = lshr <8 x i32> %i.cy, splat (i32 6)
  %i.da = trunc <8 x i32> %i.cz to <8 x i16>
  %i.db = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %index175
  store <8 x i16> %i.da, ptr %i.db, align 2, !tbaa !9, !alias.scope !57, !noalias !58
  %index.next178 = add nuw i64 %index175, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next178, %n.vec169
  br i1 %i.dc, label %scalar.ph.preheader, label %vector.body174, !llvm.loop !50

scalar.ph.preheader:                              ; preds = %vector.body174, %vector.memcheck, %vector.scevcheck149, %.lr.ph.us
  %indvars.iv121.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck149 ], [ 0, %.lr.ph.us ], [ %n.vec169, %vector.body174 ]
  %indvars.iv119.ph = phi i64 [ %i.bj, %vector.memcheck ], [ %i.bj, %vector.scevcheck149 ], [ %i.bj, %.lr.ph.us ], [ %i.cj, %vector.body174 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.g
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %bb.g ], [ %indvars.iv121.ph, %scalar.ph.preheader ] ; 7 uses
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %bb.g ], [ %indvars.iv119.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dd = icmp slt i64 %indvars.iv119, %i.ay
  br i1 %i.dd, label %bb.g, label %iter.check

bb.g:                                             ; preds = %scalar.ph
  %i.de = sub nsw i64 0, %indvars.iv119
  %i.df = getelementptr inbounds [2 x i8], ptr %.192, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !9
  %i.dh = zext i16 %i.dg to i32
  %i.di = mul nuw nsw i32 %i.bl, %i.dh
  %i.dj = xor i64 %indvars.iv119, -1
  %sext = shl i64 %i.dj, 32
  %i.dk = ashr exact i64 %sext, 31
  %i.dl = getelementptr inbounds i8, ptr %.192, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !9
  %i.dn = zext i16 %i.dm to i32
  %i.do = mul nuw nsw i32 %i.bk, %i.dn
  %i.dp = add nuw nsw i32 %i.di, 32
  %i.dq = add nuw nsw i32 %i.dp, %i.do
  %i.dr = lshr i32 %i.dq, 6
  %i.ds = trunc i32 %i.dr to i16
  tail call void @llvm.assume(i1 %.not.i)
  %i.dt = mul nsw i64 %i.at, %indvars.iv121
  %gep.us = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %i.dt
  store i16 %i.ds, ptr %gep.us, align 2, !tbaa !9
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, %i.ap
  %exitcond.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.us, label %scalar.ph, !llvm.loop !51

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %vec.epilog.scalar.ph ], [ %indvars.iv125.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.du = mul nsw i64 %i.at, %indvars.iv125
  %gep111.us = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %i.du
  store i16 %.pre, ptr %gep111.us, align 2, !tbaa !9
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.dv = icmp samesign ult i64 %indvars.iv.next126, %i.az
  br i1 %i.dv, label %vec.epilog.scalar.ph, label %.loopexit.us, !llvm.loop !52

.loopexit.us:                                     ; preds = %bb.g, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ax
  %exitcond134.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge, label %.lr.ph.us

iter.check:                                       ; preds = %scalar.ph
  tail call void @llvm.assume(i1 %.not.i)
  %.pre = load i16, ptr %i.aw, align 2, !tbaa !9  ; 3 uses
  %i.dw = lshr i64 %i.bi, %i.bf
  %umin = call i64 @llvm.umin.i64(i64 %i.dw, i64 %i.bb)
  %i.dx = sub i64 %wide.trip.count, %umin         ; 7 uses
  %min.iters.check = icmp ugt i64 %i.dx, 3
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check142 = icmp ult i64 %i.dx, 16
  br i1 %min.iters.check142, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dy = and i64 %i.dx, 12
  %n.vec = and i64 %i.dx, -16                     ; 4 uses
  %i.dz = add i64 %indvars.iv121, %n.vec
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ea = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %indvars.iv121
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = getelementptr [2 x i8], ptr %i.ea, i64 %index ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.eb, align 2, !tbaa !9
  store <8 x i16> %broadcast.splat, ptr %i.ec, align 2, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dx, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dy, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec143 = and i64 %i.dx, -4                   ; 3 uses
  %i.ee = add i64 %indvars.iv121, %n.vec143
  %broadcast.splatinsert144 = insertelement <4 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat145 = shufflevector <4 x i16> %broadcast.splatinsert144, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ef = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %indvars.iv121
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index146 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next147, %vec.epilog.vector.body ] ; 2 uses
  %i.eg = getelementptr [2 x i8], ptr %i.ef, i64 %index146
  store <4 x i16> %broadcast.splat145, ptr %i.eg, align 2, !tbaa !9
  %index.next147 = add nuw i64 %index146, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next147, %n.vec143
  br i1 %i.eh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n148 = icmp eq i64 %i.dx, %n.vec143
  br i1 %cmp.n148, label %.loopexit.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv125.ph = phi i64 [ %indvars.iv121, %iter.check ], [ %i.dz, %vec.epilog.iter.check ], [ %i.ee, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %.loopexit.us, %.lr.ph115, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @ipred_filter_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 %6, i32 %7, i32 noundef %8) #3 {
bb.a:
  %i.a = and i32 %5, 511                          ; 2 uses
  %i.b = icmp samesign ult i32 %i.a, 5
  tail call void @llvm.assume(i1 %i.b)
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [64 x i8], ptr @dav1d_filter_intra_taps, i64 %i.c ; 56 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = icmp sgt i32 %4, 0
  br i1 %i.f, label %.lr.ph86, label %._crit_edge87.split

.lr.ph86:                                         ; preds = %bb.a
  %i.g = icmp sgt i32 %3, 0
  %i.h = ashr exact i64 %1, 1
  %i.i = and i64 %1, 1
  %.not.i = icmp eq i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %.idx = shl nsw i64 %1, 1
  br i1 %i.g, label %.lr.ph86.split, label %._crit_edge87.split

.lr.ph86.split:                                   ; preds = %.lr.ph86
  %i.j = zext nneg i32 %3 to i64
  %i.k = zext nneg i32 %4 to i64
  %i.l = load i8, ptr %i.d, align 16, !tbaa !14
  %i.m = sext i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %i.p = sext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = load i8, ptr %i.q, align 16, !tbaa !14
end_hunk_0
begin_hunk_1_@filter_edge:bb.a
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader39.loopexit.unr-lcssa, label %bb.b

.preheader38:                                     ; preds = %.preheader38.lr.ph, %.preheader38
  %indvars.iv54 = phi i64 [ %i.u, %.preheader38.lr.ph ], [ %indvars.iv.next55, %.preheader38 ] ; 9 uses
  %i.aq = add nsw i64 %indvars.iv54, -2           ; 2 uses
  %i.ar = icmp slt i64 %i.aq, %i.t
  %i.as = trunc nsw i64 %i.aq to i32
  %i.at = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.p)
  %i.au = select i1 %i.ar, i32 %5, i32 %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %4, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !9
  %i.ay = zext i16 %i.ax to i32
  %i.az = mul nuw nsw i32 %i.v, %i.ay
  %.not = icmp sgt i64 %indvars.iv54, %i.t
  %i.ba = trunc i64 %indvars.iv54 to i32
  %i.bb = add i32 %i.ba, -1
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.p)
  %i.bd = select i1 %.not, i32 %i.bc, i32 %5
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [2 x i8], ptr %4, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !9
  %i.bh = zext i16 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.w, %i.bh
  %i.bj = add nuw nsw i32 %i.bi, %i.az
  %i.bk = icmp slt i64 %indvars.iv54, %i.t
  %i.bl = trunc nsw i64 %indvars.iv54 to i32
  %i.bm = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 %i.p)
  %i.bn = select i1 %i.bk, i32 %5, i32 %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !9
  %i.br = zext i16 %i.bq to i32
  %i.bs = mul nuw nsw i32 %i.x, %i.br
  %i.bt = add nuw nsw i32 %i.bs, %i.bj
  %i.bu = add nuw nsw i64 %indvars.iv54, 1        ; 2 uses
  %i.bv = icmp slt i64 %i.bu, %i.t
  %i.bw = trunc nsw i64 %i.bu to i32
  %i.bx = tail call i32 @llvm.smin.i32(i32 %i.bw, i32 %i.p)
  %i.by = select i1 %i.bv, i32 %5, i32 %i.bx
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !9
  %i.cc = zext i16 %i.cb to i32
  %i.cd = mul nuw nsw i32 %i.y, %i.cc
  %i.ce = add nuw nsw i32 %i.cd, %i.bt
  %i.cf = add nuw nsw i64 %indvars.iv54, 2        ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.t
  %i.ch = trunc nsw i64 %i.cf to i32
  %i.ci = tail call i32 @llvm.smin.i32(i32 %i.ch, i32 %i.p)
  %i.cj = select i1 %i.cg, i32 %5, i32 %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !9
  %i.cn = zext i16 %i.cm to i32
  %i.co = mul nuw nsw i32 %i.z, %i.cn
  %i.cp = add nuw nsw i32 %i.co, %i.ce
  %i.cq = add nuw nsw i32 %i.cp, 8
  %i.cr = lshr i32 %i.cq, 4
  %i.cs = trunc i32 %i.cr to i16
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv54
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !9
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %.preheader, label %.preheader38

.preheader:                                       ; preds = %.preheader38, %.preheader39
  %.1.lcssa = phi i32 [ %.037.lcssa, %.preheader39 ], [ %i.n, %.preheader38 ] ; 6 uses
  %i.cu = icmp slt i32 %.1.lcssa, %1
  br i1 %i.cu, label %.lr.ph46, label %._crit_edge

.lr.ph46:                                         ; preds = %.preheader
  %i.cv = add nsw i32 %6, -1                      ; 3 uses
  %i.cw = zext nneg i32 %.1.lcssa to i64          ; 3 uses
  %i.cx = sub i32 %1, %.1.lcssa
  %.neg = add i32 %.1.lcssa, 1
  %xtraiter72 = and i32 %i.cx, 1
  %lcmp.mod73.not = icmp eq i32 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph46
  %i.cy = icmp sgt i32 %5, %.1.lcssa
  %i.cz = tail call i32 @llvm.smin.i32(i32 %.1.lcssa, i32 %i.cv)
  %i.da = select i1 %i.cy, i32 %5, i32 %i.cz
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [2 x i8], ptr %4, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !9
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cw
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !9
  %indvars.iv.next60.prol = add nuw nsw i64 %i.cw, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph46
  %indvars.iv59.unr = phi i64 [ %i.cw, %.lr.ph46 ], [ %indvars.iv.next60.prol, %.prol.loopexit.unr-lcssa ]
  %i.df = icmp eq i32 %1, %.neg
  br i1 %i.df, label %._crit_edge, label %.lr.ph46.new

.lr.ph46.new:                                     ; preds = %.prol.loopexit, %.lr.ph46.new
  %indvars.iv59 = phi i64 [ %indvars.iv.next60.1, %.lr.ph46.new ], [ %indvars.iv59.unr, %.prol.loopexit ] ; 4 uses
  %i.dg = trunc nuw i64 %indvars.iv59 to i32      ; 2 uses
  %i.dh = icmp sgt i32 %5, %i.dg
  %i.di = tail call i32 @llvm.smin.i32(i32 %i.dg, i32 %i.cv)
  %i.dj = select i1 %i.dh, i32 %5, i32 %i.di
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [2 x i8], ptr %4, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !9
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv59
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !9
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.do = trunc nuw i64 %indvars.iv.next60 to i32 ; 2 uses
  %i.dp = icmp sgt i32 %5, %i.do
  %i.dq = tail call i32 @llvm.smin.i32(i32 %i.do, i32 %i.cv)
  %i.dr = select i1 %i.dp, i32 %5, i32 %i.dq
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [2 x i8], ptr %4, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !9
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next60
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !9
  %indvars.iv.next60.1 = add nuw nsw i64 %indvars.iv59, 2 ; 2 uses
  %i.dw = trunc nuw i64 %indvars.iv.next60.1 to i32
  %i.dx = icmp sgt i32 %1, %i.dw
  br i1 %i.dx, label %.lr.ph46.new, label %._crit_edge

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph46.new, %.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @cfl_ac_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #9 {
bb.a:
  %i.a = icmp sgt i32 %3, -1
  tail call void @llvm.assume(i1 %i.a)
  %i.b = shl nuw nsw i32 %3, 2                    ; 2 uses
  %i.c = icmp slt i32 %i.b, %5
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp sgt i32 %4, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = shl nuw nsw i32 %4, 2                    ; 5 uses
  %i.f = icmp slt i32 %i.e, %6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = sub nuw nsw i32 %6, %i.e                 ; 9 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.preheader116.lr.ph, label %.preheader114

.preheader116.lr.ph:                              ; preds = %bb.a
  %i.i = sub nuw nsw i32 %5, %i.b                 ; 9 uses
  %i.j = icmp sgt i32 %i.i, 0
  %.not104108 = icmp eq i32 %8, 0                 ; 2 uses
  %i.k = xor i32 %7, 1
  %reass.sub188 = sub nsw i32 %i.k, %8
  %i.l = add nsw i32 %reass.sub188, 2             ; 17 uses
  %i.m = zext i32 %5 to i64                       ; 17 uses
  %i.n = and i64 %2, 1
  %.not.i106 = icmp eq i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i106)
  %i.o = ashr exact i64 %2, 1
  %i.p = zext nneg i32 %8 to i64
  %i.q = shl nsw i64 %i.o, %i.p                   ; 10 uses
  br i1 %i.j, label %.preheader116.lr.ph.split.us, label %.preheader116.us147.preheader

.preheader116.us147.preheader:                    ; preds = %.preheader116.lr.ph
  %i.r = shl nuw nsw i64 %i.m, 1
  %xtraiter = and i64 %i.m, 7                     ; 3 uses
  %i.s = add i32 %5, -1
  %i.t = icmp ult i32 %i.s, 7
  %unroll_iter = and i64 %i.m, 4294967288
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod514 = icmp ne i64 %xtraiter, 0
  br label %.preheader116.us147

.preheader116.lr.ph.split.us:                     ; preds = %.preheader116.lr.ph
  %.not = icmp eq i32 %7, 0
  %wide.trip.count241 = zext nneg i32 %i.i to i64 ; 31 uses
  br i1 %.not, label %.preheader116.us.us.preheader, label %.preheader116.lr.ph.split.us.split

.preheader116.us.us.preheader:                    ; preds = %.preheader116.lr.ph.split.us
  %wide.trip.count246 = zext nneg i32 %i.i to i64
  %.not286 = icmp eq i32 %3, 0
  %i.u = zext nneg i32 %i.i to i64                ; 2 uses
  %i.v = xor i32 %i.e, -1
  %i.w = add i32 %6, %i.v
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = mul i64 %i.q, %i.x
  %i.z = add i64 %i.y, %wide.trip.count241
  %i.aa = shl i64 %i.z, 1
  %scevgep362 = getelementptr i8, ptr %1, i64 %i.aa
  %i.ab = mul nuw i64 %i.m, %i.x
  %i.ac = add i64 %i.ab, %wide.trip.count241
  %i.ad = shl i64 %i.ac, 1
  %scevgep363 = getelementptr i8, ptr %0, i64 %i.ad
  %i.ae = xor i32 %i.e, -1
  %i.af = add i32 %6, %i.ae
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = mul i64 %i.q, %i.ag
  %i.ai = shl i64 %i.ah, 1                        ; 2 uses
  %i.aj = shl nuw nsw i64 %wide.trip.count241, 1  ; 2 uses
  %i.ak = getelementptr i8, ptr %1, i64 %i.ai
  %scevgep403.a = getelementptr i8, ptr %i.ak, i64 %i.aj
  %i.al = getelementptr i8, ptr %1, i64 %2
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ai
  %scevgep404 = getelementptr i8, ptr %i.am, i64 %i.aj
  %scevgep405 = getelementptr i8, ptr %1, i64 %2
  %i.an = mul nuw i64 %i.m, %i.ag
  %i.ao = add i64 %i.an, %wide.trip.count241
  %i.ap = shl i64 %i.ao, 1
  %scevgep406 = getelementptr i8, ptr %0, i64 %i.ap ; 2 uses
  %i.aq = shl nuw nsw i64 %wide.trip.count241, 1
  %i.ar = shl nuw nsw i64 %i.m, 1
  %i.as = sub nsw i64 %i.m, %wide.trip.count241
  %i.at = getelementptr i8, ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 -2
  %min.iters.check408 = icmp ult i32 %i.i, 8
  %bound0410 = icmp ult ptr %0, %scevgep404
  %bound1411 = icmp ult ptr %scevgep405, %scevgep406
  %found.conflict412 = and i1 %bound0410, %bound1411
  %.mask497 = and i64 %i.q, 4611686018427387904
  %stride.check413 = icmp ne i64 %.mask497, 0
  %i.av = or i1 %found.conflict412, %stride.check413
  %bound0414 = icmp ult ptr %0, %scevgep403.a
  %bound1415 = icmp ult ptr %1, %scevgep406
  %found.conflict416 = and i1 %bound0414, %bound1415
  %conflict.rdx417 = or i1 %i.av, %found.conflict416
  %n.vec419 = and i64 %wide.trip.count241, 2147483640 ; 3 uses
  %broadcast.splatinsert420 = insertelement <8 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat421 = shufflevector <8 x i32> %broadcast.splatinsert420, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n428 = icmp eq i64 %n.vec419, %wide.trip.count241
  %xtraiter517 = and i64 %wide.trip.count241, 1
  %lcmp.mod518.not = icmp eq i64 %xtraiter517, 0
  %i.aw = add nsw i64 %wide.trip.count241, -1
  %min.iters.check365 = icmp ult i32 %i.i, 4
  %bound0367 = icmp ult ptr %0, %scevgep362
  %bound1368 = icmp ult ptr %1, %scevgep363
  %found.conflict369 = and i1 %bound0367, %bound1368
  %.mask498 = and i64 %i.q, 4611686018427387904
  %stride.check370 = icmp ne i64 %.mask498, 0
  %i.ax = or i1 %found.conflict369, %stride.check370
  %min.iters.check371 = icmp ult i32 %i.i, 16
  %i.ay = and i64 %wide.trip.count241, 12
  %n.vec373 = and i64 %wide.trip.count241, 2147483632 ; 4 uses
  %broadcast.splatinsert374 = insertelement <8 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat375 = shufflevector <8 x i32> %broadcast.splatinsert374, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n381 = icmp eq i64 %n.vec373, %wide.trip.count241
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  %n.vec382 = and i64 %wide.trip.count241, 2147483644 ; 3 uses
  %broadcast.splatinsert383 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat384 = shufflevector <4 x i32> %broadcast.splatinsert383, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n388 = icmp eq i64 %n.vec382, %wide.trip.count241
  %xtraiter519 = and i64 %wide.trip.count241, 3   ; 2 uses
  %lcmp.mod520.not = icmp eq i64 %xtraiter519, 0
  %xtraiter521 = and i64 %i.as, 7                 ; 2 uses
  %lcmp.mod522.not = icmp eq i64 %xtraiter521, 0
  %i.az = sub nsw i64 %wide.trip.count241, %i.m
  %i.ba = icmp ugt i64 %i.az, -8
  br label %.preheader116.us.us

.preheader116.us.us:                              ; preds = %.preheader116.us.us.preheader, %._crit_edge.us.us
  %indvar = phi i64 [ 0, %.preheader116.us.us.preheader ], [ %indvar.next, %._crit_edge.us.us ] ; 2 uses
  %.091131.us.us = phi i32 [ 0, %.preheader116.us.us.preheader ], [ %i.fg, %._crit_edge.us.us ]
  %.095128.us.us = phi ptr [ %0, %.preheader116.us.us.preheader ], [ %i.fe, %._crit_edge.us.us ] ; 21 uses
  %.099125.us.us = phi ptr [ %1, %.preheader116.us.us.preheader ], [ %i.ff, %._crit_edge.us.us ] ; 13 uses
  %i.bb = mul i64 %i.ar, %indvar
  %scevgep474 = getelementptr i8, ptr %i.au, i64 %i.bb
  %i.bc = getelementptr i8, ptr %.099125.us.us, i64 %2 ; 4 uses
  br i1 %.not104108, label %iter.check, label %.lr.ph.split.us.split.us141.us.preheader

.lr.ph.split.us.split.us141.us.preheader:         ; preds = %.preheader116.us.us
  %brmerge = select i1 %min.iters.check408, i1 true, i1 %conflict.rdx417
  br i1 %brmerge, label %.lr.ph.split.us.split.us141.us.preheader503, label %vector.body422

vector.body422:                                   ; preds = %.lr.ph.split.us.split.us141.us.preheader, %vector.body422
  %index423 = phi i64 [ %index.next426, %vector.body422 ], [ 0, %.lr.ph.split.us.split.us141.us.preheader ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %index423
  %wide.load424 = load <8 x i16>, ptr %i.bd, align 2, !tbaa !9, !alias.scope !101
  %i.be = zext <8 x i16> %wide.load424 to <8 x i32>
  %i.bf = getelementptr [2 x i8], ptr %i.bc, i64 %index423
  %wide.load425 = load <8 x i16>, ptr %i.bf, align 2, !tbaa !9, !alias.scope !102
  %i.bg = zext <8 x i16> %wide.load425 to <8 x i32>
  %i.bh = add nuw nsw <8 x i32> %i.bg, %i.be
  %i.bi = shl nuw nsw <8 x i32> %i.bh, %broadcast.splat421
  %i.bj = trunc <8 x i32> %i.bi to <8 x i16>
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %index423
  store <8 x i16> %i.bj, ptr %i.bk, align 2, !tbaa !9, !alias.scope !103, !noalias !104
  %index.next426 = add nuw i64 %index423, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next426, %n.vec419
  br i1 %i.bl, label %middle.block427, label %vector.body422, !llvm.loop !73

middle.block427:                                  ; preds = %vector.body422
  br i1 %cmp.n428, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us141.us.preheader503

.lr.ph.split.us.split.us141.us.preheader503:      ; preds = %.lr.ph.split.us.split.us141.us.preheader, %middle.block427
  %indvars.iv238.ph = phi i64 [ %n.vec419, %middle.block427 ], [ 0, %.lr.ph.split.us.split.us141.us.preheader ] ; 6 uses
  br i1 %lcmp.mod518.not, label %.lr.ph.split.us.split.us141.us.prol.loopexit, label %.lr.ph.split.us.split.us141.us.prol

.lr.ph.split.us.split.us141.us.prol:              ; preds = %.lr.ph.split.us.split.us141.us.preheader503
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv238.ph
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !9
  %i.bo = zext i16 %i.bn to i32
  %i.bp = getelementptr [2 x i8], ptr %i.bc, i64 %indvars.iv238.ph
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !9
  %i.br = zext i16 %i.bq to i32
  %i.bs = add nuw nsw i32 %i.br, %i.bo
  %i.bt = shl nuw nsw i32 %i.bs, %i.l
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv238.ph
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !9
  %indvars.iv.next239.prol = or disjoint i64 %indvars.iv238.ph, 1
  br label %.lr.ph.split.us.split.us141.us.prol.loopexit

.lr.ph.split.us.split.us141.us.prol.loopexit:     ; preds = %.lr.ph.split.us.split.us141.us.prol, %.lr.ph.split.us.split.us141.us.preheader503
  %indvars.iv238.unr = phi i64 [ %indvars.iv238.ph, %.lr.ph.split.us.split.us141.us.preheader503 ], [ %indvars.iv.next239.prol, %.lr.ph.split.us.split.us141.us.prol ]
  %i.bw = icmp eq i64 %indvars.iv238.ph, %i.aw
  br i1 %i.bw, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us141.us

iter.check:                                       ; preds = %.preheader116.us.us
  %brmerge538 = select i1 %min.iters.check365, i1 true, i1 %i.ax
  br i1 %brmerge538, label %.lr.ph.split.us.split.us.us.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check371, label %vec.epilog.ph, label %vector.body376

vector.body376:                                   ; preds = %vector.main.loop.iter.check, %vector.body376
  %index377 = phi i64 [ %index.next379, %vector.body376 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %index377 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load = load <8 x i16>, ptr %i.bx, align 2, !tbaa !9, !alias.scope !105
  %wide.load378 = load <8 x i16>, ptr %i.by, align 2, !tbaa !9, !alias.scope !105
  %i.bz = zext <8 x i16> %wide.load to <8 x i32>
  %i.ca = zext <8 x i16> %wide.load378 to <8 x i32>
  %i.cb = shl nuw nsw <8 x i32> %i.bz, %broadcast.splat375
  %i.cc = shl nuw nsw <8 x i32> %i.ca, %broadcast.splat375
  %i.cd = trunc <8 x i32> %i.cb to <8 x i16>
  %i.ce = trunc <8 x i32> %i.cc to <8 x i16>
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %index377 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <8 x i16> %i.cd, ptr %i.cf, align 2, !tbaa !9, !alias.scope !106, !noalias !105
  store <8 x i16> %i.ce, ptr %i.cg, align 2, !tbaa !9, !alias.scope !106, !noalias !105
  %index.next379 = add nuw i64 %index377, 16      ; 2 uses
  %i.ch = icmp eq i64 %index.next379, %n.vec373
  br i1 %i.ch, label %middle.block380, label %vector.body376, !llvm.loop !77

middle.block380:                                  ; preds = %vector.body376
  br i1 %cmp.n381, label %..preheader115_crit_edge.split.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block380
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.split.us.us.us.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec373, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index385 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next387, %vec.epilog.vector.body ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %index385
  %wide.load386 = load <4 x i16>, ptr %i.ci, align 2, !tbaa !9, !alias.scope !105
  %i.cj = zext <4 x i16> %wide.load386 to <4 x i32>
  %i.ck = shl nuw nsw <4 x i32> %i.cj, %broadcast.splat384
  %i.cl = trunc <4 x i32> %i.ck to <4 x i16>
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %index385
  store <4 x i16> %i.cl, ptr %i.cm, align 2, !tbaa !9, !alias.scope !106, !noalias !105
  %index.next387 = add nuw i64 %index385, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next387, %n.vec382
  br i1 %i.cn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n388, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us.us.us.preheader

.lr.ph.split.us.split.us.us.us.preheader:         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv243.ph = phi i64 [ 0, %iter.check ], [ %n.vec382, %vec.epilog.middle.block ], [ %n.vec373, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod520.not, label %.lr.ph.split.us.split.us.us.us.prol.loopexit, label %.lr.ph.split.us.split.us.us.us.prol

.lr.ph.split.us.split.us.us.us.prol:              ; preds = %.lr.ph.split.us.split.us.us.us.preheader, %.lr.ph.split.us.split.us.us.us.prol
  %indvars.iv243.prol = phi i64 [ %indvars.iv.next244.prol, %.lr.ph.split.us.split.us.us.us.prol ], [ %indvars.iv243.ph, %.lr.ph.split.us.split.us.us.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.split.us.us.us.prol ], [ 0, %.lr.ph.split.us.split.us.us.us.preheader ]
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv243.prol
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !9
  %i.cq = zext i16 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, %i.l
  %i.cs = trunc i32 %i.cr to i16
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv243.prol
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !9
  %indvars.iv.next244.prol = add nuw nsw i64 %indvars.iv243.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter519
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.split.us.us.us.prol.loopexit, label %.lr.ph.split.us.split.us.us.us.prol, !llvm.loop !79

.lr.ph.split.us.split.us.us.us.prol.loopexit:     ; preds = %.lr.ph.split.us.split.us.us.us.prol, %.lr.ph.split.us.split.us.us.us.preheader
  %indvars.iv243.unr = phi i64 [ %indvars.iv243.ph, %.lr.ph.split.us.split.us.us.us.preheader ], [ %indvars.iv.next244.prol, %.lr.ph.split.us.split.us.us.us.prol ]
  %i.cu = sub nsw i64 %indvars.iv243.ph, %wide.trip.count241
  %i.cv = icmp ugt i64 %i.cu, -4
  br i1 %i.cv, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us.us.us

.lr.ph.split.us.split.us141.us:                   ; preds = %.lr.ph.split.us.split.us141.us.prol.loopexit, %.lr.ph.split.us.split.us141.us
  %indvars.iv238 = phi i64 [ %indvars.iv.next239.1, %.lr.ph.split.us.split.us141.us ], [ %indvars.iv238.unr, %.lr.ph.split.us.split.us141.us.prol.loopexit ] ; 5 uses
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv238
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !9
  %i.cy = zext i16 %i.cx to i32
  %i.cz = getelementptr [2 x i8], ptr %i.bc, i64 %indvars.iv238
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !9
  %i.db = zext i16 %i.da to i32
  %i.dc = add nuw nsw i32 %i.db, %i.cy
  %i.dd = shl nuw nsw i32 %i.dc, %i.l
  %i.de = trunc i32 %i.dd to i16
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv238
  store i16 %i.de, ptr %i.df, align 2, !tbaa !9
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 3 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv.next239
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !9
  %i.di = zext i16 %i.dh to i32
  %i.dj = getelementptr [2 x i8], ptr %i.bc, i64 %indvars.iv.next239
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !9
  %i.dl = zext i16 %i.dk to i32
  %i.dm = add nuw nsw i32 %i.dl, %i.di
  %i.dn = shl nuw nsw i32 %i.dm, %i.l
  %i.do = trunc i32 %i.dn to i16
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv.next239
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !9
  %indvars.iv.next239.1 = add nuw nsw i64 %indvars.iv238, 2 ; 2 uses
  %exitcond242.not.1 = icmp eq i64 %indvars.iv.next239.1, %wide.trip.count241
  br i1 %exitcond242.not.1, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us141.us, !llvm.loop !80

.lr.ph.split.us.split.us.us.us:                   ; preds = %.lr.ph.split.us.split.us.us.us.prol.loopexit, %.lr.ph.split.us.split.us.us.us
  %indvars.iv243 = phi i64 [ %indvars.iv.next244.3, %.lr.ph.split.us.split.us.us.us ], [ %indvars.iv243.unr, %.lr.ph.split.us.split.us.us.us.prol.loopexit ] ; 6 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv243
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !9
  %i.ds = zext i16 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, %i.l
  %i.du = trunc i32 %i.dt to i16
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv243
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !9
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv.next244
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !9
  %i.dy = zext i16 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, %i.l
  %i.ea = trunc i32 %i.dz to i16
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv.next244
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !9
  %indvars.iv.next244.1 = add nuw nsw i64 %indvars.iv243, 2 ; 2 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv.next244.1
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !9
  %i.ee = zext i16 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, %i.l
  %i.eg = trunc i32 %i.ef to i16
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv.next244.1
  store i16 %i.eg, ptr %i.eh, align 2, !tbaa !9
  %indvars.iv.next244.2 = add nuw nsw i64 %indvars.iv243, 3 ; 2 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.099125.us.us, i64 %indvars.iv.next244.2
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !9
  %i.ek = zext i16 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, %i.l
  %i.em = trunc i32 %i.el to i16
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %indvars.iv.next244.2
  store i16 %i.em, ptr %i.en, align 2, !tbaa !9
  %indvars.iv.next244.3 = add nuw nsw i64 %indvars.iv243, 4 ; 2 uses
  %exitcond247.not.3 = icmp eq i64 %indvars.iv.next244.3, %wide.trip.count246
  br i1 %exitcond247.not.3, label %..preheader115_crit_edge.split.us.us.us, label %.lr.ph.split.us.split.us.us.us, !llvm.loop !81

..preheader115_crit_edge.split.us.us.us:          ; preds = %.lr.ph.split.us.split.us141.us.prol.loopexit, %.lr.ph.split.us.split.us141.us, %.lr.ph.split.us.split.us.us.us.prol.loopexit, %.lr.ph.split.us.split.us.us.us, %middle.block427, %middle.block380, %vec.epilog.middle.block
  br i1 %.not286, label %._crit_edge.us.us, label %.lr.ph124.us.us.preheader

.lr.ph124.us.us.preheader:                        ; preds = %..preheader115_crit_edge.split.us.us.us
  %load_initial = load i16, ptr %scevgep474, align 2 ; 9 uses
  br i1 %lcmp.mod522.not, label %.lr.ph124.us.us.prol.loopexit, label %.lr.ph124.us.us.prol

.lr.ph124.us.us.prol:                             ; preds = %.lr.ph124.us.us.preheader, %.lr.ph124.us.us.prol
  %indvars.iv251.prol = phi i64 [ %indvars.iv.next252.prol, %.lr.ph124.us.us.prol ], [ %i.u, %.lr.ph124.us.us.preheader ] ; 2 uses
  %prol.iter523 = phi i64 [ %prol.iter523.next, %.lr.ph124.us.us.prol ], [ 0, %.lr.ph124.us.us.preheader ]
  %i.eo = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251.prol
  store i16 %load_initial, ptr %i.eo, align 2, !tbaa !9
  %indvars.iv.next252.prol = add nuw nsw i64 %indvars.iv251.prol, 1 ; 2 uses
  %prol.iter523.next = add i64 %prol.iter523, 1   ; 2 uses
  %prol.iter523.cmp.not = icmp eq i64 %prol.iter523.next, %xtraiter521
  br i1 %prol.iter523.cmp.not, label %.lr.ph124.us.us.prol.loopexit, label %.lr.ph124.us.us.prol, !llvm.loop !82

.lr.ph124.us.us.prol.loopexit:                    ; preds = %.lr.ph124.us.us.prol, %.lr.ph124.us.us.preheader
  %indvars.iv251.unr = phi i64 [ %i.u, %.lr.ph124.us.us.preheader ], [ %indvars.iv.next252.prol, %.lr.ph124.us.us.prol ]
  br i1 %i.ba, label %._crit_edge.us.us, label %.lr.ph124.us.us

.lr.ph124.us.us:                                  ; preds = %.lr.ph124.us.us.prol.loopexit, %.lr.ph124.us.us
  %indvars.iv251 = phi i64 [ %indvars.iv.next252.7, %.lr.ph124.us.us ], [ %indvars.iv251.unr, %.lr.ph124.us.us.prol.loopexit ] ; 9 uses
  %i.ep = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  store i16 %load_initial, ptr %i.ep, align 2, !tbaa !9
  %i.eq = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.er = getelementptr i8, ptr %i.eq, i64 2
  store i16 %load_initial, ptr %i.er, align 2, !tbaa !9
  %i.es = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.et = getelementptr i8, ptr %i.es, i64 4
  store i16 %load_initial, ptr %i.et, align 2, !tbaa !9
  %i.eu = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.ev = getelementptr i8, ptr %i.eu, i64 6
  store i16 %load_initial, ptr %i.ev, align 2, !tbaa !9
  %i.ew = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.ex = getelementptr i8, ptr %i.ew, i64 8
  store i16 %load_initial, ptr %i.ex, align 2, !tbaa !9
  %i.ey = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.ez = getelementptr i8, ptr %i.ey, i64 10
  store i16 %load_initial, ptr %i.ez, align 2, !tbaa !9
  %i.fa = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.fb = getelementptr i8, ptr %i.fa, i64 12
  store i16 %load_initial, ptr %i.fb, align 2, !tbaa !9
  %i.fc = getelementptr [2 x i8], ptr %.095128.us.us, i64 %indvars.iv251
  %i.fd = getelementptr i8, ptr %i.fc, i64 14
  store i16 %load_initial, ptr %i.fd, align 2, !tbaa !9
  %indvars.iv.next252.7 = add nuw nsw i64 %indvars.iv251, 8 ; 2 uses
  %exitcond255.not.7 = icmp eq i64 %indvars.iv.next252.7, %i.m
  br i1 %exitcond255.not.7, label %._crit_edge.us.us, label %.lr.ph124.us.us

._crit_edge.us.us:                                ; preds = %.lr.ph124.us.us.prol.loopexit, %.lr.ph124.us.us, %..preheader115_crit_edge.split.us.us.us
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us, i64 %i.m ; 2 uses
  %i.ff = getelementptr inbounds [2 x i8], ptr %.099125.us.us, i64 %i.q
  %i.fg = add nuw nsw i32 %.091131.us.us, 1       ; 2 uses
  %exitcond256.not = icmp eq i32 %i.fg, %i.g
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond256.not, label %.preheader114, label %.preheader116.us.us

.preheader116.lr.ph.split.us.split:               ; preds = %.preheader116.lr.ph.split.us
  %.not285 = icmp eq i32 %3, 0                    ; 2 uses
  %i.fh = add nsw i64 %wide.trip.count241, -1     ; 2 uses
  %i.fi = xor i32 %i.e, -1
  %i.fj = add i32 %6, %i.fi
  %i.fk = zext i32 %i.fj to i64                   ; 3 uses
  %i.fl = mul i64 %i.q, %i.fk
  %i.fm = shl i64 %i.fl, 1                        ; 2 uses
  %i.fn = shl nuw nsw i64 %wide.trip.count241, 2  ; 2 uses
  %9 = getelementptr i8, ptr %1, i64 %i.fm
  %scevgep331 = getelementptr i8, ptr %9, i64 %i.fn ; 2 uses
  br i1 %.not104108, label %.preheader116.us.us159.preheader, label %.preheader116.us.preheader

.preheader116.us.preheader:                       ; preds = %.preheader116.lr.ph.split.us.split
  %i.fo = getelementptr i8, ptr %1, i64 %2
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fm
  %scevgep309.a = getelementptr i8, ptr %i.fp, i64 %i.fn
  %scevgep310.a = getelementptr i8, ptr %1, i64 %2
  %i.fq = mul nuw i64 %i.m, %i.fk
  %i.fr = add i64 %i.fq, %wide.trip.count241
  %i.fs = shl i64 %i.fr, 1
  %scevgep311 = getelementptr i8, ptr %0, i64 %i.fs ; 2 uses
  %i.ft = shl nuw nsw i64 %i.m, 1
  %min.iters.check = icmp ugt i32 %i.i, 11
  %i.fu = and i64 %i.fh, -3221225472
  %.not493 = icmp eq i64 %i.fu, 0
  %or.cond499 = select i1 %min.iters.check, i1 %.not493, i1 false
  %bound0 = icmp ult ptr %0, %scevgep309.a
  %bound1 = icmp ult ptr %scevgep310.a, %scevgep311
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.q, 4611686018427387904
  %stride.check = icmp ne i64 %.mask, 0
  %i.fv = or i1 %found.conflict, %stride.check
  %bound0312 = icmp ult ptr %0, %scevgep331
  %bound1313 = icmp ult ptr %1, %scevgep311
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx = or i1 %i.fv, %found.conflict314
  %n.vec = and i64 %wide.trip.count241, 2147483644 ; 5 uses
  %i.fw = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count241
  br label %.preheader116.us

.preheader116.us.us159.preheader:                 ; preds = %.preheader116.lr.ph.split.us.split
  %i.fx = mul nuw i64 %i.m, %i.fk
  %i.fy = add i64 %i.fx, %wide.trip.count241
  %i.fz = shl i64 %i.fy, 1
  %scevgep332 = getelementptr i8, ptr %0, i64 %i.fz
  %i.ga = shl nuw nsw i64 %i.m, 1
  %min.iters.check334 = icmp ugt i32 %i.i, 11
  %i.gb = and i64 %i.fh, -3221225472
  %.not495 = icmp eq i64 %i.gb, 0
  %or.cond = select i1 %min.iters.check334, i1 %.not495, i1 false
  %bound0336 = icmp ult ptr %0, %scevgep331
  %bound1337 = icmp ult ptr %1, %scevgep332
  %found.conflict338 = and i1 %bound0336, %bound1337
  %.mask496 = and i64 %i.q, 4611686018427387904
  %stride.check339 = icmp ne i64 %.mask496, 0
  %i.gc = or i1 %found.conflict338, %stride.check339
  %n.vec341 = and i64 %wide.trip.count241, 2147483644 ; 5 uses
  %i.gd = or disjoint i64 %n.vec341, 1
  %broadcast.splatinsert342 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat343 = shufflevector <4 x i32> %broadcast.splatinsert342, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n352 = icmp eq i64 %n.vec341, %wide.trip.count241
  %xtraiter515 = and i64 %wide.trip.count241, 1
  %lcmp.mod516.not = icmp eq i64 %xtraiter515, 0
  %i.ge = add nsw i64 %wide.trip.count241, -1
  br label %.preheader116.us.us159

.preheader116.us.us159:                           ; preds = %.preheader116.us.us159.preheader, %._crit_edge.us.us165
  %indvar475 = phi i64 [ 0, %.preheader116.us.us159.preheader ], [ %indvar.next476, %._crit_edge.us.us165 ] ; 2 uses
  %.091131.us.us160 = phi i32 [ 0, %.preheader116.us.us159.preheader ], [ %i.iq, %._crit_edge.us.us165 ]
  %.095128.us.us161 = phi ptr [ %0, %.preheader116.us.us159.preheader ], [ %i.io, %._crit_edge.us.us165 ] ; 6 uses
  %.099125.us.us162 = phi ptr [ %1, %.preheader116.us.us159.preheader ], [ %i.ip, %._crit_edge.us.us165 ] ; 8 uses
  %i.gf = mul i64 %i.ga, %indvar475
  %i.gg = getelementptr i8, ptr %0, i64 %i.gf
  %scevgep477 = getelementptr i8, ptr %i.gg, i64 -2
  %or.cond.not = xor i1 %or.cond, true
  %brmerge539 = select i1 %or.cond.not, i1 true, i1 %i.gc
  br i1 %brmerge539, label %.thread.us.us.us.preheader, label %vector.body344

vector.body344:                                   ; preds = %.preheader116.us.us159, %vector.body344
  %index345 = phi i64 [ %index.next349, %vector.body344 ], [ 0, %.preheader116.us.us159 ] ; 3 uses
  %i.gh = trunc nuw nsw i64 %index345 to i32
  %i.gi = shl nuw i32 %i.gh, 1
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [2 x i8], ptr %.099125.us.us162, i64 %i.gj
  %wide.vec346 = load <8 x i16>, ptr %i.gk, align 2, !tbaa !9, !alias.scope !107
  %i.gl = freeze <8 x i16> %wide.vec346
  %i.gm = bitcast <8 x i16> %i.gl to <4 x i32>    ; 2 uses
  %i.gn = lshr <4 x i32> %i.gm, splat (i32 16)
  %i.go = add <4 x i32> %i.gn, %i.gm
  %i.gp = shl <4 x i32> %i.go, %broadcast.splat343
  %i.gq = trunc <4 x i32> %i.gp to <4 x i16>
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us161, i64 %index345
  store <4 x i16> %i.gq, ptr %i.gr, align 2, !tbaa !9, !alias.scope !108, !noalias !107
  %index.next349 = add nuw i64 %index345, 4       ; 2 uses
  %i.gs = icmp eq i64 %index.next349, %n.vec341
  br i1 %i.gs, label %middle.block350, label %vector.body344, !llvm.loop !86

middle.block350:                                  ; preds = %vector.body344
  br i1 %cmp.n352, label %..preheader115_crit_edge.split.split.us.us.us, label %.thread.us.us.us.preheader

.thread.us.us.us.preheader:                       ; preds = %.preheader116.us.us159, %middle.block350
  %indvars.iv232.ph = phi i64 [ %i.gd, %middle.block350 ], [ 1, %.preheader116.us.us159 ] ; 3 uses
  %indvars.iv225.ph = phi i64 [ %n.vec341, %middle.block350 ], [ 0, %.preheader116.us.us159 ] ; 6 uses
  br i1 %lcmp.mod516.not, label %.thread.us.us.us.prol.loopexit, label %.thread.us.us.us.prol

.thread.us.us.us.prol:                            ; preds = %.thread.us.us.us.preheader
  %i.gt = trunc nuw nsw i64 %indvars.iv225.ph to i32
  %i.gu = shl nuw i32 %i.gt, 1
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [2 x i8], ptr %.099125.us.us162, i64 %i.gv
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !9
  %i.gy = zext i16 %i.gx to i32
  %.idx.prol = shl nuw nsw i64 %indvars.iv225.ph, 2
  %i.gz = getelementptr inbounds nuw i8, ptr %.099125.us.us162, i64 %.idx.prol
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 2
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !9
  %i.hc = zext i16 %i.hb to i32
  %i.hd = add nuw nsw i32 %i.hc, %i.gy
  %i.he = shl nuw nsw i32 %i.hd, %i.l
  %i.hf = trunc i32 %i.he to i16
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us161, i64 %indvars.iv225.ph
  store i16 %i.hf, ptr %i.hg, align 2, !tbaa !9
  %indvars.iv.next226.prol = or disjoint i64 %indvars.iv225.ph, 1
  %indvars.iv.next233.prol = add nuw nsw i64 %indvars.iv232.ph, 1
  br label %.thread.us.us.us.prol.loopexit

.thread.us.us.us.prol.loopexit:                   ; preds = %.thread.us.us.us.prol, %.thread.us.us.us.preheader
  %indvars.iv232.unr = phi i64 [ %indvars.iv232.ph, %.thread.us.us.us.preheader ], [ %indvars.iv.next233.prol, %.thread.us.us.us.prol ]
  %indvars.iv225.unr = phi i64 [ %indvars.iv225.ph, %.thread.us.us.us.preheader ], [ %indvars.iv.next226.prol, %.thread.us.us.us.prol ]
  %i.hh = icmp eq i64 %indvars.iv225.ph, %i.ge
  br i1 %i.hh, label %..preheader115_crit_edge.split.split.us.us.us, label %.thread.us.us.us

.thread.us.us.us:                                 ; preds = %.thread.us.us.us.prol.loopexit, %.thread.us.us.us
  %indvars.iv232 = phi i64 [ %indvars.iv.next233.1, %.thread.us.us.us ], [ %indvars.iv232.unr, %.thread.us.us.us.prol.loopexit ] ; 2 uses
  %indvars.iv225 = phi i64 [ %indvars.iv.next226.1, %.thread.us.us.us ], [ %indvars.iv225.unr, %.thread.us.us.us.prol.loopexit ] ; 5 uses
  %i.hi = trunc nuw nsw i64 %indvars.iv225 to i32
  %i.hj = shl nuw i32 %i.hi, 1
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [2 x i8], ptr %.099125.us.us162, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !9
  %i.hn = zext i16 %i.hm to i32
  %.idx = shl nuw nsw i64 %indvars.iv225, 2
  %i.ho = getelementptr inbounds nuw i8, ptr %.099125.us.us162, i64 %.idx
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !9
  %i.hr = zext i16 %i.hq to i32
  %i.hs = add nuw nsw i32 %i.hr, %i.hn
  %i.ht = shl nuw nsw i32 %i.hs, %i.l
  %i.hu = trunc i32 %i.ht to i16
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us161, i64 %indvars.iv225
  store i16 %i.hu, ptr %i.hv, align 2, !tbaa !9
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 3 uses
  %i.hw = trunc nuw nsw i64 %indvars.iv.next226 to i32
  %i.hx = shl nuw i32 %i.hw, 1
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [2 x i8], ptr %.099125.us.us162, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !9
  %i.ib = zext i16 %i.ia to i32
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next226, 2
  %i.ic = getelementptr inbounds nuw i8, ptr %.099125.us.us162, i64 %.idx.1
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 2
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !9
  %i.if = zext i16 %i.ie to i32
  %i.ig = add nuw nsw i32 %i.if, %i.ib
  %i.ih = shl nuw nsw i32 %i.ig, %i.l
  %i.ii = trunc i32 %i.ih to i16
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us161, i64 %indvars.iv.next226
  store i16 %i.ii, ptr %i.ij, align 2, !tbaa !9
  %indvars.iv.next226.1 = add nuw nsw i64 %indvars.iv225, 2 ; 2 uses
  %exitcond229.not.1 = icmp eq i64 %indvars.iv.next226.1, %wide.trip.count241
  %indvars.iv.next233.1 = add nuw nsw i64 %indvars.iv232, 2
  br i1 %exitcond229.not.1, label %..preheader115_crit_edge.split.split.us.us.us.loopexit.unr-lcssa, label %.thread.us.us.us, !llvm.loop !87

..preheader115_crit_edge.split.split.us.us.us.loopexit.unr-lcssa: ; preds = %.thread.us.us.us
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1
  br label %..preheader115_crit_edge.split.split.us.us.us

..preheader115_crit_edge.split.split.us.us.us:    ; preds = %..preheader115_crit_edge.split.split.us.us.us.loopexit.unr-lcssa, %.thread.us.us.us.prol.loopexit, %middle.block350
  %indvars.iv232.lcssa = phi i64 [ %n.vec341, %middle.block350 ], [ %indvars.iv232.ph, %.thread.us.us.us.prol.loopexit ], [ %indvars.iv.next233, %..preheader115_crit_edge.split.split.us.us.us.loopexit.unr-lcssa ] ; 2 uses
  br i1 %.not285, label %._crit_edge.us.us165, label %.lr.ph124.us.us163.preheader

.lr.ph124.us.us163.preheader:                     ; preds = %..preheader115_crit_edge.split.split.us.us.us
  %i.ik = shl i64 %indvars.iv232.lcssa, 1
  %scevgep478 = getelementptr i8, ptr %scevgep477, i64 %i.ik
  %load_initial479 = load i16, ptr %scevgep478, align 2
  br label %.lr.ph124.us.us163

.lr.ph124.us.us163:                               ; preds = %.lr.ph124.us.us163.preheader, %.lr.ph124.us.us163
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %.lr.ph124.us.us163 ], [ %indvars.iv232.lcssa, %.lr.ph124.us.us163.preheader ] ; 2 uses
  %i.il = getelementptr [2 x i8], ptr %.095128.us.us161, i64 %indvars.iv234
  store i16 %load_initial479, ptr %i.il, align 2, !tbaa !9
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %i.im = trunc nuw i64 %indvars.iv.next235 to i32
  %i.in = icmp sgt i32 %5, %i.im
  br i1 %i.in, label %.lr.ph124.us.us163, label %._crit_edge.us.us165

._crit_edge.us.us165:                             ; preds = %.lr.ph124.us.us163, %..preheader115_crit_edge.split.split.us.us.us
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %.095128.us.us161, i64 %i.m ; 2 uses
  %i.ip = getelementptr inbounds [2 x i8], ptr %.099125.us.us162, i64 %i.q
  %i.iq = add nuw nsw i32 %.091131.us.us160, 1    ; 2 uses
  %exitcond237.not = icmp eq i32 %i.iq, %i.g
  %indvar.next476 = add i64 %indvar475, 1
  br i1 %exitcond237.not, label %.preheader114, label %.preheader116.us.us159

.preheader116.us:                                 ; preds = %.preheader116.us.preheader, %._crit_edge.us
  %indvar481 = phi i64 [ 0, %.preheader116.us.preheader ], [ %indvar.next482, %._crit_edge.us ] ; 2 uses
  %.091131.us = phi i32 [ 0, %.preheader116.us.preheader ], [ %i.kq, %._crit_edge.us ]
  %.095128.us = phi ptr [ %0, %.preheader116.us.preheader ], [ %i.ko, %._crit_edge.us ] ; 4 uses
  %.099125.us = phi ptr [ %1, %.preheader116.us.preheader ], [ %i.kp, %._crit_edge.us ] ; 5 uses
  %i.ir = mul i64 %i.ft, %indvar481
  %i.is = getelementptr i8, ptr %0, i64 %i.ir
  %scevgep483 = getelementptr i8, ptr %i.is, i64 -2
  %i.it = getelementptr i8, ptr %.099125.us, i64 %2 ; 3 uses
  %or.cond499.not = xor i1 %or.cond499, true
  %brmerge540 = select i1 %or.cond499.not, i1 true, i1 %conflict.rdx
  br i1 %brmerge540, label %.thread.us136.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader116.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader116.us ] ; 3 uses
  %i.iu = trunc nuw nsw i64 %index to i32
  %i.iv = shl nuw i32 %i.iu, 1
  %i.iw = sext i32 %i.iv to i64                   ; 2 uses
  %i.ix = getelementptr inbounds [2 x i8], ptr %.099125.us, i64 %i.iw
  %wide.vec = load <8 x i16>, ptr %i.ix, align 2, !tbaa !9, !alias.scope !109
  %i.iy = freeze <8 x i16> %wide.vec
  %i.iz = bitcast <8 x i16> %i.iy to <4 x i32>    ; 2 uses
  %i.ja = lshr <4 x i32> %i.iz, splat (i32 16)
  %i.jb = add <4 x i32> %i.ja, %i.iz
  %i.jc = getelementptr [2 x i8], ptr %i.it, i64 %i.iw
  %wide.vec316 = load <8 x i16>, ptr %i.jc, align 2, !tbaa !9, !alias.scope !110
  %i.jd = freeze <8 x i16> %wide.vec316
  %i.je = bitcast <8 x i16> %i.jd to <4 x i32>    ; 2 uses
  %i.jf = lshr <4 x i32> %i.je, splat (i32 16)
  %i.jg = add <4 x i32> %i.jb, %i.je
  %i.jh = add <4 x i32> %i.jg, %i.jf
  %i.ji = shl <4 x i32> %i.jh, %broadcast.splat
  %i.jj = trunc <4 x i32> %i.ji to <4 x i16>
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %.095128.us, i64 %index
  store <4 x i16> %i.jj, ptr %i.jk, align 2, !tbaa !9, !alias.scope !111, !noalias !112
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jl = icmp eq i64 %index.next, %n.vec
end_hunk_1
begin_hunk_2_@dav1d_ipred_v_16bpc_ssse3
declare void @dav1d_ipred_v_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_paeth_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_smooth_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_smooth_h_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_smooth_v_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_z1_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_z2_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_z3_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_filter_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_cfl_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_cfl_128_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_cfl_top_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_cfl_left_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_cfl_ac_420_16bpc_ssse3(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_cfl_ac_422_16bpc_ssse3(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_cfl_ac_444_16bpc_ssse3(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_pal_pred_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_dc_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_dc_128_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_dc_top_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_dc_left_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_h_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_v_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_paeth_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_smooth_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_smooth_h_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_smooth_v_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_z1_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_z2_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_z3_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_filter_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_cfl_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_cfl_128_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_cfl_top_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_cfl_left_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_cfl_ac_420_16bpc_avx2(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_cfl_ac_422_16bpc_avx2(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_cfl_ac_444_16bpc_avx2(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_pal_pred_16bpc_avx2(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_paeth_16bpc_avx512icl(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_smooth_16bpc_avx512icl(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_smooth_h_16bpc_avx512icl(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_smooth_v_16bpc_avx512icl(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_z1_16bpc_avx512icl(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_z2_16bpc_avx512icl(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_z3_16bpc_avx512icl(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_filter_16bpc_avx512icl(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_pal_pred_16bpc_avx512icl(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #12

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!"branch_weights", i32 4, i32 12}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!4, !4, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!"Dav1dIntraPredDSPContext", !4, i64 0, !4, i64 112, !4, i64 136, !15, i64 184}
!19 = !{!18, !15, i64 184}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !11, !10}
!23 = distinct !{!23, !11, !10}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !11, !10}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !11, !10}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
!30 = distinct !{!30, !11, !10}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !10, !11}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10, !11}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, i1 false, !"LVerDomain"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !10, !11}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10, !11}
!42 = distinct !{!42, !10, !11}
!43 = distinct !{!43, !11, !10}
!44 = !{!37}
!45 = !{!38}
!46 = distinct !{!46, i1 false, !"LVerDomain"}
!47 = distinct !{!47, !46}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !46}
!50 = distinct !{!50, !10, !11}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10, !11}
!54 = distinct !{!54, !10, !11}
!55 = !{!47}
!56 = !{!48}
!57 = !{!49}
!58 = !{!48, !47}
!59 = distinct !{!59, !10, !11}
!60 = distinct !{!60, !10, !11}
!61 = distinct !{!61, !11, !10}
!62 = distinct !{!62, !11, !10}
!63 = distinct !{!63, !10, !11}
!64 = distinct !{!64, !11, !10}
!65 = distinct !{!65, !10, !11}
!66 = distinct !{!66, !11, !10}
!67 = !{!"long", !4, i64 0}
!68 = !{!67, !67, i64 0}
!69 = distinct !{!69, i1 false, !"LVerDomain"}
!70 = distinct !{!70, !69}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !69}
!73 = distinct !{!73, !10, !11}
!74 = distinct !{!74, i1 false, !"LVerDomain"}
!75 = distinct !{!75, !74}
!76 = distinct !{!76, !74}
!77 = distinct !{!77, !10, !11}
!78 = distinct !{!78, !10, !11}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !10}
!81 = distinct !{!81, !10}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, i1 false, !"LVerDomain"}
!84 = distinct !{!84, !83}
!85 = distinct !{!85, !83}
!86 = distinct !{!86, !10, !11}
!87 = distinct !{!87, !10}
!88 = distinct !{!88, i1 false, !"LVerDomain"}
!89 = distinct !{!89, !88}
!90 = distinct !{!90, !88}
!91 = distinct !{!91, !88}
!92 = distinct !{!92, !10, !11}
!93 = distinct !{!93, !10}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !10, !11}
!97 = distinct !{!97, !11, !10}
!98 = distinct !{!98, !10, !11}
!99 = distinct !{!99, !10, !11}
!100 = distinct !{!100, !11, !10}
!101 = !{!70}
!102 = !{!71}
!103 = !{!72}
!104 = !{!71, !70}
!105 = !{!75}
!106 = !{!76}
!107 = !{!84}
!108 = !{!85}
!109 = !{!89}
!110 = !{!90}
!111 = !{!91}
!112 = !{!90, !89}
!113 = distinct !{!113, i1 false, !"LVerDomain"}
!114 = distinct !{!114, !113}
!115 = distinct !{!115, !113}
!116 = distinct !{!116, !10, !11}
!117 = distinct !{!117, !10}
!118 = !{!114}
!119 = !{!115}
end_hunk_2
