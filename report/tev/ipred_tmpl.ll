Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ipred_tmpl?download=true
inline.NumInlined: 55
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ipred_z2_c:bb.a
  %i.bi = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bg
  %i.bj = shl i32 %4, 1
  %i.bk = sext i32 %i.bj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.bh, ptr align 2 %i.bi, i64 %i.bk, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread135, %bb.h
  %.0122 = phi i32 [ %i.aw, %bb.h ], [ %i.k, %.thread135 ], [ %i.k, %bb.k ]
  %i.bl = load i16, ptr %2, align 2, !tbaa !9
  store i16 %i.bl, ptr %i.am, align 2, !tbaa !9
  %i.bm = xor i32 %i.ao, -1                       ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.bn ; 2 uses
  %i.bp = icmp sgt i32 %4, 0
  br i1 %i.bp, label %.lr.ph149, label %._crit_edge150.split

.lr.ph149:                                        ; preds = %bb.l
  %i.bq = add nuw nsw i32 %i.ao, 6
  %i.br = icmp sgt i32 %3, 0
  %i.bs = and i64 %1, 1
  %.not.i = icmp eq i64 %i.bs, 0
  tail call void @llvm.assume(i1 %.not.i)
  br i1 %i.br, label %.lr.ph.preheader, label %._crit_edge150.split

.lr.ph.preheader:                                 ; preds = %.lr.ph149
  %i.bt = shl nuw nsw i32 %i.an, 6
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

