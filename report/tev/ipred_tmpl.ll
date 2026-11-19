Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ipred_tmpl?download=true
inline.NumInlined: 55
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ipred_z2_c:bb.a
  %i.au = getelementptr inbounds [2 x i8], ptr %2, i64 %i.at
  call fastcc void @upsample_edge(ptr noundef %i.ar, i32 noundef %i.as, ptr noundef %i.au, i32 noundef 0, i32 noundef %i.as, i32 noundef %8)
  %i.av = shl nuw nsw i32 %i.k, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  br i1 %.not, label %.thread135, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = add nsw i32 %4, %3
  %i.ax = tail call fastcc i32 @get_filter_strength(i32 noundef %i.aw, i32 noundef %i.l, i32 noundef %i.c) ; 2 uses
  %.not128 = icmp eq i32 %i.ax, 0
  br i1 %.not128, label %.thread135, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = sub nsw i32 0, %4
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.az
  %i.bb = sub nsw i32 %4, %7
  %i.bc = getelementptr inbounds [2 x i8], ptr %2, i64 %i.az
  %i.bd = add nsw i32 %4, 1
  call fastcc void @filter_edge(ptr noundef %i.ba, i32 noundef %4, i32 noundef %i.bb, i32 noundef %4, ptr noundef %i.bc, i32 noundef 0, i32 noundef %i.bd, i32 noundef %i.ax)
  br label %bb.l

.thread135:                                       ; preds = %bb.i, %bb.j
  %i.be = sub nsw i32 0, %4
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.bf
  %i.bh = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bf
  %i.bi = shl i32 %4, 1
  %i.bj = sext i32 %i.bi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.bg, ptr align 2 %i.bh, i64 %i.bj, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread135, %bb.h
  %.0122 = phi i32 [ %i.av, %bb.h ], [ %i.k, %.thread135 ], [ %i.k, %bb.k ]
  %i.bk = load i16, ptr %2, align 2, !tbaa !9
  store i16 %i.bk, ptr %i.al, align 2, !tbaa !9
  %i.bl = xor i32 %i.an, -1                       ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.bm ; 2 uses
  %i.bo = icmp sgt i32 %4, 0
  br i1 %i.bo, label %.lr.ph149, label %._crit_edge150.split

.lr.ph149:                                        ; preds = %bb.l
  %i.bp = add nuw nsw i32 %i.an, 6
  %i.bq = icmp sgt i32 %3, 0
  %i.br = and i64 %1, 1
  %.not.i = icmp eq i64 %i.br, 0
  tail call void @llvm.assume(i1 %.not.i)
  br i1 %i.bq, label %.lr.ph.preheader, label %._crit_edge150.split

.lr.ph.preheader:                                 ; preds = %.lr.ph149
  %i.bs = shl nuw nsw i32 %i.am, 6
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

._crit_edge150.split:                             ; preds = %._crit_edge, %.lr.ph149, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.0119147.pn = phi i32 [ %.0119147, %._crit_edge ], [ %i.bs, %.lr.ph.preheader ]
  %.0146 = phi ptr [ %i.by, %._crit_edge ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.0120145 = phi i32 [ %i.bx, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0119147 = sub nsw i32 %.0119147.pn, %.0121    ; 3 uses
  %i.bt = ashr i32 %.0119147, 6
  %i.bu = and i32 %.0119147, 62                   ; 2 uses
  %i.bv = shl i32 %.0120145, %i.bp
  %i.bw = sub nuw nsw i32 64, %i.bu
  br label %bb.m

._crit_edge:                                      ; preds = %bb.p
  %i.bx = add nuw nsw i32 %.0120145, 1            ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.0146, i64 %1
  %exitcond152.not = icmp eq i32 %i.bx, %4
  br i1 %exitcond152.not, label %._crit_edge150.split, label %.lr.ph

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
  %9 = or i1 %ident.check150, %ident.check151
  %i.bd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ap, i1 true)
  %factor.op.mul = mul i64 %i.ap, -2
  %i.be = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ap, i1 true)
  %ident.check.not = icmp eq i64 %1, 2
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.loopexit.us
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next129, %.loopexit.us ] ; 3 uses
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph.us.preheader ], [ %indvars.iv.next, %.loopexit.us ] ; 5 uses
  %i.bf = lshr i64 %indvars.iv, 6                 ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.bf, i64 %i.ay) ; 2 uses
  %i.bg = add i64 %i.ba, %smax
  %i.bh = sub i64 %i.bg, %i.bf                    ; 3 uses
  %indvars130 = trunc i64 %indvars.iv to i32
  %i.bi = lshr i64 %indvars.iv, 6                 ; 9 uses
  %i.bj = and i32 %indvars130, 62                 ; 3 uses
  %i.bk = sub nuw nsw i32 64, %i.bj               ; 2 uses
  %invariant.gep.us = getelementptr [2 x i8], ptr %0, i64 %indvars.iv128 ; 7 uses
  %10 = sub nsw i64 %smax, %i.bi
  %i.bl = call i64 @llvm.umin.i64(i64 %10, i64 %i.bb)
  %i.bm = add nsw i64 %i.bl, 1                    ; 3 uses
  %min.iters.check164 = icmp ult i64 %i.bm, 57
  br i1 %min.iters.check164, label %scalar.ph.preheader, label %vector.scevcheck149

