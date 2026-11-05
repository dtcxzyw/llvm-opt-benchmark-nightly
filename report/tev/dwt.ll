Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dwt?download=true
inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 79
begin_hunk_0_@opj_dwt_decode_real:bb.a
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %index260
  store <4 x float> %i.ft, ptr %i.fu, align 4, !tbaa !79, !alias.scope !307, !noalias !308
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eg, i64 44
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ei, i64 76
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ek, i64 108
  %i.fz = load float, ptr %i.fv, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.ga = load float, ptr %i.fw, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.gb = load float, ptr %i.fx, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.gc = load float, ptr %i.fy, align 4, !tbaa !50, !alias.scope !302, !noalias !300
  %i.gd = insertelement <4 x float> poison, float %i.fz, i64 0
  %i.ge = insertelement <4 x float> %i.gd, float %i.ga, i64 1
  %i.gf = insertelement <4 x float> %i.ge, float %i.gb, i64 2
  %i.gg = insertelement <4 x float> %i.gf, float %i.gc, i64 3
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index260
  store <4 x float> %i.gg, ptr %i.gh, align 4, !tbaa !79, !alias.scope !309, !noalias !310
  %index.next261 = add nuw i64 %index260, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next261, %n.vec258
  br i1 %i.gi, label %scalar.ph215.preheader, label %vector.body259, !llvm.loop !267

.lr.ph322.i:                                      ; preds = %scalar.ph215
  %i.gj = getelementptr inbounds nuw i8, ptr %.0226323.i, i64 %.idx.i ; 6 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0226323.i, i64 %.idx274.i ; 6 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0226323.i, i64 %.idx275.i ; 6 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0226323.i, i64 %.idx276.i ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph322.i
  %indvars.iv367.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph322.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph322.i
  %i.gn = mul i64 %indvar, %i.cg                  ; 4 uses
  %i.go = getelementptr i8, ptr %i.dq, i64 %i.gn  ; 4 uses
  %i.gp = getelementptr i8, ptr %i.dr, i64 %i.gn  ; 4 uses
  %i.gq = getelementptr i8, ptr %i.ds, i64 %i.gn  ; 4 uses
  %i.gr = getelementptr i8, ptr %i.dt, i64 %i.gn  ; 4 uses
  %bound0 = icmp ult ptr %i.gj, %i.gp
  %bound1 = icmp ult ptr %i.gk, %i.go
  %found.conflict = and i1 %bound0, %bound1
  %bound0131 = icmp ult ptr %i.gj, %i.gq
  %bound1132 = icmp ult ptr %i.gl, %i.go
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx = or i1 %found.conflict, %found.conflict133
  %bound0134 = icmp ult ptr %i.gj, %i.gr
  %bound1135 = icmp ult ptr %i.gm, %i.go
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx, %found.conflict136
  %bound0138 = icmp ult ptr %i.gj, %scevgep
  %bound1139 = icmp ult ptr %scevgep130, %i.go
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx141 = or i1 %conflict.rdx137, %found.conflict140
  %bound0142 = icmp ult ptr %i.gk, %i.gq
  %bound1143 = icmp ult ptr %i.gl, %i.gp
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx141, %found.conflict144
  %bound0146 = icmp ult ptr %i.gk, %i.gr
  %bound1147 = icmp ult ptr %i.gm, %i.gp
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %conflict.rdx145, %found.conflict148
  %bound0150 = icmp ult ptr %i.gk, %scevgep
  %bound1151 = icmp ult ptr %scevgep130, %i.gp
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx153 = or i1 %conflict.rdx149, %found.conflict152
  %bound0154 = icmp ult ptr %i.gl, %i.gr
  %bound1155 = icmp ult ptr %i.gm, %i.gq
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx157 = or i1 %conflict.rdx153, %found.conflict156
  %bound0158 = icmp ult ptr %i.gl, %scevgep
  %bound1159 = icmp ult ptr %scevgep130, %i.gq
  %found.conflict160 = and i1 %bound0158, %bound1159
  %conflict.rdx161 = or i1 %conflict.rdx157, %found.conflict160
  %bound0162 = icmp ult ptr %i.gm, %scevgep
  %bound1163 = icmp ult ptr %scevgep130, %i.gr
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %conflict.rdx161, %found.conflict164
  br i1 %conflict.rdx165, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 9 uses
  %i.gs = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gu = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gv = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %index ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 80
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 112
  %i.ha = load float, ptr %i.gw, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.hb = load float, ptr %i.gx, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.hc = load float, ptr %i.gy, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.hd = load float, ptr %i.gz, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.he = insertelement <4 x float> poison, float %i.ha, i64 0
  %i.hf = insertelement <4 x float> %i.he, float %i.hb, i64 1
  %i.hg = insertelement <4 x float> %i.hf, float %i.hc, i64 2
  %i.hh = insertelement <4 x float> %i.hg, float %i.hd, i64 3
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %index
  store <4 x float> %i.hh, ptr %i.hi, align 4, !tbaa !79, !alias.scope !312, !noalias !313
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gs, i64 20
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gt, i64 52
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gu, i64 84
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gv, i64 116
  %i.hn = load float, ptr %i.hj, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.ho = load float, ptr %i.hk, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.hp = load float, ptr %i.hl, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.hq = load float, ptr %i.hm, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.hr = insertelement <4 x float> poison, float %i.hn, i64 0
  %i.hs = insertelement <4 x float> %i.hr, float %i.ho, i64 1
  %i.ht = insertelement <4 x float> %i.hs, float %i.hp, i64 2
  %i.hu = insertelement <4 x float> %i.ht, float %i.hq, i64 3
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %index
  store <4 x float> %i.hu, ptr %i.hv, align 4, !tbaa !79, !alias.scope !314, !noalias !315
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gt, i64 56
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gu, i64 88
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gv, i64 120
  %i.ia = load float, ptr %i.hw, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.ib = load float, ptr %i.hx, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.ic = load float, ptr %i.hy, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.id = load float, ptr %i.hz, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.ie = insertelement <4 x float> poison, float %i.ia, i64 0
  %i.if = insertelement <4 x float> %i.ie, float %i.ib, i64 1
  %i.ig = insertelement <4 x float> %i.if, float %i.ic, i64 2
  %i.ih = insertelement <4 x float> %i.ig, float %i.id, i64 3
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %index
  store <4 x float> %i.ih, ptr %i.ii, align 4, !tbaa !79, !alias.scope !316, !noalias !317
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gs, i64 28
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gt, i64 60
  %i.il = getelementptr inbounds nuw i8, ptr %i.gu, i64 92
  %i.im = getelementptr inbounds nuw i8, ptr %i.gv, i64 124
  %i.in = load float, ptr %i.ij, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.io = load float, ptr %i.ik, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.ip = load float, ptr %i.il, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.iq = load float, ptr %i.im, align 4, !tbaa !50, !alias.scope !311, !noalias !300
  %i.ir = insertelement <4 x float> poison, float %i.in, i64 0
  %i.is = insertelement <4 x float> %i.ir, float %i.io, i64 1
  %i.it = insertelement <4 x float> %i.is, float %i.ip, i64 2
  %i.iu = insertelement <4 x float> %i.it, float %i.iq, i64 3
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %index
  store <4 x float> %i.iu, ptr %i.iv, align 4, !tbaa !79, !alias.scope !318, !noalias !319
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iw = icmp eq i64 %index.next, %n.vec
  br i1 %i.iw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !274

