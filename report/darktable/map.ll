Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/map?download=true
inline.NumInlined: 154
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_view_map_changed_callback_wait:bb.a
  %i.hc = call reassoc nsz arcp contract afn <2 x double> @llvm.ceil.v2f64(<2 x double> %i.hb)
  %i.hd = fadd reassoc nsz arcp contract afn <2 x double> %i.hc, splat (double 1.000000e+00) ; 2 uses
  %i.he = extractelement <2 x double> %i.hd, i64 1
  %i.hf = fptoui double %i.he to i32
  %.fr76.i.i.i = freeze i32 %i.hf                 ; 7 uses
  %i.hg = extractelement <2 x double> %i.hd, i64 0
  %i.hh = fptoui double %i.hg to i32              ; 4 uses
  %i.hi = zext i32 %i.hh to i64
  %i.hj = call noalias ptr @calloc(i64 noundef %i.hi, i64 noundef 8) #24 ; 7 uses
  store ptr %i.hj, ptr @db.1, align 8, !tbaa !191
  store i32 %.fr76.i.i.i, ptr @db.4, align 8, !tbaa !192
  store i32 %i.hh, ptr @db.3, align 4, !tbaa !193
  %.not.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i, label %_bin_points.exit.i.i, label %.lr.ph73.i.i.i

.lr.ph73.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.hk = fdiv reassoc nsz arcp contract afn double f0x41FC18116A43E0F9, %i.fl ; 2 uses
  %i.hl = zext i32 %.fr76.i.i.i to i64            ; 8 uses
  %.not77.i.i.i = icmp eq i32 %.fr76.i.i.i, 0
  br i1 %.not77.i.i.i, label %.lr.ph73.split.i.i.i.preheader, label %.lr.ph73.split.us.i.i.i.preheader

.lr.ph73.split.us.i.i.i.preheader:                ; preds = %.lr.ph73.i.i.i
  %i.hm = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %min.iters.check163 = icmp ult i32 %.fr76.i.i.i, 8
  %min.iters.check165 = icmp ult i32 %.fr76.i.i.i, 32
  %i.ho = and i64 %i.hl, 24
  %n.vec167 = and i64 %i.hl, 4294967264           ; 4 uses
  %cmp.n181 = icmp eq i64 %n.vec167, %i.hl
  %min.epilog.iters.check186 = icmp eq i64 %i.ho, 0
  %n.vec188 = and i64 %i.hl, 4294967288           ; 3 uses
  %cmp.n199 = icmp eq i64 %n.vec188, %i.hl
  br label %.lr.ph73.split.us.i.i.i

.lr.ph73.split.i.i.i.preheader:                   ; preds = %.lr.ph73.i.i.i
  %i.hp = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph73.split.i.i.i

.lr.ph73.split.us.i.i.i:                          ; preds = %.lr.ph73.split.us.i.i.i.preheader, %..loopexit_crit_edge.us.i.i.i
  %indvars.iv85.i.i.i = phi i64 [ %indvars.iv.next86.i.i.i, %..loopexit_crit_edge.us.i.i.i ], [ 0, %.lr.ph73.split.us.i.i.i.preheader ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv85.i.i.i ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load <2 x double>, ptr %i.hr, align 8, !tbaa !135 ; 3 uses
  %i.hu = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.ht, %i.gt
  %i.hv = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.ht, %i.gz
  %i.hw = select <2 x i1> %i.hv, <2 x double> %i.gz, <2 x double> %i.ht
  %i.hx = select <2 x i1> %i.hu, <2 x double> %i.gt, <2 x double> %i.hw
  %i.hy = fsub reassoc nsz arcp contract afn <2 x double> %i.hx, %i.gz
  %i.hz = fmul reassoc nsz arcp contract afn <2 x double> %i.hy, %i.hn
  %i.ia = fptoui <2 x double> %i.hz to <2 x i32>  ; 3 uses
  store <2 x i32> %i.ia, ptr %i.hs, align 8, !tbaa !131
  %i.ib = extractelement <2 x i32> %i.ia, i64 0
  %i.ic = zext i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.ic ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !195 ; 2 uses
  %.not64.us.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not64.us.i.i.i, label %iter.check183, label %..loopexit_crit_edge.us.i.i.i

iter.check183:                                    ; preds = %.lr.ph73.split.us.i.i.i
  %i.if = call noalias ptr @calloc(i64 noundef %i.hl, i64 noundef 8) #24 ; 11 uses
  store ptr %i.if, ptr %i.id, align 8, !tbaa !195
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.if) ]
  br i1 %min.iters.check163, label %.preheader.us.i.i.i.preheader, label %vector.main.loop.iter.check164

vector.main.loop.iter.check164:                   ; preds = %iter.check183
  br i1 %min.iters.check165, label %vec.epilog.ph187, label %vector.body168

vector.body168:                                   ; preds = %vector.main.loop.iter.check164, %vector.body168
  %index169 = phi i64 [ %index.next178, %vector.body168 ], [ 0, %vector.main.loop.iter.check164 ]
  %vec.ind170 = phi <8 x i64> [ %vec.ind.next179, %vector.body168 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check164 ] ; 5 uses
  %step.add171 = add nuw <8 x i64> %vec.ind170, splat (i64 8)
  %step.add.2172 = add nuw <8 x i64> %vec.ind170, splat (i64 16)
  %step.add.3173 = add nuw <8 x i64> %vec.ind170, splat (i64 24)
  %wide.gep174 = getelementptr inbounds nuw [8 x i8], ptr %i.if, <8 x i64> %vec.ind170
  %wide.gep175 = getelementptr inbounds nuw [8 x i8], ptr %i.if, <8 x i64> %step.add171
  %wide.gep176 = getelementptr inbounds nuw [8 x i8], ptr %i.if, <8 x i64> %step.add.2172
  %wide.gep177 = getelementptr inbounds nuw [8 x i8], ptr %i.if, <8 x i64> %step.add.3173
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep174, <8 x i1> splat (i1 true)), !tbaa !197
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep175, <8 x i1> splat (i1 true)), !tbaa !197
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep176, <8 x i1> splat (i1 true)), !tbaa !197
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep177, <8 x i1> splat (i1 true)), !tbaa !197
  %index.next178 = add nuw i64 %index169, 32      ; 2 uses
  %vec.ind.next179 = add nuw <8 x i64> %vec.ind170, splat (i64 32)
  %i.ig = icmp eq i64 %index.next178, %n.vec167
  br i1 %i.ig, label %middle.block180, label %vector.body168, !llvm.loop !253

middle.block180:                                  ; preds = %vector.body168
  br i1 %cmp.n181, label %..loopexit_crit_edge.us.i.i.i, label %vec.epilog.iter.check185

vec.epilog.iter.check185:                         ; preds = %middle.block180
  br i1 %min.epilog.iters.check186, label %.preheader.us.i.i.i.preheader, label %vec.epilog.ph187, !prof !276

vec.epilog.ph187:                                 ; preds = %vector.main.loop.iter.check164, %vec.epilog.iter.check185
  %vec.epilog.resume.val182 = phi i64 [ %n.vec167, %vec.epilog.iter.check185 ], [ 0, %vector.main.loop.iter.check164 ] ; 2 uses
  %broadcast.splatinsert189 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val182, i64 0
  %broadcast.splat190 = shufflevector <8 x i64> %broadcast.splatinsert189, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction191 = or disjoint <8 x i64> %broadcast.splat190, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body192

vec.epilog.vector.body192:                        ; preds = %vec.epilog.vector.body192, %vec.epilog.ph187
  %index193 = phi i64 [ %vec.epilog.resume.val182, %vec.epilog.ph187 ], [ %index.next196, %vec.epilog.vector.body192 ]
  %vec.ind194 = phi <8 x i64> [ %induction191, %vec.epilog.ph187 ], [ %vec.ind.next197, %vec.epilog.vector.body192 ] ; 2 uses
  %wide.gep195 = getelementptr inbounds nuw [8 x i8], ptr %i.if, <8 x i64> %vec.ind194
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 -1), <8 x ptr> align 4 %wide.gep195, <8 x i1> splat (i1 true)), !tbaa !197
  %index.next196 = add nuw i64 %index193, 8       ; 2 uses
  %vec.ind.next197 = add nuw nsw <8 x i64> %vec.ind194, splat (i64 8)
  %i.ih = icmp eq i64 %index.next196, %n.vec188
  br i1 %i.ih, label %vec.epilog.middle.block198, label %vec.epilog.vector.body192, !llvm.loop !254

vec.epilog.middle.block198:                       ; preds = %vec.epilog.vector.body192
  br i1 %cmp.n199, label %..loopexit_crit_edge.us.i.i.i, label %.preheader.us.i.i.i.preheader

