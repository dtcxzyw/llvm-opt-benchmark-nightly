Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/erc_do_i?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ercPixConcealIMB:bb.a
  %i.fm = getelementptr [2 x i8], ptr %invariant.gep170.sink.i.us, i64 %index144
  store <8 x i16> %i.fl, ptr %i.fm, align 2, !tbaa !39
  %index.next146 = add nuw i64 %index144, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next146, %wide.trip.count141.i
  br i1 %i.fn, label %._crit_edge.split.us.us.split.us.us.split.i.split.us.us, label %vec.epilog.vector.body, !llvm.loop !33

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %indvars.iv115.i.us.us = phi i64 [ %indvars.iv115.i.us.us.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next116.i.us.us.3, %vec.epilog.scalar.ph ] ; 6 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv115.i.us.us
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !39
  %i.fq = and i16 %i.fp, 255
  %gep171.i.us.us = getelementptr [2 x i8], ptr %invariant.gep170.sink.i.us, i64 %indvars.iv115.i.us.us
  store i16 %i.fq, ptr %gep171.i.us.us, align 2, !tbaa !39
  %indvars.iv.next116.i.us.us = or disjoint i64 %indvars.iv115.i.us.us, 1 ; 2 uses
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv.next116.i.us.us
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !39
  %i.ft = and i16 %i.fs, 255
  %gep171.i.us.us.1 = getelementptr [2 x i8], ptr %invariant.gep170.sink.i.us, i64 %indvars.iv.next116.i.us.us
  store i16 %i.ft, ptr %gep171.i.us.us.1, align 2, !tbaa !39
  %indvars.iv.next116.i.us.us.1 = or disjoint i64 %indvars.iv115.i.us.us, 2 ; 2 uses
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv.next116.i.us.us.1
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !39
  %i.fw = and i16 %i.fv, 255
  %gep171.i.us.us.2 = getelementptr [2 x i8], ptr %invariant.gep170.sink.i.us, i64 %indvars.iv.next116.i.us.us.1
  store i16 %i.fw, ptr %gep171.i.us.us.2, align 2, !tbaa !39
  %indvars.iv.next116.i.us.us.2 = or disjoint i64 %indvars.iv115.i.us.us, 3 ; 2 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv.next116.i.us.us.2
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !39
  %i.fz = and i16 %i.fy, 255
  %gep171.i.us.us.3 = getelementptr [2 x i8], ptr %invariant.gep170.sink.i.us, i64 %indvars.iv.next116.i.us.us.2
  store i16 %i.fz, ptr %gep171.i.us.us.3, align 2, !tbaa !39
  %indvars.iv.next116.i.us.us.3 = add nuw nsw i64 %indvars.iv115.i.us.us, 4 ; 2 uses
  %exitcond119.not.i.us.us.3 = icmp eq i64 %indvars.iv.next116.i.us.us.3, %wide.trip.count141.i
  br i1 %exitcond119.not.i.us.us.3, label %._crit_edge.split.us.us.split.us.us.split.i.split.us.us, label %vec.epilog.scalar.ph, !llvm.loop !34

._crit_edge.split.us.us.split.us.us.split.i.split.us.us: ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ga = add nuw nsw i32 %.06373.us.us.i.us, 1   ; 2 uses
  %indvars.iv.next121.i.us = add nsw i64 %indvars.iv120.i.us, %i.ay
  %exitcond123.not.i.us = icmp eq i32 %i.ga, %i.ao
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond123.not.i.us, label %pixMeanInterpolateBlock.exit, label %iter.check, !llvm.loop !31

.preheader.lr.ph.split.split.us.split.us.split.us.i: ; preds = %.preheader.lr.ph.split.split.us.split.us.i
  br i1 %.not.i, label %.preheader.us.us.us.us.i, label %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.preheader.i.preheader