scalar.ph215:                                     ; preds = %scalar.ph215.preheader, %scalar.ph215
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph215 ], [ %indvars.iv.i.ph, %scalar.ph215.preheader ] ; 5 uses
  %i.ix = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv.i ; 4 uses
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !50, !noalias !300
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.0226323.i, i64 %indvars.iv.i ; 2 uses
  store float %i.iy, ptr %i.iz, align 4, !tbaa !79, !noalias !300
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !50, !noalias !300
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.bu
  store float %i.jb, ptr %i.jc, align 4, !tbaa !79, !noalias !300
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.je = load float, ptr %i.jd, align 4, !tbaa !50, !noalias !300
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i
  store float %i.je, ptr %i.jf, align 4, !tbaa !79, !noalias !300
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !50, !noalias !300
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.i
  store float %i.jh, ptr %i.ji, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond366.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond366.not.i, label %.lr.ph322.i, label %scalar.ph215, !llvm.loop !275

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv367.i = phi i64 [ %indvars.iv.next368.i, %scalar.ph ], [ %indvars.iv367.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv367.i ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !50, !noalias !300
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv367.i
  store float %i.jl, ptr %i.jm, align 4, !tbaa !79, !noalias !300
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 20
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !50, !noalias !300
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv367.i
  store float %i.jo, ptr %i.jp, align 4, !tbaa !79, !noalias !300
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !50, !noalias !300
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv367.i
  store float %i.jr, ptr %i.js, align 4, !tbaa !79, !noalias !300
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jj, i64 28
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !50, !noalias !300
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv367.i
  store float %i.ju, ptr %i.jv, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next368.i, %wide.trip.count.i
  br i1 %exitcond371.not.i, label %._crit_edge.i.a, label %scalar.ph, !llvm.loop !276

._crit_edge.i.a:                                  ; preds = %scalar.ph, %bb.e
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.0226323.i, i64 %i.bw ; 2 uses
  %i.jx = add nuw i32 %.0224324.i, 8              ; 3 uses
  %i.jy = or disjoint i32 %i.jx, 7
  %i.jz = icmp ult i32 %i.jy, %i.da
  %indvar.next = add i64 %indvar, 1
  br i1 %i.jz, label %bb.e, label %.loopexit311.i, !llvm.loop !277

bb.f:                                             ; preds = %bb.d
  %i.ka = lshr i32 %i.da, 3
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.y) ; 2 uses
  %i.kb = udiv i32 %i.da, %spec.select.i
  %7 = and i32 %i.kb, -8                          ; 2 uses
  %i.kc = and i32 %i.da, -8                       ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %.1225319.i = phi i32 [ 0, %bb.f ], [ %i.kp, %bb.k ] ; 2 uses
  %.1227318.i = phi ptr [ %i.bk, %bb.f ], [ %i.kw, %bb.k ] ; 2 uses
  %i.kd = tail call ptr @opj_malloc(i64 noundef 64) #15, !noalias !300 ; 15 uses
  %.not267.i = icmp eq ptr %i.kd, null
  br i1 %.not267.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !300
  br label %.critedge.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.ke = tail call ptr @opj_aligned_malloc(i64 noundef %i.bh) #15, !noalias !300 ; 2 uses
  store ptr %i.ke, ptr %i.kd, align 8, !tbaa !91, !noalias !300
  %.not268.i = icmp eq ptr %i.ke, null
  br i1 %.not268.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !300
  tail call void @opj_free(ptr noundef nonnull %i.kd) #15, !noalias !300
  br label %.critedge.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store i32 %i.db, ptr %i.kf, align 8, !tbaa !320, !noalias !300
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  store i32 %.0238344.i, ptr %i.kg, align 4, !tbaa !321, !noalias !300
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store i32 %i.dc, ptr %i.kh, align 8, !tbaa !322, !noalias !300
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 20
  store i32 0, ptr %i.ki, align 4, !tbaa !323, !noalias !300
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store i32 %.0238344.i, ptr %i.kj, align 8, !tbaa !324, !noalias !300
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 28
  store i32 0, ptr %i.kk, align 4, !tbaa !325, !noalias !300
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  store i32 %i.db, ptr %i.kl, align 8, !tbaa !326, !noalias !300
  %i.km = getelementptr inbounds nuw i8, ptr %i.kd, i64 40
  store i32 %i.cv, ptr %i.km, align 8, !tbaa !92, !noalias !300
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 44
  store i32 %i.x, ptr %i.kn, align 4, !tbaa !93, !noalias !300
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kd, i64 48
  store ptr %.1227318.i, ptr %i.ko, align 8, !tbaa !94, !noalias !300
  %i.kp = add nuw nsw i32 %.1225319.i, 1          ; 2 uses
  %.not410.i = icmp eq i32 %i.kp, %spec.select.i  ; 2 uses
  %i.kq = mul i32 %.1225319.i, %7
  %i.kr = sub i32 %i.kc, %i.kq
  %i.ks = select i1 %.not410.i, i32 %i.kr, i32 %7 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kd, i64 56
  store i32 %i.ks, ptr %i.kt, align 8, !tbaa !95, !noalias !300
  %i.ku = mul i32 %i.ks, %i.x
  %i.kv = zext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.1227318.i, i64 %i.kv ; 2 uses
  %i.kx = tail call i32 @opj_thread_pool_submit_job(ptr noundef %i.d, ptr noundef nonnull @opj_dwt97_decode_h_func, ptr noundef nonnull %i.kd) #15, !noalias !300 ; 0 uses
  br i1 %.not410.i, label %bb.l, label %bb.g, !llvm.loop !278

