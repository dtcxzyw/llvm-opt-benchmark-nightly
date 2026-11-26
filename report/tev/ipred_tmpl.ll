Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ipred_tmpl?download=true
inline.NumInlined: 55
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ipred_z2_c:bb.a
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
  %i.ce = trunc i64 %i.bj to i33
  %i.cf = shl i33 %i.ce, 1
  %i.cg = sub nuw nsw i33 -2, %i.cf
  %i.ch = sext i33 %i.cg to i64                   ; 2 uses
  %i.ci = sub i64 %i.ch, %i.ca
  %i.cj = getelementptr i8, ptr %.192, i64 %i.ci
  %i.ck = getelementptr i8, ptr %scevgep, i64 %i.ch
  %.reass = mul i64 %factor.op.mul, %i.bz
  %i.cl = shl nuw nsw i64 %i.bj, 1
  %i.cm = sub i64 %.reass, %i.cl
  %i.cn = getelementptr i8, ptr %.192, i64 %i.cm
  %i.co = mul nsw i64 %i.bj, -2
  %i.cp = getelementptr i8, ptr %scevgep, i64 %i.co
  %bound0 = icmp ult ptr %invariant.gep.us, %i.ck
  %bound1 = icmp ult ptr %i.cj, %i.cd
  %found.conflict = and i1 %bound0, %bound1
  %bound0165 = icmp ult ptr %invariant.gep.us, %i.cp
  %bound1166 = icmp ult ptr %i.cn, %i.cd
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx = or i1 %found.conflict, %found.conflict167
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph168

vector.ph168:                                     ; preds = %vector.memcheck
  %i.cq = and i64 %i.bo, 7                        ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = select i1 %i.cr, i64 8, i64 %i.cq
  %n.vec169 = sub i64 %i.bo, %i.cs                ; 3 uses
  %i.ct = add i64 %i.bj, %n.vec169
  tail call void @llvm.assume(i1 %.not.i)
  %broadcast.splatinsert170 = insertelement <8 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat171 = shufflevector <8 x i32> %broadcast.splatinsert170, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <8 x i32> poison, i32 %i.bl, i64 0
  %broadcast.splat173 = shufflevector <8 x i32> %broadcast.splatinsert172, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph168
  %index175 = phi i64 [ 0, %vector.ph168 ], [ %index.next178, %vector.body174 ] ; 3 uses
  %i.cu = add nuw i64 %i.bj, %index175            ; 2 uses
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr inbounds [2 x i8], ptr %.192, i64 %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -14
  %wide.load = load <8 x i16>, ptr %i.cx, align 2, !tbaa !9, !alias.scope !55
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cy = zext <8 x i16> %reverse to <8 x i32>
  %i.cz = mul nuw nsw <8 x i32> %broadcast.splat173, %i.cy
  %i.da = xor i64 %i.cu, -1
  %i.db = shl i64 %i.da, 32
  %i.dc = ashr exact i64 %i.db, 31
  %i.dd = getelementptr inbounds i8, ptr %.192, i64 %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -14
  %wide.load176 = load <8 x i16>, ptr %i.de, align 2, !tbaa !9, !alias.scope !56
  %reverse177 = shufflevector <8 x i16> %wide.load176, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.df = zext <8 x i16> %reverse177 to <8 x i32>
  %i.dg = mul nuw nsw <8 x i32> %broadcast.splat171, %i.df
  %i.dh = add nuw nsw <8 x i32> %i.cz, splat (i32 32)
  %i.di = add nuw nsw <8 x i32> %i.dh, %i.dg
  %i.dj = lshr <8 x i32> %i.di, splat (i32 6)
  %i.dk = trunc <8 x i32> %i.dj to <8 x i16>
  %i.dl = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %index175
  store <8 x i16> %i.dk, ptr %i.dl, align 2, !tbaa !9, !alias.scope !57, !noalias !58
  %index.next178 = add nuw i64 %index175, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next178, %n.vec169
  br i1 %i.dm, label %scalar.ph.preheader, label %vector.body174, !llvm.loop !50