.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.preheader.i.preheader: ; preds = %.preheader.lr.ph.split.split.us.split.us.split.us.i
  %i.gb = add nsw i64 %.pre106, %i.am
  %i.gc = shl nsw i64 %i.gb, 1
  %i.gd = add i64 %i.gc, %i.a
  %i.ge = shl nsw i64 %i.au, 1
  %i.gf = add i64 %i.ge, %.sroa.7.0149
  %i.gg = sub i64 %i.gd, %i.gf
  %i.gh = shl nsw i64 %i.ay, 1
  %min.iters.check153 = icmp eq i32 %i.ao, 0
  %invariant.op193 = add i64 %i.gg, -1
  %min.iters.check155 = icmp ult i32 %i.ao, 16
  %i.gi = and i64 %wide.trip.count141.i, 8
  %n.vec157 = and i64 %wide.trip.count141.i, 4294967280 ; 4 uses
  %cmp.n164 = icmp eq i64 %n.vec157, %wide.trip.count141.i
  %min.epilog.iters.check169.not.not = icmp eq i64 %i.gi, 0
  br label %iter.check166

.preheader.us.us.us.us.i:                         ; preds = %.preheader.lr.ph.split.split.us.split.us.split.us.i, %._crit_edge.split.us.us.split.us.us.split.us.split.us.us.us.i
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i, %._crit_edge.split.us.us.split.us.us.split.us.split.us.us.us.i ], [ 0, %.preheader.lr.ph.split.split.us.split.us.split.us.i ] ; 2 uses
  %.06373.us.us.us.us.i = phi i32 [ %i.gy, %._crit_edge.split.us.us.split.us.us.split.us.split.us.us.us.i ], [ 0, %.preheader.lr.ph.split.split.us.split.us.split.us.i ]
  %invariant.gep174.i = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv143.i ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.preheader.us.us.us.us.i
  %indvars.iv138.i = phi i64 [ 0, %.preheader.us.us.us.us.i ], [ %indvars.iv.next139.i.3, %bb.ac ] ; 5 uses
  %i.gj = load ptr, ptr @img, align 8
  %.in.us.us.us.us.us.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.in.v.i
  %i.gk = load i32, ptr %.in.us.us.us.us.us.us.us.us.i, align 4, !tbaa !7
  %i.gl = trunc i32 %i.gk to i16
  %gep175.i = getelementptr [2 x i8], ptr %invariant.gep174.i, i64 %indvars.iv138.i
  store i16 %i.gl, ptr %gep175.i, align 2, !tbaa !39
  %i.gm = load ptr, ptr @img, align 8
  %.in.us.us.us.us.us.us.us.us.i.1 = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.in.v.i
  %i.gn = load i32, ptr %.in.us.us.us.us.us.us.us.us.i.1, align 4, !tbaa !7
  %i.go = trunc i32 %i.gn to i16
  %i.gp = getelementptr [2 x i8], ptr %invariant.gep174.i, i64 %indvars.iv138.i
  %gep175.i.1 = getelementptr i8, ptr %i.gp, i64 2
  store i16 %i.go, ptr %gep175.i.1, align 2, !tbaa !39
  %i.gq = load ptr, ptr @img, align 8
  %.in.us.us.us.us.us.us.us.us.i.2 = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.in.v.i
  %i.gr = load i32, ptr %.in.us.us.us.us.us.us.us.us.i.2, align 4, !tbaa !7
  %i.gs = trunc i32 %i.gr to i16
  %i.gt = getelementptr [2 x i8], ptr %invariant.gep174.i, i64 %indvars.iv138.i
  %gep175.i.2 = getelementptr i8, ptr %i.gt, i64 4
  store i16 %i.gs, ptr %gep175.i.2, align 2, !tbaa !39
  %i.gu = load ptr, ptr @img, align 8
  %.in.us.us.us.us.us.us.us.us.i.3 = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.in.v.i
  %i.gv = load i32, ptr %.in.us.us.us.us.us.us.us.us.i.3, align 4, !tbaa !7
  %i.gw = trunc i32 %i.gv to i16
  %i.gx = getelementptr [2 x i8], ptr %invariant.gep174.i, i64 %indvars.iv138.i
  %gep175.i.3 = getelementptr i8, ptr %i.gx, i64 6
  store i16 %i.gw, ptr %gep175.i.3, align 2, !tbaa !39
  %indvars.iv.next139.i.3 = add nuw nsw i64 %indvars.iv138.i, 4 ; 2 uses
  %exitcond142.not.i.3 = icmp eq i64 %indvars.iv.next139.i.3, %wide.trip.count141.i
  br i1 %exitcond142.not.i.3, label %._crit_edge.split.us.us.split.us.us.split.us.split.us.us.us.i, label %bb.ac, !llvm.loop !30