._crit_edge150.split:                             ; preds = %._crit_edge, %.lr.ph149, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.0119147.pn = phi i32 [ %.0119147, %._crit_edge ], [ %i.bt, %.lr.ph.preheader ]
  %.0146 = phi ptr [ %i.bz, %._crit_edge ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.0120145 = phi i32 [ %i.by, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0119147 = sub nsw i32 %.0119147.pn, %.0121    ; 3 uses
  %i.bu = ashr i32 %.0119147, 6
  %i.bv = and i32 %.0119147, 62                   ; 2 uses
  %i.bw = shl i32 %.0120145, %i.bq
  %i.bx = sub nuw nsw i32 64, %i.bv
  br label %bb.m

._crit_edge:                                      ; preds = %bb.p
  %i.by = add nuw nsw i32 %.0120145, 1            ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %.0146, i64 %1
  %exitcond152.not = icmp eq i32 %i.by, %4
  br i1 %exitcond152.not, label %._crit_edge150.split, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %.pn = phi i32 [ %i.bw, %.lr.ph ], [ %.0116143, %bb.p ]
  %.0118141 = phi i32 [ %i.bu, %.lr.ph ], [ %i.db, %bb.p ] ; 3 uses
  %.0116143 = sub nsw i32 %.pn, %.0122            ; 3 uses
  %i.ca = icmp sgt i32 %.0118141, -1
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cb = zext nneg i32 %.0118141 to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.cb ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !9
  %i.ce = zext i16 %i.cd to i32
  %i.cf = mul nuw nsw i32 %i.bx, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ch = ashr i32 %.0116143, 6                   ; 3 uses
  %i.ci = icmp sge i32 %i.ch, %i.bm
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = and i32 %.0116143, 62                   ; 2 uses
  %i.ck = sub nsw i32 0, %i.ch
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !9
  %i.co = zext i16 %i.cn to i32
  %i.cp = sub nuw nsw i32 64, %i.cj
  %i.cq = mul nuw nsw i32 %i.cp, %i.co
  %i.cr = xor i32 %i.ch, -1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.cs
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink.in = phi ptr [ %i.ct, %bb.o ], [ %i.cg, %bb.n ]
  %.sink158 = phi i32 [ %i.cj, %bb.o ], [ %i.bv, %bb.n ]
  %.sink157 = phi i32 [ %i.cq, %bb.o ], [ %i.cf, %bb.n ]
  %.sink = load i16, ptr %.sink.in, align 2, !tbaa !9
  %i.cu = zext i16 %.sink to i32
  %i.cv = mul nuw nsw i32 %.sink158, %i.cu
  %i.cw = add nuw nsw i32 %i.cv, %.sink157
  %i.cx = add nuw nsw i32 %i.cw, 32
  %i.cy = lshr i32 %i.cx, 6
  %i.cz = trunc i32 %i.cy to i16
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.0146, i64 %indvars.iv
  store i16 %i.cz, ptr %i.da, align 2, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = add nsw i32 %.0118141, %i.an
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
  %ident.check152 = phi i1 [ true, %bb.c ], [ false, %.thread101 ], [ false, %bb.e ]
  %i.ap = phi i64 [ 2, %bb.c ], [ 1, %.thread101 ], [ 1, %bb.e ] ; 6 uses
  %.093 = phi i32 [ %i.z, %bb.c ], [ %i.k, %.thread101 ], [ %i.k, %bb.e ]
  %.192 = phi ptr [ %i.y, %bb.c ], [ %i.al, %.thread101 ], [ %i.ak, %bb.e ] ; 9 uses
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
  %scevgep157 = getelementptr i8, ptr %.192, i64 2
  %i.bc = mul nsw i64 %i.ap, -2
  %ident.check151 = icmp ne i64 %1, 2
  %i.bd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ap, i1 true)
  %i.be = or i1 %ident.check151, %ident.check152
  %i.bf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ap, i1 true)
  %i.bg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ap, i1 true)
  %ident.check.not = icmp eq i64 %1, 2
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.loopexit.us
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next129, %.loopexit.us ] ; 3 uses
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph.us.preheader ], [ %indvars.iv.next, %.loopexit.us ] ; 6 uses
  %i.bh = shl nuw nsw i64 %indvars.iv128, 1
  %i.bi = getelementptr i8, ptr %0, i64 %i.bh
  %scevgep = getelementptr i8, ptr %i.bi, i64 2
  %i.bj = lshr i64 %indvars.iv, 6                 ; 3 uses
  %i.bk = trunc i64 %i.bj to i33
  %i.bl = shl i33 %i.bk, 1
  %i.bm = sub nuw nsw i33 -2, %i.bl
  %i.bn = sext i33 %i.bm to i64                   ; 2 uses
  %scevgep158 = getelementptr i8, ptr %scevgep157, i64 %i.bn
  %i.bo = shl nuw nsw i64 %i.bj, 1
  %i.bp = mul nsw i64 %i.bj, -2
  %scevgep160.a = getelementptr i8, ptr %.192, i64 %i.bp ; 4 uses
  %i.bq = lshr i64 %indvars.iv, 6                 ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.bq, i64 %i.ay) ; 2 uses
  %i.br = add i64 %i.ba, %smax
  %i.bs = sub i64 %i.br, %i.bq                    ; 3 uses
  %indvars130 = trunc i64 %indvars.iv to i32
  %i.bt = lshr i64 %indvars.iv, 6                 ; 6 uses
  %i.bu = and i32 %indvars130, 62                 ; 3 uses
  %i.bv = sub nuw nsw i32 64, %i.bu               ; 2 uses
  %invariant.gep.us = getelementptr [2 x i8], ptr %0, i64 %indvars.iv128 ; 7 uses
  %i.bw = sub nsw i64 %smax, %i.bt
  %i.bx = call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.bb)
  %i.by = add nsw i64 %i.bx, 1                    ; 3 uses
  %min.iters.check166 = icmp ult i64 %i.by, 25
  br i1 %min.iters.check166, label %scalar.ph.preheader, label %vector.scevcheck150