vector.scevcheck149:                              ; preds = %.lr.ph.us
  %sh.diff = lshr i64 %indvars.iv, 5
  %tr.sh.diff = trunc i64 %sh.diff to i33
  %tr.sh.diff.not = and i33 %tr.sh.diff, -2
  %i.bn = xor i33 %tr.sh.diff.not, -2             ; 2 uses
  %i.bo = lshr i64 %i.bh, %i.bc
  %umin152 = call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bb) ; 2 uses
  %i.bp = trunc i64 %umin152 to i33
  %mul.result = shl i33 %i.bp, 1
  %i.bq = sub i33 %i.bn, %mul.result
  %i.br = icmp sgt i33 %i.bq, %i.bn
  %i.bs = icmp ugt i64 %umin152, 4294967295
  %i.bt = or i1 %i.br, %i.bs
  %i.bu = or i1 %9, %i.bt
  br i1 %i.bu, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck149
  %11 = shl nuw nsw i64 %indvars.iv128, 1
  %i.bv = lshr i64 %i.bh, %i.bd
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bb) ; 2 uses
  %i.bx = shl i64 %i.bw, 1                        ; 2 uses
  %i.by = getelementptr i8, ptr %0, i64 %11
  %i.bz = getelementptr i8, ptr %i.by, i64 2
  %12 = getelementptr i8, ptr %i.bz, i64 %i.bx    ; 2 uses
  %i.ca = trunc i64 %i.bi to i33
  %i.cb = shl i33 %i.ca, 1
  %i.cc = sub nuw nsw i33 -2, %i.cb
  %i.cd = sext i33 %i.cc to i64                   ; 2 uses
  %13 = sub i64 %i.cd, %i.bx
  %i.ce = getelementptr i8, ptr %.192, i64 %13
  %i.cf = getelementptr i8, ptr %scevgep, i64 %i.cd
  %.reass = mul i64 %factor.op.mul, %i.bw
  %i.cg = shl nuw nsw i64 %i.bi, 1
  %i.ch = sub i64 %.reass, %i.cg
  %i.ci = getelementptr i8, ptr %.192, i64 %i.ch
  %i.cj = mul nsw i64 %i.bi, -2
  %i.ck = getelementptr i8, ptr %scevgep, i64 %i.cj
  %bound0 = icmp ult ptr %invariant.gep.us, %i.cf
  %bound1 = icmp ult ptr %i.ce, %12
  %found.conflict = and i1 %bound0, %bound1
  %bound0165 = icmp ult ptr %invariant.gep.us, %i.ck
  %bound1166 = icmp ult ptr %i.ci, %12
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx = or i1 %found.conflict, %found.conflict167
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph168

vector.ph168:                                     ; preds = %vector.memcheck
  %i.cl = and i64 %i.bm, 7                        ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  %i.cn = select i1 %i.cm, i64 8, i64 %i.cl
  %n.vec169 = sub i64 %i.bm, %i.cn                ; 3 uses
  %i.co = add i64 %i.bi, %n.vec169
  tail call void @llvm.assume(i1 %.not.i)
  %broadcast.splatinsert170 = insertelement <8 x i32> poison, i32 %i.bj, i64 0
  %broadcast.splat171 = shufflevector <8 x i32> %broadcast.splatinsert170, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <8 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat173 = shufflevector <8 x i32> %broadcast.splatinsert172, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph168
  %index175 = phi i64 [ 0, %vector.ph168 ], [ %index.next178, %vector.body174 ] ; 3 uses
  %i.cp = add nuw i64 %i.bi, %index175            ; 2 uses
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds [2 x i8], ptr %.192, i64 %i.cq
  %14 = getelementptr inbounds i8, ptr %i.cr, i64 -14
  %wide.load = load <8 x i16>, ptr %14, align 2, !tbaa !9, !alias.scope !55
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cs = zext <8 x i16> %reverse to <8 x i32>
  %i.ct = mul nuw nsw <8 x i32> %broadcast.splat173, %i.cs
  %i.cu = xor i64 %i.cp, -1
  %i.cv = shl i64 %i.cu, 32
  %i.cw = ashr exact i64 %i.cv, 31
  %i.cx = getelementptr inbounds i8, ptr %.192, i64 %i.cw
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -14
  %wide.load176 = load <8 x i16>, ptr %i.cy, align 2, !tbaa !9, !alias.scope !56
  %reverse177 = shufflevector <8 x i16> %wide.load176, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cz = zext <8 x i16> %reverse177 to <8 x i32>
  %i.da = mul nuw nsw <8 x i32> %broadcast.splat171, %i.cz
  %i.db = add nuw nsw <8 x i32> %i.ct, splat (i32 32)
  %i.dc = add nuw nsw <8 x i32> %i.db, %i.da
  %i.dd = lshr <8 x i32> %i.dc, splat (i32 6)
  %i.de = trunc <8 x i32> %i.dd to <8 x i16>
  %i.df = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %index175
  store <8 x i16> %i.de, ptr %i.df, align 2, !tbaa !9, !alias.scope !57, !noalias !58
  %index.next178 = add nuw i64 %index175, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next178, %n.vec169
  br i1 %i.dg, label %scalar.ph.preheader, label %vector.body174, !llvm.loop !50