bb.l:                                             ; preds = %bb.k
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !300
  br label %.loopexit311.i

.loopexit311.i:                                   ; preds = %._crit_edge.i.a, %bb.l, %.preheader310.i
  %.4230.i = phi ptr [ %i.kw, %bb.l ], [ %i.bk, %.preheader310.i ], [ %i.jw, %._crit_edge.i.a ] ; 2 uses
  %.3.i = phi i32 [ %i.kc, %bb.l ], [ 0, %.preheader310.i ], [ %i.jx, %._crit_edge.i.a ] ; 2 uses
  %i.ky = icmp ult i32 %.3.i, %i.da
  br i1 %i.ky, label %bb.m, label %.loopexit309.i

bb.m:                                             ; preds = %.loopexit311.i
  %i.kz = sub nuw i32 %i.da, %.3.i                ; 3 uses
  call fastcc void @opj_v8dwt_interleave_h(ptr noundef nonnull %5, ptr noundef %.4230.i, i32 noundef %i.x, i32 noundef %i.kz), !noalias !300
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %5), !noalias !300
  %.not353.i = icmp eq i32 %i.cv, 0
  br i1 %.not353.i, label %.loopexit309.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.m
  %wide.trip.count380.i = zext i32 %i.cv to i64
  %wide.trip.count375.i = zext i32 %i.kz to i64   ; 2 uses
  %xtraiter277 = and i64 %wide.trip.count375.i, 3 ; 3 uses
  %i.la = add i32 %i.kz, -1
  %i.lb = icmp ult i32 %i.la, 3
  %unroll_iter280 = and i64 %wide.trip.count375.i, 4294967292
  %lcmp.mod278.not = icmp eq i64 %xtraiter277, 0
  %lcmp.mod279 = icmp ne i64 %xtraiter277, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge329.i, %.preheader.preheader.i
  %indvars.iv377.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next378.i, %._crit_edge329.i ] ; 3 uses
  %i.lc = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv377.i ; 5 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.4230.i, i64 %indvars.iv377.i ; 5 uses
  br i1 %i.lb, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv372.i = phi i64 [ %indvars.iv.next373.i.3, %.preheader.i.new ], [ 0, %.preheader.i ] ; 6 uses
  %niter281 = phi i64 [ %niter281.next.3, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv372.i
  %i.le = load float, ptr %i.ld, align 4, !tbaa !50, !noalias !300
  %i.lf = mul nuw i64 %indvars.iv372.i, %i.bu
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lf
  store float %i.le, ptr %gep.i, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next373.i = or disjoint i64 %indvars.iv372.i, 1 ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv.next373.i
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !50, !noalias !300
  %i.li = mul nuw i64 %indvars.iv.next373.i, %i.bu
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.li
  store float %i.lh, ptr %gep.i.1, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next373.i.1 = or disjoint i64 %indvars.iv372.i, 2 ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv.next373.i.1
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !50, !noalias !300
  %i.ll = mul nuw i64 %indvars.iv.next373.i.1, %i.bu
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ll
  store float %i.lk, ptr %gep.i.2, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next373.i.2 = or disjoint i64 %indvars.iv372.i, 3 ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv.next373.i.2
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !50, !noalias !300
  %i.lo = mul nuw i64 %indvars.iv.next373.i.2, %i.bu
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lo
  store float %i.ln, ptr %gep.i.3, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next373.i.3 = add nuw nsw i64 %indvars.iv372.i, 4 ; 2 uses
  %niter281.next.3 = add i64 %niter281, 4         ; 2 uses
  %niter281.ncmp.3 = icmp eq i64 %niter281.next.3, %unroll_iter280
  br i1 %niter281.ncmp.3, label %._crit_edge329.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !279

._crit_edge329.i.unr-lcssa:                       ; preds = %.preheader.i.new
  br i1 %lcmp.mod278.not, label %._crit_edge329.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge329.i.unr-lcssa, %.preheader.i
  %indvars.iv372.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next373.i.3, %._crit_edge329.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod279)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %indvars.iv372.i.epil = phi i64 [ %indvars.iv372.i.epil.init, %.epil.preheader ], [ %indvars.iv.next373.i.epil, %bb.n ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv372.i.epil
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !50, !noalias !300
  %i.lr = mul nuw i64 %indvars.iv372.i.epil, %i.bu
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lr
  store float %i.lq, ptr %gep.i.epil, align 4, !tbaa !79, !noalias !300
  %indvars.iv.next373.i.epil = add nuw nsw i64 %indvars.iv372.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter277
  br i1 %epil.iter.cmp.not, label %._crit_edge329.i, label %bb.n, !llvm.loop !280

._crit_edge329.i:                                 ; preds = %bb.n, %._crit_edge329.i.unr-lcssa
  %indvars.iv.next378.i = add nuw nsw i64 %indvars.iv377.i, 1 ; 2 uses
  %exitcond381.not.i = icmp eq i64 %indvars.iv.next378.i, %wide.trip.count380.i
  br i1 %exitcond381.not.i, label %.loopexit309.i, label %.preheader.i, !llvm.loop !281

.loopexit309.i:                                   ; preds = %._crit_edge329.i, %bb.m, %.loopexit311.i
  %i.ls = sub i32 %i.da, %.0237345.i              ; 10 uses
  store i32 %i.ls, ptr %i.bx, align 8, !tbaa !83, !noalias !300
  %i.lt = load i32, ptr %i.cy, align 4, !tbaa !34, !noalias !300
  %i.lu = srem i32 %i.lt, 2                       ; 4 uses
  store i32 %i.lu, ptr %i.by, align 8, !tbaa !84, !noalias !300
  store i32 0, ptr %i.bz, align 4, !tbaa !85, !noalias !300
  store i32 %.0237345.i, ptr %i.ca, align 8, !tbaa !86, !noalias !300
  store i32 0, ptr %i.cb, align 4, !tbaa !87, !noalias !300
  store i32 %i.ls, ptr %i.cc, align 8, !tbaa !88, !noalias !300
  %i.lv = icmp ult i32 %i.cv, 16
  %or.cond7.i = select i1 %i.bt, i1 true, i1 %i.lv
  br i1 %or.cond7.i, label %.preheader307.i, label %bb.p

.preheader307.i:                                  ; preds = %.loopexit309.i
  %i.lw = icmp ugt i32 %i.cv, 7
  br i1 %i.lw, label %.lr.ph338.i, label %.loopexit308.i

.lr.ph338.i:                                      ; preds = %.preheader307.i
  %i.lx = sext i32 %i.lu to i64                   ; 2 uses
  %i.ly = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.lx ; 3 uses
  %wide.trip.count.i.i = zext i32 %.0237345.i to i64 ; 3 uses
  %i.lz = mul nuw i64 %wide.trip.count.i.i, %i.bu
  %i.ma = sub nsw i64 0, %i.lx
  %i.mb = getelementptr inbounds [32 x i8], ptr %i.cf, i64 %i.ma ; 3 uses
  %.not305.i = icmp eq i32 %i.da, %.0237345.i
  %wide.trip.count35.i.i = zext i32 %i.ls to i64  ; 2 uses
  %wide.trip.count386.i = zext i32 %i.da to i64   ; 2 uses
  %xtraiter282 = and i64 %wide.trip.count.i.i, 1
  %i.mc = icmp eq i32 %.0237345.i, 1              ; 0 uses
  %unroll_iter286 = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod284.not = icmp eq i64 %xtraiter282, 0
  %lcmp.mod285 = trunc i32 %.0237345.i to i1
  %xtraiter288 = and i64 %wide.trip.count35.i.i, 1
  %i.md = icmp eq i32 %i.ls, 1
  %unroll_iter292 = and i64 %wide.trip.count35.i.i, 4294967294
  %lcmp.mod290.not = icmp eq i64 %xtraiter288, 0
  %lcmp.mod291 = trunc i32 %i.ls to i1
  %xtraiter294 = and i64 %wide.trip.count386.i, 1
  %i.me = icmp eq i32 %i.da, 1                    ; 0 uses
  %unroll_iter298 = and i64 %wide.trip.count386.i, 4294967294
  %lcmp.mod296.not = icmp eq i64 %xtraiter294, 0
  %lcmp.mod297 = trunc i32 %i.da to i1
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge335.i, %.lr.ph338.i
  %.4337.i = phi i32 [ %i.cv, %.lr.ph338.i ], [ %i.nu, %._crit_edge335.i ]
  %.5231336.i = phi ptr [ %i.bk, %.lr.ph338.i ], [ %i.nt, %._crit_edge335.i ] ; 8 uses
  switch i32 %.0237345.i, label %.lr.ph.i280.i [
    i32 0, label %._crit_edge.i.i
    i32 1, label %.lr.ph.i280.i.epil.preheader
  ]

.lr.ph.i280.i:                                    ; preds = %bb.o, %.lr.ph.i280.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i280.i ], [ 0, %bb.o ] ; 4 uses
  %niter287 = phi i64 [ %niter287.next.1, %.lr.ph.i280.i ], [ 0, %bb.o ]
  %i.mf = shl nuw nsw i64 %indvars.iv.i.i, 1
  %i.mg = and i64 %i.mf, 4294967292
  %i.mh = getelementptr inbounds nuw [32 x i8], ptr %i.ly, i64 %i.mg
  %i.mi = mul nuw i64 %indvars.iv.i.i, %i.bu
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %.5231336.i, i64 %i.mi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.mh, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.mj, i64 32, i1 false), !noalias !327
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.mk = shl nuw nsw i64 %indvars.iv.next.i.i, 1
  %i.ml = and i64 %i.mk, 4294967294
  %i.mm = getelementptr inbounds nuw [32 x i8], ptr %i.ly, i64 %i.ml
  %i.mn = mul nuw i64 %indvars.iv.next.i.i, %i.bu
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.5231336.i, i64 %i.mn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.mm, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.mo, i64 32, i1 false), !noalias !327
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter287.next.1 = add i64 %niter287, 2         ; 2 uses
  %niter287.ncmp.1 = icmp eq i64 %niter287.next.1, %unroll_iter286
  br i1 %niter287.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i280.i, !llvm.loop !4

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i280.i
  br i1 %lcmp.mod284.not, label %._crit_edge.i.i, label %.lr.ph.i280.i.epil.preheader

