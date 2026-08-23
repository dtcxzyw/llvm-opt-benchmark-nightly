Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_fftfilt?download=true
inline.NumInlined: 27
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@config_props:bb.a
  %i.ir = load i32, ptr %i.bu, align 8, !tbaa !49
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.val.2 = load i64, ptr %i.bv, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.it = sitofp nsz i64 %.val.2 to double
  store double %i.it, ptr %i.bw, align 16, !tbaa !54
  %i.iu = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !20
  %i.iw = sitofp nsz i32 %i.iv to double
  store double %i.iw, ptr %i.bx, align 16, !tbaa !54
  %i.ix = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !20
  %i.iz = sitofp nsz i32 %i.iy to double
  store double %i.iz, ptr %i.by, align 8, !tbaa !54
  %i.ja = load i64, ptr %i.ik, align 8, !tbaa !56 ; 3 uses
  %i.jb = load i64, ptr %i.im, align 8, !tbaa !56 ; 2 uses
  %i.jc = insertelement <2 x i64> poison, i64 %i.ja, i64 0
  %i.jd = insertelement <2 x i64> %i.jc, i64 %i.jb, i64 1
  %i.je = uitofp <2 x i64> %i.jd to <2 x double>
  store <2 x double> %i.je, ptr %i.bz, align 8, !tbaa !54
  %.not.i178.2 = icmp eq i64 %i.ja, 0
  br i1 %.not.i178.2, label %do_eval.exit.2, label %.lr.ph4.i.2

.lr.ph4.i.2:                                      ; preds = %bb.q
  %i.jf = getelementptr inbounds nuw i8, ptr %i.i, i64 4536
  %.not6.i.2 = icmp eq i64 %i.jb, 0
  br i1 %.not6.i.2, label %do_eval.exit.2, label %.lr.ph4.split.i.2

.lr.ph4.split.i.2:                                ; preds = %.lr.ph4.i.2, %._crit_edge.i.2
  %i.jg = phi i64 [ %i.ju, %._crit_edge.i.2 ], [ %i.ja, %.lr.ph4.i.2 ]
  %i.jh = phi i64 [ %i.jv, %._crit_edge.i.2 ], [ 1, %.lr.ph4.i.2 ]
  %indvars.iv9.i.2 = phi i64 [ %indvars.iv.next10.i.2, %._crit_edge.i.2 ], [ 0, %.lr.ph4.i.2 ] ; 3 uses
  %i.ji = trunc nuw nsw i64 %indvars.iv9.i.2 to i32
  %i.jj = uitofp nneg i32 %i.ji to double
  store double %i.jj, ptr %i.a, align 16, !tbaa !54
  %.not7.i.2 = icmp eq i64 %i.jh, 0
  br i1 %.not7.i.2, label %._crit_edge.i.2, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph4.split.i.2, %.lr.ph.i.2
  %indvars.iv.i.2 = phi i64 [ %indvars.iv.next.i.2, %.lr.ph.i.2 ], [ 0, %.lr.ph4.split.i.2 ] ; 3 uses
  %i.jk = trunc nuw nsw i64 %indvars.iv.i.2 to i32
  %i.jl = uitofp nneg i32 %i.jk to double
  store double %i.jl, ptr %i.ca, align 8, !tbaa !54
  %i.jm = load ptr, ptr %i.jf, align 8, !tbaa !25
  %i.jn = call nsz double @av_expr_eval(ptr noundef %i.jm, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) #10
  %i.jo = load ptr, ptr %i.iq, align 8, !tbaa !57
  %i.jp = load i64, ptr %i.im, align 8, !tbaa !56 ; 3 uses
  %i.jq = mul i64 %i.jp, %indvars.iv9.i.2
  %i.jr = getelementptr [8 x i8], ptr %i.jo, i64 %i.jq
  %i.js = getelementptr [8 x i8], ptr %i.jr, i64 %indvars.iv.i.2
  store double %i.jn, ptr %i.js, align 8, !tbaa !54
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %i.jt = icmp ugt i64 %i.jp, %indvars.iv.next.i.2
  br i1 %i.jt, label %.lr.ph.i.2, label %._crit_edge.loopexit.i.2, !llvm.loop !59

._crit_edge.loopexit.i.2:                         ; preds = %.lr.ph.i.2
  %.pre.i.2 = load i64, ptr %i.ik, align 8, !tbaa !56
  br label %._crit_edge.i.2

._crit_edge.i.2:                                  ; preds = %._crit_edge.loopexit.i.2, %.lr.ph4.split.i.2
  %i.ju = phi i64 [ %.pre.i.2, %._crit_edge.loopexit.i.2 ], [ %i.jg, %.lr.ph4.split.i.2 ] ; 2 uses
  %i.jv = phi i64 [ %i.jp, %._crit_edge.loopexit.i.2 ], [ 0, %.lr.ph4.split.i.2 ]
  %indvars.iv.next10.i.2 = add nuw nsw i64 %indvars.iv9.i.2, 1 ; 2 uses
  %i.jw = icmp ugt i64 %i.ju, %indvars.iv.next10.i.2
  br i1 %i.jw, label %.lr.ph4.split.i.2, label %do_eval.exit.2, !llvm.loop !60

do_eval.exit.2:                                   ; preds = %._crit_edge.i.2, %.lr.ph4.i.2, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.r

bb.r:                                             ; preds = %do_eval.exit.2, %bb.p
  %i.jx = load i32, ptr %i.o, align 4, !tbaa !50
  %i.jy = icmp slt i32 %i.jx, 9
  %i.jz = getelementptr inbounds nuw i8, ptr %i.i, i64 4584 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.i, i64 4592 ; 2 uses
  br i1 %i.jy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr @rdft_horizontal8, ptr %i.jz, align 8, !tbaa !47
  store ptr @irdft_horizontal8, ptr %i.ka, align 8, !tbaa !67
  br label %.thread187