._crit_edge.split.us.us.split.us.us.split.us.split.us.us.us.i: ; preds = %bb.ac
  %indvars.iv.next144.i = add nsw i64 %indvars.iv143.i, %i.ay
  %i.gy = add nuw nsw i32 %.06373.us.us.us.us.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i32 %i.gy, %i.ao
  br i1 %exitcond146.not.i, label %pixMeanInterpolateBlock.exit, label %.preheader.us.us.us.us.i, !llvm.loop !31

iter.check166:                                    ; preds = %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.preheader.i.preheader, %._crit_edge.split.us.us.split.us.us.split.us.split.us85.i
  %indvar150 = phi i64 [ 0, %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.preheader.i.preheader ], [ %indvar.next151, %._crit_edge.split.us.us.split.us.us.split.us.split.us85.i ] ; 2 uses
  %indvars.iv134.i = phi i64 [ 0, %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.preheader.i.preheader ], [ %indvars.iv.next135.i, %._crit_edge.split.us.us.split.us.us.split.us.split.us85.i ] ; 2 uses
  %.06373.us.us.us.i = phi i32 [ 0, %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.preheader.i.preheader ], [ %i.hl, %._crit_edge.split.us.us.split.us.us.split.us.split.us85.i ]
  %invariant.gep172.i = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv134.i ; 6 uses
  br i1 %min.iters.check153, label %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i.preheader, label %vector.memcheck148

vector.memcheck148:                               ; preds = %iter.check166
  %i.gz = mul i64 %i.gh, %indvar150
  %.reass194 = add i64 %i.gz, %invariant.op193
  %diff.check152 = icmp ult i64 %.reass194, 31
  br i1 %diff.check152, label %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i.preheader, label %vector.main.loop.iter.check154

vector.main.loop.iter.check154:                   ; preds = %vector.memcheck148
  br i1 %min.iters.check155, label %vec.epilog.vector.body172.preheader, label %vector.body158