scalar.ph.preheader:                              ; preds = %vector.body174, %vector.memcheck, %vector.scevcheck149, %.lr.ph.us
  %indvars.iv121.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck149 ], [ 0, %.lr.ph.us ], [ %n.vec169, %vector.body174 ]
  %indvars.iv119.ph = phi i64 [ %i.bi, %vector.memcheck ], [ %i.bi, %vector.scevcheck149 ], [ %i.bi, %.lr.ph.us ], [ %i.co, %vector.body174 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.g
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %bb.g ], [ %indvars.iv121.ph, %scalar.ph.preheader ] ; 7 uses
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %bb.g ], [ %indvars.iv119.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dh = icmp slt i64 %indvars.iv119, %i.ay
  br i1 %i.dh, label %bb.g, label %iter.check

bb.g:                                             ; preds = %scalar.ph
  %i.di = sub nsw i64 0, %indvars.iv119
  %i.dj = getelementptr inbounds [2 x i8], ptr %.192, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !9
  %i.dl = zext i16 %i.dk to i32
  %i.dm = mul nuw nsw i32 %i.bk, %i.dl
  %i.dn = xor i64 %indvars.iv119, -1
  %sext = shl i64 %i.dn, 32
  %i.do = ashr exact i64 %sext, 31
  %i.dp = getelementptr inbounds i8, ptr %.192, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !9
  %i.dr = zext i16 %i.dq to i32
  %i.ds = mul nuw nsw i32 %i.bj, %i.dr
  %i.dt = add nuw nsw i32 %i.dm, 32
  %i.du = add nuw nsw i32 %i.dt, %i.ds
  %i.dv = lshr i32 %i.du, 6
  %i.dw = trunc i32 %i.dv to i16
  tail call void @llvm.assume(i1 %.not.i)
  %i.dx = mul nsw i64 %i.at, %indvars.iv121
  %gep.us = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %i.dx
  store i16 %i.dw, ptr %gep.us, align 2, !tbaa !9
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, %i.ap
  %exitcond.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.us, label %scalar.ph, !llvm.loop !51

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %vec.epilog.scalar.ph ], [ %indvars.iv125.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.dy = mul nsw i64 %i.at, %indvars.iv125
  %gep111.us = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %i.dy
  store i16 %.pre, ptr %gep111.us, align 2, !tbaa !9
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.dz = icmp samesign ult i64 %indvars.iv.next126, %i.az
  br i1 %i.dz, label %vec.epilog.scalar.ph, label %.loopexit.us, !llvm.loop !52

.loopexit.us:                                     ; preds = %bb.g, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ax
  %exitcond134.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge, label %.lr.ph.us

iter.check:                                       ; preds = %scalar.ph
  tail call void @llvm.assume(i1 %.not.i)
  %.pre = load i16, ptr %i.aw, align 2, !tbaa !9  ; 3 uses
  %i.ea = lshr i64 %i.bh, %i.be
  %umin = call i64 @llvm.umin.i64(i64 %i.ea, i64 %i.bb)
  %i.eb = sub i64 %wide.trip.count, %umin         ; 7 uses
  %min.iters.check = icmp ugt i64 %i.eb, 3
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check142 = icmp ult i64 %i.eb, 16
  br i1 %min.iters.check142, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ec = and i64 %i.eb, 12
  %n.vec = and i64 %i.eb, -16                     ; 4 uses
  %i.ed = add i64 %indvars.iv121, %n.vec
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ee = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %indvars.iv121
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ef = getelementptr [2 x i8], ptr %i.ee, i64 %index ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.ef, align 2, !tbaa !9
  store <8 x i16> %broadcast.splat, ptr %i.eg, align 2, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ec, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec143 = and i64 %i.eb, -4                   ; 3 uses
  %i.ei = add i64 %indvars.iv121, %n.vec143
  %broadcast.splatinsert144 = insertelement <4 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat145 = shufflevector <4 x i16> %broadcast.splatinsert144, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ej = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %indvars.iv121
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index146 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next147, %vec.epilog.vector.body ] ; 2 uses
  %i.ek = getelementptr [2 x i8], ptr %i.ej, i64 %index146
  store <4 x i16> %broadcast.splat145, ptr %i.ek, align 2, !tbaa !9
  %index.next147 = add nuw i64 %index146, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next147, %n.vec143
  br i1 %i.el, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n148 = icmp eq i64 %i.eb, %n.vec143
  br i1 %cmp.n148, label %.loopexit.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv125.ph = phi i64 [ %indvars.iv121, %iter.check ], [ %i.ed, %vec.epilog.iter.check ], [ %i.ei, %vec.epilog.middle.block ]
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
  %i.s = sext i8 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %i.v = sext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.x = load i8, ptr %i.w, align 16, !tbaa !14
  %i.y = sext i8 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ab = sext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ad = load i8, ptr %i.ac, align 16, !tbaa !14
  %i.ae = sext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !14
  %i.ah = sext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.ak = sext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.am = load i8, ptr %i.al, align 2, !tbaa !14
  %i.an = sext i8 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 19
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14
  %i.aq = sext i8 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 34
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !14
  %i.at = sext i8 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 35
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = sext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 50
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !14
  %i.az = sext i8 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 4