bb.t:                                             ; preds = %bb.r
  store ptr @rdft_horizontal16, ptr %i.jz, align 8, !tbaa !47
  store ptr @irdft_horizontal16, ptr %i.ka, align 8, !tbaa !67
  br label %.thread187

.thread187:                                       ; preds = %ff_clz_c.exit170, %bb.b, %.preheader192, %bb.f, %bb.e, %bb.i, %.preheader, %bb.l, %bb.o, %.thread, %.thread183, %bb.s, %bb.t
  %.8 = phi i32 [ 0, %bb.s ], [ %i.fp, %bb.i ], [ 0, %bb.t ], [ %i.fl, %.thread183 ], [ -12, %.preheader ], [ %i.ev, %.thread ], [ %i.ez, %bb.e ], [ -12, %bb.o ], [ -12, %bb.l ], [ -12, %bb.f ], [ -12, %.preheader192 ], [ -12, %bb.b ], [ -12, %ff_clz_c.exit170 ]
  ret i32 %.8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @copy_vertical(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4280
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4312
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4216
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4248
  %i.j = sext i32 %2 to i64
  %i.k = sext i32 %3 to i64                       ; 2 uses
  %i.l = add nsw i32 %2, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4408
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4376
  %wide.trip.count88 = zext nneg i32 %i.d to i64
  br label %bb.b

._crit_edge:                                      ; preds = %._crit_edge49, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %._crit_edge49
  %indvars.iv85 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next86, %._crit_edge49 ] ; 8 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv85
  %i.r = load i64, ptr %i.q, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv85
  %i.t = load i64, ptr %i.s, align 8, !tbaa !56   ; 4 uses
  %i.u = trunc i64 %i.t to i32                    ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv85
  %i.w = load i64, ptr %i.v, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv85
  %i.y = load i64, ptr %i.x, align 8, !tbaa !56   ; 3 uses
  %sext = shl i64 %i.r, 32
  %i.z = ashr exact i64 %sext, 32                 ; 2 uses
  %i.aa = mul nsw i64 %i.z, %i.j
  %i.ab = sdiv i64 %i.aa, %i.k                    ; 4 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = mul nsw i64 %i.z, %i.m
  %i.ae = sdiv i64 %i.ad, %i.k                    ; 4 uses
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv85
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !20 ; 9 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv85
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !63 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv85
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !63 ; 6 uses
  %i.am = icmp slt i32 %i.ac, %i.af
  br i1 %i.am, label %.preheader.lr.ph, label %._crit_edge49

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.an = icmp sgt i32 %i.ah, 0
  %i.ao = sub nsw i32 %i.u, %i.ah                 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 1                   ; 2 uses
  %i.aq = lshr i32 %i.ao, 1
  %i.ar = add nsw i32 %i.aq, %i.ah
  %i.as = shl nsw i32 %i.ah, 1                    ; 2 uses
  %i.at = sext i32 %i.ah to i64                   ; 6 uses
  %i.au = sext i32 %i.ar to i64                   ; 2 uses
  %sext46 = shl i64 %i.t, 32
  %i.av = ashr exact i64 %sext46, 32              ; 16 uses
  br i1 %i.an, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %sext99 = shl i64 %i.w, 32                      ; 2 uses
  %i.aw = ashr exact i64 %sext99, 32              ; 11 uses
  %sext100 = shl i64 %i.ab, 32                    ; 3 uses
  %i.ax = ashr exact i64 %sext100, 32
  %sext101 = shl i64 %i.y, 32                     ; 2 uses
  %i.ay = ashr exact i64 %sext101, 32             ; 3 uses
  %sext102 = shl i64 %i.ae, 32                    ; 2 uses
  %wide.trip.count83 = ashr exact i64 %sext102, 32
  %wide.trip.count78 = zext nneg i32 %i.ah to i64 ; 8 uses
  %i.az = add nsw i64 %wide.trip.count78, -1
  %i.ba = ashr exact i64 %sext99, 30              ; 2 uses
  %i.bb = mul nsw i64 %i.aw, -4
  %i.bc = ashr exact i64 %sext100, 30
  %i.bd = mul i64 %i.bc, %i.ay
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.bd
  %i.be = ashr exact i64 %sext102, 30
  %i.bf = add nsw i64 %i.be, -4
  %i.bg = mul i64 %i.bf, %i.ay
  %i.bh = shl nuw nsw i64 %wide.trip.count78, 2
  %i.bi = getelementptr i8, ptr %i.al, i64 %i.bg
  %scevgep109 = getelementptr i8, ptr %i.bi, i64 %i.bh
  %i.bj = shl nuw nsw i64 %wide.trip.count78, 2
  %i.bk = add nsw i64 %i.bj, -4
  %i.bl = mul i64 %i.bk, %i.aw
  %i.bm = ashr exact i64 %sext100, 30
  %i.bn = getelementptr i8, ptr %i.aj, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bm
  %min.iters.check = icmp ult i32 %i.ah, 72
  %i.bp = icmp slt i64 %i.ba, 0                   ; 2 uses
  %i.bq = select i1 %i.bp, i64 %i.bb, i64 %i.ba
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bq, i64 %i.az) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.br = sub i64 0, %mul.result
  %stride.check = icmp slt i64 %sext101, 0
  %n.vec = and i64 %wide.trip.count78, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count78
  %xtraiter115 = and i64 %wide.trip.count78, 3    ; 2 uses
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %copy_rev.exit.us
  %indvar = phi i64 [ 0, %.preheader.us.preheader ], [ %indvar.next, %copy_rev.exit.us ] ; 2 uses
  %indvars.iv80 = phi i64 [ %i.ax, %.preheader.us.preheader ], [ %indvars.iv.next81, %copy_rev.exit.us ] ; 4 uses
  %i.bs = shl i64 %indvar, 2
  %scevgep110 = getelementptr i8, ptr %i.bo, i64 %i.bs ; 4 uses
  %4 = shl i64 %indvars.iv80, 2
  %scevgep111 = getelementptr i8, ptr %i.aj, i64 %4 ; 4 uses
  %i.bt = icmp ult ptr %scevgep110, %scevgep111
  %umin = select i1 %i.bt, ptr %scevgep110, ptr %scevgep111
  %i.bu = icmp ugt ptr %scevgep110, %scevgep111
  %umax = select i1 %i.bu, ptr %scevgep110, ptr %scevgep111
  %scevgep112 = getelementptr i8, ptr %umax, i64 4
  %i.bv = mul nsw i64 %indvars.iv80, %i.ay        ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv80 ; 13 uses
  %invariant.gep105 = getelementptr [4 x i8], ptr %i.al, i64 %i.bv ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us
  %i.bw = getelementptr i8, ptr %invariant.gep, i64 %mul.result
  %i.bx = getelementptr i8, ptr %invariant.gep, i64 %i.br
  %i.by = icmp ult ptr %i.bw, %invariant.gep
  %i.bz = icmp ugt ptr %i.bx, %invariant.gep
  %i.ca = select i1 %i.bp, i1 %i.bz, i1 %i.by
  %i.cb = or i1 %i.ca, %mul.overflow
  br i1 %i.cb, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep112
  %bound1 = icmp ult ptr %umin, %scevgep109
  %found.conflict = and i1 %bound0, %bound1
  %i.cc = or i1 %found.conflict, %stride.check
  br i1 %i.cc, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.cd = or disjoint i64 %index, 1
  %i.ce = or disjoint i64 %index, 2
  %i.cf = or disjoint i64 %index, 3
  %i.cg = mul nsw i64 %index, %i.aw
  %i.ch = mul nsw i64 %i.cd, %i.aw
  %i.ci = mul nsw i64 %i.ce, %i.aw
  %i.cj = mul nsw i64 %i.cf, %i.aw
  %i.ck = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cg
  %i.cl = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ch
  %i.cm = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ci
  %i.cn = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cj
  %i.co = load float, ptr %i.ck, align 4, !tbaa !65, !alias.scope !80
  %i.cp = load float, ptr %i.cl, align 4, !tbaa !65, !alias.scope !80
  %i.cq = load float, ptr %i.cm, align 4, !tbaa !65, !alias.scope !80
  %i.cr = load float, ptr %i.cn, align 4, !tbaa !65, !alias.scope !80
  %i.cs = insertelement <4 x float> poison, float %i.co, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 1
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 2
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 3
  %i.cw = getelementptr [4 x i8], ptr %invariant.gep105, i64 %index
  store <4 x float> %i.cv, ptr %i.cw, align 4, !tbaa !65, !alias.scope !83, !noalias !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.us, %middle.block
  %indvars.iv75.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod116.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv75.prol = phi i64 [ %indvars.iv.next76.prol, %scalar.ph.prol ], [ %indvars.iv75.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter117 = phi i64 [ %prol.iter117.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cy = mul nsw i64 %indvars.iv75.prol, %i.aw
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cy
  %i.cz = load float, ptr %gep.prol, align 4, !tbaa !65
  %gep106.prol = getelementptr [4 x i8], ptr %invariant.gep105, i64 %indvars.iv75.prol
  store float %i.cz, ptr %gep106.prol, align 4, !tbaa !65
  %indvars.iv.next76.prol = add nuw nsw i64 %indvars.iv75.prol, 1 ; 2 uses
  %prol.iter117.next = add i64 %prol.iter117, 1   ; 2 uses
  %prol.iter117.cmp.not = icmp eq i64 %prol.iter117.next, %xtraiter115
  br i1 %prol.iter117.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !88

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv75.unr = phi i64 [ %indvars.iv75.ph, %scalar.ph.preheader ], [ %indvars.iv.next76.prol, %scalar.ph.prol ]
  %i.da = sub nsw i64 %indvars.iv75.ph, %wide.trip.count78
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv75 = phi i64 [ %indvars.iv.next76.3, %scalar.ph ], [ %indvars.iv75.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dc = mul nsw i64 %indvars.iv75, %i.aw
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dc
  %i.dd = load float, ptr %gep, align 4, !tbaa !65
  %gep106 = getelementptr [4 x i8], ptr %invariant.gep105, i64 %indvars.iv75
  store float %i.dd, ptr %gep106, align 4, !tbaa !65
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.de = mul nsw i64 %indvars.iv.next76, %i.aw
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.de
  %i.df = load float, ptr %gep.1, align 4, !tbaa !65
  %gep106.1 = getelementptr [4 x i8], ptr %invariant.gep105, i64 %indvars.iv.next76
  store float %i.df, ptr %gep106.1, align 4, !tbaa !65
  %indvars.iv.next76.1 = add nuw nsw i64 %indvars.iv75, 2 ; 2 uses
  %i.dg = mul nsw i64 %indvars.iv.next76.1, %i.aw
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dg
  %i.dh = load float, ptr %gep.2, align 4, !tbaa !65
  %gep106.2 = getelementptr [4 x i8], ptr %invariant.gep105, i64 %indvars.iv.next76.1
  store float %i.dh, ptr %gep106.2, align 4, !tbaa !65
  %indvars.iv.next76.2 = add nuw nsw i64 %indvars.iv75, 3 ; 2 uses
  %i.di = mul nsw i64 %indvars.iv.next76.2, %i.aw
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.di
  %i.dj = load float, ptr %gep.3, align 4, !tbaa !65
  %gep106.3 = getelementptr [4 x i8], ptr %invariant.gep105, i64 %indvars.iv.next76.2
  store float %i.dj, ptr %gep106.3, align 4, !tbaa !65
  %indvars.iv.next76.3 = add nuw nsw i64 %indvars.iv75, 4 ; 2 uses
  %exitcond79.not.3 = icmp eq i64 %indvars.iv.next76.3, %wide.trip.count78
  br i1 %exitcond79.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !90

.lr.ph.i.us:                                      ; preds = %._crit_edge.us, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.lr.ph.i.us ], [ %i.at, %._crit_edge.us ] ; 3 uses
  %i.dk = trunc nsw i64 %indvars.iv.i.us to i32
  %i.dl = xor i32 %i.dk, -1
  %i.dm = add i32 %i.as, %i.dl
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !65
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.i.us
  store float %i.dp, ptr %i.dq, align 4, !tbaa !65
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 3 uses
  %i.dr = icmp slt i64 %indvars.iv.next.i.us, %i.au
  br i1 %i.dr, label %.lr.ph.i.us, label %.preheader.loopexit.i.us, !llvm.loop !91

.preheader.loopexit.i.us:                         ; preds = %.lr.ph.i.us
  %i.ds = trunc nsw i64 %indvars.iv.next.i.us to i32
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.loopexit.i.us, %._crit_edge.us
  %.0.lcssa.i.us = phi i32 [ %i.ah, %._crit_edge.us ], [ %i.ds, %.preheader.loopexit.i.us ] ; 2 uses
  %i.dt = icmp slt i32 %.0.lcssa.i.us, %i.u
  br i1 %i.dt, label %.lr.ph21.preheader.i.us, label %copy_rev.exit.us

.lr.ph21.preheader.i.us:                          ; preds = %.preheader.i.us
  %i.du = sext i32 %.0.lcssa.i.us to i64          ; 4 uses
  %i.dv = sub i64 %i.t, %i.du
  %xtraiter118 = and i64 %i.dv, 3                 ; 2 uses
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %.lr.ph21.i.us.prol.loopexit, label %.lr.ph21.i.us.prol

.lr.ph21.i.us.prol:                               ; preds = %.lr.ph21.preheader.i.us, %.lr.ph21.i.us.prol
  %indvars.iv23.i.us.prol = phi i64 [ %indvars.iv.next24.i.us.prol, %.lr.ph21.i.us.prol ], [ %i.du, %.lr.ph21.preheader.i.us ] ; 3 uses
  %prol.iter120 = phi i64 [ %prol.iter120.next, %.lr.ph21.i.us.prol ], [ 0, %.lr.ph21.preheader.i.us ]
  %i.dw = sub nsw i64 %i.av, %indvars.iv23.i.us.prol
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !65
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.es, i64 %indvars.iv23.i.us.prol
  store float %i.dy, ptr %i.dz, align 4, !tbaa !65
  %indvars.iv.next24.i.us.prol = add nsw i64 %indvars.iv23.i.us.prol, 1 ; 2 uses
  %prol.iter120.next = add i64 %prol.iter120, 1   ; 2 uses
  %prol.iter120.cmp.not = icmp eq i64 %prol.iter120.next, %xtraiter118
  br i1 %prol.iter120.cmp.not, label %.lr.ph21.i.us.prol.loopexit, label %.lr.ph21.i.us.prol, !llvm.loop !92

.lr.ph21.i.us.prol.loopexit:                      ; preds = %.lr.ph21.i.us.prol, %.lr.ph21.preheader.i.us
  %indvars.iv23.i.us.unr = phi i64 [ %i.du, %.lr.ph21.preheader.i.us ], [ %indvars.iv.next24.i.us.prol, %.lr.ph21.i.us.prol ]
  %i.ea = sub nsw i64 %i.du, %i.av
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %copy_rev.exit.us, label %.lr.ph21.i.us

.lr.ph21.i.us:                                    ; preds = %.lr.ph21.i.us.prol.loopexit, %.lr.ph21.i.us
  %indvars.iv23.i.us = phi i64 [ %indvars.iv.next24.i.us.3, %.lr.ph21.i.us ], [ %indvars.iv23.i.us.unr, %.lr.ph21.i.us.prol.loopexit ] ; 6 uses
  %i.ec = sub nsw i64 %i.av, %indvars.iv23.i.us
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !65
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.es, i64 %indvars.iv23.i.us
  store float %i.ee, ptr %i.ef, align 4, !tbaa !65
  %indvars.iv.next24.i.us = add nsw i64 %indvars.iv23.i.us, 1 ; 2 uses
  %i.eg = sub nsw i64 %i.av, %indvars.iv.next24.i.us
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !65
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.es, i64 %indvars.iv.next24.i.us
  store float %i.ei, ptr %i.ej, align 4, !tbaa !65
  %indvars.iv.next24.i.us.1 = add nsw i64 %indvars.iv23.i.us, 2 ; 2 uses
  %i.ek = sub nsw i64 %i.av, %indvars.iv.next24.i.us.1
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !65
  %i.en = getelementptr inbounds [4 x i8], ptr %i.es, i64 %indvars.iv.next24.i.us.1
  store float %i.em, ptr %i.en, align 4, !tbaa !65
  %indvars.iv.next24.i.us.2 = add nsw i64 %indvars.iv23.i.us, 3 ; 2 uses
  %i.eo = sub nsw i64 %i.av, %indvars.iv.next24.i.us.2
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !65
  %i.er = getelementptr inbounds [4 x i8], ptr %i.es, i64 %indvars.iv.next24.i.us.2
  store float %i.eq, ptr %i.er, align 4, !tbaa !65
  %indvars.iv.next24.i.us.3 = add nsw i64 %indvars.iv23.i.us, 4 ; 2 uses
  %exitcond.not.i.us.3 = icmp eq i64 %indvars.iv.next24.i.us.3, %i.av
  br i1 %exitcond.not.i.us.3, label %copy_rev.exit.us, label %.lr.ph21.i.us, !llvm.loop !93

copy_rev.exit.us:                                 ; preds = %.lr.ph21.i.us.prol.loopexit, %.lr.ph21.i.us, %.preheader.i.us
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond84.not, label %._crit_edge49, label %.preheader.us, !llvm.loop !94

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.es = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.bv ; 12 uses
  br i1 %i.ap, label %.lr.ph.i.us, label %.preheader.i.us

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  br i1 %i.ap, label %.preheader.us50.preheader, label %.preheader.lr.ph.split.split

.preheader.us50.preheader:                        ; preds = %.preheader.lr.ph.split
end_hunk_0
begin_hunk_1_@rdft_horizontal8:bb.a
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader102 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.cj = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  br i1 %i.at, label %.lr.ph.i, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %i.cl = trunc nsw i64 %indvars.iv.next.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %._crit_edge
  %.0.lcssa.i = phi i32 [ %i.v, %._crit_edge ], [ %i.cl, %.preheader.loopexit.i ] ; 2 uses
  %i.cm = icmp slt i32 %.0.lcssa.i, %i.ar
  br i1 %i.cm, label %.lr.ph21.preheader.i, label %copy_rev.exit

.lr.ph21.preheader.i:                             ; preds = %.preheader.i
  %i.cn = sext i32 %.0.lcssa.i to i64             ; 4 uses
  %i.co = sub i64 %i.aq, %i.cn
  %xtraiter103 = and i64 %i.co, 3                 ; 2 uses
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %.lr.ph21.i.prol.loopexit, label %.lr.ph21.i.prol

.lr.ph21.i.prol:                                  ; preds = %.lr.ph21.preheader.i, %.lr.ph21.i.prol
  %indvars.iv23.i.prol = phi i64 [ %indvars.iv.next24.i.prol, %.lr.ph21.i.prol ], [ %i.cn, %.lr.ph21.preheader.i ] ; 3 uses
  %prol.iter105 = phi i64 [ %prol.iter105.next, %.lr.ph21.i.prol ], [ 0, %.lr.ph21.preheader.i ]
  %i.cp = sub nsw i64 %i.az, %indvars.iv23.i.prol
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !65
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv23.i.prol
  store float %i.cr, ptr %i.cs, align 4, !tbaa !65
  %indvars.iv.next24.i.prol = add nsw i64 %indvars.iv23.i.prol, 1 ; 2 uses
  %prol.iter105.next = add i64 %prol.iter105, 1   ; 2 uses
  %prol.iter105.cmp.not = icmp eq i64 %prol.iter105.next, %xtraiter103
  br i1 %prol.iter105.cmp.not, label %.lr.ph21.i.prol.loopexit, label %.lr.ph21.i.prol, !llvm.loop !120

.lr.ph21.i.prol.loopexit:                         ; preds = %.lr.ph21.i.prol, %.lr.ph21.preheader.i
  %indvars.iv23.i.unr = phi i64 [ %i.cn, %.lr.ph21.preheader.i ], [ %indvars.iv.next24.i.prol, %.lr.ph21.i.prol ]
  %i.ct = sub nsw i64 %i.cn, %i.az
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %copy_rev.exit, label %.lr.ph21.i

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.ax, %._crit_edge ] ; 3 uses
  %i.cv = trunc nsw i64 %indvars.iv.i to i32
  %i.cw = xor i32 %i.cv, -1
  %i.cx = add i32 %i.aw, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !65
  %i.db = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv.i
  store float %i.da, ptr %i.db, align 4, !tbaa !65
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.dc = icmp slt i64 %indvars.iv.next.i, %i.ay
  br i1 %i.dc, label %.lr.ph.i, label %.preheader.loopexit.i, !llvm.loop !91

.lr.ph21.i:                                       ; preds = %.lr.ph21.i.prol.loopexit, %.lr.ph21.i
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i.3, %.lr.ph21.i ], [ %indvars.iv23.i.unr, %.lr.ph21.i.prol.loopexit ] ; 6 uses
  %i.dd = sub nsw i64 %i.az, %indvars.iv23.i
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !65
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv23.i
  store float %i.df, ptr %i.dg, align 4, !tbaa !65
  %indvars.iv.next24.i = add nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %i.dh = sub nsw i64 %i.az, %indvars.iv.next24.i
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !65
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv.next24.i
  store float %i.dj, ptr %i.dk, align 4, !tbaa !65
  %indvars.iv.next24.i.1 = add nsw i64 %indvars.iv23.i, 2 ; 2 uses
  %i.dl = sub nsw i64 %i.az, %indvars.iv.next24.i.1
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.dl
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !65
  %i.do = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv.next24.i.1
  store float %i.dn, ptr %i.do, align 4, !tbaa !65
  %indvars.iv.next24.i.2 = add nsw i64 %indvars.iv23.i, 3 ; 2 uses
  %i.dp = sub nsw i64 %i.az, %indvars.iv.next24.i.2
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !65
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv.next24.i.2
  store float %i.dr, ptr %i.ds, align 4, !tbaa !65
  %indvars.iv.next24.i.3 = add nsw i64 %indvars.iv23.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next24.i.3, %i.az
  br i1 %exitcond.not.i.3, label %copy_rev.exit, label %.lr.ph21.i, !llvm.loop !93