vector.scevcheck150:                              ; preds = %.lr.ph.us
  %sh.diff = lshr i64 %indvars.iv, 5
  %tr.sh.diff = trunc i64 %sh.diff to i33
  %tr.sh.diff.not = and i33 %tr.sh.diff, -2
  %i.bz = xor i33 %tr.sh.diff.not, -2             ; 2 uses
  %i.ca = lshr i64 %i.bs, %i.bd
  %umin153 = call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.bb) ; 2 uses
  %i.cb = trunc i64 %umin153 to i33
  %mul.result = shl i33 %i.cb, 1
  %i.cc = sub i33 %i.bz, %mul.result
  %i.cd = icmp sgt i33 %i.cc, %i.bz
  %i.ce = icmp ugt i64 %umin153, 4294967295
  %i.cf = or i1 %i.cd, %i.ce
  %i.cg = or i1 %i.be, %i.cf
  br i1 %i.cg, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck150
  %i.ch = lshr i64 %i.bs, %i.bf
  %umin154 = call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.bb) ; 2 uses
  %i.ci = shl i64 %umin154, 1                     ; 2 uses
  %scevgep155 = getelementptr i8, ptr %scevgep, i64 %i.ci ; 2 uses
  %i.cj = sub i64 %i.bn, %i.ci
  %scevgep156 = getelementptr i8, ptr %.192, i64 %i.cj
  %i.ck = mul i64 %i.bc, %umin154
  %i.cl = sub i64 %i.ck, %i.bo
  %scevgep159 = getelementptr i8, ptr %.192, i64 %i.cl ; 4 uses
  %9 = icmp ult ptr %scevgep159, %scevgep160.a
  %umin161 = select i1 %9, ptr %scevgep159, ptr %scevgep160.a
  %10 = icmp ugt ptr %scevgep159, %scevgep160.a
  %umax.sroa.sel.v = select i1 %10, ptr %scevgep159, ptr %scevgep160.a
  %umax.sroa.sel = getelementptr i8, ptr %umax.sroa.sel.v, i64 2
  %bound0 = icmp ult ptr %invariant.gep.us, %scevgep158
  %bound1 = icmp ult ptr %scevgep156, %scevgep155
  %found.conflict = and i1 %bound0, %bound1
  %bound0163 = icmp ult ptr %invariant.gep.us, %umax.sroa.sel
  %bound1164 = icmp ult ptr %umin161, %scevgep155
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx = or i1 %found.conflict, %found.conflict165
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph167

vector.ph167:                                     ; preds = %vector.memcheck
  %i.cm = and i64 %i.by, 7                        ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = select i1 %i.cn, i64 8, i64 %i.cm
  %n.vec168 = sub i64 %i.by, %i.co                ; 3 uses
  %i.cp = add i64 %i.bt, %n.vec168
  tail call void @llvm.assume(i1 %.not.i)
  %broadcast.splatinsert169 = insertelement <8 x i32> poison, i32 %i.bu, i64 0
  %broadcast.splat170 = shufflevector <8 x i32> %broadcast.splatinsert169, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat172 = shufflevector <8 x i32> %broadcast.splatinsert171, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph167
  %index174 = phi i64 [ 0, %vector.ph167 ], [ %index.next177, %vector.body173 ] ; 3 uses
  %i.cq = add nuw i64 %i.bt, %index174            ; 2 uses
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr inbounds [2 x i8], ptr %.192, i64 %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -14
  %wide.load = load <8 x i16>, ptr %i.ct, align 2, !tbaa !9, !alias.scope !55
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cu = zext <8 x i16> %reverse to <8 x i32>
  %i.cv = mul nuw nsw <8 x i32> %broadcast.splat172, %i.cu
  %i.cw = xor i64 %i.cq, -1
  %i.cx = shl i64 %i.cw, 32
  %i.cy = ashr exact i64 %i.cx, 31
  %i.cz = getelementptr inbounds i8, ptr %.192, i64 %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -14
  %wide.load175 = load <8 x i16>, ptr %i.da, align 2, !tbaa !9, !alias.scope !56
  %reverse176 = shufflevector <8 x i16> %wide.load175, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.db = zext <8 x i16> %reverse176 to <8 x i32>
  %i.dc = mul nuw nsw <8 x i32> %broadcast.splat170, %i.db
  %i.dd = add nuw nsw <8 x i32> %i.cv, splat (i32 32)
  %i.de = add nuw nsw <8 x i32> %i.dd, %i.dc
  %i.df = lshr <8 x i32> %i.de, splat (i32 6)
  %i.dg = trunc <8 x i32> %i.df to <8 x i16>
  %i.dh = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %index174
  store <8 x i16> %i.dg, ptr %i.dh, align 2, !tbaa !9, !alias.scope !57, !noalias !58
  %index.next177 = add nuw i64 %index174, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next177, %n.vec168
  br i1 %i.di, label %scalar.ph.preheader, label %vector.body173, !llvm.loop !50