vector.body158:                                   ; preds = %vector.main.loop.iter.check154, %vector.body158
  %index159 = phi i64 [ %index.next162, %vector.body158 ], [ 0, %vector.main.loop.iter.check154 ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %index159 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %wide.load160 = load <8 x i16>, ptr %i.ha, align 2, !tbaa !39
  %wide.load161 = load <8 x i16>, ptr %i.hb, align 2, !tbaa !39
  %i.hc = and <8 x i16> %wide.load160, splat (i16 255)
  %i.hd = and <8 x i16> %wide.load161, splat (i16 255)
  %i.he = getelementptr [2 x i8], ptr %invariant.gep172.i, i64 %index159 ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 16
  store <8 x i16> %i.hc, ptr %i.he, align 2, !tbaa !39
  store <8 x i16> %i.hd, ptr %i.hf, align 2, !tbaa !39
  %index.next162 = add nuw i64 %index159, 16      ; 2 uses
  %i.hg = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.hg, label %middle.block163, label %vector.body158, !llvm.loop !35

middle.block163:                                  ; preds = %vector.body158
  br i1 %cmp.n164, label %._crit_edge.split.us.us.split.us.us.split.us.split.us85.i, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block163
  br i1 %min.epilog.iters.check169.not.not, label %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i.preheader, label %vec.epilog.vector.body172.preheader, !prof !42

vec.epilog.vector.body172.preheader:              ; preds = %vector.main.loop.iter.check154, %vec.epilog.iter.check168
  %index173.ph = phi i64 [ 0, %vector.main.loop.iter.check154 ], [ %n.vec157, %vec.epilog.iter.check168 ]
  br label %vec.epilog.vector.body172

.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i.preheader: ; preds = %vector.memcheck148, %iter.check166, %vec.epilog.iter.check168
  %indvars.iv129.i.ph = phi i64 [ 0, %vector.memcheck148 ], [ %n.vec157, %vec.epilog.iter.check168 ], [ 0, %iter.check166 ]
  br label %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172.preheader, %vec.epilog.vector.body172
  %index173 = phi i64 [ %index.next175, %vec.epilog.vector.body172 ], [ %index173.ph, %vec.epilog.vector.body172.preheader ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %index173
  %wide.load174 = load <8 x i16>, ptr %i.hh, align 2, !tbaa !39
  %i.hi = and <8 x i16> %wide.load174, splat (i16 255)
  %i.hj = getelementptr [2 x i8], ptr %invariant.gep172.i, i64 %index173
  store <8 x i16> %i.hi, ptr %i.hj, align 2, !tbaa !39
  %index.next175 = add nuw i64 %index173, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next175, %wide.trip.count141.i
  br i1 %i.hk, label %._crit_edge.split.us.us.split.us.us.split.us.split.us85.i, label %vec.epilog.vector.body172, !llvm.loop !36

._crit_edge.split.us.us.split.us.us.split.us.split.us85.i: ; preds = %vec.epilog.vector.body172, %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i, %middle.block163
  %indvars.iv.next135.i = add nsw i64 %indvars.iv134.i, %i.ay
  %i.hl = add nuw nsw i32 %.06373.us.us.us.i, 1   ; 2 uses
  %exitcond137.not.i = icmp eq i32 %i.hl, %i.ao
  %indvar.next151 = add i64 %indvar150, 1
  br i1 %exitcond137.not.i, label %pixMeanInterpolateBlock.exit, label %iter.check166, !llvm.loop !31

.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i: ; preds = %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i, %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i.preheader
  %indvars.iv129.i = phi i64 [ %indvars.iv129.i.ph, %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i.preheader ], [ %indvars.iv.next130.i.3, %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i ] ; 6 uses
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv129.i
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !39
  %i.ho = and i16 %i.hn, 255
  %gep173.i = getelementptr [2 x i8], ptr %invariant.gep172.i, i64 %indvars.iv129.i
  store i16 %i.ho, ptr %gep173.i, align 2, !tbaa !39
  %indvars.iv.next130.i = or disjoint i64 %indvars.iv129.i, 1 ; 2 uses
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.next130.i
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !39
  %i.hr = and i16 %i.hq, 255
  %gep173.i.1 = getelementptr [2 x i8], ptr %invariant.gep172.i, i64 %indvars.iv.next130.i
  store i16 %i.hr, ptr %gep173.i.1, align 2, !tbaa !39
  %indvars.iv.next130.i.1 = or disjoint i64 %indvars.iv129.i, 2 ; 2 uses
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.next130.i.1
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !39
  %i.hu = and i16 %i.ht, 255
  %gep173.i.2 = getelementptr [2 x i8], ptr %invariant.gep172.i, i64 %indvars.iv.next130.i.1
  store i16 %i.hu, ptr %gep173.i.2, align 2, !tbaa !39
  %indvars.iv.next130.i.2 = or disjoint i64 %indvars.iv129.i, 3 ; 2 uses
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.next130.i.2
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !39
  %i.hx = and i16 %i.hw, 255
  %gep173.i.3 = getelementptr [2 x i8], ptr %invariant.gep172.i, i64 %indvars.iv.next130.i.2
  store i16 %i.hx, ptr %gep173.i.3, align 2, !tbaa !39
  %indvars.iv.next130.i.3 = add nuw nsw i64 %indvars.iv129.i, 4 ; 2 uses
  %exitcond133.not.i.3 = icmp eq i64 %indvars.iv.next130.i.3, %wide.trip.count141.i
  br i1 %exitcond133.not.i.3, label %._crit_edge.split.us.us.split.us.us.split.us.split.us85.i, label %.lr.ph.split.us.us.split.us.us.split.us.split.split.us.us.i, !llvm.loop !37

.preheader.us.us.i.split.split.us.preheader:      ; preds = %.preheader.us.us.i.preheader93, %._crit_edge.split.us.us.split.us.us.split.i.split
  %indvars.iv120.i = phi i64 [ %indvars.iv.next121.i, %._crit_edge.split.us.us.split.us.us.split.i.split ], [ 0, %.preheader.us.us.i.preheader93 ] ; 2 uses
  %.06373.us.us.i = phi i32 [ %i.hz, %._crit_edge.split.us.us.split.us.us.split.i.split ], [ 0, %.preheader.us.us.i.preheader93 ] ; 2 uses
  %i.hy = sub nuw nsw i32 %i.ao, %.06373.us.us.i  ; 2 uses
  %i.hz = add nuw nsw i32 %.06373.us.us.i, 1      ; 4 uses
  %invariant.gep170.sink.i = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv120.i ; 2 uses
  br label %.preheader.us.us.i.split.split.us

.preheader.us.us.i.split.split.us:                ; preds = %.preheader.us.us.i.split.split.us, %.preheader.us.us.i.split.split.us.preheader
  %indvars.iv115.i.us85 = phi i64 [ 0, %.preheader.us.us.i.split.split.us.preheader ], [ %indvars.iv.next116.i.us88.1, %.preheader.us.us.i.split.split.us ] ; 5 uses
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv115.i.us85
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !39
  %i.ic = zext i16 %i.ib to i32
  %i.id = mul nuw nsw i32 %i.hy, %i.ic
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv115.i.us85
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !39
  %i.ig = zext i16 %i.if to i32
  %i.ih = mul nuw nsw i32 %i.hz, %i.ig
  %i.ii = add nuw nsw i32 %i.ih, %i.id
  %i.ij = udiv i32 %i.ii, %i.fb
  %i.ik = trunc i32 %i.ij to i16
  %i.il = and i16 %i.ik, 255
  %gep171.i.us87 = getelementptr [2 x i8], ptr %invariant.gep170.sink.i, i64 %indvars.iv115.i.us85
  store i16 %i.il, ptr %gep171.i.us87, align 2, !tbaa !39
  %indvars.iv.next116.i.us88 = or disjoint i64 %indvars.iv115.i.us85, 1 ; 3 uses
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.next116.i.us88
  %i.in = load i16, ptr %i.im, align 2, !tbaa !39
  %i.io = zext i16 %i.in to i32
  %i.ip = mul nuw nsw i32 %i.hy, %i.io
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv.next116.i.us88
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !39
  %i.is = zext i16 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.hz, %i.is
  %i.iu = add nuw nsw i32 %i.it, %i.ip
  %i.iv = udiv i32 %i.iu, %i.fb
  %i.iw = trunc i32 %i.iv to i16
  %i.ix = and i16 %i.iw, 255
  %gep171.i.us87.1 = getelementptr [2 x i8], ptr %invariant.gep170.sink.i, i64 %indvars.iv.next116.i.us88
  store i16 %i.ix, ptr %gep171.i.us87.1, align 2, !tbaa !39
  %indvars.iv.next116.i.us88.1 = add nuw nsw i64 %indvars.iv115.i.us85, 2 ; 2 uses
  %exitcond119.not.i.us89.1 = icmp eq i64 %indvars.iv.next116.i.us88.1, %wide.trip.count141.i
  br i1 %exitcond119.not.i.us89.1, label %._crit_edge.split.us.us.split.us.us.split.i.split, label %.preheader.us.us.i.split.split.us, !llvm.loop !30

._crit_edge.split.us.us.split.us.us.split.i.split: ; preds = %.preheader.us.us.i.split.split.us
  %indvars.iv.next121.i = add nsw i64 %indvars.iv120.i, %i.ay
  %exitcond123.not.i = icmp eq i32 %i.hz, %i.ao
  br i1 %exitcond123.not.i, label %pixMeanInterpolateBlock.exit, label %.preheader.us.us.i.split.split.us.preheader, !llvm.loop !31

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.split.us.us.split.i.split
  %indvars.iv108.i = phi i64 [ %indvars.iv.next109.i, %._crit_edge.split.us.us.split.i.split ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %indvars.iv106.i = phi i64 [ %indvars.iv.next107.i, %._crit_edge.split.us.us.split.i.split ], [ 0, %.preheader.us.i.preheader ] ; 2 uses
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1 ; 3 uses
  %i.iy = mul nsw i64 %indvars.iv108.i, %i.ay
  %i.iz = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.iy
  %i.ja = trunc i64 %indvars.iv108.i to i32
  %i.jb = sub i32 %i.ao, %i.ja                    ; 2 uses
  %i.jc = trunc nuw nsw i64 %indvars.iv.next109.i to i32 ; 2 uses
  %invariant.gep166.sink.i = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv106.i
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ai, %.preheader.us.i
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i, %bb.ai ], [ 0, %.preheader.us.i ] ; 4 uses
  br i1 %.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv101.i
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !39
  %i.jf = zext i16 %i.je to i32
  %i.jg = mul nuw nsw i32 %i.jb, %i.jf
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.057.us.us.i = phi i32 [ %i.jg, %bb.ae ], [ 0, %bb.ad ]
  %.0.us.us.i = phi i32 [ %i.jb, %bb.ae ], [ 0, %bb.ad ]
  %i.jh = add nsw i32 %.0.us.us.i, %i.jc
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 3 uses
  %i.ji = trunc nuw nsw i64 %indvars.iv.next102.i to i32 ; 2 uses
  %i.jj = add nsw i32 %i.jh, %i.ji                ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, 0
  br i1 %i.jk, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jl = load ptr, ptr @img, align 8
  %.in.us.us.i = getelementptr inbounds nuw i8, ptr %i.jl, i64 %.in.v.i
  %i.jm = load i32, ptr %.in.us.us.i, align 4, !tbaa !7
  %i.jn = trunc i32 %i.jm to i16
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv101.i
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !39
  %i.jq = zext i16 %i.jp to i32
  %i.jr = mul nuw nsw i32 %i.jq, %i.jc
  %i.js = add nsw i32 %i.jr, %.057.us.us.i
  %i.jt = load i16, ptr %i.iz, align 2, !tbaa !39
  %i.ju = zext i16 %i.jt to i32
  %i.jv = mul nuw nsw i32 %i.ju, %i.ji
  %i.jw = add nsw i32 %i.jv, %i.js
  %i.jx = sdiv i32 %i.jw, %i.jj
  %i.jy = trunc i32 %i.jx to i16
  %i.jz = and i16 %i.jy, 255
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink176.i = phi i16 [ %i.jz, %bb.ah ], [ %i.jn, %bb.ag ]
  %gep167.i = getelementptr [2 x i8], ptr %invariant.gep166.sink.i, i64 %indvars.iv101.i
  store i16 %.sink176.i, ptr %gep167.i, align 2, !tbaa !39
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next102.i, %wide.trip.count141.i
  br i1 %exitcond105.not.i, label %._crit_edge.split.us.us.split.i.split, label %bb.ad, !llvm.loop !30

._crit_edge.split.us.us.split.i.split:            ; preds = %bb.ai
  %indvars.iv.next107.i = add nsw i64 %indvars.iv106.i, %i.ay
  %exitcond114.not.i = icmp eq i64 %indvars.iv.next109.i, %wide.trip.count141.i
  br i1 %exitcond114.not.i, label %pixMeanInterpolateBlock.exit, label %.preheader.us.i, !llvm.loop !31

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.split.i.split
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %._crit_edge.split.i.split ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i, %._crit_edge.split.i.split ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.ka = mul nsw i64 %indvars.iv94.i, %i.ay      ; 2 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.ka
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 3 uses
  %i.kb = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.ka
  %i.kc = trunc i64 %indvars.iv94.i to i32
  %i.kd = sub i32 %i.ao, %i.kc                    ; 2 uses
  %i.ke = trunc nuw nsw i64 %indvars.iv.next95.i to i32 ; 2 uses
  %invariant.gep162.sink.i = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv92.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aq, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.aq ] ; 5 uses
  br i1 %.not.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !39
  %i.kh = zext i16 %i.kg to i32
  %i.ki = mul nuw nsw i32 %i.kd, %i.kh
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.057.i = phi i32 [ %i.ki, %bb.ak ], [ 0, %bb.aj ]
  %.0.i = phi i32 [ %i.kd, %bb.ak ], [ 0, %bb.aj ]
  %i.kj = load i16, ptr %gep.i, align 2, !tbaa !39
  %i.kk = zext i16 %i.kj to i32
  %i.kl = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.km = sub i32 %i.ao, %i.kl                    ; 2 uses
  %i.kn = mul nuw nsw i32 %i.km, %i.kk
  %i.ko = add nuw nsw i32 %i.kn, %.057.i          ; 2 uses
  %i.kp = add nuw nsw i32 %.0.i, %i.km            ; 2 uses
  br i1 %.not70.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv.i
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !39
  %i.ks = zext i16 %i.kr to i32
  %i.kt = mul nuw nsw i32 %i.ks, %i.ke
  %i.ku = add nsw i32 %i.kt, %i.ko
  %i.kv = add nsw i32 %i.kp, %i.ke
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.259.i = phi i32 [ %i.ku, %bb.am ], [ %i.ko, %bb.al ]
  %.2.i = phi i32 [ %i.kv, %bb.am ], [ %i.kp, %bb.al ]
  %i.kw = add i32 %i.kl, 1                        ; 2 uses
  %i.kx = add nsw i32 %.2.i, %i.kw                ; 2 uses
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kz = load i16, ptr %i.kb, align 2, !tbaa !39
  %i.la = zext i16 %i.kz to i32
  %i.lb = mul nuw nsw i32 %i.kw, %i.la
  %i.lc = add nsw i32 %i.lb, %.259.i
  %i.ld = sdiv i32 %i.lc, %i.kx
  %i.le = trunc i32 %i.ld to i16
  %i.lf = and i16 %i.le, 255
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.lg = load ptr, ptr @img, align 8
  %.in.i = getelementptr inbounds nuw i8, ptr %i.lg, i64 %.in.v.i
  %i.lh = load i32, ptr %.in.i, align 4, !tbaa !7
  %i.li = trunc i32 %i.lh to i16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sink177.i = phi i16 [ %i.lf, %bb.ao ], [ %i.li, %bb.ap ]
  %gep163.i = getelementptr [2 x i8], ptr %invariant.gep162.sink.i, i64 %indvars.iv.i
  store i16 %.sink177.i, ptr %gep163.i, align 2, !tbaa !39
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count141.i
  br i1 %exitcond.not.i, label %._crit_edge.split.i.split, label %bb.aj, !llvm.loop !30

._crit_edge.split.i.split:                        ; preds = %bb.aq
  %indvars.iv.next93.i = add nsw i64 %indvars.iv92.i, %i.ay
  %exitcond100.not.i = icmp eq i64 %indvars.iv.next95.i, %wide.trip.count141.i
  br i1 %exitcond100.not.i, label %pixMeanInterpolateBlock.exit, label %.preheader.i, !llvm.loop !31

pixMeanInterpolateBlock.exit:                     ; preds = %._crit_edge.split.i.split, %._crit_edge.split.i.split.us.us.split, %._crit_edge.split.i.split.us.us.split.us.split.us75, %._crit_edge.split.i.split.us.us.split.us.split.us.us.us, %._crit_edge.split.us.us.split.i.split, %._crit_edge.split.us.us.split.i.split.us.split.us83, %._crit_edge.split.us.us.split.i.split.us.split.us.us.us, %._crit_edge.split.us.us.split.us.us.split.i.split, %._crit_edge.split.us.us.split.us.us.split.i.split.us.us, %._crit_edge.split.us.us.split.us.us.split.us.split.us85.i, %._crit_edge.split.us.us.split.us.us.split.us.split.us.us.us.i, %._crit_edge
  ret void
}
end_hunk_0