copy_rev.exit:                                    ; preds = %.lr.ph21.i.prol.loopexit, %.lr.ph21.i, %.preheader.i
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %.lr.ph71, label %bb.c, !llvm.loop !121

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !76
  %i.dv = uitofp nsz i8 %i.du to float
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv
  store float %i.dv, ptr %i.dw, align 4, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv.next
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !76
  %i.dz = uitofp nsz i8 %i.dy to float
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next
  store float %i.dz, ptr %i.ea, align 4, !tbaa !65
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv.next.1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !76
  %i.ed = uitofp nsz i8 %i.ec to float
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next.1
  store float %i.ed, ptr %i.ee, align 4, !tbaa !65
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv.next.2
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !76
  %i.eh = uitofp nsz i8 %i.eg to float
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next.2
  store float %i.eh, ptr %i.ei, align 4, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !122

._crit_edge72.loopexit:                           ; preds = %bb.d
  %.pre = load i32, ptr %i.c, align 8, !tbaa !48
  br label %._crit_edge72

._crit_edge72:                                    ; preds = %bb.b, %._crit_edge72.loopexit
  %i.ej = phi i32 [ %.pre, %._crit_edge72.loopexit ], [ %i.t, %bb.b ] ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp slt i64 %indvars.iv.next88, %i.ek
  br i1 %i.el, label %bb.b, label %._crit_edge76, !llvm.loop !123