end_hunk_0
begin_hunk_1_@cfl_pred:bb.a
  %.01924 = phi i32 [ %i.af, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02023 = phi ptr [ %i.ad, %._crit_edge ], [ %5, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.m
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.02023, i64 %index
  %wide.load = load <8 x i16>, ptr %i.n, align 2, !tbaa !9, !alias.scope !118
  %i.o = sext <8 x i16> %wide.load to <8 x i32>
  %i.p = mul nsw <8 x i32> %broadcast.splat, %i.o ; 2 uses
  %i.q = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.p, i1 true)
  %i.r = add nuw nsw <8 x i32> %i.q, splat (i32 32)
  %i.s = lshr <8 x i32> %i.r, splat (i32 6)       ; 2 uses
  %i.t = icmp slt <8 x i32> %i.p, zeroinitializer
  %i.u = sub nsw <8 x i32> zeroinitializer, %i.s
  %i.v = select <8 x i1> %i.t, <8 x i32> %i.u, <8 x i32> %i.s
  %i.w = add nsw <8 x i32> %i.v, %broadcast.splat34 ; 2 uses
  %i.x = icmp slt <8 x i32> %i.w, zeroinitializer
  %i.y = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.w, <8 x i32> %broadcast.splat36)
  %i.z = trunc <8 x i32> %i.y to <8 x i16>
  %i.aa = select <8 x i1> %i.x, <8 x i16> zeroinitializer, <8 x i16> %i.z
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %.025, i64 %index
  store <8 x i16> %i.aa, ptr %i.ab, align 2, !tbaa !9, !alias.scope !119, !noalias !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge26.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.02023, i64 %i.c
  %i.ae = getelementptr inbounds i8, ptr %.025, i64 %1
  %i.af = add nuw nsw i32 %.01924, 1              ; 2 uses
  %exitcond28.not = icmp eq i32 %i.af, %3
  br i1 %exitcond28.not, label %._crit_edge26.split, label %.preheader

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.02023, i64 %indvars.iv
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !9
  %i.ai = sext i16 %i.ah to i32
  %i.aj = mul nsw i32 %6, %i.ai                   ; 2 uses
  %i.ak = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 true)
  %i.al = add nuw nsw i32 %i.ak, 32
  %i.am = lshr i32 %i.al, 6                       ; 2 uses
  %i.an = icmp slt i32 %i.aj, 0
  %i.ao = sub nsw i32 0, %i.am
  %i.ap = select i1 %i.an, i32 %i.ao, i32 %i.am
  %i.aq = add nsw i32 %i.ap, %4                   ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  %i.as = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %7)
  %i.at = trunc i32 %i.as to i16
  %i.au = select i1 %i.ar, i16 0, i16 %i.at
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.025, i64 %indvars.iv
  store i16 %i.au, ptr %i.av, align 2, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !117
}

declare void @dav1d_ipred_dc_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_dc_128_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_dc_top_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_dc_left_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

declare void @dav1d_ipred_h_16bpc_ssse3(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #10

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
end_hunk_1