scalar.ph.preheader:                              ; preds = %vector.body174, %vector.memcheck, %vector.scevcheck149, %.lr.ph.us
  %indvars.iv121.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck149 ], [ 0, %.lr.ph.us ], [ %n.vec169, %vector.body174 ]
  %indvars.iv119.ph = phi i64 [ %i.bj, %vector.memcheck ], [ %i.bj, %vector.scevcheck149 ], [ %i.bj, %.lr.ph.us ], [ %i.ct, %vector.body174 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.g
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %bb.g ], [ %indvars.iv121.ph, %scalar.ph.preheader ] ; 7 uses
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %bb.g ], [ %indvars.iv119.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dn = icmp slt i64 %indvars.iv119, %i.ay
  br i1 %i.dn, label %bb.g, label %iter.check

bb.g:                                             ; preds = %scalar.ph
  %i.do = sub nsw i64 0, %indvars.iv119
  %i.dp = getelementptr inbounds [2 x i8], ptr %.192, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !9
  %i.dr = zext i16 %i.dq to i32
  %i.ds = mul nuw nsw i32 %i.bl, %i.dr
  %i.dt = xor i64 %indvars.iv119, -1
  %sext = shl i64 %i.dt, 32
  %i.du = ashr exact i64 %sext, 31
  %i.dv = getelementptr inbounds i8, ptr %.192, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !9
  %i.dx = zext i16 %i.dw to i32
  %i.dy = mul nuw nsw i32 %i.bk, %i.dx
  %i.dz = add nuw nsw i32 %i.ds, 32
  %i.ea = add nuw nsw i32 %i.dz, %i.dy
  %i.eb = lshr i32 %i.ea, 6
  %i.ec = trunc i32 %i.eb to i16
  tail call void @llvm.assume(i1 %.not.i)
  %i.ed = mul nsw i64 %i.at, %indvars.iv121
  %gep.us = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %i.ed
  store i16 %i.ec, ptr %gep.us, align 2, !tbaa !9
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, %i.ap
  %exitcond.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.us, label %scalar.ph, !llvm.loop !51

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %vec.epilog.scalar.ph ], [ %indvars.iv125.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ee = mul nsw i64 %i.at, %indvars.iv125
  %gep111.us = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %i.ee
  store i16 %.pre, ptr %gep111.us, align 2, !tbaa !9
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.ef = icmp samesign ult i64 %indvars.iv.next126, %i.az
  br i1 %i.ef, label %vec.epilog.scalar.ph, label %.loopexit.us, !llvm.loop !52

.loopexit.us:                                     ; preds = %bb.g, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ax
  %exitcond134.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge, label %.lr.ph.us

iter.check:                                       ; preds = %scalar.ph
  tail call void @llvm.assume(i1 %.not.i)
  %.pre = load i16, ptr %i.aw, align 2, !tbaa !9  ; 3 uses
  %i.eg = lshr i64 %i.bi, %i.bf
  %umin = call i64 @llvm.umin.i64(i64 %i.eg, i64 %i.bb)
  %i.eh = sub i64 %wide.trip.count, %umin         ; 7 uses
  %min.iters.check = icmp ugt i64 %i.eh, 3
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check142 = icmp ult i64 %i.eh, 16
  br i1 %min.iters.check142, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ei = and i64 %i.eh, 12
  %n.vec = and i64 %i.eh, -16                     ; 4 uses
  %i.ej = add i64 %indvars.iv121, %n.vec
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ek = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %indvars.iv121
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.el = getelementptr [2 x i8], ptr %i.ek, i64 %index ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.el, align 2, !tbaa !9
  store <8 x i16> %broadcast.splat, ptr %i.em, align 2, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eh, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ei, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec143 = and i64 %i.eh, -4                   ; 3 uses
  %i.eo = add i64 %indvars.iv121, %n.vec143
  %broadcast.splatinsert144 = insertelement <4 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat145 = shufflevector <4 x i16> %broadcast.splatinsert144, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ep = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %indvars.iv121
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index146 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next147, %vec.epilog.vector.body ] ; 2 uses
  %i.eq = getelementptr [2 x i8], ptr %i.ep, i64 %index146
  store <4 x i16> %broadcast.splat145, ptr %i.eq, align 2, !tbaa !9
  %index.next147 = add nuw i64 %index146, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next147, %n.vec143
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n148 = icmp eq i64 %i.eh, %n.vec143
  br i1 %cmp.n148, label %.loopexit.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv125.ph = phi i64 [ %indvars.iv121, %iter.check ], [ %i.ej, %vec.epilog.iter.check ], [ %i.eo, %vec.epilog.middle.block ]
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

end_hunk_0