bb.d:                                             ; preds = %.lr.ph71, %bb.d
  %indvars.iv83 = phi i64 [ %i.bt, %.lr.ph71 ], [ %indvars.iv.next84, %bb.d ] ; 2 uses
  %i.em = load ptr, ptr %i.p, align 8, !tbaa !124
  %i.en = load ptr, ptr %i.bp, align 8, !tbaa !99
  %i.eo = load ptr, ptr %i.bq, align 8, !tbaa !63
  %i.ep = load i64, ptr %i.br, align 8, !tbaa !56
  %i.eq = mul i64 %i.ep, %indvars.iv83            ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.eq
  %i.es = load ptr, ptr %i.bs, align 8, !tbaa !63
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.eq
  tail call void %i.em(ptr noundef %i.en, ptr noundef %i.er, ptr noundef %i.et, i64 noundef 4) #10
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next84 to i32
  %exitcond86.not = icmp eq i32 %lftr.wideiv, %i.ae
  br i1 %exitcond86.not, label %._crit_edge72.loopexit, label %bb.d, !llvm.loop !125
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @irdft_horizontal8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !48
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %i.j = add nsw i32 %2, 1
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4160
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 2104
  %i.n = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4408 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4216 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4344
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4280
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4312
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.b

._crit_edge71:                                    ; preds = %._crit_edge67.split, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph70, %._crit_edge67.split
  %indvars.iv82 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next83, %._crit_edge67.split ] ; 13 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv82
  %i.v = load i32, ptr %i.u, align 4, !tbaa !20   ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv82
  %i.x = load i32, ptr %i.w, align 4, !tbaa !20
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = mul nsw i64 %i.y, %i.h
  %i.aa = sdiv i64 %i.z, %i.i                     ; 3 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = mul nsw i64 %i.y, %i.k
  %i.ad = sdiv i64 %i.ac, %i.i                    ; 2 uses
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = icmp slt i32 %i.ab, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge67.split