.preheader.us.i.i.i.preheader:                    ; preds = %iter.check183, %vec.epilog.iter.check185, %vec.epilog.middle.block198
  %indvars.iv80.i.i.i.ph = phi i64 [ 0, %iter.check183 ], [ %n.vec167, %vec.epilog.iter.check185 ], [ %n.vec188, %vec.epilog.middle.block198 ]
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %.preheader.us.i.i.i.preheader, %.preheader.us.i.i.i
  %indvars.iv80.i.i.i = phi i64 [ %indvars.iv.next81.i.i.i, %.preheader.us.i.i.i ], [ %indvars.iv80.i.i.i.ph, %.preheader.us.i.i.i.preheader ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv80.i.i.i
  store i32 -1, ptr %i.ii, align 4, !tbaa !197
  %indvars.iv.next81.i.i.i = add nuw nsw i64 %indvars.iv80.i.i.i, 1 ; 2 uses
  %exitcond84.not.i.i.i = icmp eq i64 %indvars.iv.next81.i.i.i, %i.hl
  br i1 %exitcond84.not.i.i.i, label %..loopexit_crit_edge.us.i.i.i, label %.preheader.us.i.i.i, !llvm.loop !255

..loopexit_crit_edge.us.i.i.i:                    ; preds = %.preheader.us.i.i.i, %middle.block180, %vec.epilog.middle.block198, %.lr.ph73.split.us.i.i.i
  %i.ij = phi ptr [ %i.ie, %.lr.ph73.split.us.i.i.i ], [ %i.if, %middle.block180 ], [ %i.if, %vec.epilog.middle.block198 ], [ %i.if, %.preheader.us.i.i.i ]
  %i.ik = extractelement <2 x i32> %i.ia, i64 1
  %i.il = zext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.il ; 3 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !197
  %i.io = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  store i32 %i.in, ptr %i.io, align 8, !tbaa !273
  %i.ip = trunc nuw i64 %indvars.iv85.i.i.i to i32
  store i32 %i.ip, ptr %i.im, align 4, !tbaa !197
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 4 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !198
  %i.is = add i32 %i.ir, 1
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !198
  %indvars.iv.next86.i.i.i = add nuw nsw i64 %indvars.iv85.i.i.i, 1 ; 2 uses
  %exitcond89.not.i.i.i = icmp eq i64 %indvars.iv.next86.i.i.i, %i.dh
  br i1 %exitcond89.not.i.i.i, label %_bin_points.exit.i.i, label %.lr.ph73.split.us.i.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.it = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  store i32 -1, ptr %i.iu, align 8, !tbaa !273
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.dh
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !256

.lr.ph73.split.i.i.i:                             ; preds = %.lr.ph73.split.i.i.i.preheader, %.preheader.i.i.i
  %indvars.iv90.i.i.i = phi i64 [ %indvars.iv.next91.i.i.i, %.preheader.i.i.i ], [ 0, %.lr.ph73.split.i.i.i.preheader ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv90.i.i.i ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load <2 x double>, ptr %i.iv, align 8, !tbaa !135 ; 3 uses
  %i.iy = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.ix, %i.gt
  %i.iz = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.ix, %i.gz
  %i.ja = select <2 x i1> %i.iz, <2 x double> %i.gz, <2 x double> %i.ix
  %i.jb = select <2 x i1> %i.iy, <2 x double> %i.gt, <2 x double> %i.ja
  %i.jc = fsub reassoc nsz arcp contract afn <2 x double> %i.jb, %i.gz
  %i.jd = fmul reassoc nsz arcp contract afn <2 x double> %i.jc, %i.hq
  %i.je = fptoui <2 x double> %i.jd to <2 x i32>  ; 3 uses
  store <2 x i32> %i.je, ptr %i.iw, align 8, !tbaa !131
  %i.jf = extractelement <2 x i32> %i.je, i64 0
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.jg ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !195 ; 2 uses
  %.not64.i.i.i = icmp eq ptr %i.ji, null
  br i1 %.not64.i.i.i, label %bb.ah, label %.preheader.i.i.i

bb.ah:                                            ; preds = %.lr.ph73.split.i.i.i
  %i.jj = call noalias ptr @calloc(i64 noundef %i.hl, i64 noundef 8) #24 ; 2 uses
  store ptr %i.jj, ptr %i.jh, align 8, !tbaa !195
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ah, %.lr.ph73.split.i.i.i
  %i.jk = phi ptr [ %i.jj, %bb.ah ], [ %i.ji, %.lr.ph73.split.i.i.i ]
  %i.jl = extractelement <2 x i32> %i.je, i64 1
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jm ; 3 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !197
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  store i32 %i.jo, ptr %i.jp, align 8, !tbaa !273
  %i.jq = trunc nuw i64 %indvars.iv90.i.i.i to i32
  store i32 %i.jq, ptr %i.jn, align 4, !tbaa !197
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 4 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !198
  %i.jt = add i32 %i.js, 1
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !198
  %indvars.iv.next91.i.i.i = add nuw nsw i64 %indvars.iv90.i.i.i, 1 ; 2 uses
  %exitcond94.not.i.i.i = icmp eq i64 %indvars.iv.next91.i.i.i, %i.dh
  br i1 %exitcond94.not.i.i.i, label %_bin_points.exit.i.i, label %.lr.ph73.split.i.i.i

_bin_points.exit.i.i:                             ; preds = %..loopexit_crit_edge.us.i.i.i, %.preheader.i.i.i, %._crit_edge.i.i.i
  %.not147.i.i = icmp eq i32 %i.hh, 0
  br i1 %.not147.i.i, label %_dbscan.exit.i, label %.lr.ph117.i.i

.preheader110.i.i:                                ; preds = %.loopexit112.i.i
  %.not148.i.i = icmp eq i32 %10, 0
  br i1 %.not148.i.i, label %_dbscan.exit.i, label %.lr.ph123.i.i

.lr.ph117.i.i:                                    ; preds = %_bin_points.exit.i.i, %.loopexit112.i.i
  %.pre193.i.i.a = phi i32 [ %.pre193215.i.i.a, %.loopexit112.i.i ], [ %i.gj, %_bin_points.exit.i.i ] ; 3 uses
  %.pre191.i.i = phi ptr [ %.pre191211.i.i, %.loopexit112.i.i ], [ %i.hj, %_bin_points.exit.i.i ] ; 3 uses
  %8 = phi i32 [ %10, %.loopexit112.i.i ], [ %i.hh, %_bin_points.exit.i.i ]
  %i.ju = phi i32 [ %i.kt, %.loopexit112.i.i ], [ %.fr76.i.i.i, %_bin_points.exit.i.i ] ; 2 uses
  %i.jv = phi i32 [ %i.ku, %.loopexit112.i.i ], [ 0, %_bin_points.exit.i.i ] ; 2 uses
  %i.jw = phi i32 [ %i.kv, %.loopexit112.i.i ], [ %.fr76.i.i.i, %_bin_points.exit.i.i ] ; 2 uses
  %9 = phi ptr [ %11, %.loopexit112.i.i ], [ %i.hj, %_bin_points.exit.i.i ] ; 2 uses
  %indvars.iv161.i.i = phi i64 [ %indvars.iv.next162.i.i, %.loopexit112.i.i ], [ 0, %_bin_points.exit.i.i ] ; 4 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv161.i.i
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !195
  %.not79.i.i = icmp ne ptr %i.jy, null
  %i.jz = icmp ne i32 %i.jw, 0
  %or.cond.i.i = select i1 %.not79.i.i, i1 %i.jz, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.preheader.i.i, label %.loopexit112.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph117.i.i
  %i.ka = trunc nuw i64 %indvars.iv161.i.i to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %.lr.ph.preheader.i.i
  %.pre193216.i.i.a = phi i32 [ %.pre193.i.i.a, %.lr.ph.preheader.i.i ], [ %.pre193217.i.i.a, %bb.aj ]
  %.pre191212.i.i = phi ptr [ %.pre191.i.i, %.lr.ph.preheader.i.i ], [ %.pre191213.i.i, %bb.aj ]
  %i.kb = phi i32 [ %i.ju, %.lr.ph.preheader.i.i ], [ %i.kn, %bb.aj ]
  %i.kc = phi i32 [ %i.jv, %.lr.ph.preheader.i.i ], [ %i.ko, %bb.aj ] ; 2 uses
  %i.kd = phi i32 [ %.pre193.i.i.a, %.lr.ph.preheader.i.i ], [ %i.kp, %bb.aj ] ; 2 uses
  %i.ke = phi ptr [ %.pre191.i.i, %.lr.ph.preheader.i.i ], [ %i.kq, %bb.aj ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.aj ] ; 3 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv161.i.i
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !195
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !198
  %.not80.i.i = icmp ult i32 %i.kj, %i.kd
  br i1 %.not80.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i
  %i.kk = trunc nuw i64 %indvars.iv.i.i to i32
  call fastcc void @_add_expand_cluster(i32 noundef %i.ka, i32 noundef %i.kk, i32 noundef %i.kc, i32 noundef 250)
  %i.kl = load i32, ptr @db.7, align 8, !tbaa !272
  %i.km = add i32 %i.kl, 1                        ; 2 uses
  store i32 %i.km, ptr @db.7, align 8, !tbaa !272
  %.pre.i.i.a = load ptr, ptr @db.1, align 8, !tbaa !191 ; 2 uses
  %.pre192.i.i = load i32, ptr @db.6, align 8, !tbaa !271 ; 2 uses
  %.pre194.i.i = load i32, ptr @db.4, align 8, !tbaa !192
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i.i
  %.pre193217.i.i.a = phi i32 [ %.pre193216.i.i.a, %.lr.ph.i.i ], [ %.pre192.i.i, %bb.ai ] ; 2 uses
  %.pre191213.i.i = phi ptr [ %.pre191212.i.i, %.lr.ph.i.i ], [ %.pre.i.i.a, %bb.ai ] ; 2 uses
  %i.kn = phi i32 [ %i.kb, %.lr.ph.i.i ], [ %.pre194.i.i, %bb.ai ] ; 4 uses
  %i.ko = phi i32 [ %i.kc, %.lr.ph.i.i ], [ %i.km, %bb.ai ] ; 2 uses
  %i.kp = phi i32 [ %i.kd, %.lr.ph.i.i ], [ %.pre192.i.i, %bb.ai ]
  %i.kq = phi ptr [ %i.ke, %.lr.ph.i.i ], [ %.pre.i.i.a, %bb.ai ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.kr = zext i32 %i.kn to i64
  %i.ks = icmp samesign ult i64 %indvars.iv.next.i.i, %i.kr
  br i1 %i.ks, label %.lr.ph.i.i, label %.loopexit112.loopexit.i.i

.loopexit112.loopexit.i.i:                        ; preds = %bb.aj
  %.pre195.i.i = load i32, ptr @db.3, align 4, !tbaa !193
  br label %.loopexit112.i.i

.loopexit112.i.i:                                 ; preds = %.loopexit112.loopexit.i.i, %.lr.ph117.i.i
  %.pre193215.i.i.a = phi i32 [ %.pre193217.i.i.a, %.loopexit112.loopexit.i.i ], [ %.pre193.i.i.a, %.lr.ph117.i.i ]
  %.pre191211.i.i = phi ptr [ %.pre191213.i.i, %.loopexit112.loopexit.i.i ], [ %.pre191.i.i, %.lr.ph117.i.i ] ; 4 uses
  %10 = phi i32 [ %.pre195.i.i, %.loopexit112.loopexit.i.i ], [ %8, %.lr.ph117.i.i ] ; 4 uses
  %i.kt = phi i32 [ %i.kn, %.loopexit112.loopexit.i.i ], [ %i.ju, %.lr.ph117.i.i ] ; 4 uses
  %i.ku = phi i32 [ %i.ko, %.loopexit112.loopexit.i.i ], [ %i.jv, %.lr.ph117.i.i ] ; 2 uses
  %i.kv = phi i32 [ %i.kn, %.loopexit112.loopexit.i.i ], [ %i.jw, %.lr.ph117.i.i ]
  %11 = phi ptr [ %i.kq, %.loopexit112.loopexit.i.i ], [ %9, %.lr.ph117.i.i ]
  %indvars.iv.next162.i.i = add nuw nsw i64 %indvars.iv161.i.i, 1 ; 2 uses
  %i.kw = zext i32 %10 to i64
  %i.kx = icmp samesign ult i64 %indvars.iv.next162.i.i, %i.kw
  br i1 %i.kx, label %.lr.ph117.i.i, label %.preheader110.i.i

.preheader107.i.i:                                ; preds = %.loopexit109.i.i
  %.not150.i.i = icmp eq i32 %i.sr, 0
  br i1 %.not150.i.i, label %_dbscan.exit.i, label %.preheader106.i.i

.lr.ph123.i.i:                                    ; preds = %.preheader110.i.i, %.loopexit109.i.i
  %.pre198220.i.i = phi ptr [ %.pre198221.i.i, %.loopexit109.i.i ], [ %.pre191211.i.i, %.preheader110.i.i ] ; 3 uses
  %i.ky = phi ptr [ %i.sq, %.loopexit109.i.i ], [ %.pre191211.i.i, %.preheader110.i.i ] ; 6 uses
  %i.kz = phi i32 [ %i.sr, %.loopexit109.i.i ], [ %10, %.preheader110.i.i ] ; 3 uses
  %i.la = phi i32 [ %i.ss, %.loopexit109.i.i ], [ %i.kt, %.preheader110.i.i ] ; 3 uses
  %i.lb = phi i32 [ %i.st, %.loopexit109.i.i ], [ %i.kt, %.preheader110.i.i ] ; 3 uses
  %i.lc = phi i32 [ %i.su, %.loopexit109.i.i ], [ %i.ku, %.preheader110.i.i ] ; 4 uses
  %i.ld = phi i32 [ %i.sv, %.loopexit109.i.i ], [ %i.kt, %.preheader110.i.i ] ; 3 uses
  %indvars.iv168.i.i = phi i64 [ %indvars.iv.next169.i.i, %.loopexit109.i.i ], [ 0, %.preheader110.i.i ] ; 7 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv168.i.i
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !195 ; 4 uses
  %.not77.i.i = icmp eq ptr %i.lf, null
  br i1 %.not77.i.i, label %.loopexit109.i.i, label %.preheader108.i.i

.preheader108.i.i:                                ; preds = %.lr.ph123.i.i
  %.not149.i.i = icmp eq i32 %i.ld, 0
  br i1 %.not149.i.i, label %.loopexit109.i.i, label %_not_clustered.exit.thread.i.peel.i.i

_not_clustered.exit.thread.i.peel.i.i:            ; preds = %.preheader108.i.i
  %.not63.i.i.i = icmp eq i64 %indvars.iv168.i.i, 0 ; 2 uses
  %i.lg = trunc nuw i64 %indvars.iv168.i.i to i32 ; 2 uses
  %i.lh = add nuw nsw i64 %indvars.iv168.i.i, 4294967295
  %i.li = and i64 %i.lh, 4294967295               ; 2 uses
  %i.lj = add nuw nsw i64 %indvars.iv168.i.i, 1   ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !198 ; 3 uses
  %.not272.i.i = icmp eq i32 %i.ld, 1             ; 3 uses
  br i1 %.not272.i.i, label %_not_clustered.exit75.thread.i.peel.i.i, label %bb.ak

bb.ak:                                            ; preds = %_not_clustered.exit.thread.i.peel.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !198 ; 2 uses
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %_not_clustered.exit75.thread.i.peel.i.i, label %_not_clustered.exit75.i.peel.i.i

_not_clustered.exit75.i.peel.i.i:                 ; preds = %bb.ak
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lq = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.lr = load i32, ptr %i.lp, align 4, !tbaa !197
  %i.ls = zext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [40 x i8], ptr %i.lq, i64 %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 28
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !156
  %.not62142.i.peel.i.i = icmp slt i32 %i.lv, 0
  %i.lw = select i1 %.not62142.i.peel.i.i, i32 %i.ln, i32 0
  %spec.select134.i.peel.i.i = add i32 %i.lw, %i.ll
  br label %_not_clustered.exit75.thread.i.peel.i.i

_not_clustered.exit75.thread.i.peel.i.i:          ; preds = %_not_clustered.exit75.i.peel.i.i, %bb.ak, %_not_clustered.exit.thread.i.peel.i.i
  %.1.i.peel.i.i = phi i32 [ %i.ll, %bb.ak ], [ %spec.select134.i.peel.i.i, %_not_clustered.exit75.i.peel.i.i ], [ %i.ll, %_not_clustered.exit.thread.i.peel.i.i ] ; 4 uses
  br i1 %.not63.i.i.i, label %_not_clustered.exit87.thread.i.peel.i.i, label %bb.al

bb.al:                                            ; preds = %_not_clustered.exit75.thread.i.peel.i.i
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.li
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !195 ; 5 uses
  %.not64.i82.peel.i.i = icmp eq ptr %i.ly, null
  br i1 %.not64.i82.peel.i.i, label %_not_clustered.exit87.thread.i.peel.i.i, label %_not_clustered.exit79.thread.i.peel.i.i

_not_clustered.exit79.thread.i.peel.i.i:          ; preds = %bb.al
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !198 ; 2 uses
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %_not_clustered.exit83.thread.i.peel.i.i, label %_not_clustered.exit83.i.peel.i.i

_not_clustered.exit83.i.peel.i.i:                 ; preds = %_not_clustered.exit79.thread.i.peel.i.i
  %i.mc = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.md = load i32, ptr %i.ly, align 4, !tbaa !197
  %i.me = zext i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw [40 x i8], ptr %i.mc, i64 %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 28
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !156
  %.not66144.i.peel.i.i = icmp slt i32 %i.mh, 0
  %i.mi = select i1 %.not66144.i.peel.i.i, i32 %i.ma, i32 0
  %spec.select136.i.peel.i.i = add i32 %i.mi, %.1.i.peel.i.i
  br label %_not_clustered.exit83.thread.i.peel.i.i

_not_clustered.exit83.thread.i.peel.i.i:          ; preds = %_not_clustered.exit83.i.peel.i.i, %_not_clustered.exit79.thread.i.peel.i.i
  %.3.i.peel.i.i = phi i32 [ %.1.i.peel.i.i, %_not_clustered.exit79.thread.i.peel.i.i ], [ %spec.select136.i.peel.i.i, %_not_clustered.exit83.i.peel.i.i ] ; 3 uses
  br i1 %.not272.i.i, label %_not_clustered.exit87.thread.i.peel.i.i, label %bb.am

bb.am:                                            ; preds = %_not_clustered.exit83.thread.i.peel.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ly, i64 12
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !198 ; 2 uses
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %_not_clustered.exit87.thread.i.peel.i.i, label %_not_clustered.exit87.i.peel.i.i

_not_clustered.exit87.i.peel.i.i:                 ; preds = %bb.am
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.mn = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.mo = load i32, ptr %i.mm, align 4, !tbaa !197
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [40 x i8], ptr %i.mn, i64 %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 28
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !156
  %.not67145.i.peel.i.i = icmp slt i32 %i.ms, 0
  %i.mt = select i1 %.not67145.i.peel.i.i, i32 %i.mk, i32 0
  %spec.select137.i.peel.i.i = add i32 %i.mt, %.3.i.peel.i.i
  br label %_not_clustered.exit87.thread.i.peel.i.i

_not_clustered.exit87.thread.i.peel.i.i:          ; preds = %_not_clustered.exit87.i.peel.i.i, %bb.am, %_not_clustered.exit83.thread.i.peel.i.i, %bb.al, %_not_clustered.exit75.thread.i.peel.i.i
  %.4.i.peel.i.i = phi i32 [ %.3.i.peel.i.i, %bb.am ], [ %spec.select137.i.peel.i.i, %_not_clustered.exit87.i.peel.i.i ], [ %.3.i.peel.i.i, %_not_clustered.exit83.thread.i.peel.i.i ], [ %.1.i.peel.i.i, %bb.al ], [ %.1.i.peel.i.i, %_not_clustered.exit75.thread.i.peel.i.i ] ; 4 uses
  %i.mu = zext i32 %i.kz to i64
  %i.mv = icmp samesign ult i64 %i.lj, %i.mu
  br i1 %i.mv, label %bb.an, label %_can_form_cluster.exit.peel.i.i

bb.an:                                            ; preds = %_not_clustered.exit87.thread.i.peel.i.i
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.lj
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !195 ; 5 uses
  %.not68.i.peel.i.i = icmp eq ptr %i.mx, null
  br i1 %.not68.i.peel.i.i, label %_can_form_cluster.exit.peel.i.i, label %_not_clustered.exit91.thread.i.peel.i.i

_not_clustered.exit91.thread.i.peel.i.i:          ; preds = %bb.an
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !198 ; 2 uses
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %_not_clustered.exit95.thread.i.peel.i.i, label %_not_clustered.exit95.i.peel.i.i

_not_clustered.exit95.i.peel.i.i:                 ; preds = %_not_clustered.exit91.thread.i.peel.i.i
  %i.nb = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.nc = load i32, ptr %i.mx, align 4, !tbaa !197
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw [40 x i8], ptr %i.nb, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 28
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !156
  %.not70147.i.peel.i.i = icmp slt i32 %i.ng, 0
  %i.nh = select i1 %.not70147.i.peel.i.i, i32 %i.mz, i32 0
  %spec.select139.i.peel.i.i = add i32 %i.nh, %.4.i.peel.i.i
  br label %_not_clustered.exit95.thread.i.peel.i.i

_not_clustered.exit95.thread.i.peel.i.i:          ; preds = %_not_clustered.exit95.i.peel.i.i, %_not_clustered.exit91.thread.i.peel.i.i
  %.6.i.peel.i.i = phi i32 [ %.4.i.peel.i.i, %_not_clustered.exit91.thread.i.peel.i.i ], [ %spec.select139.i.peel.i.i, %_not_clustered.exit95.i.peel.i.i ] ; 3 uses
  br i1 %.not272.i.i, label %_can_form_cluster.exit.peel.i.i, label %bb.ao

bb.ao:                                            ; preds = %_not_clustered.exit95.thread.i.peel.i.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mx, i64 12
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !198 ; 2 uses
  %i.nk = icmp eq i32 %i.nj, 0
  br i1 %i.nk, label %_can_form_cluster.exit.peel.i.i, label %_not_clustered.exit99.i.peel.i.i

_not_clustered.exit99.i.peel.i.i:                 ; preds = %bb.ao
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.nm = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.nn = load i32, ptr %i.nl, align 4, !tbaa !197
  %i.no = zext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw [40 x i8], ptr %i.nm, i64 %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 28
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !156
  %.not71148.i.peel.i.i = icmp slt i32 %i.nr, 0
  %i.ns = select i1 %.not71148.i.peel.i.i, i32 %i.nj, i32 0
  %spec.select140.i.peel.i.i = add i32 %i.ns, %.6.i.peel.i.i
  br label %_can_form_cluster.exit.peel.i.i

_can_form_cluster.exit.peel.i.i:                  ; preds = %_not_clustered.exit99.i.peel.i.i, %bb.ao, %_not_clustered.exit95.thread.i.peel.i.i, %bb.an, %_not_clustered.exit87.thread.i.peel.i.i
  %.7.i.peel.i.i = phi i32 [ %.6.i.peel.i.i, %bb.ao ], [ %spec.select140.i.peel.i.i, %_not_clustered.exit99.i.peel.i.i ], [ %.6.i.peel.i.i, %_not_clustered.exit95.thread.i.peel.i.i ], [ %.4.i.peel.i.i, %bb.an ], [ %.4.i.peel.i.i, %_not_clustered.exit87.thread.i.peel.i.i ]
  %i.nt = load i32, ptr @db.6, align 8, !tbaa !271
  %.not100.peel.i.i = icmp ult i32 %.7.i.peel.i.i, %i.nt
  br i1 %.not100.peel.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_can_form_cluster.exit.peel.i.i
  call fastcc void @_add_expand_cluster(i32 noundef %i.lg, i32 noundef 0, i32 noundef %i.lc, i32 noundef 250)
  %i.nu = load i32, ptr @db.7, align 8, !tbaa !272
  %i.nv = add i32 %i.nu, 1                        ; 2 uses
  store i32 %i.nv, ptr @db.7, align 8, !tbaa !272
  %.pre196.i.i = load i32, ptr @db.4, align 8, !tbaa !192 ; 2 uses
  %.pre218.i.i = load ptr, ptr @db.1, align 8, !tbaa !191 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_can_form_cluster.exit.peel.i.i
  %.pre198.i.i = phi ptr [ %.pre218.i.i, %bb.ap ], [ %.pre198220.i.i, %_can_form_cluster.exit.peel.i.i ] ; 3 uses
  %i.nw = phi ptr [ %.pre218.i.i, %bb.ap ], [ %i.ky, %_can_form_cluster.exit.peel.i.i ]
  %i.nx = phi i32 [ %.pre196.i.i, %bb.ap ], [ %i.la, %_can_form_cluster.exit.peel.i.i ] ; 2 uses
  %i.ny = phi i32 [ %.pre196.i.i, %bb.ap ], [ %i.lb, %_can_form_cluster.exit.peel.i.i ] ; 3 uses
  %i.nz = phi i32 [ %i.nv, %bb.ap ], [ %i.lc, %_can_form_cluster.exit.peel.i.i ] ; 2 uses
  %i.oa = icmp ugt i32 %i.ny, 1
  br i1 %i.oa, label %.peel.next.i.i, label %.loopexit109.loopexit.i.i

.peel.next.i.i:                                   ; preds = %bb.aq, %bb.az
  %.pre198224.i.i = phi ptr [ %.pre198223.i.i, %bb.az ], [ %.pre198.i.i, %bb.aq ]
  %i.ob = phi i32 [ %i.sh, %bb.az ], [ %i.nx, %bb.aq ]
  %i.oc = phi ptr [ %i.si, %bb.az ], [ %.pre198.i.i, %bb.aq ] ; 4 uses
  %i.od = phi i32 [ %i.sj, %bb.az ], [ %i.nz, %bb.aq ] ; 2 uses
  %indvars.iv164.i.i = phi i64 [ %indvars.iv.next165.i.i, %bb.az ], [ 1, %bb.aq ] ; 5 uses
  %i.oe = phi i32 [ %i.sh, %bb.az ], [ %i.ny, %bb.aq ]
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv168.i.i
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !195 ; 2 uses
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %indvars.iv164.i.i ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !198 ; 2 uses
  %i.ok = getelementptr i8, ptr %i.oh, i64 -4
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !198 ; 2 uses
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %_not_clustered.exit.thread.i.i.i, label %_not_clustered.exit.i.i.i

_not_clustered.exit.i.i.i:                        ; preds = %.peel.next.i.i
  %i.on = getelementptr i8, ptr %i.oh, i64 -8
  %i.oo = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.op = load i32, ptr %i.on, align 4, !tbaa !197
  %i.oq = zext i32 %i.op to i64
  %i.or = getelementptr inbounds nuw [40 x i8], ptr %i.oo, i64 %i.oq
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 28
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !156
  %.not61141.i.i.i = icmp slt i32 %i.ot, 0
  %i.ou = select i1 %.not61141.i.i.i, i32 %i.ol, i32 0
  %spec.select.i.i.i = add i32 %i.ou, %i.oj
  br label %_not_clustered.exit.thread.i.i.i

_not_clustered.exit.thread.i.i.i:                 ; preds = %_not_clustered.exit.i.i.i, %.peel.next.i.i
  %.0.i.i.i = phi i32 [ %i.oj, %.peel.next.i.i ], [ %spec.select.i.i.i, %_not_clustered.exit.i.i.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@_view_map_changed_callback_wait:bb.a
  %i.ph = select i1 %.not62142.i.i.i, i32 %i.oz, i32 0
  %spec.select134.i.i.i = add i32 %i.ph, %.0.i.i.i
  br label %_not_clustered.exit75.thread.i.i.i

_not_clustered.exit75.thread.i.i.i:               ; preds = %_not_clustered.exit75.i.i.i, %bb.ar, %_not_clustered.exit.thread.i.i.i
  %.1.i.i.i = phi i32 [ %.0.i.i.i, %bb.ar ], [ %spec.select134.i.i.i, %_not_clustered.exit75.i.i.i ], [ %.0.i.i.i, %_not_clustered.exit.thread.i.i.i ] ; 4 uses
  br i1 %.not63.i.i.i, label %_not_clustered.exit87.thread.i.i.i, label %bb.as

bb.as:                                            ; preds = %_not_clustered.exit75.thread.i.i.i
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %i.li
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !195 ; 3 uses
  %.not64.i82.i.i = icmp eq ptr %i.pj, null
  br i1 %.not64.i82.i.i, label %_not_clustered.exit87.thread.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pk = getelementptr [8 x i8], ptr %i.pj, i64 %indvars.iv164.i.i ; 4 uses
  %i.pl = getelementptr i8, ptr %i.pk, i64 -4
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !198 ; 2 uses
  %i.pn = icmp eq i32 %i.pm, 0
  br i1 %i.pn, label %_not_clustered.exit79.thread.i.i.i, label %_not_clustered.exit79.i.i.i

_not_clustered.exit79.i.i.i:                      ; preds = %bb.at
  %i.po = getelementptr i8, ptr %i.pk, i64 -8
  %i.pp = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.pq = load i32, ptr %i.po, align 4, !tbaa !197
  %i.pr = zext i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [40 x i8], ptr %i.pp, i64 %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 28
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !156
  %.not65143.i.i.i = icmp slt i32 %i.pu, 0
  %i.pv = select i1 %.not65143.i.i.i, i32 %i.pm, i32 0
  %spec.select135.i.i.i = add i32 %i.pv, %.1.i.i.i
  br label %_not_clustered.exit79.thread.i.i.i

_not_clustered.exit79.thread.i.i.i:               ; preds = %_not_clustered.exit79.i.i.i, %bb.at
  %.2.i.i.i = phi i32 [ %.1.i.i.i, %bb.at ], [ %spec.select135.i.i.i, %_not_clustered.exit79.i.i.i ] ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pk, i64 4
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !198 ; 2 uses
  %i.py = icmp eq i32 %i.px, 0
  br i1 %i.py, label %_not_clustered.exit83.thread.i.i.i, label %_not_clustered.exit83.i.i.i

_not_clustered.exit83.i.i.i:                      ; preds = %_not_clustered.exit79.thread.i.i.i
  %i.pz = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.qa = load i32, ptr %i.pk, align 4, !tbaa !197
  %i.qb = zext i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw [40 x i8], ptr %i.pz, i64 %i.qb
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 28
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !156
  %.not66144.i.i.i = icmp slt i32 %i.qe, 0
  %i.qf = select i1 %.not66144.i.i.i, i32 %i.px, i32 0
  %spec.select136.i.i.i = add i32 %i.qf, %.2.i.i.i
  br label %_not_clustered.exit83.thread.i.i.i

_not_clustered.exit83.thread.i.i.i:               ; preds = %_not_clustered.exit83.i.i.i, %_not_clustered.exit79.thread.i.i.i
  %.3.i.i.i = phi i32 [ %.2.i.i.i, %_not_clustered.exit79.thread.i.i.i ], [ %spec.select136.i.i.i, %_not_clustered.exit83.i.i.i ] ; 3 uses
  br i1 %i.ow, label %bb.au, label %_not_clustered.exit87.thread.i.i.i

bb.au:                                            ; preds = %_not_clustered.exit83.thread.i.i.i
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %indvars.iv.next165.i.i ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 4
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !198 ; 2 uses
  %i.qj = icmp eq i32 %i.qi, 0
  br i1 %i.qj, label %_not_clustered.exit87.thread.i.i.i, label %_not_clustered.exit87.i.i.i

_not_clustered.exit87.i.i.i:                      ; preds = %bb.au
  %i.qk = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.ql = load i32, ptr %i.qg, align 4, !tbaa !197
  %i.qm = zext i32 %i.ql to i64
  %i.qn = getelementptr inbounds nuw [40 x i8], ptr %i.qk, i64 %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 28
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !156
  %.not67145.i.i.i = icmp slt i32 %i.qp, 0
  %i.qq = select i1 %.not67145.i.i.i, i32 %i.qi, i32 0
  %spec.select137.i.i.i = add i32 %i.qq, %.3.i.i.i
  br label %_not_clustered.exit87.thread.i.i.i

_not_clustered.exit87.thread.i.i.i:               ; preds = %_not_clustered.exit87.i.i.i, %bb.au, %_not_clustered.exit83.thread.i.i.i, %bb.as, %_not_clustered.exit75.thread.i.i.i
  %.4.i.i.i = phi i32 [ %.3.i.i.i, %bb.au ], [ %spec.select137.i.i.i, %_not_clustered.exit87.i.i.i ], [ %.3.i.i.i, %_not_clustered.exit83.thread.i.i.i ], [ %.1.i.i.i, %bb.as ], [ %.1.i.i.i, %_not_clustered.exit75.thread.i.i.i ] ; 4 uses
  %i.qr = load i32, ptr @db.3, align 4, !tbaa !193
  %i.qs = zext i32 %i.qr to i64
  %i.qt = icmp samesign ult i64 %i.lj, %i.qs
  br i1 %i.qt, label %bb.av, label %_can_form_cluster.exit.i.i

bb.av:                                            ; preds = %_not_clustered.exit87.thread.i.i.i
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %i.lj
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !195 ; 3 uses
  %.not68.i.i.i = icmp eq ptr %i.qv, null
  br i1 %.not68.i.i.i, label %_can_form_cluster.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.qw = getelementptr [8 x i8], ptr %i.qv, i64 %indvars.iv164.i.i ; 4 uses
  %i.qx = getelementptr i8, ptr %i.qw, i64 -4
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !198 ; 2 uses
  %i.qz = icmp eq i32 %i.qy, 0
  br i1 %i.qz, label %_not_clustered.exit91.thread.i.i.i, label %_not_clustered.exit91.i.i.i

_not_clustered.exit91.i.i.i:                      ; preds = %bb.aw
  %i.ra = getelementptr i8, ptr %i.qw, i64 -8
  %i.rb = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.rc = load i32, ptr %i.ra, align 4, !tbaa !197
  %i.rd = zext i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw [40 x i8], ptr %i.rb, i64 %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 28
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !156
  %.not69146.i.i.i = icmp slt i32 %i.rg, 0
  %i.rh = select i1 %.not69146.i.i.i, i32 %i.qy, i32 0
  %spec.select138.i.i.i = add i32 %i.rh, %.4.i.i.i
  br label %_not_clustered.exit91.thread.i.i.i

_not_clustered.exit91.thread.i.i.i:               ; preds = %_not_clustered.exit91.i.i.i, %bb.aw
  %.5.i.i.i = phi i32 [ %.4.i.i.i, %bb.aw ], [ %spec.select138.i.i.i, %_not_clustered.exit91.i.i.i ] ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !198 ; 2 uses
  %i.rk = icmp eq i32 %i.rj, 0
  br i1 %i.rk, label %_not_clustered.exit95.thread.i.i.i, label %_not_clustered.exit95.i.i.i

_not_clustered.exit95.i.i.i:                      ; preds = %_not_clustered.exit91.thread.i.i.i
  %i.rl = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.rm = load i32, ptr %i.qw, align 4, !tbaa !197
  %i.rn = zext i32 %i.rm to i64
  %i.ro = getelementptr inbounds nuw [40 x i8], ptr %i.rl, i64 %i.rn
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 28
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !156
  %.not70147.i.i.i = icmp slt i32 %i.rq, 0
  %i.rr = select i1 %.not70147.i.i.i, i32 %i.rj, i32 0
  %spec.select139.i.i.i = add i32 %i.rr, %.5.i.i.i
  br label %_not_clustered.exit95.thread.i.i.i

_not_clustered.exit95.thread.i.i.i:               ; preds = %_not_clustered.exit95.i.i.i, %_not_clustered.exit91.thread.i.i.i
  %.6.i.i.i = phi i32 [ %.5.i.i.i, %_not_clustered.exit91.thread.i.i.i ], [ %spec.select139.i.i.i, %_not_clustered.exit95.i.i.i ] ; 3 uses
  br i1 %i.ow, label %bb.ax, label %_can_form_cluster.exit.i.i

bb.ax:                                            ; preds = %_not_clustered.exit95.thread.i.i.i
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.next165.i.i ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 4
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !198 ; 2 uses
  %i.rv = icmp eq i32 %i.ru, 0
  br i1 %i.rv, label %_can_form_cluster.exit.i.i, label %_not_clustered.exit99.i.i.i

_not_clustered.exit99.i.i.i:                      ; preds = %bb.ax
  %i.rw = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.rx = load i32, ptr %i.rs, align 4, !tbaa !197
  %i.ry = zext i32 %i.rx to i64
  %i.rz = getelementptr inbounds nuw [40 x i8], ptr %i.rw, i64 %i.ry
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 28
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !156
  %.not71148.i.i.i = icmp slt i32 %i.sb, 0
  %i.sc = select i1 %.not71148.i.i.i, i32 %i.ru, i32 0
  %spec.select140.i.i.i = add i32 %i.sc, %.6.i.i.i
  br label %_can_form_cluster.exit.i.i

_can_form_cluster.exit.i.i:                       ; preds = %_not_clustered.exit99.i.i.i, %bb.ax, %_not_clustered.exit95.thread.i.i.i, %bb.av, %_not_clustered.exit87.thread.i.i.i
  %.7.i.i.i = phi i32 [ %.6.i.i.i, %bb.ax ], [ %spec.select140.i.i.i, %_not_clustered.exit99.i.i.i ], [ %.6.i.i.i, %_not_clustered.exit95.thread.i.i.i ], [ %.4.i.i.i, %bb.av ], [ %.4.i.i.i, %_not_clustered.exit87.thread.i.i.i ]
  %i.sd = load i32, ptr @db.6, align 8, !tbaa !271
  %.not100.i.i = icmp ult i32 %.7.i.i.i, %i.sd
  br i1 %.not100.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_can_form_cluster.exit.i.i
  %i.se = trunc nuw i64 %indvars.iv164.i.i to i32
  call fastcc void @_add_expand_cluster(i32 noundef %i.lg, i32 noundef %i.se, i32 noundef %i.od, i32 noundef 250)
  %i.sf = load i32, ptr @db.7, align 8, !tbaa !272
  %i.sg = add i32 %i.sf, 1                        ; 2 uses
  store i32 %i.sg, ptr @db.7, align 8, !tbaa !272
  %.pre197.i.i = load ptr, ptr @db.1, align 8, !tbaa !191 ; 2 uses
  %.pre199.i.i = load i32, ptr @db.4, align 8, !tbaa !192
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_can_form_cluster.exit.i.i
  %.pre198223.i.i = phi ptr [ %.pre198224.i.i, %_can_form_cluster.exit.i.i ], [ %.pre197.i.i, %bb.ay ] ; 2 uses
  %i.sh = phi i32 [ %i.ob, %_can_form_cluster.exit.i.i ], [ %.pre199.i.i, %bb.ay ] ; 5 uses
  %i.si = phi ptr [ %i.oc, %_can_form_cluster.exit.i.i ], [ %.pre197.i.i, %bb.ay ] ; 2 uses
  %i.sj = phi i32 [ %i.od, %_can_form_cluster.exit.i.i ], [ %i.sg, %bb.ay ] ; 2 uses
  %i.sk = zext i32 %i.sh to i64
  %i.sl = icmp samesign ult i64 %indvars.iv.next165.i.i, %i.sk
  br i1 %i.sl, label %.peel.next.i.i, label %.loopexit109.loopexit.i.i, !llvm.loop !257

.loopexit109.loopexit.i.i:                        ; preds = %bb.az, %bb.aq
  %.pre198222.i.i = phi ptr [ %.pre198.i.i, %bb.aq ], [ %.pre198223.i.i, %bb.az ]
  %i.sm = phi ptr [ %i.nw, %bb.aq ], [ %i.si, %bb.az ]
  %i.sn = phi i32 [ %i.nx, %bb.aq ], [ %i.sh, %bb.az ]
  %i.so = phi i32 [ %i.ny, %bb.aq ], [ %i.sh, %bb.az ] ; 2 uses
  %i.sp = phi i32 [ %i.nz, %bb.aq ], [ %i.sj, %bb.az ]
  %.pre200.i.i = load i32, ptr @db.3, align 4, !tbaa !193
  br label %.loopexit109.i.i

.loopexit109.i.i:                                 ; preds = %.loopexit109.loopexit.i.i, %.preheader108.i.i, %.lr.ph123.i.i
  %.pre198221.i.i = phi ptr [ %.pre198222.i.i, %.loopexit109.loopexit.i.i ], [ %.pre198220.i.i, %.preheader108.i.i ], [ %.pre198220.i.i, %.lr.ph123.i.i ] ; 4 uses
  %i.sq = phi ptr [ %i.sm, %.loopexit109.loopexit.i.i ], [ %i.ky, %.preheader108.i.i ], [ %i.ky, %.lr.ph123.i.i ]
  %i.sr = phi i32 [ %.pre200.i.i, %.loopexit109.loopexit.i.i ], [ %i.kz, %.preheader108.i.i ], [ %i.kz, %.lr.ph123.i.i ] ; 4 uses
  %i.ss = phi i32 [ %i.sn, %.loopexit109.loopexit.i.i ], [ %i.la, %.preheader108.i.i ], [ %i.la, %.lr.ph123.i.i ] ; 3 uses
  %i.st = phi i32 [ %i.so, %.loopexit109.loopexit.i.i ], [ %i.lb, %.preheader108.i.i ], [ %i.lb, %.lr.ph123.i.i ]
  %i.su = phi i32 [ %i.sp, %.loopexit109.loopexit.i.i ], [ %i.lc, %.preheader108.i.i ], [ %i.lc, %.lr.ph123.i.i ]
  %i.sv = phi i32 [ %i.so, %.loopexit109.loopexit.i.i ], [ 0, %.preheader108.i.i ], [ %i.ld, %.lr.ph123.i.i ]
  %indvars.iv.next169.i.i = add nuw nsw i64 %indvars.iv168.i.i, 1 ; 2 uses
  %i.sw = zext i32 %i.sr to i64
  %i.sx = icmp samesign ult i64 %indvars.iv.next169.i.i, %i.sw
  br i1 %i.sx, label %.lr.ph123.i.i, label %.preheader107.i.i

.preheader106.i.i:                                ; preds = %.preheader107.i.i, %._crit_edge.i.i
  %.pre202226.i.i = phi ptr [ %.pre202227.i.i, %._crit_edge.i.i ], [ %.pre198221.i.i, %.preheader107.i.i ] ; 2 uses
  %i.sy = phi ptr [ %i.uo, %._crit_edge.i.i ], [ %.pre198221.i.i, %.preheader107.i.i ] ; 3 uses
  %i.sz = phi i32 [ %i.up, %._crit_edge.i.i ], [ %i.sr, %.preheader107.i.i ] ; 2 uses
  %i.ta = phi i32 [ %.fr153.i.i, %._crit_edge.i.i ], [ %i.ss, %.preheader107.i.i ] ; 2 uses
  %i.tb = phi i32 [ %i.ur, %._crit_edge.i.i ], [ %i.ss, %.preheader107.i.i ] ; 2 uses
  %i.tc = phi i32 [ %i.us, %._crit_edge.i.i ], [ 1, %.preheader107.i.i ]
  %.065129.i.i = phi i32 [ %i.ut, %._crit_edge.i.i ], [ 0, %.preheader107.i.i ]
  %.not151.i.i = icmp eq i32 %i.tc, 0
  br i1 %.not151.i.i, label %._crit_edge.i.i, label %.lr.ph128.i.i

.preheader103.i.i:                                ; preds = %._crit_edge.i.i
  %.not152.i.i = icmp eq i32 %i.up, 0
  br i1 %.not152.i.i, label %_dbscan.exit.i, label %.lr.ph140.i.i

.lr.ph140.i.i:                                    ; preds = %.preheader103.i.i
  %.not154.i.i = icmp eq i32 %.fr153.i.i, 0
  %i.td = load ptr, ptr @db.0, align 8            ; 6 uses
  br i1 %.not154.i.i, label %.lr.ph140.i..lr.ph142.i_crit_edge.i, label %.lr.ph140.split.us.preheader.i.i

.lr.ph140.i..lr.ph142.i_crit_edge.i:              ; preds = %.lr.ph140.i.i
  %.pre.i = zext i32 %i.up to i64
  br label %.lr.ph142.i.i

.lr.ph140.split.us.preheader.i.i:                 ; preds = %.lr.ph140.i.i
  %db.7.promoted132.i.i = load i32, ptr @db.7, align 8
  %wide.trip.count184.i.i = zext i32 %i.up to i64 ; 2 uses
  %wide.trip.count.i.i = zext i32 %.fr153.i.i to i64
  br label %.lr.ph140.split.us.i.i

.lr.ph140.split.us.i.i:                           ; preds = %..loopexit_crit_edge.us.i.i, %.lr.ph140.split.us.preheader.i.i
  %indvars.iv181.i.i = phi i64 [ 0, %.lr.ph140.split.us.preheader.i.i ], [ %indvars.iv.next182.i.i, %..loopexit_crit_edge.us.i.i ] ; 2 uses
  %db.7.promoted137138.us.i.i = phi i32 [ %db.7.promoted132.i.i, %.lr.ph140.split.us.preheader.i.i ], [ %db.7.promoted136.us.i.i, %..loopexit_crit_edge.us.i.i ] ; 3 uses
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %.pre202227.i.i, i64 %indvars.iv181.i.i
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !195 ; 2 uses
  %.not72.us.i.i = icmp eq ptr %i.tf, null
  br i1 %.not72.us.i.i, label %..loopexit_crit_edge.us.i.i, label %.preheader102.us.i.i

.preheader102.us.i.i:                             ; preds = %.lr.ph140.split.us.i.i, %_add_expand_cluster.exit.us.i.i
  %indvars.iv177.i.i = phi i64 [ %indvars.iv.next178.i.i, %_add_expand_cluster.exit.us.i.i ], [ 0, %.lr.ph140.split.us.i.i ] ; 2 uses
  %db.7.promoted135.us.i.i = phi i32 [ %db.7.promoted134.us.i.i, %_add_expand_cluster.exit.us.i.i ], [ %db.7.promoted137138.us.i.i, %.lr.ph140.split.us.i.i ] ; 4 uses
  %i.tg = phi i32 [ %i.un, %_add_expand_cluster.exit.us.i.i ], [ %db.7.promoted137138.us.i.i, %.lr.ph140.split.us.i.i ] ; 6 uses
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %indvars.iv177.i.i ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !198 ; 2 uses
  %i.tk = icmp ugt i32 %i.tj, 1
  br i1 %i.tk, label %bb.ba, label %_identical_positions.exit.thread.us.i.i

bb.ba:                                            ; preds = %.preheader102.us.i.i
  %i.tl = load i32, ptr %i.th, align 4, !tbaa !197 ; 3 uses
  %i.tm = zext i32 %i.tl to i64                   ; 2 uses
  %i.tn = getelementptr inbounds nuw [40 x i8], ptr %i.td, i64 %i.tm ; 3 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 28
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !156
  %i.tq = icmp eq i32 %i.tp, -1
  br i1 %i.tq, label %bb.bb, label %_add_expand_cluster.exit.us.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.tr = load double, ptr %i.tn, align 8, !tbaa !269
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !270
  br label %bb.bc

bb.bc:                                            ; preds = %bb.be, %bb.bb
  %i.tu = phi i64 [ %i.tm, %bb.bb ], [ %i.tw, %bb.be ]
  %i.tv = getelementptr inbounds nuw [40 x i8], ptr %i.td, i64 %i.tu
  %.0.in.i.us.i.i = getelementptr inbounds nuw i8, ptr %i.tv, i64 24
  %.0.i83.us.i.i = load i32, ptr %.0.in.i.us.i.i, align 8, !tbaa !273 ; 2 uses
  %.not.i84.us.i.i = icmp eq i32 %.0.i83.us.i.i, -1
  br i1 %.not.i84.us.i.i, label %_identical_positions.exit.us.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.tw = zext i32 %.0.i83.us.i.i to i64          ; 2 uses
  %i.tx = getelementptr inbounds nuw [40 x i8], ptr %i.td, i64 %i.tw ; 2 uses
  %i.ty = load double, ptr %i.tx, align 8, !tbaa !269
  %i.tz = fcmp reassoc nsz arcp contract afn une double %i.ty, %i.tr
  br i1 %i.tz, label %_identical_positions.exit.thread.us.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.ub = load double, ptr %i.ua, align 8, !tbaa !270
  %i.uc = fcmp reassoc nsz arcp contract afn une double %i.ub, %i.tt
  br i1 %i.uc, label %_identical_positions.exit.thread.us.i.i, label %bb.bc

_identical_positions.exit.thread.us.i.i:          ; preds = %bb.be, %bb.bd, %.preheader102.us.i.i
  %.not74.us.i.i = icmp eq i32 %i.tj, 0
  br i1 %.not74.us.i.i, label %_add_expand_cluster.exit.us.i.i, label %.thread.us.i.i

.thread.us.i.i:                                   ; preds = %_identical_positions.exit.thread.us.i.i
  %.pre205.i.i.a = load i32, ptr %i.th, align 4, !tbaa !197 ; 3 uses
  %.phi.trans.insert.i.i = zext i32 %.pre205.i.i.a to i64
  %.phi.trans.insert206.i.i = getelementptr inbounds nuw [40 x i8], ptr %i.td, i64 %.phi.trans.insert.i.i
  %.phi.trans.insert207.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert206.i.i, i64 28
  %.pre208.i.i.a = load i32, ptr %.phi.trans.insert207.i.i, align 4, !tbaa !156
  %i.ud = icmp ne i32 %.pre208.i.i.a, -1
  %.not93.i90.us.i.i = icmp eq i32 %.pre205.i.i.a, -1
  %or.cond.us.i.i = or i1 %.not93.i90.us.i.i, %i.ud
  br i1 %or.cond.us.i.i, label %_add_expand_cluster.exit.us.i.i, label %.lr.ph.i91.us.i.i

.lr.ph.i91.us.i.i:                                ; preds = %.thread.us.i.i, %.lr.ph.i91.us.i.i
  %.05494.i92.us.i.i = phi i32 [ %.054.i93.us.i.i, %.lr.ph.i91.us.i.i ], [ %.pre205.i.i.a, %.thread.us.i.i ]
  %i.ue = zext i32 %.05494.i92.us.i.i to i64
  %i.uf = getelementptr inbounds nuw [40 x i8], ptr %i.td, i64 %i.ue ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 28
  store i32 -2, ptr %i.ug, align 4, !tbaa !156
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uf, i64 24
  %.054.i93.us.i.i = load i32, ptr %i.uh, align 4, !tbaa !131 ; 2 uses
  %.not.i94.us.i.i = icmp eq i32 %.054.i93.us.i.i, -1
  br i1 %.not.i94.us.i.i, label %_add_expand_cluster.exit.us.i.i, label %.lr.ph.i91.us.i.i

_identical_positions.exit.us.i.i:                 ; preds = %bb.bc
  %i.ui = add i32 %i.tg, 1                        ; 5 uses
  store i32 %i.ui, ptr @db.7, align 8, !tbaa !272
  %.not93.i.us.i.i = icmp eq i32 %i.tl, -1
  br i1 %.not93.i.us.i.i, label %_add_expand_cluster.exit.us.i.i, label %.lr.ph.i86.us.i.i

.lr.ph.i86.us.i.i:                                ; preds = %_identical_positions.exit.us.i.i, %.lr.ph.i86.us.i.i
  %.05494.i.us.i.i = phi i32 [ %.054.i.us.i.i, %.lr.ph.i86.us.i.i ], [ %i.tl, %_identical_positions.exit.us.i.i ]
  %i.uj = zext i32 %.05494.i.us.i.i to i64
  %i.uk = getelementptr inbounds nuw [40 x i8], ptr %i.td, i64 %i.uj ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 28
  store i32 %i.tg, ptr %i.ul, align 4, !tbaa !156
  %i.um = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  %.054.i.us.i.i = load i32, ptr %i.um, align 4, !tbaa !131 ; 2 uses
  %.not.i87.us.i.i = icmp eq i32 %.054.i.us.i.i, -1
  br i1 %.not.i87.us.i.i, label %_add_expand_cluster.exit.us.i.i, label %.lr.ph.i86.us.i.i

_add_expand_cluster.exit.us.i.i:                  ; preds = %.lr.ph.i91.us.i.i, %.lr.ph.i86.us.i.i, %_identical_positions.exit.us.i.i, %.thread.us.i.i, %_identical_positions.exit.thread.us.i.i, %bb.ba
  %db.7.promoted134.us.i.i = phi i32 [ %db.7.promoted135.us.i.i, %_identical_positions.exit.thread.us.i.i ], [ %i.ui, %.lr.ph.i86.us.i.i ], [ %i.ui, %_identical_positions.exit.us.i.i ], [ %db.7.promoted135.us.i.i, %.thread.us.i.i ], [ %db.7.promoted135.us.i.i, %bb.ba ], [ %db.7.promoted135.us.i.i, %.lr.ph.i91.us.i.i ] ; 2 uses
  %i.un = phi i32 [ %i.tg, %_identical_positions.exit.thread.us.i.i ], [ %i.ui, %.lr.ph.i86.us.i.i ], [ %i.ui, %_identical_positions.exit.us.i.i ], [ %i.tg, %.thread.us.i.i ], [ %i.tg, %bb.ba ], [ %i.tg, %.lr.ph.i91.us.i.i ]
  %indvars.iv.next178.i.i = add nuw nsw i64 %indvars.iv177.i.i, 1 ; 2 uses
  %exitcond180.not.i.i = icmp eq i64 %indvars.iv.next178.i.i, %wide.trip.count.i.i
  br i1 %exitcond180.not.i.i, label %..loopexit_crit_edge.us.i.i, label %.preheader102.us.i.i

..loopexit_crit_edge.us.i.i:                      ; preds = %_add_expand_cluster.exit.us.i.i, %.lr.ph140.split.us.i.i
  %db.7.promoted136.us.i.i = phi i32 [ %db.7.promoted137138.us.i.i, %.lr.ph140.split.us.i.i ], [ %db.7.promoted134.us.i.i, %_add_expand_cluster.exit.us.i.i ]
  %indvars.iv.next182.i.i = add nuw nsw i64 %indvars.iv181.i.i, 1 ; 2 uses
  %exitcond185.not.i.i = icmp eq i64 %indvars.iv.next182.i.i, %wide.trip.count184.i.i
  br i1 %exitcond185.not.i.i, label %.lr.ph142.i.i, label %.lr.ph140.split.us.i.i

._crit_edge.i.i:                                  ; preds = %.loopexit105.i.i, %.preheader106.i.i
  %.pre202227.i.i = phi ptr [ %.pre202226.i.i, %.preheader106.i.i ], [ %.pre202229.i.i, %.loopexit105.i.i ] ; 5 uses
  %i.uo = phi ptr [ %i.sy, %.preheader106.i.i ], [ %i.vv, %.loopexit105.i.i ]
  %i.up = phi i32 [ %i.sz, %.preheader106.i.i ], [ %i.vw, %.loopexit105.i.i ] ; 4 uses
  %i.uq = phi i32 [ %i.ta, %.preheader106.i.i ], [ %i.vx, %.loopexit105.i.i ]
  %i.ur = phi i32 [ %i.tb, %.preheader106.i.i ], [ %i.vy, %.loopexit105.i.i ]
  %i.us = phi i32 [ 0, %.preheader106.i.i ], [ %i.vw, %.loopexit105.i.i ]
  %.fr153.i.i = freeze i32 %i.uq                  ; 3 uses
  %i.ut = add nuw nsw i32 %.065129.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ut, 20
  br i1 %exitcond.not.i.i, label %.preheader103.i.i, label %.preheader106.i.i, !llvm.loop !258

.lr.ph128.i.i:                                    ; preds = %.preheader106.i.i, %.loopexit105.i.i
  %.pre202.i.i = phi ptr [ %.pre202229.i.i, %.loopexit105.i.i ], [ %.pre202226.i.i, %.preheader106.i.i ] ; 3 uses
  %i.uu = phi ptr [ %i.vv, %.loopexit105.i.i ], [ %i.sy, %.preheader106.i.i ]
  %i.uv = phi i32 [ %i.vw, %.loopexit105.i.i ], [ %i.sz, %.preheader106.i.i ]
  %i.uw = phi i32 [ %i.vx, %.loopexit105.i.i ], [ %i.ta, %.preheader106.i.i ] ; 2 uses
  %i.ux = phi i32 [ %i.vy, %.loopexit105.i.i ], [ %i.tb, %.preheader106.i.i ] ; 2 uses
  %12 = phi ptr [ %13, %.loopexit105.i.i ], [ %i.sy, %.preheader106.i.i ] ; 2 uses
  %indvars.iv174.i.i = phi i64 [ %indvars.iv.next175.i.i, %.loopexit105.i.i ], [ 0, %.preheader106.i.i ] ; 4 uses
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv174.i.i
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !195
  %.not75.i.i = icmp ne ptr %i.uz, null
  %i.va = icmp ne i32 %i.ux, 0
  %or.cond146.i.i = select i1 %.not75.i.i, i1 %i.va, i1 false
  br i1 %or.cond146.i.i, label %.lr.ph125.preheader.i.i, label %.loopexit105.i.i

.lr.ph125.preheader.i.i:                          ; preds = %.lr.ph128.i.i
  %i.vb = trunc nuw i64 %indvars.iv174.i.i to i32
  br label %.lr.ph125.i.i

.lr.ph125.i.i:                                    ; preds = %bb.bh, %.lr.ph125.preheader.i.i
  %.pre202230.i.i = phi ptr [ %.pre202.i.i, %.lr.ph125.preheader.i.i ], [ %.pre202231.i.i, %bb.bh ] ; 2 uses
  %i.vc = phi i32 [ %i.uw, %.lr.ph125.preheader.i.i ], [ %i.vr, %bb.bh ] ; 2 uses
  %i.vd = phi ptr [ %.pre202.i.i, %.lr.ph125.preheader.i.i ], [ %i.vs, %bb.bh ] ; 3 uses
  %indvars.iv171.i.i = phi i64 [ 0, %.lr.ph125.preheader.i.i ], [ %indvars.iv.next172.i.i, %bb.bh ] ; 3 uses
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %indvars.iv174.i.i
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !195
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.vf, i64 %indvars.iv171.i.i ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !198
  %.not76.i.i = icmp eq i32 %i.vi, 0
  br i1 %.not76.i.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph125.i.i
  %i.vj = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.vk = load i32, ptr %i.vg, align 4, !tbaa !197
  %i.vl = zext i32 %i.vk to i64
  %i.vm = getelementptr inbounds nuw [40 x i8], ptr %i.vj, i64 %i.vl
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 28
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !156 ; 2 uses
  %i.vp = icmp sgt i32 %i.vo, -1
  br i1 %i.vp, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.vq = trunc nuw i64 %indvars.iv171.i.i to i32
  call fastcc void @_add_expand_cluster(i32 noundef %i.vb, i32 noundef %i.vq, i32 noundef %i.vo, i32 noundef -1)
  %.pre201.i.i = load ptr, ptr @db.1, align 8, !tbaa !191 ; 2 uses
  %.pre203.i.i.a = load i32, ptr @db.4, align 8, !tbaa !192
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %.lr.ph125.i.i
  %.pre202231.i.i = phi ptr [ %.pre201.i.i, %bb.bg ], [ %.pre202230.i.i, %bb.bf ], [ %.pre202230.i.i, %.lr.ph125.i.i ] ; 2 uses
  %i.vr = phi i32 [ %.pre203.i.i.a, %bb.bg ], [ %i.vc, %bb.bf ], [ %i.vc, %.lr.ph125.i.i ] ; 4 uses
  %i.vs = phi ptr [ %.pre201.i.i, %bb.bg ], [ %i.vd, %bb.bf ], [ %i.vd, %.lr.ph125.i.i ] ; 3 uses
  %indvars.iv.next172.i.i = add nuw nsw i64 %indvars.iv171.i.i, 1 ; 2 uses
  %i.vt = zext i32 %i.vr to i64
  %i.vu = icmp samesign ult i64 %indvars.iv.next172.i.i, %i.vt
  br i1 %i.vu, label %.lr.ph125.i.i, label %.loopexit105.loopexit.i.i

.loopexit105.loopexit.i.i:                        ; preds = %bb.bh
  %.pre204.i.i = load i32, ptr @db.3, align 4, !tbaa !193
  br label %.loopexit105.i.i

.loopexit105.i.i:                                 ; preds = %.loopexit105.loopexit.i.i, %.lr.ph128.i.i
  %.pre202229.i.i = phi ptr [ %.pre202231.i.i, %.loopexit105.loopexit.i.i ], [ %.pre202.i.i, %.lr.ph128.i.i ] ; 2 uses
  %i.vv = phi ptr [ %i.vs, %.loopexit105.loopexit.i.i ], [ %i.uu, %.lr.ph128.i.i ] ; 2 uses
  %i.vw = phi i32 [ %.pre204.i.i, %.loopexit105.loopexit.i.i ], [ %i.uv, %.lr.ph128.i.i ] ; 4 uses
  %i.vx = phi i32 [ %i.vr, %.loopexit105.loopexit.i.i ], [ %i.uw, %.lr.ph128.i.i ] ; 2 uses
  %i.vy = phi i32 [ %i.vr, %.loopexit105.loopexit.i.i ], [ %i.ux, %.lr.ph128.i.i ] ; 2 uses
  %13 = phi ptr [ %i.vs, %.loopexit105.loopexit.i.i ], [ %12, %.lr.ph128.i.i ]
  %indvars.iv.next175.i.i = add nuw nsw i64 %indvars.iv174.i.i, 1 ; 2 uses
  %i.vz = zext i32 %i.vw to i64
  %i.wa = icmp samesign ult i64 %indvars.iv.next175.i.i, %i.vz
  br i1 %i.wa, label %.lr.ph128.i.i, label %._crit_edge.i.i

.lr.ph142.i.i:                                    ; preds = %..loopexit_crit_edge.us.i.i, %.lr.ph140.i..lr.ph142.i_crit_edge.i
  %wide.trip.count189.i.pre-phi.i = phi i64 [ %.pre.i, %.lr.ph140.i..lr.ph142.i_crit_edge.i ], [ %wide.trip.count184.i.i, %..loopexit_crit_edge.us.i.i ]
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bk, %.lr.ph142.i.i
  %indvars.iv186.i.i = phi i64 [ 0, %.lr.ph142.i.i ], [ %indvars.iv.next187.i.i, %bb.bk ] ; 2 uses
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %.pre202227.i.i, i64 %indvars.iv186.i.i
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !195 ; 2 uses
  %.not.i214.i = icmp eq ptr %i.wc, null
  br i1 %.not.i214.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @free(ptr noundef nonnull %i.wc) #23
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %indvars.iv.next187.i.i = add nuw nsw i64 %indvars.iv186.i.i, 1 ; 2 uses
  %exitcond190.not.i.i = icmp eq i64 %indvars.iv.next187.i.i, %wide.trip.count189.i.pre-phi.i
  br i1 %exitcond190.not.i.i, label %_dbscan.exit.i, label %bb.bi

_dbscan.exit.i:                                   ; preds = %bb.bk, %.preheader103.i.i, %.preheader107.i.i, %.preheader110.i.i, %_bin_points.exit.i.i
  %.pre209280287.i.i = phi ptr [ %i.hj, %_bin_points.exit.i.i ], [ %.pre191211.i.i, %.preheader110.i.i ], [ %.pre202227.i.i, %.preheader103.i.i ], [ %.pre198221.i.i, %.preheader107.i.i ], [ %.pre202227.i.i, %bb.bk ]
  call void @free(ptr noundef %.pre209280287.i.i) #23
  store ptr null, ptr @db.1, align 8, !tbaa !191
  %i.wd = load i32, ptr @db.7, align 8, !tbaa !272
  call void @dt_show_times(ptr noundef nonnull %7, ptr noundef nonnull @.str.60) #23
  %i.we = add nsw i32 %i.wd, 1
  %i.wf = sext i32 %i.we to i64
  %i.wg = call noalias ptr @calloc(i64 noundef %i.wf, i64 noundef 4) #24 ; 2 uses
  %i.wh = call ptr @dt_act_on_get_images(i32 noundef 0, i32 noundef 0, i32 noundef 0) #23 ; 5 uses
  %.not203.i = icmp eq ptr %i.wh, null            ; 2 uses
  %xtraiter = and i64 %i.dh, 1
  %i.wi = icmp eq i32 %.0173.i, 1
  %unroll_iter = and i64 %i.dh, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod229 = trunc i32 %.0173.i to i1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.cj, %_dbscan.exit.i
  %indvars.iv282.i = phi i64 [ 0, %_dbscan.exit.i ], [ %indvars.iv.next283.i, %bb.cj ] ; 2 uses
  %i.wj = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv282.i ; 8 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 28
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !156 ; 7 uses
  %i.wm = icmp eq i32 %i.wl, -2
  br i1 %i.wm, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.wn = call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #24 ; 9 uses
  %.not207.i = icmp eq ptr %i.wn, null
  br i1 %.not207.i, label %bb.cj, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wj, i64 32
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !158 ; 2 uses
  store i32 %i.wp, ptr %i.wn, align 8, !tbaa !151
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 24
  store i32 -2, ptr %i.wq, align 8, !tbaa !157
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wn, i64 28
  store i32 1, ptr %i.wr, align 4, !tbaa !152
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.wt = load <2 x double>, ptr %i.wj, align 8, !tbaa !135
  %i.wu = fmul reassoc nsz arcp contract afn <2 x double> %i.wt, splat (double f0x404CA5DC1A63C1F8)
  %i.wv = shufflevector <2 x double> %i.wu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.wv, ptr %i.ws, align 8, !tbaa !135
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wn, i64 32
  store i32 1, ptr %i.ww, align 8, !tbaa !200
  br i1 %.not203.i, label %.sink.split.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.wx = sext i32 %i.wp to i64
  %i.wy = inttoptr i64 %i.wx to ptr
  %i.wz = call ptr @g_list_find(ptr noundef nonnull %i.wh, ptr noundef %i.wy) #23
  %.not209.i = icmp ne ptr %i.wz, null
  %i.xa = zext i1 %.not209.i to i32
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wn, i64 36
  store i32 %i.xa, ptr %i.xb, align 4, !tbaa !201
  br label %.sink.split.i

bb.bp:                                            ; preds = %bb.bl
  %i.xc = sext i32 %i.wl to i64
  %i.xd = getelementptr inbounds [4 x i8], ptr %i.wg, i64 %i.xc ; 2 uses
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !131
  %.not201.i = icmp eq i32 %i.xe, 0
  br i1 %.not201.i, label %bb.bq, label %bb.cj

bb.bq:                                            ; preds = %bb.bp
  store i32 1, ptr %i.xd, align 4, !tbaa !131
  %i.xf = call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #24 ; 12 uses
  %.not202.i = icmp eq ptr %i.xf, null
  br i1 %.not202.i, label %bb.cj, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wj, i64 32
  %i.xh = load i32, ptr %i.xg, align 8, !tbaa !158 ; 2 uses
  store i32 %i.xh, ptr %i.xf, align 8, !tbaa !151
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 24
  store i32 %i.wl, ptr %i.xi, align 8, !tbaa !157
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xf, i64 32 ; 6 uses
  store i32 1, ptr %i.xj, align 8, !tbaa !200
  br i1 %.not203.i, label %.split.us.preheader.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.br
  %i.xk = sext i32 %i.xh to i64
  %i.xl = inttoptr i64 %i.xk to ptr
  %i.xm = call ptr @g_list_find(ptr noundef nonnull %i.wh, ptr noundef %i.xl) #23
  %i.xn = icmp ne ptr %i.xm, null
  %i.xo = zext i1 %i.xn to i32
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xf, i64 36 ; 3 uses
  store i32 %i.xo, ptr %i.xp, align 4, !tbaa !201
  %i.xq = load double, ptr %i.wj, align 8, !tbaa !269
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !270
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xf, i64 28 ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xf, i64 8 ; 4 uses
  br label %.split.i

.split.us.preheader.i:                            ; preds = %bb.br
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xf, i64 36
  store i32 0, ptr %i.xv, align 4, !tbaa !201
  %i.xw = load double, ptr %i.wj, align 8, !tbaa !269 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !270 ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xf, i64 28 ; 3 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xf, i64 8 ; 8 uses
  br i1 %i.wi, label %.split.us.i.epil.preheader, label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.preheader.i, %bb.by
  %i.yb = phi i32 [ %i.zg, %bb.by ], [ 1, %.split.us.preheader.i ] ; 2 uses
  %i.yc = phi i32 [ %i.zh, %bb.by ], [ 0, %.split.us.preheader.i ] ; 2 uses
  %indvars.iv275.i = phi i64 [ %indvars.iv.next276.i.1, %bb.by ], [ 0, %.split.us.preheader.i ] ; 3 uses
  %i.yd = phi <2 x double> [ %i.zi, %bb.by ], [ zeroinitializer, %.split.us.preheader.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.by ], [ 0, %.split.us.preheader.i ]
  %i.ye = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv275.i ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 28
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !156
  %i.yh = icmp eq i32 %i.yg, %i.wl
  br i1 %i.yh, label %bb.bs, label %.split.us.i.1

bb.bs:                                            ; preds = %.split.us.i
  %i.yi = add nsw i32 %i.yc, 1                    ; 4 uses
  store i32 %i.yi, ptr %i.xz, align 4, !tbaa !152
  %i.yj = load <2 x double>, ptr %i.ye, align 8, !tbaa !135 ; 3 uses
  %i.yk = shufflevector <2 x double> %i.yj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.yl = fadd reassoc nsz arcp contract afn <2 x double> %i.yd, %i.yk ; 4 uses
  store <2 x double> %i.yl, ptr %i.ya, align 8, !tbaa !135
  %.not204.us.i = icmp eq i32 %i.yb, 0
  br i1 %.not204.us.i, label %.split.us.i.1, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ym = extractelement <2 x double> %i.yj, i64 0
  %i.yn = fcmp reassoc nsz arcp contract afn une double %i.ym, %i.xw
  %i.yo = extractelement <2 x double> %i.yj, i64 1
  %i.yp = fcmp reassoc nsz arcp contract afn une double %i.yo, %i.xy
  %or.cond.us.i = select i1 %i.yn, i1 true, i1 %i.yp
  br i1 %or.cond.us.i, label %bb.bu, label %.split.us.i.1

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.xj, align 8, !tbaa !200
  br label %.split.us.i.1

.split.us.i.1:                                    ; preds = %bb.bu, %bb.bt, %bb.bs, %.split.us.i
  %i.yq = phi i32 [ 0, %bb.bu ], [ 1, %bb.bt ], [ 0, %bb.bs ], [ %i.yb, %.split.us.i ] ; 2 uses
  %i.yr = phi i32 [ %i.yi, %bb.bu ], [ %i.yi, %bb.bt ], [ %i.yi, %bb.bs ], [ %i.yc, %.split.us.i ] ; 2 uses
  %i.ys = phi <2 x double> [ %i.yl, %bb.bu ], [ %i.yl, %bb.bt ], [ %i.yl, %bb.bs ], [ %i.yd, %.split.us.i ] ; 2 uses
  %i.yt = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv275.i ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 68
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !156
  %i.yw = icmp eq i32 %i.yv, %i.wl
  br i1 %i.yw, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %.split.us.i.1
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yt, i64 40
  %i.yy = add nsw i32 %i.yr, 1                    ; 4 uses
  store i32 %i.yy, ptr %i.xz, align 4, !tbaa !152
  %i.yz = load <2 x double>, ptr %i.yx, align 8, !tbaa !135 ; 3 uses
  %i.za = shufflevector <2 x double> %i.yz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.zb = fadd reassoc nsz arcp contract afn <2 x double> %i.ys, %i.za ; 4 uses
  store <2 x double> %i.zb, ptr %i.ya, align 8, !tbaa !135
  %.not204.us.i.1 = icmp eq i32 %i.yq, 0
  br i1 %.not204.us.i.1, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.zc = extractelement <2 x double> %i.yz, i64 0
  %i.zd = fcmp reassoc nsz arcp contract afn une double %i.zc, %i.xw
  %i.ze = extractelement <2 x double> %i.yz, i64 1
  %i.zf = fcmp reassoc nsz arcp contract afn une double %i.ze, %i.xy
  %or.cond.us.i.1 = select i1 %i.zd, i1 true, i1 %i.zf
  br i1 %or.cond.us.i.1, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.xj, align 8, !tbaa !200
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv, %.split.us.i.1
  %i.zg = phi i32 [ 0, %bb.bx ], [ 1, %bb.bw ], [ 0, %bb.bv ], [ %i.yq, %.split.us.i.1 ] ; 2 uses
end_hunk_1