.lr.ph.i280.i.epil.preheader:                     ; preds = %bb.o, %._crit_edge.i.i.loopexit.unr-lcssa
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod285)
  %i.mp = shl nuw nsw i64 %indvars.iv.i.i.epil.init, 1
  %i.mq = and i64 %i.mp, 4294967294
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.ly, i64 %i.mq
  %i.ms = mul nuw i64 %indvars.iv.i.i.epil.init, %i.bu
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.5231336.i, i64 %i.ms
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.mr, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.mt, i64 32, i1 false), !noalias !327
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i280.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.o
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %.5231336.i, i64 %i.lz ; 3 uses
  br i1 %.not305.i, label %opj_v8dwt_interleave_v.exit.i, label %.lr.ph29.i.i.preheader

.lr.ph29.i.i.preheader:                           ; preds = %._crit_edge.i.i
  br i1 %i.md, label %.lr.ph29.i.i.epil.preheader, label %.lr.ph29.i.i

.lr.ph29.i.i:                                     ; preds = %.lr.ph29.i.i.preheader, %.lr.ph29.i.i
  %indvars.iv32.i.i = phi i64 [ %indvars.iv.next33.i.i.1, %.lr.ph29.i.i ], [ 0, %.lr.ph29.i.i.preheader ] ; 4 uses
  %niter293 = phi i64 [ %niter293.next.1, %.lr.ph29.i.i ], [ 0, %.lr.ph29.i.i.preheader ]
  %i.mv = shl nuw i64 %indvars.iv32.i.i, 1
  %i.mw = and i64 %i.mv, 4294967292
  %i.mx = getelementptr inbounds nuw [32 x i8], ptr %i.mb, i64 %i.mw
  %i.my = mul nuw i64 %indvars.iv32.i.i, %i.bu
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.my
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.mx, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.mz, i64 32, i1 false), !noalias !327
  %indvars.iv.next33.i.i = or disjoint i64 %indvars.iv32.i.i, 1 ; 2 uses
  %i.na = shl nuw i64 %indvars.iv.next33.i.i, 1
  %i.nb = and i64 %i.na, 4294967294
  %i.nc = getelementptr inbounds nuw [32 x i8], ptr %i.mb, i64 %i.nb
  %i.nd = mul nuw i64 %indvars.iv.next33.i.i, %i.bu
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.nd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.nc, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ne, i64 32, i1 false), !noalias !327
  %indvars.iv.next33.i.i.1 = add nuw nsw i64 %indvars.iv32.i.i, 2 ; 2 uses
  %niter293.next.1 = add i64 %niter293, 2         ; 2 uses
  %niter293.ncmp.1 = icmp eq i64 %niter293.next.1, %unroll_iter292
  br i1 %niter293.ncmp.1, label %opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa, label %.lr.ph29.i.i, !llvm.loop !5

opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph29.i.i
  br i1 %lcmp.mod290.not, label %opj_v8dwt_interleave_v.exit.i, label %.lr.ph29.i.i.epil.preheader

.lr.ph29.i.i.epil.preheader:                      ; preds = %opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa, %.lr.ph29.i.i.preheader
  %indvars.iv32.i.i.epil.init = phi i64 [ 0, %.lr.ph29.i.i.preheader ], [ %indvars.iv.next33.i.i.1, %opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod291)
  %i.nf = shl nuw i64 %indvars.iv32.i.i.epil.init, 1
  %i.ng = and i64 %i.nf, 4294967294
  %i.nh = getelementptr inbounds nuw [32 x i8], ptr %i.mb, i64 %i.ng
  %i.ni = mul nuw i64 %indvars.iv32.i.i.epil.init, %i.bu
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.ni
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.nh, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.nj, i64 32, i1 false), !noalias !327
  br label %opj_v8dwt_interleave_v.exit.i

opj_v8dwt_interleave_v.exit.i:                    ; preds = %.lr.ph29.i.i.epil.preheader, %opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa, %._crit_edge.i.i
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %6), !noalias !300
  switch i32 %i.da, label %.lr.ph334.i [
    i32 0, label %._crit_edge335.i
    i32 1, label %.lr.ph334.i.epil.preheader
  ]

.lr.ph334.i:                                      ; preds = %opj_v8dwt_interleave_v.exit.i, %.lr.ph334.i
  %indvars.iv383.i = phi i64 [ %indvars.iv.next384.i.1, %.lr.ph334.i ], [ 0, %opj_v8dwt_interleave_v.exit.i ] ; 4 uses
  %niter299 = phi i64 [ %niter299.next.1, %.lr.ph334.i ], [ 0, %opj_v8dwt_interleave_v.exit.i ]
  %i.nk = mul nuw i64 %indvars.iv383.i, %i.bu
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %.5231336.i, i64 %i.nk
  %i.nm = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv383.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.nl, ptr noundef nonnull align 4 dereferenceable(32) %i.nm, i64 32, i1 false), !noalias !300
  %indvars.iv.next384.i = or disjoint i64 %indvars.iv383.i, 1 ; 2 uses
  %i.nn = mul nuw i64 %indvars.iv.next384.i, %i.bu
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.5231336.i, i64 %i.nn
  %i.np = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv.next384.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.no, ptr noundef nonnull align 4 dereferenceable(32) %i.np, i64 32, i1 false), !noalias !300
  %indvars.iv.next384.i.1 = add nuw nsw i64 %indvars.iv383.i, 2 ; 2 uses
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %._crit_edge335.i.loopexit.unr-lcssa, label %.lr.ph334.i, !llvm.loop !284

._crit_edge335.i.loopexit.unr-lcssa:              ; preds = %.lr.ph334.i
  br i1 %lcmp.mod296.not, label %._crit_edge335.i, label %.lr.ph334.i.epil.preheader

.lr.ph334.i.epil.preheader:                       ; preds = %opj_v8dwt_interleave_v.exit.i, %._crit_edge335.i.loopexit.unr-lcssa
  %indvars.iv383.i.epil.init = phi i64 [ 0, %opj_v8dwt_interleave_v.exit.i ], [ %indvars.iv.next384.i.1, %._crit_edge335.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod297)
  %i.nq = mul nuw i64 %indvars.iv383.i.epil.init, %i.bu
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.5231336.i, i64 %i.nq
  %i.ns = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv383.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.nr, ptr noundef nonnull align 4 dereferenceable(32) %i.ns, i64 32, i1 false), !noalias !300
  br label %._crit_edge335.i