.lr.ph:                                           ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv82
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv82
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv82
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv82
  %sext = shl i64 %i.aa, 32
  %i.ak = ashr exact i64 %sext, 32
  br label %bb.c

.lr.ph66:                                         ; preds = %bb.c
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv82
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv82
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv82
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv82
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv82
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv82
  %i.ar = icmp sgt i32 %i.v, 0
  br i1 %i.ar, label %.lr.ph64.preheader, label %._crit_edge67.split

.lr.ph64.preheader:                               ; preds = %.lr.ph66
  %sext88 = shl i64 %i.aa, 32
  %i.as = ashr exact i64 %sext88, 32
  %sext89 = shl i64 %i.ad, 32
  %wide.trip.count80 = ashr exact i64 %sext89, 32
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 7 uses
  %i.at = shl nuw nsw i64 %wide.trip.count, 2
  %min.iters.check = icmp ult i32 %i.v, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.au = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph64

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !126
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !99
  %i.ax = load ptr, ptr %i.ah, align 8, !tbaa !63
  %i.ay = load i64, ptr %i.ai, align 8, !tbaa !56
  %i.az = mul i64 %i.ay, %indvars.iv              ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.az
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !63
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.az
  tail call void %i.av(ptr noundef %i.aw, ptr noundef %i.ba, ptr noundef %i.bc, i64 noundef 8) #10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.ae
  br i1 %exitcond.not, label %.lr.ph66, label %bb.c, !llvm.loop !127