scalar.ph.preheader:                              ; preds = %vector.body173, %vector.memcheck, %vector.scevcheck150, %.lr.ph.us
  %indvars.iv121.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck150 ], [ 0, %.lr.ph.us ], [ %n.vec168, %vector.body173 ]
  %indvars.iv119.ph = phi i64 [ %i.bt, %vector.memcheck ], [ %i.bt, %vector.scevcheck150 ], [ %i.bt, %.lr.ph.us ], [ %i.cp, %vector.body173 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.g
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %bb.g ], [ %indvars.iv121.ph, %scalar.ph.preheader ] ; 7 uses
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %bb.g ], [ %indvars.iv119.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dj = icmp slt i64 %indvars.iv119, %i.ay
  br i1 %i.dj, label %bb.g, label %iter.check

bb.g:                                             ; preds = %scalar.ph
  %i.dk = sub nsw i64 0, %indvars.iv119
  %i.dl = getelementptr inbounds [2 x i8], ptr %.192, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !9
  %i.dn = zext i16 %i.dm to i32
  %i.do = mul nuw nsw i32 %i.bv, %i.dn
  %i.dp = xor i64 %indvars.iv119, -1
  %sext = shl i64 %i.dp, 32
  %i.dq = ashr exact i64 %sext, 31
  %i.dr = getelementptr inbounds i8, ptr %.192, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !9
  %i.dt = zext i16 %i.ds to i32
  %i.du = mul nuw nsw i32 %i.bu, %i.dt
  %i.dv = add nuw nsw i32 %i.do, 32
  %i.dw = add nuw nsw i32 %i.dv, %i.du
  %i.dx = lshr i32 %i.dw, 6
  %i.dy = trunc i32 %i.dx to i16
  tail call void @llvm.assume(i1 %.not.i)
  %i.dz = mul nsw i64 %i.at, %indvars.iv121
  %gep.us = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %i.dz
  store i16 %i.dy, ptr %gep.us, align 2, !tbaa !9
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, %i.ap
  %exitcond.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.us, label %scalar.ph, !llvm.loop !51

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %vec.epilog.scalar.ph ], [ %indvars.iv125.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ea = mul nsw i64 %i.at, %indvars.iv125
  %gep111.us = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %i.ea
  store i16 %.pre, ptr %gep111.us, align 2, !tbaa !9
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.eb = icmp samesign ult i64 %indvars.iv.next126, %i.az
  br i1 %i.eb, label %vec.epilog.scalar.ph, label %.loopexit.us, !llvm.loop !52

.loopexit.us:                                     ; preds = %bb.g, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ax
  %exitcond134.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge, label %.lr.ph.us

iter.check:                                       ; preds = %scalar.ph
  tail call void @llvm.assume(i1 %.not.i)
  %.pre = load i16, ptr %i.aw, align 2, !tbaa !9  ; 3 uses
  %i.ec = lshr i64 %i.bs, %i.bg
  %umin = call i64 @llvm.umin.i64(i64 %i.ec, i64 %i.bb)
  %i.ed = sub i64 %wide.trip.count, %umin         ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ed, 3
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check142 = icmp ult i64 %i.ed, 16
  br i1 %min.iters.check142, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ee = and i64 %i.ed, 12
  %n.vec = and i64 %i.ed, -16                     ; 4 uses
  %i.ef = add i64 %indvars.iv121, %n.vec
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.eg = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %indvars.iv121
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eh = getelementptr [2 x i8], ptr %i.eg, i64 %index ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.eh, align 2, !tbaa !9
  store <8 x i16> %broadcast.splat, ptr %i.ei, align 2, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ee, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec143 = and i64 %i.ed, -4                   ; 3 uses
  %i.ek = add i64 %indvars.iv121, %n.vec143
  %broadcast.splatinsert144 = insertelement <4 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat145 = shufflevector <4 x i16> %broadcast.splatinsert144, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.el = getelementptr [2 x i8], ptr %invariant.gep.us, i64 %indvars.iv121
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index146 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next147, %vec.epilog.vector.body ] ; 2 uses
  %i.em = getelementptr [2 x i8], ptr %i.el, i64 %index146
  store <4 x i16> %broadcast.splat145, ptr %i.em, align 2, !tbaa !9
  %index.next147 = add nuw i64 %index146, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next147, %n.vec143
  br i1 %i.en, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n148 = icmp eq i64 %i.ed, %n.vec143
  br i1 %cmp.n148, label %.loopexit.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv125.ph = phi i64 [ %indvars.iv121, %iter.check ], [ %i.ef, %vec.epilog.iter.check ], [ %i.ek, %vec.epilog.middle.block ]
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