._crit_edge335.i:                                 ; preds = %.lr.ph334.i.epil.preheader, %._crit_edge335.i.loopexit.unr-lcssa, %opj_v8dwt_interleave_v.exit.i
  %i.nt = getelementptr inbounds nuw i8, ptr %.5231336.i, i64 32 ; 2 uses
  %i.nu = add i32 %.4337.i, -8                    ; 2 uses
  %i.nv = icmp ugt i32 %i.nu, 7
  br i1 %i.nv, label %bb.o, label %.loopexit308.i, !llvm.loop !285

bb.p:                                             ; preds = %.loopexit309.i
  %i.nw = lshr i32 %i.cv, 3
  %spec.select279.i = tail call i32 @llvm.umin.i32(i32 %i.nw, i32 %i.ce) ; 2 uses
  %i.nx = udiv i32 %i.cv, %spec.select279.i
  %8 = and i32 %i.nx, -8                          ; 2 uses
  %i.ny = and i32 %i.cv, -8
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.5332.i = phi i32 [ 0, %bb.p ], [ %i.ol, %bb.u ] ; 2 uses
  %.6331.i = phi ptr [ %i.bk, %bb.p ], [ %i.or, %bb.u ] ; 2 uses
  %i.nz = tail call ptr @opj_malloc(i64 noundef 64) #15, !noalias !300 ; 15 uses
  %.not270.i = icmp eq ptr %i.nz, null
  br i1 %.not270.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !300
  br label %.critedge.sink.split.i

bb.s:                                             ; preds = %bb.q
  %i.oa = tail call ptr @opj_aligned_malloc(i64 noundef %i.bh) #15, !noalias !300 ; 2 uses
  store ptr %i.oa, ptr %i.nz, align 8, !tbaa !91, !noalias !300
  %.not271.i = icmp eq ptr %i.oa, null
  br i1 %.not271.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !300
  tail call void @opj_free(ptr noundef nonnull %i.nz) #15, !noalias !300
  br label %.critedge.sink.split.i

bb.u:                                             ; preds = %bb.s
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  store i32 %i.ls, ptr %i.ob, align 8, !tbaa !320, !noalias !300
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 12
  store i32 %.0237345.i, ptr %i.oc, align 4, !tbaa !321, !noalias !300
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  store i32 %i.lu, ptr %i.od, align 8, !tbaa !322, !noalias !300
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 20
  store i32 0, ptr %i.oe, align 4, !tbaa !323, !noalias !300
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  store i32 %.0237345.i, ptr %i.of, align 8, !tbaa !324, !noalias !300
  %i.og = getelementptr inbounds nuw i8, ptr %i.nz, i64 28
  store i32 0, ptr %i.og, align 4, !tbaa !325, !noalias !300
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  store i32 %i.ls, ptr %i.oh, align 8, !tbaa !326, !noalias !300
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nz, i64 40
  store i32 %i.da, ptr %i.oi, align 8, !tbaa !92, !noalias !300
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nz, i64 44
  store i32 %i.x, ptr %i.oj, align 4, !tbaa !93, !noalias !300
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nz, i64 48
  store ptr %.6331.i, ptr %i.ok, align 8, !tbaa !94, !noalias !300
  %i.ol = add nuw nsw i32 %.5332.i, 1             ; 2 uses
  %.not411.i = icmp eq i32 %i.ol, %spec.select279.i ; 2 uses
  %i.om = mul i32 %.5332.i, %8
  %i.on = sub i32 %i.ny, %i.om
  %i.oo = select i1 %.not411.i, i32 %i.on, i32 %8 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.nz, i64 56
  store i32 %i.oo, ptr %i.op, align 8, !tbaa !95, !noalias !300
  %i.oq = zext i32 %i.oo to i64
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.6331.i, i64 %i.oq ; 2 uses
  %i.os = tail call i32 @opj_thread_pool_submit_job(ptr noundef %i.d, ptr noundef nonnull @opj_dwt97_decode_v_func, ptr noundef nonnull %i.nz) #15, !noalias !300 ; 0 uses
  br i1 %.not411.i, label %bb.v, label %bb.q, !llvm.loop !286

bb.v:                                             ; preds = %bb.u
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !300
  br label %.loopexit308.i

.loopexit308.i:                                   ; preds = %._crit_edge335.i, %bb.v, %.preheader307.i
  %.9.i = phi ptr [ %i.or, %bb.v ], [ %i.bk, %.preheader307.i ], [ %i.nt, %._crit_edge335.i ] ; 7 uses
  %i.ot = and i32 %i.cv, 7                        ; 4 uses
  %.not273.i = icmp eq i32 %i.ot, 0
  br i1 %.not273.i, label %.loopexit.i, label %bb.w

bb.w:                                             ; preds = %.loopexit308.i
  %i.ou = sext i32 %i.lu to i64                   ; 2 uses
  %i.ov = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.ou ; 3 uses
  %.not302.i = icmp eq i32 %.0237345.i, 0
  br i1 %.not302.i, label %._crit_edge.i281.i, label %.lr.ph.i287.i

.lr.ph.i287.i:                                    ; preds = %bb.w
  %i.ow = shl nuw nsw i32 %i.ot, 2
  %i.ox = zext nneg i32 %i.ow to i64              ; 3 uses
  %wide.trip.count.i288.i = zext i32 %.0237345.i to i64 ; 3 uses
  %xtraiter301 = and i64 %wide.trip.count.i288.i, 1
  %i.oy = icmp eq i32 %.0237345.i, 1
  br i1 %i.oy, label %.epil.preheader300, label %.lr.ph.i287.i.new