._crit_edge67.split:                              ; preds = %._crit_edge, %bb.b, %.lr.ph66
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.bd = load i32, ptr %i.c, align 8, !tbaa !48
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next83, %i.be
  br i1 %i.bf, label %bb.b, label %._crit_edge71, !llvm.loop !128

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %._crit_edge
  %indvars.iv77 = phi i64 [ %i.as, %.lr.ph64.preheader ], [ %indvars.iv.next78, %._crit_edge ] ; 4 uses
  %i.bg = load i64, ptr %i.al, align 8, !tbaa !56
  %i.bh = load i64, ptr %i.am, align 8, !tbaa !56
  %i.bi = mul i64 %i.bh, %i.bg
  %i.bj = uitofp nsz i64 %i.bi to float
  %i.bk = fdiv nnan nsz float 1.000000e+00, %i.bj ; 4 uses
  %i.bl = load ptr, ptr %i.an, align 8, !tbaa !63 ; 2 uses
  %i.bm = load i64, ptr %i.ao, align 8, !tbaa !56 ; 2 uses
  %i.bn = mul i64 %i.bm, %indvars.iv77
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bn ; 5 uses
  %i.bp = load ptr, ptr %i.ap, align 8, !tbaa !21 ; 2 uses
  %i.bq = load i32, ptr %i.aq, align 4, !tbaa !20
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul nsw i64 %indvars.iv77, %i.br        ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph64
  %i.bu = shl i64 %indvars.iv77, 2
  %scevgep = getelementptr i8, ptr %i.bp, i64 %wide.trip.count
  %scevgep90 = getelementptr i8, ptr %scevgep, i64 %i.bs
  %scevgep91 = getelementptr i8, ptr %i.bl, i64 %i.at
  %i.bv = mul i64 %i.bm, %i.bu
  %scevgep92 = getelementptr i8, ptr %scevgep91, i64 %i.bv
  %bound0 = icmp ult ptr %i.bt, %scevgep92
  %bound1 = icmp ult ptr %i.bo, %scevgep90
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bk, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index
  %wide.load = load <4 x float>, ptr %i.bw, align 4, !tbaa !65, !alias.scope !129
  %i.bx = fmul nsz <4 x float> %broadcast.splat, %wide.load
  %i.by = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.bx) ; 2 uses
  %i.bz = trunc <4 x i64> %i.by to <4 x i32>      ; 2 uses
  %i.ca = icmp ult <4 x i32> %i.bz, splat (i32 256)
  %i.cb = icmp sgt <4 x i32> %i.bz, splat (i32 -1)
  %i.cc = sext <4 x i1> %i.cb to <4 x i8>
  %i.cd = trunc <4 x i64> %i.by to <4 x i8>
  %i.ce = select <4 x i1> %i.ca, <4 x i8> %i.cd, <4 x i8> %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 %index
  store <4 x i8> %i.ce, ptr %i.cf, align 1, !tbaa !76, !alias.scope !132, !noalias !129
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph64, %middle.block
  %indvars.iv73.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph64 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv73.ph
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !65
  %i.cj = fmul nsz float %i.bk, %i.ci
  %i.ck = tail call i64 @llvm.lrint.i64.f32(float %i.cj) ; 2 uses
  %i.cl = trunc i64 %i.ck to i32                  ; 2 uses
  %.not.i.prol = icmp ult i32 %i.cl, 256
  %isnotneg.i.prol = icmp sgt i32 %i.cl, -1
  %i.cm = sext i1 %isnotneg.i.prol to i8
  %i.cn = trunc i64 %i.ck to i8
  %.0.i.prol = select i1 %.not.i.prol, i8 %i.cn, i8 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv73.ph
  store i8 %.0.i.prol, ptr %i.co, align 1, !tbaa !76
  %indvars.iv.next74.prol = or disjoint i64 %indvars.iv73.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv73.unr = phi i64 [ %indvars.iv73.ph, %scalar.ph.preheader ], [ %indvars.iv.next74.prol, %scalar.ph.prol ]
  %i.cp = icmp eq i64 %indvars.iv73.ph, %i.au
  br i1 %i.cp, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge67.split, label %.lr.ph64, !llvm.loop !135

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv73 = phi i64 [ %indvars.iv.next74.1, %scalar.ph ], [ %indvars.iv73.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv73
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !65
  %i.cs = fmul nsz float %i.bk, %i.cr
  %i.ct = tail call i64 @llvm.lrint.i64.f32(float %i.cs) ; 2 uses
  %i.cu = trunc i64 %i.ct to i32                  ; 2 uses
  %.not.i = icmp ult i32 %i.cu, 256
  %isnotneg.i = icmp sgt i32 %i.cu, -1
  %i.cv = sext i1 %isnotneg.i to i8
  %i.cw = trunc i64 %i.ct to i8
  %.0.i = select i1 %.not.i, i8 %i.cw, i8 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv73
  store i8 %.0.i, ptr %i.cx, align 1, !tbaa !76
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next74
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !65
  %i.da = fmul nsz float %i.bk, %i.cz
  %i.db = tail call i64 @llvm.lrint.i64.f32(float %i.da) ; 2 uses
  %i.dc = trunc i64 %i.db to i32                  ; 2 uses
  %.not.i.1 = icmp ult i32 %i.dc, 256
  %isnotneg.i.1 = icmp sgt i32 %i.dc, -1
  %i.dd = sext i1 %isnotneg.i.1 to i8
  %i.de = trunc i64 %i.db to i8
  %.0.i.1 = select i1 %.not.i.1, i8 %i.de, i8 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.next74
  store i8 %.0.i.1, ptr %i.df, align 1, !tbaa !76
  %indvars.iv.next74.1 = add nuw nsw i64 %indvars.iv73, 2 ; 2 uses
  %exitcond76.not.1 = icmp eq i64 %indvars.iv.next74.1, %wide.trip.count
  br i1 %exitcond76.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !136
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rdft_horizontal16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %i.j = add nsw i32 %2, 1
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4344 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4216 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4280
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4152
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.r = getelementptr inbounds [32 x i8], ptr %i.q, i64 %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4408
  br label %bb.b

._crit_edge76:                                    ; preds = %._crit_edge72, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph75, %._crit_edge72
  %i.t = phi i32 [ %i.d, %.lr.ph75 ], [ %i.de, %._crit_edge72 ]
  %indvars.iv87 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next88, %._crit_edge72 ] ; 12 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv87
  %i.v = load i32, ptr %i.u, align 4, !tbaa !20   ; 8 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv87
  %i.x = load i32, ptr %i.w, align 4, !tbaa !20
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = mul nsw i64 %i.y, %i.h
  %i.aa = sdiv i64 %i.z, %i.i                     ; 3 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = mul nsw i64 %i.y, %i.k
  %i.ad = sdiv i64 %i.ac, %i.i                    ; 2 uses
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = icmp slt i32 %i.ab, %i.ae
  br i1 %i.af, label %.lr.ph69, label %._crit_edge72

.lr.ph69:                                         ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv87
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv87
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !20
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv87
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv87
  %i.an = load i64, ptr %i.am, align 8, !tbaa !56
  %i.ao = icmp sgt i32 %i.v, 0
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv87
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !56 ; 3 uses
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = sub nsw i32 %i.ar, %i.v                 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 1
  %i.au = lshr i32 %i.as, 1
  %i.av = add nsw i32 %i.au, %i.v
  %i.aw = shl nsw i32 %i.v, 1
  %i.ax = sext i32 %i.v to i64
  %i.ay = sext i32 %i.av to i64
  %sext = shl i64 %i.aq, 32
  %i.az = ashr exact i64 %sext, 32                ; 7 uses
  %sext94 = shl i64 %i.aa, 32
  %i.ba = ashr exact i64 %sext94, 32
  %i.bb = sext i32 %i.aj to i64
  %sext95 = shl i64 %i.ad, 32
  %wide.trip.count81 = ashr exact i64 %sext95, 32
  %wide.trip.count = zext i32 %i.v to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.v, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.c

.lr.ph71:                                         ; preds = %copy_rev.exit
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv87
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv87
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv87
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv87
  %sext96 = shl i64 %i.aa, 32
  %i.bg = ashr exact i64 %sext96, 32
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph69, %copy_rev.exit
  %indvars.iv78 = phi i64 [ %i.ba, %.lr.ph69 ], [ %indvars.iv.next79, %copy_rev.exit ] ; 3 uses
  %i.bh = mul nsw i64 %indvars.iv78, %i.bb
  %i.bi = getelementptr inbounds i8, ptr %i.ah, i64 %i.bh ; 2 uses
  %i.bj = mul i64 %i.an, %indvars.iv78
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bj ; 14 uses
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  br i1 %min.iters.check, label %.lr.ph.preheader98, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %wide.load = load <4 x i16>, ptr %i.bl, align 2, !tbaa !137
  %wide.load97 = load <4 x i16>, ptr %i.bm, align 2, !tbaa !137
  %i.bn = uitofp <4 x i16> %wide.load to <4 x float>
  %i.bo = uitofp <4 x i16> %wide.load97 to <4 x float>
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <4 x float> %i.bn, ptr %i.bp, align 4, !tbaa !65
  store <4 x float> %i.bo, ptr %i.bq, align 4, !tbaa !65
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader98