.lr.ph.i287.i.new:                                ; preds = %.lr.ph.i287.i
  %unroll_iter305 = and i64 %wide.trip.count.i288.i, 4294967294
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i287.i.new
  %indvars.iv.i289.i = phi i64 [ 0, %.lr.ph.i287.i.new ], [ %indvars.iv.next.i290.i.1, %bb.x ] ; 4 uses
  %niter306 = phi i64 [ 0, %.lr.ph.i287.i.new ], [ %niter306.next.1, %bb.x ]
  %i.oz = shl nuw nsw i64 %indvars.iv.i289.i, 1
  %i.pa = and i64 %i.oz, 4294967292
  %i.pb = getelementptr inbounds nuw [32 x i8], ptr %i.ov, i64 %i.pa
  %i.pc = mul nuw i64 %indvars.iv.i289.i, %i.bu
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %.9.i, i64 %i.pc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.pb, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.pd, i64 %i.ox, i1 false), !noalias !328
  %indvars.iv.next.i290.i = or disjoint i64 %indvars.iv.i289.i, 1 ; 2 uses
  %i.pe = shl nuw nsw i64 %indvars.iv.next.i290.i, 1
  %i.pf = and i64 %i.pe, 4294967294
  %i.pg = getelementptr inbounds nuw [32 x i8], ptr %i.ov, i64 %i.pf
  %i.ph = mul nuw i64 %indvars.iv.next.i290.i, %i.bu
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %.9.i, i64 %i.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.pg, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.pi, i64 %i.ox, i1 false), !noalias !328
  %indvars.iv.next.i290.i.1 = add nuw nsw i64 %indvars.iv.i289.i, 2 ; 2 uses
  %niter306.next.1 = add i64 %niter306, 2         ; 2 uses
  %niter306.ncmp.1 = icmp eq i64 %niter306.next.1, %unroll_iter305
  br i1 %niter306.ncmp.1, label %._crit_edge.i281.loopexit.i.unr-lcssa, label %bb.x, !llvm.loop !4

._crit_edge.i281.loopexit.i.unr-lcssa:            ; preds = %bb.x
  %lcmp.mod303.not = icmp eq i64 %xtraiter301, 0
  br i1 %lcmp.mod303.not, label %._crit_edge.i281.loopexit.i, label %.epil.preheader300

.epil.preheader300:                               ; preds = %._crit_edge.i281.loopexit.i.unr-lcssa, %.lr.ph.i287.i
  %indvars.iv.i289.i.epil.init = phi i64 [ 0, %.lr.ph.i287.i ], [ %indvars.iv.next.i290.i.1, %._crit_edge.i281.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod304 = trunc i32 %.0237345.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod304)
  %i.pj = shl nuw nsw i64 %indvars.iv.i289.i.epil.init, 1
  %i.pk = and i64 %i.pj, 4294967294
  %i.pl = getelementptr inbounds nuw [32 x i8], ptr %i.ov, i64 %i.pk
  %i.pm = mul nuw i64 %indvars.iv.i289.i.epil.init, %i.bu
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.9.i, i64 %i.pm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.pl, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.pn, i64 %i.ox, i1 false), !noalias !328
  br label %._crit_edge.i281.loopexit.i

._crit_edge.i281.loopexit.i:                      ; preds = %._crit_edge.i281.loopexit.i.unr-lcssa, %.epil.preheader300
  %i.po = mul nuw i64 %wide.trip.count.i288.i, %i.bu
  br label %._crit_edge.i281.i

._crit_edge.i281.i:                               ; preds = %._crit_edge.i281.loopexit.i, %bb.w
  %.pre-phi.i = phi i64 [ %i.po, %._crit_edge.i281.loopexit.i ], [ 0, %bb.w ]
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %.9.i, i64 %.pre-phi.i ; 3 uses
  %i.pq = sub nsw i64 0, %i.ou
  %i.pr = getelementptr inbounds [32 x i8], ptr %i.cf, i64 %i.pq ; 3 uses
  %.not303.i = icmp eq i32 %i.da, %.0237345.i
  br i1 %.not303.i, label %opj_v8dwt_interleave_v.exit292.i, label %.lr.ph29.i282.i

.lr.ph29.i282.i:                                  ; preds = %._crit_edge.i281.i
  %i.ps = shl nuw nsw i32 %i.ot, 2
  %i.pt = zext nneg i32 %i.ps to i64              ; 3 uses
  %wide.trip.count35.i283.i = zext i32 %i.ls to i64 ; 2 uses
  %xtraiter308 = and i64 %wide.trip.count35.i283.i, 1
  %i.pu = icmp eq i32 %i.ls, 1
  br i1 %i.pu, label %.epil.preheader307, label %.lr.ph29.i282.i.new

.lr.ph29.i282.i.new:                              ; preds = %.lr.ph29.i282.i
  %unroll_iter312 = and i64 %wide.trip.count35.i283.i, 4294967294
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph29.i282.i.new
  %indvars.iv32.i284.i = phi i64 [ 0, %.lr.ph29.i282.i.new ], [ %indvars.iv.next33.i285.i.1, %bb.y ] ; 4 uses
  %niter313 = phi i64 [ 0, %.lr.ph29.i282.i.new ], [ %niter313.next.1, %bb.y ]
  %i.pv = shl nuw i64 %indvars.iv32.i284.i, 1
  %i.pw = and i64 %i.pv, 4294967292
  %i.px = getelementptr inbounds nuw [32 x i8], ptr %i.pr, i64 %i.pw
  %i.py = mul nuw i64 %indvars.iv32.i284.i, %i.bu
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.py
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.px, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.pz, i64 %i.pt, i1 false), !noalias !328
  %indvars.iv.next33.i285.i = or disjoint i64 %indvars.iv32.i284.i, 1 ; 2 uses
  %i.qa = shl nuw i64 %indvars.iv.next33.i285.i, 1
  %i.qb = and i64 %i.qa, 4294967294
  %i.qc = getelementptr inbounds nuw [32 x i8], ptr %i.pr, i64 %i.qb
  %i.qd = mul nuw i64 %indvars.iv.next33.i285.i, %i.bu
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.qd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.qc, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.qe, i64 %i.pt, i1 false), !noalias !328
  %indvars.iv.next33.i285.i.1 = add nuw nsw i64 %indvars.iv32.i284.i, 2 ; 2 uses
  %niter313.next.1 = add i64 %niter313, 2         ; 2 uses
  %niter313.ncmp.1 = icmp eq i64 %niter313.next.1, %unroll_iter312
  br i1 %niter313.ncmp.1, label %opj_v8dwt_interleave_v.exit292.i.loopexit.unr-lcssa, label %bb.y, !llvm.loop !5