.lr.ph.preheader98:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  br i1 %i.at, label %.lr.ph.i, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %i.bs = trunc nsw i64 %indvars.iv.next.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %._crit_edge
  %.0.lcssa.i = phi i32 [ %i.v, %._crit_edge ], [ %i.bs, %.preheader.loopexit.i ] ; 2 uses
  %i.bt = icmp slt i32 %.0.lcssa.i, %i.ar
  br i1 %i.bt, label %.lr.ph21.preheader.i, label %copy_rev.exit

.lr.ph21.preheader.i:                             ; preds = %.preheader.i
  %i.bu = sext i32 %.0.lcssa.i to i64             ; 4 uses
  %i.bv = sub i64 %i.aq, %i.bu
  %xtraiter = and i64 %i.bv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph21.i.prol.loopexit, label %.lr.ph21.i.prol

.lr.ph21.i.prol:                                  ; preds = %.lr.ph21.preheader.i, %.lr.ph21.i.prol
  %indvars.iv23.i.prol = phi i64 [ %indvars.iv.next24.i.prol, %.lr.ph21.i.prol ], [ %i.bu, %.lr.ph21.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph21.i.prol ], [ 0, %.lr.ph21.preheader.i ]
  %i.bw = sub nsw i64 %i.az, %indvars.iv23.i.prol
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !65
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %indvars.iv23.i.prol
  store float %i.by, ptr %i.bz, align 4, !tbaa !65
  %indvars.iv.next24.i.prol = add nsw i64 %indvars.iv23.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph21.i.prol.loopexit, label %.lr.ph21.i.prol, !llvm.loop !140

.lr.ph21.i.prol.loopexit:                         ; preds = %.lr.ph21.i.prol, %.lr.ph21.preheader.i
  %indvars.iv23.i.unr = phi i64 [ %i.bu, %.lr.ph21.preheader.i ], [ %indvars.iv.next24.i.prol, %.lr.ph21.i.prol ]
  %i.ca = sub nsw i64 %i.bu, %i.az
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %copy_rev.exit, label %.lr.ph21.i

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.ax, %._crit_edge ] ; 3 uses
  %i.cc = trunc nsw i64 %indvars.iv.i to i32
  %i.cd = xor i32 %i.cc, -1
  %i.ce = add i32 %i.aw, %i.cd
end_hunk_1