opj_v8dwt_interleave_v.exit292.i.loopexit.unr-lcssa: ; preds = %bb.y
  %lcmp.mod310.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod310.not, label %opj_v8dwt_interleave_v.exit292.i, label %.epil.preheader307

.epil.preheader307:                               ; preds = %opj_v8dwt_interleave_v.exit292.i.loopexit.unr-lcssa, %.lr.ph29.i282.i
  %indvars.iv32.i284.i.epil.init = phi i64 [ 0, %.lr.ph29.i282.i ], [ %indvars.iv.next33.i285.i.1, %opj_v8dwt_interleave_v.exit292.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod311 = trunc i32 %i.ls to i1
  tail call void @llvm.assume(i1 %lcmp.mod311)
  %i.qf = shl nuw i64 %indvars.iv32.i284.i.epil.init, 1
  %i.qg = and i64 %i.qf, 4294967294
  %i.qh = getelementptr inbounds nuw [32 x i8], ptr %i.pr, i64 %i.qg
  %i.qi = mul nuw i64 %indvars.iv32.i284.i.epil.init, %i.bu
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.qi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.qh, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.qj, i64 %i.pt, i1 false), !noalias !328
  br label %opj_v8dwt_interleave_v.exit292.i

opj_v8dwt_interleave_v.exit292.i:                 ; preds = %.epil.preheader307, %opj_v8dwt_interleave_v.exit292.i.loopexit.unr-lcssa, %._crit_edge.i281.i
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %6), !noalias !300
  %.not355.i = icmp eq i32 %i.da, 0
  br i1 %.not355.i, label %.loopexit.i, label %.lr.ph341.i

.lr.ph341.i:                                      ; preds = %opj_v8dwt_interleave_v.exit292.i
  %i.qk = shl nuw nsw i32 %i.ot, 2
  %i.ql = zext nneg i32 %i.qk to i64              ; 3 uses
  %wide.trip.count391.i = zext i32 %i.da to i64   ; 2 uses
  %xtraiter315 = and i64 %wide.trip.count391.i, 1
  %i.qm = icmp eq i32 %i.da, 1
  br i1 %i.qm, label %.epil.preheader314, label %.lr.ph341.i.new

.lr.ph341.i.new:                                  ; preds = %.lr.ph341.i
  %unroll_iter319 = and i64 %wide.trip.count391.i, 4294967294
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph341.i.new
  %indvars.iv388.i = phi i64 [ 0, %.lr.ph341.i.new ], [ %indvars.iv.next389.i.1, %bb.z ] ; 4 uses
  %niter320 = phi i64 [ 0, %.lr.ph341.i.new ], [ %niter320.next.1, %bb.z ]
  %i.qn = mul nuw i64 %indvars.iv388.i, %i.bu
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %.9.i, i64 %i.qn
  %i.qp = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv388.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qo, ptr nonnull align 4 %i.qp, i64 %i.ql, i1 false), !noalias !300
  %indvars.iv.next389.i = or disjoint i64 %indvars.iv388.i, 1 ; 2 uses
  %i.qq = mul nuw i64 %indvars.iv.next389.i, %i.bu
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.9.i, i64 %i.qq
  %i.qs = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv.next389.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qr, ptr nonnull align 4 %i.qs, i64 %i.ql, i1 false), !noalias !300
  %indvars.iv.next389.i.1 = add nuw nsw i64 %indvars.iv388.i, 2 ; 2 uses
  %niter320.next.1 = add i64 %niter320, 2         ; 2 uses
  %niter320.ncmp.1 = icmp eq i64 %niter320.next.1, %unroll_iter319
  br i1 %niter320.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %bb.z, !llvm.loop !289

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.z
  %lcmp.mod317.not = icmp eq i64 %xtraiter315, 0
  br i1 %lcmp.mod317.not, label %.loopexit.i, label %.epil.preheader314

.epil.preheader314:                               ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph341.i
  %indvars.iv388.i.epil.init = phi i64 [ 0, %.lr.ph341.i ], [ %indvars.iv.next389.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod318 = trunc i32 %i.da to i1
  tail call void @llvm.assume(i1 %lcmp.mod318)
  %i.qt = mul nuw i64 %indvars.iv388.i.epil.init, %i.bu
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.9.i, i64 %i.qt
  %i.qv = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv388.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qu, ptr nonnull align 4 %i.qv, i64 %i.ql, i1 false), !noalias !300
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.epil.preheader314, %.loopexit.i.loopexit.unr-lcssa, %opj_v8dwt_interleave_v.exit292.i, %.loopexit308.i
  %i.qw = add i32 %i.cq, -1                       ; 2 uses
  %.not266.i = icmp eq i32 %i.qw, 0
  br i1 %.not266.i, label %.critedge.sink.split.i, label %bb.d, !llvm.loop !290

.critedge.sink.split.i:                           ; preds = %.loopexit.i, %bb.t, %bb.r, %bb.j, %bb.h
  %.10.ph.i = phi i32 [ 0, %bb.t ], [ 0, %bb.r ], [ 0, %bb.h ], [ 0, %bb.j ], [ 1, %.loopexit.i ]
  tail call void @opj_aligned_free(ptr noundef nonnull %i.bi) #15, !noalias !300
  br label %opj_dwt_decode_tile_97.exit

opj_dwt_decode_tile_97.exit:                      ; preds = %bb.b, %opj_dwt_max_resolution.exit.i, %.critedge.sink.split.i
  %.10.i = phi i32 [ 0, %opj_dwt_max_resolution.exit.i ], [ 1, %bb.b ], [ %.10.ph.i, %.critedge.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !300
  br label %bb.ax

bb.aa:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !329
end_hunk_0
